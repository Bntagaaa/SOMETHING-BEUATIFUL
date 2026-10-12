package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import androidx.core.app.NotificationCompat;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.YailList;
import com.google.common.net.HttpHeaders;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Non-visible component that provides access to the Google spreadsheet storage ", iconName = "images/niotronSpreadsheet.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "json-spreadsheet.jar, json.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronSpreadsheet extends AndroidNonvisibleComponent {
    private Activity activity;
    private String api;
    private ComponentContainer container;
    private Context context;
    private String lastFunction;
    public Handler mainHandler;
    private String main_url;
    private SharedPreferences sharedPreferences;
    private String sheet;
    private boolean useSheetData;

    public NiotronSpreadsheet(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.sheet = "Sheet1";
        this.lastFunction = "";
        this.api = "";
        this.main_url = "";
        this.useSheetData = false;
        this.mainHandler = new Handler();
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "API endpoint is the access key that you'll get from us to read/write data on your Spreadsheet.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void APIEndpoint(String str) {
        this.api = str;
        this.main_url = str;
    }

    @SimpleProperty
    public String APIEndpoint() {
        return this.api;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Sheet Name.")
    @DesignerProperty(defaultValue = "Sheet1", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void SheetName(String str) {
        this.sheet = str;
    }

    @SimpleProperty
    public String SheetName() {
        return this.sheet;
    }

    @SimpleProperty(category = PropertyCategory.GENERAL, description = "Use sheet data, if true then it'll include return value of sheet when you use offline get data blocks. else include spreadsheet data.")
    @DesignerProperty(defaultValue = "false", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void UseSheetData(boolean z) {
        this.useSheetData = z;
    }

    @SimpleProperty
    public boolean UseSheetData() {
        return this.useSheetData;
    }

    public String getValue() {
        return this.context.getSharedPreferences("MySpreadsheet", 0).getString("alldata", "[]");
    }

    public String getValue2() {
        return GetSheet(this.sheet);
    }

    public String getValue3() {
        try {
            return this.context.getSharedPreferences("MySpreadsheet", 0).getString("sheetdata", "[]");
        } catch (Exception unused) {
            return "[]";
        }
    }

    @SimpleFunction
    public String GetSheet(String str) {
        try {
            JSONArray jSONArray = (JSONArray) new JSONParser().parse(getValue());
            for (int i = 0; i < jSONArray.size(); i++) {
                JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                if (jSONObject.get(str) != null) {
                    return jSONObject.get(str).toString();
                }
            }
        } catch (Exception unused) {
        }
        return "[]";
    }

    @SimpleFunction
    public String GetCellValue(String str, int i) {
        String value2 = getValue2();
        if (this.useSheetData) {
            value2 = getValue3();
        }
        try {
            JSONArray jSONArray = (JSONArray) new JSONParser().parse(value2);
            return ((JSONArray) jSONArray.get(i)).get(((JSONArray) jSONArray.get(0)).indexOf(str)).toString();
        } catch (Exception unused) {
            return "";
        }
    }

    @SimpleFunction
    public YailList GetColumnList(String str) {
        String value2 = getValue2();
        if (this.useSheetData) {
            value2 = getValue3();
        }
        try {
            JSONArray jSONArray = (JSONArray) new JSONParser().parse(value2);
            boolean z = false;
            int iIndexOf = ((JSONArray) jSONArray.get(0)).indexOf(str);
            ArrayList arrayList = new ArrayList();
            Iterator it = jSONArray.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (z) {
                    arrayList.add(((JSONArray) next).get(iIndexOf).toString());
                } else {
                    z = true;
                }
            }
            return YailList.makeList((List) arrayList);
        } catch (Exception unused) {
            return new YailList();
        }
    }

    @SimpleFunction
    public YailList GetRowList(int i) {
        String value2 = getValue2();
        if (this.useSheetData) {
            value2 = getValue3();
        }
        try {
            return YailList.makeList((List) ((JSONArray) new JSONParser().parse(value2)).get(i));
        } catch (Exception unused) {
            return new YailList();
        }
    }

    @SimpleFunction
    public YailList GetSheetList() {
        try {
            return YailList.makeList((List) ((JSONArray) new JSONParser().parse(_COROUTINE.a.A("[", this.context.getSharedPreferences("MySpreadsheet", 0).getString("allsheets", "[]"), "]"))).get(0));
        } catch (Exception unused) {
            return new YailList();
        }
    }

    @SimpleFunction(description = "Append row in your sheet")
    public void UploadData(YailList yailList) {
        String strA;
        this.lastFunction = "UPLOAD";
        if (yailList.getObject(1) instanceof YailList) {
            Object[] array = yailList.toArray();
            JSONArray jSONArray = new JSONArray();
            for (Object obj : array) {
                YailList yailList2 = (YailList) obj;
                JSONArray jSONArray2 = new JSONArray();
                for (int i = 0; i < yailList2.size(); i++) {
                    jSONArray2.add(yailList2.getObject(i).toString());
                }
                jSONArray.add(jSONArray2);
            }
            strA = jSONArray.toJSONString();
        } else {
            JSONArray jSONArray3 = new JSONArray();
            for (int i2 = 0; i2 < yailList.size(); i2++) {
                jSONArray3.add(yailList.getObject(i2).toString());
            }
            strA = _COROUTINE.a.A("[", jSONArray3.toJSONString(), "]");
        }
        makeServerCall("method=Append&sheetName=" + this.sheet + "&content=" + strA);
    }

    @SimpleFunction(description = "Delete a row by number")
    public void Delete(int i) {
        this.lastFunction = "DELETE";
        makeServerCall("method=Delete&sheetName=" + this.sheet + "&row=" + i);
    }

    @SimpleFunction(description = "Update Row by number and columns.")
    public void UpdateData(int i, YailList yailList, YailList yailList2) {
        String[] stringArray = yailList.toStringArray();
        String[] stringArray2 = yailList2.toStringArray();
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < stringArray.length; i2++) {
            map.put(stringArray[i2], stringArray2[i2]);
        }
        JSONArray jSONArray = new JSONArray();
        jSONArray.add(new org.json.JSONObject(map));
        String jSONString = jSONArray.toJSONString();
        this.lastFunction = "UPDATE";
        makeServerCall("method=Update&sheetName=" + this.sheet + "&row=" + i + "&content=" + jSONString);
    }

    @SimpleFunction(description = "Performs an HTTPS POST request to read/get data from your spreadsheet")
    public void GetSpreadsheet() {
        this.lastFunction = "READ";
        makeServerCallREAD("method=Read");
    }

    @SimpleFunction(description = "Performs an HTTPS POST request to read/get data from your spreadsheet")
    public void GetSheet() {
        this.lastFunction = "READ";
        makeServerCallSheet("method=GETSHEET&sheetName=" + this.sheet);
    }

    public void makeServerCallSheet(final String str) {
        final String str2 = this.main_url;
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IOException {
                try {
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(str2).openConnection();
                    httpsURLConnection.setRequestMethod("POST");
                    httpsURLConnection.setRequestProperty(HttpHeaders.USER_AGENT, "Mozilla/5.0");
                    httpsURLConnection.setRequestProperty(HttpHeaders.ACCEPT_LANGUAGE, "en-US,en;q=0.5");
                    httpsURLConnection.setDoOutput(true);
                    DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
                    dataOutputStream.writeBytes(str);
                    dataOutputStream.flush();
                    dataOutputStream.close();
                    int responseCode = httpsURLConnection.getResponseCode();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream()));
                    StringBuffer stringBuffer = new StringBuffer();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        } else {
                            stringBuffer.append(line);
                        }
                    }
                    bufferedReader.close();
                    if (responseCode == 200) {
                        final String string = stringBuffer.toString();
                        NiotronSpreadsheet.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    int responseCode2 = NiotronSpreadsheet.this.getResponseCode(string);
                                    if (responseCode2 == 401) {
                                        NiotronSpreadsheet niotronSpreadsheet = NiotronSpreadsheet.this;
                                        niotronSpreadsheet.GotSheet(responseCode2, niotronSpreadsheet.getMessage(string), "", false);
                                        return;
                                    }
                                    String string2 = ((JSONObject) new JSONParser().parse(string)).get("data").toString();
                                    Context context = NiotronSpreadsheet.this.context;
                                    Context unused = NiotronSpreadsheet.this.context;
                                    SharedPreferences.Editor editorEdit = context.getSharedPreferences("MySpreadsheet", 0).edit();
                                    editorEdit.putString("sheetdata", string2);
                                    editorEdit.commit();
                                    NiotronSpreadsheet.this.GotSheet(200, "Successfully got sheet data", string2, true);
                                } catch (Exception unused2) {
                                    NiotronSpreadsheet.this.GotSheet(ErrorMessages.ERROR_NXT_BLUETOOTH_NOT_SET, "Unable to connect with server. Check credentials and try again.", "", false);
                                }
                            }
                        });
                    } else {
                        NiotronSpreadsheet.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                NiotronSpreadsheet.this.GotSheet(500, "Server error occured.", "", false);
                            }
                        });
                    }
                } catch (Exception e) {
                    NiotronSpreadsheet.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronSpreadsheet.this.GotSheet(500, e.getMessage(), "", false);
                        }
                    });
                }
            }
        }.start();
    }

    public void makeServerCallREAD(final String str) {
        final String str2 = this.main_url;
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IOException {
                try {
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(str2).openConnection();
                    httpsURLConnection.setRequestMethod("POST");
                    httpsURLConnection.setRequestProperty(HttpHeaders.USER_AGENT, "Mozilla/5.0");
                    httpsURLConnection.setRequestProperty(HttpHeaders.ACCEPT_LANGUAGE, "en-US,en;q=0.5");
                    httpsURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded; charset=UTF-8");
                    httpsURLConnection.setDoOutput(true);
                    OutputStream outputStream = httpsURLConnection.getOutputStream();
                    Charset charset = StandardCharsets.UTF_8;
                    OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, charset);
                    outputStreamWriter.write(str);
                    outputStreamWriter.flush();
                    outputStreamWriter.close();
                    int responseCode = httpsURLConnection.getResponseCode();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream(), charset));
                    StringBuffer stringBuffer = new StringBuffer();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        } else {
                            stringBuffer.append(line);
                        }
                    }
                    bufferedReader.close();
                    if (responseCode == 200) {
                        final String string = stringBuffer.toString();
                        NiotronSpreadsheet.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    int responseCode2 = NiotronSpreadsheet.this.getResponseCode(string);
                                    if (responseCode2 == 401) {
                                        NiotronSpreadsheet niotronSpreadsheet = NiotronSpreadsheet.this;
                                        niotronSpreadsheet.GotSpreadsheet(responseCode2, niotronSpreadsheet.getMessage(string), false);
                                        return;
                                    }
                                    JSONObject jSONObject = (JSONObject) new JSONParser().parse(string);
                                    String string2 = jSONObject.get("data").toString();
                                    String string3 = jSONObject.get("sheets").toString();
                                    Context context = NiotronSpreadsheet.this.context;
                                    Context unused = NiotronSpreadsheet.this.context;
                                    SharedPreferences.Editor editorEdit = context.getSharedPreferences("MySpreadsheet", 0).edit();
                                    editorEdit.putString("alldata", string2);
                                    editorEdit.putString("allsheets", string3);
                                    editorEdit.commit();
                                    NiotronSpreadsheet.this.GotSpreadsheet(200, "Successfully got data", true);
                                } catch (Exception unused2) {
                                    NiotronSpreadsheet.this.GotSpreadsheet(ErrorMessages.ERROR_NXT_BLUETOOTH_NOT_SET, "Unable to connect with server. Check credentials and try again.", false);
                                }
                            }
                        });
                    } else {
                        NiotronSpreadsheet.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                NiotronSpreadsheet.this.GotSpreadsheet(500, "Server error occured.", false);
                            }
                        });
                    }
                } catch (Exception e) {
                    NiotronSpreadsheet.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.2.3
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronSpreadsheet.this.GotSpreadsheet(500, e.getMessage(), false);
                        }
                    });
                }
            }
        }.start();
    }

    public void makeServerCall(final String str) {
        final String str2 = this.main_url;
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.3
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IOException {
                try {
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(str2).openConnection();
                    httpsURLConnection.setRequestMethod("POST");
                    httpsURLConnection.setRequestProperty(HttpHeaders.USER_AGENT, "Mozilla/5.0");
                    httpsURLConnection.setRequestProperty(HttpHeaders.ACCEPT_LANGUAGE, "en-US,en;q=0.5");
                    httpsURLConnection.setDoOutput(true);
                    DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
                    dataOutputStream.writeBytes(str);
                    dataOutputStream.flush();
                    dataOutputStream.close();
                    int responseCode = httpsURLConnection.getResponseCode();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream()));
                    StringBuffer stringBuffer = new StringBuffer();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        } else {
                            stringBuffer.append(line);
                        }
                    }
                    bufferedReader.close();
                    if (responseCode == 200) {
                        final String string = stringBuffer.toString();
                        NiotronSpreadsheet.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    int responseCode2 = NiotronSpreadsheet.this.getResponseCode(string);
                                    if (responseCode2 == 401) {
                                        NiotronSpreadsheet niotronSpreadsheet = NiotronSpreadsheet.this;
                                        niotronSpreadsheet.ErrorOccured(responseCode2, niotronSpreadsheet.getMessage(string));
                                    } else {
                                        NiotronSpreadsheet.this.DataChange("");
                                    }
                                } catch (Exception unused) {
                                    NiotronSpreadsheet.this.ErrorOccured(ErrorMessages.ERROR_NXT_BLUETOOTH_NOT_SET, "Unable to connect with server. Check credentials and try again.");
                                }
                            }
                        });
                    } else {
                        NiotronSpreadsheet.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.3.2
                            @Override // java.lang.Runnable
                            public void run() {
                                NiotronSpreadsheet.this.ErrorOccured(500, "Server error occured.");
                            }
                        });
                    }
                } catch (Exception e) {
                    NiotronSpreadsheet.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.3.3
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronSpreadsheet.this.ErrorOccured(500, e.getMessage());
                        }
                    });
                }
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getResponseCode(String str) throws Exception {
        return Integer.parseInt(String.valueOf(((JSONObject) new JSONParser().parse(str)).get("code")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getMessage(String str) throws Exception {
        return ((JSONObject) new JSONParser().parse(str)).get(NotificationCompat.CATEGORY_MESSAGE).toString();
    }

    @SimpleEvent(description = "Triggered when got spreadsheet data")
    public void GotSpreadsheet(int i, String str, boolean z) {
        EventDispatcher.dispatchEvent(this, "GotSpreadsheet", Integer.valueOf(i), str, Boolean.valueOf(z));
    }

    @SimpleEvent(description = "Event indicating that a request has finished. Here function name return the last function that you call.\n\nExmaple:\n 1. UPDATE : Update Data\n 2. UPLOAD : Upload data\n 3. DELETE : Delete Data")
    public void DataChange(String str) {
        EventDispatcher.dispatchEvent(this, "DataChange", this.lastFunction);
    }

    @SimpleEvent(description = "Triggered when got sheet data. Data type = JSON")
    public void GotSheet(int i, String str, String str2, boolean z) {
        EventDispatcher.dispatchEvent(this, "GotSheet", Integer.valueOf(i), str, str2, Boolean.valueOf(z));
    }

    @SimpleEvent(description = "Event for error occured")
    public void ErrorOccured(int i, String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccured", Integer.valueOf(i), str);
    }

    @SimpleFunction(description = "Get Row")
    public void GetRow(int i) {
        final String str = this.main_url + "?row=" + i + "&sheetName=" + this.sheet + "&method=getRow";
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.4
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IOException {
                try {
                    InputStream inputStream = new URL(str).openConnection().getInputStream();
                    final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i2 = inputStream.read(bArr);
                        if (i2 > 0) {
                            byteArrayOutputStream.write(bArr, 0, i2);
                        } else {
                            byteArrayOutputStream.close();
                            NiotronSpreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    YailList yailListMakeList;
                                    boolean z;
                                    try {
                                        String str2 = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                                        int responseCode = NiotronSpreadsheet.this.getResponseCode(str2);
                                        if (responseCode == 401) {
                                            yailListMakeList = new YailList();
                                            z = false;
                                        } else {
                                            yailListMakeList = YailList.makeList((List) ((JSONObject) new JSONParser().parse(str2)).get("data"));
                                            z = true;
                                        }
                                        NiotronSpreadsheet niotronSpreadsheet = NiotronSpreadsheet.this;
                                        niotronSpreadsheet.GotRow(responseCode, yailListMakeList, niotronSpreadsheet.getMessage(str2), z);
                                    } catch (Exception unused) {
                                        NiotronSpreadsheet.this.GotRow(ErrorMessages.ERROR_NXT_BLUETOOTH_NOT_SET, new YailList(), "Server error occured", false);
                                    }
                                }
                            });
                            return;
                        }
                    }
                } catch (Exception unused) {
                    NiotronSpreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.4.2
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronSpreadsheet.this.GotRow(ErrorMessages.ERROR_NXT_BLUETOOTH_NOT_SET, new YailList(), "Unable to make server call. check your url and try again", false);
                        }
                    });
                }
            }
        }.start();
    }

    @SimpleEvent(description = "Triggered when got row values as list")
    public void GotRow(int i, YailList yailList, String str, boolean z) {
        EventDispatcher.dispatchEvent(this, "GotRow", Integer.valueOf(i), yailList, str, Boolean.valueOf(z));
    }

    @SimpleFunction(description = "Get Column")
    public void GetColumn(String str) {
        final String str2 = this.main_url + "?column=" + str + "&sheetName=" + this.sheet + "&method=getColumn";
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.5
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IOException {
                try {
                    InputStream inputStream = new URL(str2).openConnection().getInputStream();
                    final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i > 0) {
                            byteArrayOutputStream.write(bArr, 0, i);
                        } else {
                            byteArrayOutputStream.close();
                            NiotronSpreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.5.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    YailList yailListMakeList;
                                    boolean z;
                                    try {
                                        String str3 = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                                        int responseCode = NiotronSpreadsheet.this.getResponseCode(str3);
                                        if (responseCode == 401) {
                                            yailListMakeList = new YailList();
                                            z = false;
                                        } else {
                                            yailListMakeList = YailList.makeList((List) ((JSONObject) new JSONParser().parse(str3)).get("data"));
                                            z = true;
                                        }
                                        NiotronSpreadsheet niotronSpreadsheet = NiotronSpreadsheet.this;
                                        niotronSpreadsheet.GotColumn(responseCode, yailListMakeList, niotronSpreadsheet.getMessage(str3), z);
                                    } catch (Exception unused) {
                                        NiotronSpreadsheet.this.GotColumn(ErrorMessages.ERROR_NXT_BLUETOOTH_NOT_SET, new YailList(), "Server error occured", false);
                                    }
                                }
                            });
                            return;
                        }
                    }
                } catch (Exception unused) {
                    NiotronSpreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.5.2
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronSpreadsheet.this.GotColumn(ErrorMessages.ERROR_NXT_BLUETOOTH_NOT_SET, new YailList(), "Unable to make server call. check your url and try again", false);
                        }
                    });
                }
            }
        }.start();
    }

    @SimpleEvent(description = "Triggered when got column values as list")
    public void GotColumn(int i, YailList yailList, String str, boolean z) {
        EventDispatcher.dispatchEvent(this, "GotColumn", Integer.valueOf(i), yailList, str, Boolean.valueOf(z));
    }

    @SimpleFunction(description = "Get Cell Value")
    public void GetCell(int i, String str) {
        final String str2 = this.main_url + "?row=" + i + "&column=" + str + "&sheetName=" + this.sheet + "&method=getCell";
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.6
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IOException {
                try {
                    InputStream inputStream = new URL(str2).openConnection().getInputStream();
                    final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i2 = inputStream.read(bArr);
                        if (i2 > 0) {
                            byteArrayOutputStream.write(bArr, 0, i2);
                        } else {
                            byteArrayOutputStream.close();
                            NiotronSpreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.6.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    String string;
                                    boolean z;
                                    try {
                                        String str3 = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                                        int responseCode = NiotronSpreadsheet.this.getResponseCode(str3);
                                        if (responseCode == 401) {
                                            string = "";
                                            z = false;
                                        } else {
                                            string = ((JSONObject) new JSONParser().parse(str3)).get("data").toString();
                                            z = true;
                                        }
                                        NiotronSpreadsheet niotronSpreadsheet = NiotronSpreadsheet.this;
                                        niotronSpreadsheet.GotCell(responseCode, string, niotronSpreadsheet.getMessage(str3), z);
                                    } catch (Exception unused) {
                                        NiotronSpreadsheet.this.GotCell(ErrorMessages.ERROR_NXT_BLUETOOTH_NOT_SET, "", "Server error occured", false);
                                    }
                                }
                            });
                            return;
                        }
                    }
                } catch (Exception unused) {
                    NiotronSpreadsheet.this.activity.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronSpreadsheet.6.2
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronSpreadsheet.this.GotCell(ErrorMessages.ERROR_NXT_BLUETOOTH_NOT_SET, "", "Unable to make server call. check your url and try again", false);
                        }
                    });
                }
            }
        }.start();
    }

    @SimpleEvent(description = "Triggered when Get Cell value. Data Type = String")
    public void GotCell(int i, String str, String str2, boolean z) {
        EventDispatcher.dispatchEvent(this, "GotCell", Integer.valueOf(i), str, str2, Boolean.valueOf(z));
    }
}
