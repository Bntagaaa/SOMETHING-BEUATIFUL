package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.util.Log;
import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.sheets.v4.Sheets;
import com.google.api.services.sheets.v4.model.AddSheetRequest;
import com.google.api.services.sheets.v4.model.AppendValuesResponse;
import com.google.api.services.sheets.v4.model.BatchUpdateSpreadsheetRequest;
import com.google.api.services.sheets.v4.model.BatchUpdateSpreadsheetResponse;
import com.google.api.services.sheets.v4.model.DeleteDimensionRequest;
import com.google.api.services.sheets.v4.model.DeleteSheetRequest;
import com.google.api.services.sheets.v4.model.DimensionRange;
import com.google.api.services.sheets.v4.model.Request;
import com.google.api.services.sheets.v4.model.Response;
import com.google.api.services.sheets.v4.model.Sheet;
import com.google.api.services.sheets.v4.model.SheetProperties;
import com.google.api.services.sheets.v4.model.ValueRange;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.AsynchUtil;
import com.google.appinventor.components.runtime.util.ChartDataSourceUtil;
import com.google.appinventor.components.runtime.util.CsvUtil;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.IOUtils;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.YailList;
import gnu.lists.LList;
import gnu.math.DFloNum;
import gnu.math.IntNum;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.regex.Pattern;

@SimpleObject
@UsesPermissions({"android.permission.INTERNET", "android.permission.ACCOUNT_MANAGER", "android.permission.GET_ACCOUNTS", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"})
@DesignerComponent(category = ComponentCategory.STORAGE, description = "Spreadsheet is a non-visible component for storing and receiving data from a Spreadsheet document using the Google Sheets API. <p>In order to utilize this component, one must first have a Google Developer Account. Then, one must create a new project under that Google Developer Account, enable the Google Sheets API on that project, and finally create a Service Account for the Sheets API.</p><p>Instructions on how to create the Service Account, as well as where to find other relevant information for using the Spreadsheet Component, can be found <a href='/reference/other/googlesheets-api-setup.html'>here</a>.</p>", iconName = "images/spreadsheet.png", nonVisible = true, version = 3)
@UsesLibraries({"googlesheets.jar", "jackson-core.jar", "google-api-client.jar", "google-api-client-jackson2.jar", "google-http-client.jar", "google-http-client-jackson2.jar", "google-oauth-client.jar", "google-oauth-client-jetty.jar", "grpc-context.jar", "opencensus.jar", "opencensus-contrib-http-util.jar", "jetty.jar", "jetty-util.jar"})
/* loaded from: classes.dex */
public class Spreadsheet extends AndroidNonvisibleComponent implements Component, ObservableDataSource<YailList, Future<YailList>> {
    private static final String LOG_TAG = "SPREADSHEET";
    private String accessToken;
    private final Activity activity;
    private String apiKey;
    private String applicationName;
    private java.io.File cachedCredentialsFile;
    private YailList columns;
    private final ComponentContainer container;
    private String credentialsPath;
    private FutureTask<Void> lastTask;
    private final Set<DataSourceChangeListener> observers;
    private int requestCode;
    private final java.util.Map<String, Integer> sheetIdMap;
    private Sheets sheetsService;
    private String spreadsheetID;
    private static final Pattern INTEGER = Pattern.compile("^[0-9]+$");
    private static final String WEBVIEW_ACTIVITY_CLASS = WebViewActivity.class.getName();

    public Spreadsheet(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.spreadsheetID = "";
        this.applicationName = FusiontablesControl.APP_NAME;
        this.cachedCredentialsFile = null;
        this.accessToken = null;
        this.sheetsService = null;
        this.lastTask = null;
        this.columns = new YailList();
        this.observers = new HashSet();
        this.sheetIdMap = new HashMap();
        this.container = componentContainer;
        this.activity = componentContainer.$context();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void updateSheetID(String str, int i) {
        this.sheetIdMap.put(str, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void removeSheetID(String str) {
        this.sheetIdMap.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized int getSheetID(Sheets sheets, String str) {
        if (this.sheetIdMap.containsKey(str)) {
            return this.sheetIdMap.get(str).intValue();
        }
        try {
            Sheets.Spreadsheets.Get get = sheets.spreadsheets().get(this.spreadsheetID);
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            get.setRanges(arrayList);
            get.setIncludeGridData(Boolean.FALSE);
            com.google.api.services.sheets.v4.model.Spreadsheet spreadsheet = (com.google.api.services.sheets.v4.model.Spreadsheet) get.execute();
            if (spreadsheet.size() == 0) {
                return -1;
            }
            Integer sheetId = ((Sheet) spreadsheet.getSheets().get(0)).getProperties().getSheetId();
            int iIntValue = sheetId.intValue();
            this.sheetIdMap.put(str, sheetId);
            return iIntValue;
        } catch (IOException e) {
            ErrorOccurred("getSheetID: IOException - " + e.getMessage());
            return -1;
        } catch (Exception e2) {
            ErrorOccurred("getSheetID: Unknown Exception - " + e2.getMessage());
            return -1;
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String CredentialsJson() {
        return this.credentialsPath;
    }

    @SimpleProperty(description = "The JSON File with credentials for the Service Account")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void CredentialsJson(String str) {
        this.credentialsPath = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String SpreadsheetID() {
        return this.spreadsheetID;
    }

    @SimpleProperty(description = "The ID for the Google Sheets file you want to edit. You can find the spreadsheetID in the URL of the Google Sheets file.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void SpreadsheetID(String str) {
        if (str.startsWith("https:")) {
            str = str.substring(8).split("/")[3];
        }
        this.spreadsheetID = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    public String ApplicationName() {
        return this.applicationName;
    }

    @SimpleProperty(description = "The name of your application, used when making API calls.")
    @DesignerProperty(defaultValue = FusiontablesControl.APP_NAME, editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ApplicationName(String str) {
        this.applicationName = str;
    }

    private GoogleCredential authorize() throws Throwable {
        FileInputStream fileInputStream;
        Throwable th;
        if (this.cachedCredentialsFile == null) {
            this.cachedCredentialsFile = MediaUtil.copyMediaToTempFile(this.container.$form(), this.credentialsPath);
        }
        try {
            fileInputStream = new FileInputStream(this.cachedCredentialsFile);
        } catch (Throwable th2) {
            fileInputStream = null;
            th = th2;
        }
        try {
            GoogleCredential googleCredentialCreateScoped = GoogleCredential.fromStream(fileInputStream).createScoped(Collections.singletonList("https://www.googleapis.com/auth/spreadsheets"));
            googleCredentialCreateScoped.refreshToken();
            this.accessToken = googleCredentialCreateScoped.getAccessToken();
            IOUtils.closeQuietly(LOG_TAG, fileInputStream);
            _COROUTINE.a.B("Credential after refresh token: ", this.accessToken, LOG_TAG);
            return googleCredentialCreateScoped;
        } catch (Throwable th3) {
            th = th3;
            IOUtils.closeQuietly(LOG_TAG, fileInputStream);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Sheets getSheetsService() throws Throwable {
        if (this.sheetsService == null) {
            this.sheetsService = new Sheets.Builder(new NetHttpTransport(), JacksonFactory.getDefaultInstance(), authorize()).setApplicationName(this.applicationName).build();
        }
        return this.sheetsService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getColString(int i) {
        if (i == 0) {
            return "";
        }
        String[] strArr = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
        StringBuilder sb = new StringBuilder();
        int i2 = i;
        while (i2 > 0) {
            int i3 = i2 - 1;
            sb.insert(0, strArr[i3 % 26]);
            i2 = i3 / 26;
        }
        return sb.toString();
    }

    private int getColNum(String str) {
        if (str == null || str.isEmpty()) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < str.toCharArray().length; i2++) {
            i = (r5[i2] - 'A') + (i * 26) + 1;
        }
        return i;
    }

    @SimpleEvent(description = "Triggered whenever an API call encounters an error. Details about the error are in `errorMessage`.")
    public void ErrorOccurred(final String str) {
        Log.d(LOG_TAG, str);
        this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.1
            @Override // java.lang.Runnable
            public void run() {
                if (EventDispatcher.dispatchEvent(this, "ErrorOccurred", str)) {
                    return;
                }
                Spreadsheet spreadsheet = Spreadsheet.this;
                spreadsheet.form.dispatchErrorOccurredEvent(spreadsheet, "ErrorOccurred", ErrorMessages.ERROR_SPREADSHEET_ERROR, str);
            }
        });
    }

    @SimpleFunction(description = "Converts the integer representation of rows and columns to A1-Notation used in Google Sheets for a single cell.")
    public String GetCellReference(int i, int i2) {
        return getColString(i2) + i;
    }

    @SimpleFunction(description = "Converts the integer representation of rows and columns for the corners of the range to A1-Notation used in Google Sheets.")
    public String GetRangeReference(int i, int i2, int i3, int i4) {
        return _COROUTINE.a.j(GetCellReference(i, i2), ":", GetCellReference(i3, i4));
    }

    @SimpleEvent(description = "The callback event for the ReadWithExactQuery or ReadWithPartialQuery block. The `response` is a list of rows numbers and a list of rows containing cell data.", userVisible = false)
    public void GotFilterResult(List<Integer> list, List<List<String>> list2) {
        Log.d(LOG_TAG, "GotFilterResult got: " + list);
        EventDispatcher.dispatchEvent(this, "GotFilterResult", list, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getResponseContent(HttpURLConnection httpURLConnection) throws Throwable {
        InputStreamReader inputStreamReader;
        StringBuilder sb;
        String contentEncoding = httpURLConnection.getContentEncoding();
        if (contentEncoding == null) {
            contentEncoding = "UTF-8";
        }
        InputStreamReader inputStreamReader2 = null;
        try {
            inputStreamReader = new InputStreamReader(getConnectionStream(httpURLConnection), contentEncoding);
        } catch (Throwable th) {
            th = th;
        }
        try {
            int contentLength = httpURLConnection.getContentLength();
            if (contentLength != -1) {
                sb = new StringBuilder(contentLength);
            } else {
                sb = new StringBuilder();
            }
            char[] cArr = new char[1024];
            while (true) {
                int i = inputStreamReader.read(cArr);
                if (i != -1) {
                    sb.append(cArr, 0, i);
                } else {
                    String string = sb.toString();
                    IOUtils.closeQuietly(LOG_TAG, inputStreamReader);
                    return string;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            inputStreamReader2 = inputStreamReader;
            IOUtils.closeQuietly(LOG_TAG, inputStreamReader2);
            throw th;
        }
    }

    private static InputStream getConnectionStream(HttpURLConnection httpURLConnection) throws SocketTimeoutException {
        try {
            return httpURLConnection.getInputStream();
        } catch (SocketTimeoutException e) {
            throw e;
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    @SimpleFunction(description = "Filters a Google Sheet for rows where the given column number matches the provided value.")
    public void ReadWithExactFilter(String str, int i, String str2) {
        Log.d(LOG_TAG, "ReadRowsWithFilter colID " + i + ", value " + str2);
        String str3 = this.spreadsheetID;
        if (str3 == null || str3.isEmpty()) {
            ErrorOccurred("ReadWithExactFilter: SpreadsheetID is empty.");
        } else {
            AsynchUtil.runAsynchronously(RetrieveSheet(str, i, str2, true, true));
        }
    }

    @SimpleFunction(description = "Filters a Google Sheet for rows where the given column number contains the provided value string.")
    public void ReadWithPartialFilter(String str, int i, String str2) {
        Log.d(LOG_TAG, "ReadWithPartialFilter colID " + i + ", value " + str2);
        String str3 = this.spreadsheetID;
        if (str3 == null || str3.isEmpty()) {
            ErrorOccurred("ReadWithPartialFilter: SpreadsheetID is empty.");
        } else {
            AsynchUtil.runAsynchronously(RetrieveSheet(str, i, str2, false, true));
        }
    }

    @SimpleFunction(description = "On the page with the provided sheetName, this method will read the row at the given rowNumber and trigger the GotRowData callback event.")
    public void ReadRow(String str, int i) {
        String str2 = this.spreadsheetID;
        if (str2 == "" || str2 == null) {
            ErrorOccurred("ReadRow: SpreadsheetID is empty.");
            return;
        }
        Log.d(LOG_TAG, "Read Row number: " + i);
        final String str3 = str + "!" + i + ":" + i;
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.2
            @Override // java.lang.Runnable
            public void run() throws ProtocolException, UnsupportedEncodingException {
                try {
                    if (Spreadsheet.this.credentialsPath == null) {
                        try {
                            String strEncode = URLEncoder.encode(str3, "UTF-8");
                            String str4 = "https://docs.google.com/spreadsheets/d/" + Spreadsheet.this.spreadsheetID + "/export?format=csv&range=" + strEncode;
                            Log.d(Spreadsheet.LOG_TAG, "ReadRow url: ".concat(str4));
                            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str4).openConnection();
                            httpURLConnection.setRequestMethod("GET");
                            if (httpURLConnection.getResponseCode() == 400) {
                                Spreadsheet.this.ErrorOccurred("ReadRow: Bad HTTP Request. Please check the address and try again. ".concat(str4));
                                return;
                            }
                            Iterator it = ((LList) CsvUtil.fromCsvTable(Spreadsheet.getResponseContent(httpURLConnection)).getCdr()).iterator();
                            while (it.hasNext()) {
                                Object next = it.next();
                                if (next instanceof YailList) {
                                    final YailList yailList = (YailList) next;
                                    Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.2.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            Spreadsheet.this.GotRowData(yailList);
                                        }
                                    });
                                    return;
                                }
                            }
                            Spreadsheet.this.ErrorOccurred("ReadRow: Could not find a row from the HTTP Request.");
                            return;
                        } catch (UnsupportedEncodingException unused) {
                            Spreadsheet.this.ErrorOccurred("ReadRow: Error occurred encoding the query. UTF-8 is unsupported?");
                            return;
                        }
                    }
                    List values = ((ValueRange) Spreadsheet.this.getSheetsService().spreadsheets().values().get(Spreadsheet.this.spreadsheetID, str3).execute()).getValues();
                    if (values != null && !values.isEmpty()) {
                        final ArrayList arrayList = new ArrayList();
                        for (Object obj : (List) values.get(0)) {
                            if (obj == null) {
                                obj = "";
                            }
                            arrayList.add(String.format("%s", obj));
                        }
                        Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                Spreadsheet.this.GotRowData(arrayList);
                            }
                        });
                        return;
                    }
                    Spreadsheet.this.ErrorOccurred("ReadRow: No data found");
                } catch (Exception e) {
                    e.printStackTrace();
                    Spreadsheet.this.ErrorOccurred("ReadRow: " + e.getMessage());
                }
            }
        });
    }

    @SimpleEvent(description = "The callback event for the ReadRow block. The `rowDataList` is a list of cell values in order of increasing column number.")
    public void GotRowData(List<String> list) {
        EventDispatcher.dispatchEvent(this, "GotRowData", list);
    }

    @SimpleFunction(description = "Given a list of values as `data`, writes the values to the row of the sheet with the given row number.")
    public void WriteRow(String str, int i, YailList yailList) {
        String str2 = this.spreadsheetID;
        if (str2 == "" || str2 == null) {
            ErrorOccurred("WriteRow: SpreadsheetID is empty.");
            return;
        }
        String str3 = this.credentialsPath;
        if (str3 == "" || str3 == null) {
            ErrorOccurred("WriteRow: Credentials JSON file is required.");
            return;
        }
        final String str4 = String.format("%s!A%d", str, Integer.valueOf(i));
        LList lList = (LList) yailList.getCdr();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ArrayList(lList));
        final ValueRange values = new ValueRange().setValues(arrayList);
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Spreadsheet.this.getSheetsService().spreadsheets().values().update(Spreadsheet.this.spreadsheetID, str4, values).setValueInputOption("USER_ENTERED").execute();
                    Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Spreadsheet.this.FinishedWriteRow();
                        }
                    });
                } catch (Exception e) {
                    e.printStackTrace();
                    Spreadsheet.this.ErrorOccurred("WriteRow: " + e.getMessage());
                }
            }
        });
    }

    @SimpleEvent(description = "The callback event for the WriteRow block, called after the values on the table have finished updating")
    public void FinishedWriteRow() {
        EventDispatcher.dispatchEvent(this, "FinishedWriteRow", new Object[0]);
    }

    @SimpleFunction
    public void AddSheet(final String str) {
        String str2 = this.spreadsheetID;
        if (str2 == null || str2.isEmpty()) {
            ErrorOccurred("AddSheet: SpreadsheetID is empty.");
            return;
        }
        String str3 = this.credentialsPath;
        if (str3 == null || str3.isEmpty()) {
            ErrorOccurred("AddSheet: Credentials JSON is required.");
        } else {
            AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.4
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    try {
                        Sheets sheetsService = Spreadsheet.this.getSheetsService();
                        AddSheetRequest properties = new AddSheetRequest().setProperties(new SheetProperties().setTitle(str));
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(new Request().setAddSheet(properties));
                        Spreadsheet.this.updateSheetID(str, ((Response) ((BatchUpdateSpreadsheetResponse) sheetsService.spreadsheets().batchUpdate(Spreadsheet.this.spreadsheetID, new BatchUpdateSpreadsheetRequest().setRequests(arrayList)).execute()).getReplies().get(0)).getAddSheet().getProperties().getSheetId().intValue());
                        Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                Spreadsheet.this.FinishedAddSheet(str);
                            }
                        });
                    } catch (Exception e) {
                        Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.4.2
                            @Override // java.lang.Runnable
                            public void run() {
                                Log.e(Spreadsheet.LOG_TAG, "Error occurred in AddSheet", e);
                                Spreadsheet.this.ErrorOccurred("AddSheet: " + e.getMessage());
                            }
                        });
                    }
                }
            });
        }
    }

    @SimpleEvent(description = "The callback event for the addSheet block, called once the values on the table have been updated.")
    public void FinishedAddSheet(String str) {
        EventDispatcher.dispatchEvent(this, "FinishedAddSheet", str);
    }

    @SimpleFunction
    public void DeleteSheet(final String str) {
        String str2 = this.spreadsheetID;
        if (str2 == null || str2.isEmpty()) {
            ErrorOccurred("DeleteSheet: SpreadsheetID is empty.");
            return;
        }
        String str3 = this.credentialsPath;
        if (str3 == null || str3.isEmpty()) {
            ErrorOccurred("DeleteSheet: Credentials JSON is required.");
        } else {
            AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.5
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    try {
                        Sheets sheetsService = Spreadsheet.this.getSheetsService();
                        DeleteSheetRequest sheetId = new DeleteSheetRequest().setSheetId(Integer.valueOf(Spreadsheet.this.getSheetID(sheetsService, str)));
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(new Request().setDeleteSheet(sheetId));
                        sheetsService.spreadsheets().batchUpdate(Spreadsheet.this.spreadsheetID, new BatchUpdateSpreadsheetRequest().setRequests(arrayList)).execute();
                        Spreadsheet.this.removeSheetID(str);
                        Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                Spreadsheet.this.FinishedDeleteSheet(str);
                            }
                        });
                    } catch (Exception e) {
                        Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.5.2
                            @Override // java.lang.Runnable
                            public void run() {
                                Log.e(Spreadsheet.LOG_TAG, "Error occurred in DeleteSheet", e);
                                Spreadsheet.this.ErrorOccurred("DeleteSheet: " + e.getMessage());
                            }
                        });
                    }
                }
            });
        }
    }

    @SimpleEvent(description = "The callback event for the DeleteSheet block, called once the values on the table have been updated.")
    public void FinishedDeleteSheet(String str) {
        EventDispatcher.dispatchEvent(this, "FinishedDeleteSheet", str);
    }

    @SimpleFunction(description = "Given a list of values as `data`, appends the values to the next empty row of the sheet. Additionally, this returns the row number for the new row.")
    public void AddRow(final String str, YailList yailList) {
        String str2 = this.spreadsheetID;
        if (str2 == null || str2.isEmpty()) {
            ErrorOccurred("AddRow: SpreadsheetID is empty.");
            return;
        }
        String str3 = this.credentialsPath;
        if (str3 == null || str3.isEmpty()) {
            ErrorOccurred("AddRow: Credentials JSON is required.");
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(sanitizeList(yailList));
        final ValueRange range = new ValueRange().setValues(arrayList).setRange(str);
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.6
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                try {
                    Sheets sheetsService = Spreadsheet.this.getSheetsService();
                    List values = ((ValueRange) sheetsService.spreadsheets().values().get(Spreadsheet.this.spreadsheetID, str).execute()).getValues();
                    int size = values == null ? 1 : values.size() + 1;
                    final int i = Integer.parseInt(((AppendValuesResponse) sheetsService.spreadsheets().values().append(Spreadsheet.this.spreadsheetID, str + "!A" + size, range.setRange(str + "!A" + size)).setValueInputOption("USER_ENTERED").setInsertDataOption("INSERT_ROWS").execute()).getUpdates().getUpdatedRange().split("!")[1].split(":")[0].replaceAll("[^\\d.]", ""));
                    Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Spreadsheet.this.FinishedAddRow(i);
                        }
                    });
                    if (Spreadsheet.this.observers.size() > 0) {
                        Spreadsheet.this.RetrieveSheet(str, -1, null, false, false);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    Spreadsheet.this.ErrorOccurred("AddRow: " + e.getMessage());
                }
            }
        });
    }

    @SimpleEvent(description = "The callback event for the AddRow block, called once the values on the table have been updated.")
    public void FinishedAddRow(int i) {
        EventDispatcher.dispatchEvent(this, "FinishedAddRow", Integer.valueOf(i));
    }

    @SimpleFunction(description = "Deletes the row with the given row number from the table.This does not clear the row, but removes it entirely.")
    public void RemoveRow(final String str, final int i) {
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.7
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                try {
                    Sheets sheetsService = Spreadsheet.this.getSheetsService();
                    int sheetID = Spreadsheet.this.getSheetID(sheetsService, str);
                    if (sheetID == -1) {
                        Spreadsheet.this.ErrorOccurred("RemoveCol: sheetName not found");
                        return;
                    }
                    DeleteDimensionRequest range = new DeleteDimensionRequest().setRange(new DimensionRange().setSheetId(Integer.valueOf(sheetID)).setDimension("ROWS").setStartIndex(Integer.valueOf(i - 1)).setEndIndex(Integer.valueOf(i)));
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new Request().setDeleteDimension(range));
                    sheetsService.spreadsheets().batchUpdate(Spreadsheet.this.spreadsheetID, new BatchUpdateSpreadsheetRequest().setRequests(arrayList)).execute();
                    Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Spreadsheet.this.FinishedRemoveRow();
                        }
                    });
                } catch (Exception e) {
                    e.printStackTrace();
                    Spreadsheet.this.ErrorOccurred("RemoveRow: " + e.getMessage());
                }
            }
        });
    }

    @SimpleEvent(description = "The callback event for the RemoveRow block, called once thevalues on the table have been updated.")
    public void FinishedRemoveRow() {
        EventDispatcher.dispatchEvent(this, "FinishedRemoveRow", new Object[0]);
    }

    @SimpleFunction(description = "On the page with the provided sheetName, reads the column at the given index and triggers the GotColumnData callback event.")
    public void ReadColumn(String str, String str2) {
        String str3 = this.spreadsheetID;
        if (str3 == null || str3.isEmpty()) {
            ErrorOccurred("ReadColumn: SpreadsheetID is empty.");
            return;
        }
        if (Pattern.compile("^[0-9]+$").matcher(str2).find()) {
            str2 = getColString(Integer.parseInt(str2));
        }
        final String str4 = str + "!" + str2 + ":" + str2;
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.8
            @Override // java.lang.Runnable
            public void run() throws ProtocolException, UnsupportedEncodingException {
                try {
                    if (Spreadsheet.this.credentialsPath == null) {
                        try {
                            String strEncode = URLEncoder.encode(str4, "UTF-8");
                            String str5 = "https://docs.google.com/spreadsheets/d/" + Spreadsheet.this.spreadsheetID + "/export?format=csv&range=" + strEncode;
                            Log.d(Spreadsheet.LOG_TAG, "ReadColumn url: ".concat(str5));
                            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str5).openConnection();
                            httpURLConnection.setRequestMethod("GET");
                            if (httpURLConnection.getResponseCode() == 400) {
                                Spreadsheet.this.ErrorOccurred("ReadColumn: Bad HTTP Request. Please check the address and try again. ".concat(str5));
                                return;
                            }
                            YailList yailListFromCsvTable = CsvUtil.fromCsvTable(Spreadsheet.getResponseContent(httpURLConnection));
                            final ArrayList arrayList = new ArrayList();
                            Iterator it = ((LList) yailListFromCsvTable.getCdr()).iterator();
                            while (it.hasNext()) {
                                Object next = it.next();
                                if (next instanceof YailList) {
                                    YailList yailList = (YailList) next;
                                    arrayList.add(String.format("%s", yailList.isEmpty() ? "" : yailList.get(1)));
                                }
                            }
                            Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.8.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    Spreadsheet.this.GotColumnData(arrayList);
                                }
                            });
                            return;
                        } catch (UnsupportedEncodingException unused) {
                            Spreadsheet.this.ErrorOccurred("ReadColumn: Error occurred encoding the query. UTF-8 is unsupported?");
                            return;
                        }
                    }
                    List<List> values = ((ValueRange) Spreadsheet.this.getSheetsService().spreadsheets().values().get(Spreadsheet.this.spreadsheetID, str4).execute()).getValues();
                    if (values != null && !values.isEmpty()) {
                        final ArrayList arrayList2 = new ArrayList();
                        for (List list : values) {
                            arrayList2.add(list.isEmpty() ? "" : list.get(0).toString());
                        }
                        Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.8.2
                            @Override // java.lang.Runnable
                            public void run() {
                                Spreadsheet.this.GotColumnData(arrayList2);
                            }
                        });
                        return;
                    }
                    Spreadsheet.this.ErrorOccurred("ReadColumn: No data found.");
                } catch (Exception e) {
                    e.printStackTrace();
                    Spreadsheet.this.ErrorOccurred("ReadColumn: " + e.getMessage());
                }
            }
        });
    }

    @SimpleEvent(description = "After calling the ReadColumn method, the data in the column will be stored as a list of text values in `columnData`.")
    public void GotColumnData(List<String> list) {
        Log.d(LOG_TAG, "GotColumnData got: " + list);
        EventDispatcher.dispatchEvent(this, "GotColumnData", list);
    }

    @SimpleFunction(description = "Given a list of values as `data`, this method will write the values to the column of the sheet and calls the FinishedWriteColumn event once complete.")
    public void WriteColumn(String str, String str2, YailList yailList) {
        String str3 = this.spreadsheetID;
        if (str3 == null || str3.isEmpty()) {
            ErrorOccurred("WriteColumn: SpreadsheetID is empty.");
            return;
        }
        String str4 = this.credentialsPath;
        if (str4 == null || str4.isEmpty()) {
            ErrorOccurred("WriteColumn: Credentials JSON is required.");
            return;
        }
        if (INTEGER.matcher(str2).matches()) {
            str2 = getColString(Integer.parseInt(str2));
        }
        final String str5 = str + "!" + str2 + ":" + str2;
        ArrayList arrayList = new ArrayList();
        Iterator it = ((LList) yailList.getCdr()).iterator();
        while (it.hasNext()) {
            arrayList.add(new ArrayList(Collections.singletonList(sanitizeObject(it.next()))));
        }
        final ValueRange values = new ValueRange().setValues(arrayList);
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Spreadsheet.this.getSheetsService().spreadsheets().values().update(Spreadsheet.this.spreadsheetID, str5, values).setValueInputOption("USER_ENTERED").execute();
                    Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Spreadsheet.this.FinishedWriteColumn();
                        }
                    });
                } catch (IOException e) {
                    e.printStackTrace();
                    Spreadsheet.this.ErrorOccurred("WriteColumn IOException: " + e.getMessage());
                } catch (GeneralSecurityException e2) {
                    e2.printStackTrace();
                    Spreadsheet.this.ErrorOccurred("WriteColumn GeneralSecurityException: " + e2.getMessage());
                }
            }
        });
    }

    @SimpleEvent(description = "The callback event for the WriteColumn block, called once thevalues on the table have been updated.")
    public void FinishedWriteColumn() {
        EventDispatcher.dispatchEvent(this, "FinishedWriteColumn", new Object[0]);
    }

    @SimpleFunction(description = "Given a list of values as `data`, appends the values to the next empty column of the sheet.")
    public void AddColumn(final String str, YailList yailList) {
        String str2 = this.spreadsheetID;
        if (str2 == null || str2.isEmpty()) {
            ErrorOccurred("AddColumn: SpreadsheetID is empty.");
            return;
        }
        String str3 = this.credentialsPath;
        if (str3 == null || str3.isEmpty()) {
            ErrorOccurred("AddColumn: Credentials JSON is required.");
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = ((LList) yailList.getCdr()).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(sanitizeObject(next));
            arrayList.add(arrayList2);
        }
        final ValueRange values = new ValueRange().setValues(arrayList);
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.10
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                try {
                    Sheets sheetsService = Spreadsheet.this.getSheetsService();
                    List values2 = ((ValueRange) sheetsService.spreadsheets().values().get(Spreadsheet.this.spreadsheetID, str).execute()).getValues();
                    if (values2 != null && !values2.isEmpty()) {
                        Iterator it2 = values2.iterator();
                        int iMax = 0;
                        while (it2.hasNext()) {
                            iMax = Math.max(iMax, ((List) it2.next()).size());
                        }
                        final int i = iMax + 1;
                        String colString = Spreadsheet.this.getColString(i);
                        Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.10.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Spreadsheet.this.FinishedAddColumn(i);
                            }
                        });
                        return;
                    }
                    Spreadsheet.this.ErrorOccurred("AddColumn: No data found");
                } catch (IOException e) {
                    e.printStackTrace();
                    Spreadsheet.this.ErrorOccurred("AddColumn IOException: " + e.getMessage());
                } catch (GeneralSecurityException e2) {
                    e2.printStackTrace();
                    Spreadsheet.this.ErrorOccurred("AddColumn GeneralSecurityException: " + e2.getMessage());
                }
            }
        });
    }

    @SimpleEvent(description = "This event will be triggered once the AddColumn method has finished executing and the values on the spreadsheet have been updated. Additionally, this returns the column number for the new column.")
    public void FinishedAddColumn(int i) {
        EventDispatcher.dispatchEvent(this, "FinishedAddColumn", Integer.valueOf(i));
    }

    @SimpleFunction(description = "Deletes the column with the given column number from the table.This does not clear the column, but removes it entirely.")
    public void RemoveColumn(final String str, String str2) throws NumberFormatException {
        final int colNum;
        if (Pattern.compile("^[0-9]+$").matcher(str2).find()) {
            colNum = Integer.parseInt(str2);
        } else {
            colNum = getColNum(str2);
        }
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.11
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                try {
                    Sheets sheetsService = Spreadsheet.this.getSheetsService();
                    int sheetID = Spreadsheet.this.getSheetID(sheetsService, str);
                    if (sheetID == -1) {
                        Spreadsheet.this.ErrorOccurred("RemoveColumn: sheetName not found");
                        return;
                    }
                    DeleteDimensionRequest range = new DeleteDimensionRequest().setRange(new DimensionRange().setSheetId(Integer.valueOf(sheetID)).setDimension("COLUMNS").setStartIndex(Integer.valueOf(colNum - 1)).setEndIndex(Integer.valueOf(colNum)));
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new Request().setDeleteDimension(range));
                    sheetsService.spreadsheets().batchUpdate(Spreadsheet.this.spreadsheetID, new BatchUpdateSpreadsheetRequest().setRequests(arrayList)).execute();
                    Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.11.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Spreadsheet.this.FinishedRemoveColumn();
                        }
                    });
                } catch (Exception e) {
                    e.printStackTrace();
                    Spreadsheet.this.ErrorOccurred("RemoveColumn: " + e.getMessage());
                }
            }
        });
    }

    @SimpleEvent(description = "The callback event for the RemoveColumn block, called once the values on the table have been updated.")
    public void FinishedRemoveColumn() {
        EventDispatcher.dispatchEvent(this, "FinishedRemoveColumn", new Object[0]);
    }

    @SimpleFunction(description = "On the page with the provided sheetName, reads the cell at the given cellReference and triggers the GotCellData callback event.")
    public void ReadCell(final String str, final String str2) {
        String str3 = this.spreadsheetID;
        if (str3 == null || str3.isEmpty()) {
            ErrorOccurred("ReadCell: SpreadsheetID is empty.");
        } else if (!str2.matches("[a-zA-Z]+[0-9]+")) {
            ErrorOccurred("ReadCell: Invalid Cell Reference");
        } else {
            AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.12
                @Override // java.lang.Runnable
                public void run() throws ProtocolException, UnsupportedEncodingException {
                    _COROUTINE.a.B("Reading Cell: ", str2, Spreadsheet.LOG_TAG);
                    try {
                        Object obj = "";
                        if (Spreadsheet.this.credentialsPath != null) {
                            List values = ((ValueRange) Spreadsheet.this.getSheetsService().spreadsheets().values().get(Spreadsheet.this.spreadsheetID, str + "!" + str2).execute()).getValues();
                            if (values != null && !values.isEmpty()) {
                                if (!((List) values.get(0)).isEmpty()) {
                                    obj = ((List) values.get(0)).get(0);
                                }
                                final String str4 = String.format("%s", obj);
                                Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.12.3
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        Spreadsheet.this.GotCellData(str4);
                                    }
                                });
                                return;
                            }
                            Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.12.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    Spreadsheet.this.GotCellData("");
                                }
                            });
                            return;
                        }
                        try {
                            String strEncode = URLEncoder.encode(str2, "UTF-8");
                            String str5 = "https://docs.google.com/spreadsheets/d/" + Spreadsheet.this.spreadsheetID + "/export?format=csv&range=" + strEncode;
                            Log.d(Spreadsheet.LOG_TAG, "ReadCell url: ".concat(str5));
                            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str5).openConnection();
                            httpURLConnection.setRequestMethod("GET");
                            if (httpURLConnection.getResponseCode() == 400) {
                                Spreadsheet.this.ErrorOccurred("ReadCell: Bad HTTP Request. Please check the address and try again. ".concat(str5));
                                return;
                            }
                            Iterator it = ((LList) CsvUtil.fromCsvTable(Spreadsheet.getResponseContent(httpURLConnection)).getCdr()).iterator();
                            while (it.hasNext()) {
                                Object next = it.next();
                                if (next instanceof YailList) {
                                    YailList yailList = (YailList) next;
                                    if (!yailList.isEmpty()) {
                                        obj = yailList.get(1);
                                    }
                                    final String str6 = String.format("%s", obj);
                                    Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.12.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            Spreadsheet.this.GotCellData(str6);
                                        }
                                    });
                                    return;
                                }
                            }
                            Spreadsheet.this.ErrorOccurred("ReadCell: Error reading cell data from HTTP Request");
                        } catch (UnsupportedEncodingException unused) {
                            Spreadsheet.this.ErrorOccurred("ReadCell: Error occurred encoding the query. UTF-8 is unsupported?");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        Spreadsheet.this.ErrorOccurred("ReadCell: " + e.getMessage());
                    }
                }
            });
        }
    }

    @SimpleEvent(description = "The callback event for the ReadCell block. The `cellData` is the text value in the cell (and not the underlying formula).")
    public void GotCellData(String str) {
        _COROUTINE.a.B("GotCellData got: ", str, LOG_TAG);
        EventDispatcher.dispatchEvent(this, "GotCellData", str);
    }

    @SimpleFunction(description = "Given text or a number as `data`, writes the value into the cell. Once complete, it triggers the FinishedWriteCell callback event")
    public void WriteCell(String str, String str2, Object obj) {
        if (this.spreadsheetID == "") {
            ErrorOccurred("WriteCell: SpreadsheetID is empty.");
            return;
        }
        if (this.credentialsPath == null) {
            ErrorOccurred("WriteCell: Credentials JSON is required.");
            return;
        }
        final String strJ = _COROUTINE.a.j(str, "!", str2);
        final ValueRange values = new ValueRange().setValues(Arrays.asList(Arrays.asList(sanitizeObject(obj))));
        Log.d(LOG_TAG, "Writing Cell: " + strJ);
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.13
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Spreadsheet.this.getSheetsService().spreadsheets().values().update(Spreadsheet.this.spreadsheetID, strJ, values).setValueInputOption("USER_ENTERED").execute();
                    Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.13.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Spreadsheet.this.FinishedWriteCell();
                        }
                    });
                } catch (Exception e) {
                    e.printStackTrace();
                    Spreadsheet.this.ErrorOccurred("WriteCell: " + e.getMessage());
                }
            }
        });
    }

    @SimpleEvent(description = "The callback event for the WriteCell block.")
    public void FinishedWriteCell() {
        EventDispatcher.dispatchEvent(this, "FinishedWriteCell", new Object[0]);
    }

    @SimpleFunction(description = "On the page with the provided sheetName, reads the cells at the given range. Triggers the getRangeReference once complete.")
    public void ReadRange(final String str, final String str2) {
        String str3 = this.spreadsheetID;
        if (str3 == "" || str3 == null) {
            ErrorOccurred("ReadRange: SpreadsheetID is empty.");
        } else {
            AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.14
                @Override // java.lang.Runnable
                public void run() throws ProtocolException, UnsupportedEncodingException {
                    _COROUTINE.a.B("Reading Range: ", str2, Spreadsheet.LOG_TAG);
                    try {
                        if (Spreadsheet.this.credentialsPath == null) {
                            try {
                                String strEncode = URLEncoder.encode(str2, "UTF-8");
                                String str4 = "https://docs.google.com/spreadsheets/d/" + Spreadsheet.this.spreadsheetID + "/export?format=csv&range=" + strEncode;
                                Log.d(Spreadsheet.LOG_TAG, "ReadRange url: ".concat(str4));
                                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str4).openConnection();
                                httpURLConnection.setRequestMethod("GET");
                                if (httpURLConnection.getResponseCode() == 400) {
                                    Spreadsheet.this.ErrorOccurred("ReadRange: Bad HTTP Request. Please check the address and try again. ".concat(str4));
                                    return;
                                } else {
                                    final YailList yailListFromCsvTable = CsvUtil.fromCsvTable(Spreadsheet.getResponseContent(httpURLConnection));
                                    Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.14.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            Spreadsheet.this.GotRangeData(yailListFromCsvTable);
                                        }
                                    });
                                    return;
                                }
                            } catch (UnsupportedEncodingException unused) {
                                Spreadsheet.this.ErrorOccurred("ReadRange: Error occurred encoding the query. UTF-8 is unsupported?");
                                return;
                            }
                        }
                        List<List> values = ((ValueRange) Spreadsheet.this.getSheetsService().spreadsheets().values().get(Spreadsheet.this.spreadsheetID, str + "!" + str2).execute()).getValues();
                        if (values != null && !values.isEmpty()) {
                            final ArrayList arrayList = new ArrayList();
                            for (List list : values) {
                                ArrayList arrayList2 = new ArrayList();
                                for (Object obj : list) {
                                    if (obj == null) {
                                        obj = "";
                                    }
                                    arrayList2.add(String.format("%s", obj));
                                }
                                arrayList.add(arrayList2);
                            }
                            Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.14.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    Spreadsheet.this.GotRangeData(arrayList);
                                }
                            });
                            return;
                        }
                        Spreadsheet.this.ErrorOccurred("ReadRange: No data found.");
                    } catch (Exception e) {
                        e.printStackTrace();
                        Spreadsheet.this.ErrorOccurred("ReadRange: " + e.getMessage());
                    }
                }
            });
        }
    }

    @SimpleEvent(description = "The callback event for the ReadRange block. The `rangeData` is a list of rows with the requested dimensions.")
    public void GotRangeData(List<List<String>> list) {
        Log.d(LOG_TAG, "GotRangeData got: " + list);
        EventDispatcher.dispatchEvent(this, "GotRangeData", list);
    }

    @SimpleFunction(description = "Given list of lists as `data`, writes the values into the range. The number of rows and columns in the range reference must match the dimensions of the data.")
    public void WriteRange(String str, String str2, YailList yailList) {
        String str3 = this.spreadsheetID;
        if (str3 == "" || str3 == null) {
            ErrorOccurred("WriteRange: SpreadsheetID is empty.");
            return;
        }
        if (this.credentialsPath == null) {
            ErrorOccurred("WriteRange: Credentials JSON is required.");
            return;
        }
        final String strJ = _COROUTINE.a.j(str, "!", str2);
        Log.d(LOG_TAG, "Writing Range: " + strJ);
        ArrayList arrayList = new ArrayList();
        Iterator it = ((LList) yailList.getCdr()).iterator();
        int size = -1;
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof YailList) {
                List<Object> listSanitizeList = sanitizeList((YailList) next);
                arrayList.add(listSanitizeList);
                if (size == -1) {
                    size = listSanitizeList.size();
                }
                if (listSanitizeList.size() != size) {
                    ErrorOccurred("WriteRange: Rows must have the same length");
                    return;
                }
            }
        }
        if (arrayList.size() == 0) {
            ErrorOccurred("WriteRange: Data must be a list of lists.");
            return;
        }
        final ValueRange values = new ValueRange().setValues(arrayList);
        Log.d(LOG_TAG, "Body's Range in A1: " + values.getRange());
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.15
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Spreadsheet.this.getSheetsService().spreadsheets().values().update(Spreadsheet.this.spreadsheetID, strJ, values).setValueInputOption("USER_ENTERED").execute();
                    Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.15.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Spreadsheet.this.FinishedWriteRange();
                        }
                    });
                } catch (Exception e) {
                    e.printStackTrace();
                    Spreadsheet.this.ErrorOccurred("WriteRange: " + e.getMessage());
                }
            }
        });
    }

    @SimpleEvent(description = "The callback event for the WriteRange block.")
    public void FinishedWriteRange() {
        EventDispatcher.dispatchEvent(this, "FinishedWriteRange", new Object[0]);
    }

    @SimpleFunction(description = "Empties the cells in the given range. Once complete, this block triggers the FinishedClearRange callback event.")
    public void ClearRange(String str, String str2) {
        String str3 = this.spreadsheetID;
        if (str3 == "" || str3 == null) {
            ErrorOccurred("ClearRange: SpreadsheetID is empty.");
            return;
        }
        if (this.credentialsPath == null) {
            ErrorOccurred("ClearRange: Credential JSON is required.");
            return;
        }
        final String strJ = _COROUTINE.a.j(str, "!", str2);
        Log.d(LOG_TAG, "Clearing Range: " + strJ);
        AsynchUtil.runAsynchronously(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.16
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Spreadsheet.this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.16.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Spreadsheet.this.FinishedClearRange();
                        }
                    });
                } catch (Exception e) {
                    e.printStackTrace();
                    Spreadsheet.this.ErrorOccurred("ClearRange: " + e.getMessage());
                }
            }
        });
    }

    @SimpleEvent(description = "The callback event for the ClearRange block.")
    public void FinishedClearRange() {
        EventDispatcher.dispatchEvent(this, "FinishedClearRange", new Object[0]);
    }

    @SimpleFunction(description = "Reads the *entire* Google Sheet document and triggers the GotSheetData callback event.")
    public void ReadSheet(String str) {
        String str2 = this.spreadsheetID;
        if (str2 == null || str2.isEmpty()) {
            ErrorOccurred("ReadSheet: SpreadsheetID is empty.");
        } else {
            AsynchUtil.runAsynchronously(RetrieveSheet(str, -1, null, false, true));
        }
    }

    public Runnable RetrieveSheet(final String str, final int i, final String str2, final boolean z, final boolean z2) {
        return new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.17
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                if (Spreadsheet.this.spreadsheetID == null || Spreadsheet.this.spreadsheetID.isEmpty()) {
                    Spreadsheet.this.ErrorOccurred("ReadSheet: SpreadsheetID is empty.");
                    return;
                }
                _COROUTINE.a.B("Reading Sheet: ", str, Spreadsheet.LOG_TAG);
                try {
                    if (Spreadsheet.this.credentialsPath == null) {
                        Log.d(Spreadsheet.LOG_TAG, "Reading Sheet: No credentials");
                        try {
                            String strEncode = URLEncoder.encode(str, "UTF-8");
                            String str3 = "https://docs.google.com/spreadsheets/d/" + Spreadsheet.this.spreadsheetID + "/gviz/tq?tqx=out:csv&sheet=" + strEncode;
                            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str3).openConnection();
                            httpURLConnection.setRequestMethod("GET");
                            if (httpURLConnection.getResponseCode() == 400) {
                                Spreadsheet.this.ErrorOccurred("ReadSheet: Bad HTTP Request. Please check the address and try again. ".concat(str3));
                                return;
                            } else {
                                final YailList yailListFromCsvTable = CsvUtil.fromCsvTable(Spreadsheet.getResponseContent(httpURLConnection));
                                Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.17.1
                                    /* JADX WARN: Removed duplicated region for block: B:22:0x0079 A[Catch: Exception -> 0x005b, TryCatch #0 {Exception -> 0x005b, blocks: (B:6:0x001b, B:7:0x0026, B:9:0x002e, B:11:0x0046, B:13:0x004a, B:22:0x0079, B:23:0x0083, B:18:0x005d, B:20:0x0063, B:24:0x0086), top: B:29:0x001b }] */
                                    @Override // java.lang.Runnable
                                    /*
                                        Code decompiled incorrectly, please refer to instructions dump.
                                        To view partially-correct add '--show-bad-code' argument
                                    */
                                    public void run() {
                                        /*
                                            r7 = this;
                                            com.google.appinventor.components.runtime.Spreadsheet$17 r0 = com.google.appinventor.components.runtime.Spreadsheet.AnonymousClass17.this
                                            com.google.appinventor.components.runtime.Spreadsheet r0 = com.google.appinventor.components.runtime.Spreadsheet.this
                                            com.google.appinventor.components.runtime.util.YailList r1 = r2
                                            com.google.appinventor.components.runtime.Spreadsheet.i(r0, r1)
                                            com.google.appinventor.components.runtime.Spreadsheet$17 r0 = com.google.appinventor.components.runtime.Spreadsheet.AnonymousClass17.this
                                            com.google.appinventor.components.runtime.Spreadsheet r0 = com.google.appinventor.components.runtime.Spreadsheet.this
                                            r1 = 0
                                            r0.notifyDataObservers(r1, r1)
                                            com.google.appinventor.components.runtime.Spreadsheet$17 r0 = com.google.appinventor.components.runtime.Spreadsheet.AnonymousClass17.this
                                            boolean r1 = r3
                                            if (r1 == 0) goto Lac
                                            int r1 = r4
                                            if (r1 < 0) goto La5
                                            com.google.appinventor.components.runtime.util.YailList r0 = new com.google.appinventor.components.runtime.util.YailList     // Catch: java.lang.Exception -> L5b
                                            r0.<init>()     // Catch: java.lang.Exception -> L5b
                                            com.google.appinventor.components.runtime.util.YailList r1 = new com.google.appinventor.components.runtime.util.YailList     // Catch: java.lang.Exception -> L5b
                                            r1.<init>()     // Catch: java.lang.Exception -> L5b
                                            r2 = 0
                                        L26:
                                            com.google.appinventor.components.runtime.util.YailList r3 = r2     // Catch: java.lang.Exception -> L5b
                                            int r3 = r3.size()     // Catch: java.lang.Exception -> L5b
                                            if (r2 >= r3) goto L86
                                            com.google.appinventor.components.runtime.util.YailList r3 = r2     // Catch: java.lang.Exception -> L5b
                                            java.lang.Object r3 = r3.get(r2)     // Catch: java.lang.Exception -> L5b
                                            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> L5b
                                            com.google.appinventor.components.runtime.util.YailList r3 = com.google.appinventor.components.runtime.util.CsvUtil.fromCsvRow(r3)     // Catch: java.lang.Exception -> L5b
                                            int r4 = r3.size()     // Catch: java.lang.Exception -> L5b
                                            com.google.appinventor.components.runtime.Spreadsheet$17 r5 = com.google.appinventor.components.runtime.Spreadsheet.AnonymousClass17.this     // Catch: java.lang.Exception -> L5b
                                            int r6 = r4     // Catch: java.lang.Exception -> L5b
                                            if (r4 < r6) goto L26
                                            boolean r4 = r5     // Catch: java.lang.Exception -> L5b
                                            if (r4 == 0) goto L5d
                                            int r6 = r6 + (-1)
                                            java.lang.Object r4 = r3.get(r6)     // Catch: java.lang.Exception -> L5b
                                            com.google.appinventor.components.runtime.Spreadsheet$17 r5 = com.google.appinventor.components.runtime.Spreadsheet.AnonymousClass17.this     // Catch: java.lang.Exception -> L5b
                                            java.lang.String r5 = r6     // Catch: java.lang.Exception -> L5b
                                            boolean r4 = r4.equals(r5)     // Catch: java.lang.Exception -> L5b
                                            if (r4 != 0) goto L79
                                            goto L5d
                                        L5b:
                                            r0 = move-exception
                                            goto L8e
                                        L5d:
                                            com.google.appinventor.components.runtime.Spreadsheet$17 r4 = com.google.appinventor.components.runtime.Spreadsheet.AnonymousClass17.this     // Catch: java.lang.Exception -> L5b
                                            boolean r5 = r5     // Catch: java.lang.Exception -> L5b
                                            if (r5 != 0) goto L83
                                            int r4 = r4     // Catch: java.lang.Exception -> L5b
                                            int r4 = r4 + (-1)
                                            java.lang.Object r4 = r3.get(r4)     // Catch: java.lang.Exception -> L5b
                                            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L5b
                                            com.google.appinventor.components.runtime.Spreadsheet$17 r5 = com.google.appinventor.components.runtime.Spreadsheet.AnonymousClass17.this     // Catch: java.lang.Exception -> L5b
                                            java.lang.String r5 = r6     // Catch: java.lang.Exception -> L5b
                                            boolean r4 = r4.contains(r5)     // Catch: java.lang.Exception -> L5b
                                            if (r4 == 0) goto L83
                                        L79:
                                            java.lang.Integer r4 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L5b
                                            r0.add(r4)     // Catch: java.lang.Exception -> L5b
                                            r1.add(r3)     // Catch: java.lang.Exception -> L5b
                                        L83:
                                            int r2 = r2 + 1
                                            goto L26
                                        L86:
                                            com.google.appinventor.components.runtime.Spreadsheet$17 r2 = com.google.appinventor.components.runtime.Spreadsheet.AnonymousClass17.this     // Catch: java.lang.Exception -> L5b
                                            com.google.appinventor.components.runtime.Spreadsheet r2 = com.google.appinventor.components.runtime.Spreadsheet.this     // Catch: java.lang.Exception -> L5b
                                            r2.GotFilterResult(r0, r1)     // Catch: java.lang.Exception -> L5b
                                            return
                                        L8e:
                                            java.lang.String r1 = r0.getMessage()
                                            java.lang.String r2 = "ReadWithFilter (no creds) Error: "
                                            java.lang.String r3 = "SPREADSHEET"
                                            _COROUTINE.a.B(r2, r1, r3)
                                            com.google.appinventor.components.runtime.Spreadsheet$17 r1 = com.google.appinventor.components.runtime.Spreadsheet.AnonymousClass17.this
                                            com.google.appinventor.components.runtime.Spreadsheet r1 = com.google.appinventor.components.runtime.Spreadsheet.this
                                            java.lang.String r0 = r0.getMessage()
                                            r1.ErrorOccurred(r0)
                                            goto Lac
                                        La5:
                                            com.google.appinventor.components.runtime.Spreadsheet r0 = com.google.appinventor.components.runtime.Spreadsheet.this
                                            com.google.appinventor.components.runtime.util.YailList r1 = r2
                                            r0.GotSheetData(r1)
                                        Lac:
                                            return
                                        */
                                        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.Spreadsheet.AnonymousClass17.AnonymousClass1.run():void");
                                    }
                                });
                                return;
                            }
                        } catch (UnsupportedEncodingException unused) {
                            Spreadsheet.this.ErrorOccurred("ReadRange: Error occurred encoding the query. UTF-8 is unsupported?");
                            return;
                        }
                    }
                    Log.d(Spreadsheet.LOG_TAG, "Reading Sheet: Credentials located.");
                    Sheets sheetsService = Spreadsheet.this.getSheetsService();
                    Log.d(Spreadsheet.LOG_TAG, "Reading Sheet: Got sheet service");
                    ValueRange valueRange = (ValueRange) sheetsService.spreadsheets().values().get(Spreadsheet.this.spreadsheetID, str).execute();
                    Log.d(Spreadsheet.LOG_TAG, "Got read result");
                    List<List> values = valueRange.getValues();
                    Log.d(Spreadsheet.LOG_TAG, "Reading Sheet: values count " + values.size());
                    if (values.isEmpty()) {
                        Spreadsheet.this.ErrorOccurred("ReadSheet: No data found.");
                        return;
                    }
                    final ArrayList arrayList = new ArrayList();
                    Log.d(Spreadsheet.LOG_TAG, "RetriveSheet data: " + values);
                    for (List list : values) {
                        ArrayList arrayList2 = new ArrayList();
                        for (Object obj : list) {
                            if (obj == null) {
                                obj = "";
                            }
                            arrayList2.add(String.format("%s", obj));
                        }
                        arrayList.add(arrayList2);
                    }
                    Log.d(Spreadsheet.LOG_TAG, "RetriveSheet return rowcount: " + arrayList.size());
                    Spreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Spreadsheet.17.2
                        /* JADX WARN: Removed duplicated region for block: B:21:0x00d8 A[Catch: Exception -> 0x00bc, TryCatch #0 {Exception -> 0x00bc, blocks: (B:5:0x0033, B:6:0x003e, B:8:0x0046, B:10:0x0080, B:12:0x00a7, B:21:0x00d8, B:17:0x00be, B:19:0x00c4, B:22:0x00f8, B:23:0x00fc), top: B:29:0x0033 }] */
                        @Override // java.lang.Runnable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public void run() {
                            /*
                                Method dump skipped, instructions count: 312
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.Spreadsheet.AnonymousClass17.AnonymousClass2.run():void");
                        }
                    });
                } catch (Exception e) {
                    e.printStackTrace();
                    Spreadsheet.this.ErrorOccurred("RetrieveSheet Error: " + e.getMessage());
                }
            }
        };
    }

    @SimpleEvent(description = "The callback event for the ReadSheet block. The `sheetData` is a list of rows.")
    public void GotSheetData(List<List<String>> list) {
        Log.d(LOG_TAG, "GotSheetData got: " + list);
        EventDispatcher.dispatchEvent(this, "GotSheetData", list);
    }

    @Override // com.google.appinventor.components.runtime.DataSource
    public Future<YailList> getDataValue(YailList yailList) {
        return getDataValue(yailList, false);
    }

    public Future<YailList> getDataValue(final YailList yailList, final boolean z) {
        final FutureTask<Void> futureTask = this.lastTask;
        FutureTask futureTask2 = new FutureTask(new Callable<YailList>() { // from class: com.google.appinventor.components.runtime.Spreadsheet.18
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public YailList call() throws Exception {
                FutureTask futureTask3 = futureTask;
                if (futureTask3 != null && !futureTask3.isDone() && !futureTask.isCancelled()) {
                    try {
                        futureTask.get();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                return Spreadsheet.this.getColumns(yailList, z);
            }
        });
        AsynchUtil.runAsynchronously(futureTask2);
        return futureTask2;
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void addDataObserver(DataSourceChangeListener dataSourceChangeListener) {
        this.observers.add(dataSourceChangeListener);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void removeDataObserver(DataSourceChangeListener dataSourceChangeListener) {
        this.observers.remove(dataSourceChangeListener);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void notifyDataObservers(YailList yailList, Object obj) {
        Iterator<DataSourceChangeListener> it = this.observers.iterator();
        while (it.hasNext()) {
            it.next().onDataSourceValueChange(this, null, this.columns);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateColumns(YailList yailList) {
        try {
            this.columns = ChartDataSourceUtil.getTranspose(yailList);
        } catch (Exception unused) {
            this.columns = new YailList();
        }
    }

    private YailList getColumn(String str) {
        YailList yailList = new YailList();
        for (int i = 0; i < this.columns.size(); i++) {
            YailList yailList2 = (YailList) this.columns.getObject(i);
            if (!yailList2.isEmpty() && yailList2.getString(0).equals(str)) {
                return yailList2;
            }
        }
        return yailList;
    }

    private YailList getColumn(int i) {
        return i < this.columns.size() ? (YailList) this.columns.getObject(i) : new YailList();
    }

    public YailList getColumns(YailList yailList, boolean z) {
        YailList column;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < yailList.size(); i++) {
            String string = yailList.getString(i);
            if (z) {
                column = getColumn(string);
            } else {
                int i2 = 0;
                for (int i3 = 0; i3 < string.toCharArray().length; i3++) {
                    i2 = (i2 * 26) + (r3[i3] - 'A');
                }
                column = getColumn(i2);
            }
            arrayList.add(column);
        }
        return YailList.makeList((List) arrayList);
    }

    private static List<Object> sanitizeList(YailList yailList) {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((LList) yailList.getCdr()).iterator();
        while (it.hasNext()) {
            arrayList.add(sanitizeObject(it.next()));
        }
        return arrayList;
    }

    private static Object sanitizeObject(Object obj) {
        if (obj instanceof Boolean) {
            return obj;
        }
        if (obj instanceof IntNum) {
            return Long.valueOf(((IntNum) obj).longValue());
        }
        if (obj instanceof DFloNum) {
            return Double.valueOf(((DFloNum) obj).doubleValue());
        }
        if ((obj instanceof Integer) || (obj instanceof Long)) {
            return obj;
        }
        if (obj instanceof Number) {
            return Double.valueOf(((Number) obj).doubleValue());
        }
        return obj instanceof String ? obj : obj.toString();
    }
}
