package com.google.appinventor.components.runtime;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.YailList;
import com.google.common.net.HttpHeaders;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@UsesPermissions(permissionNames = "android.permission.INTERNET")
@DesignerComponent(category = ComponentCategory.STORAGE, description = "Component For Airtable Database", iconName = "images/airtable.png", nonVisible = true, version = 2)
@SimpleObject
/* loaded from: classes.dex */
public class NiotronAirtable extends AndroidNonvisibleComponent implements Component {
    private static final String LOG_TAG = "Airtable Component";
    private String AIRTABLE_API_BASE_URL;
    private String apiKey;
    private String baseId;
    private Context context;
    private String getAllData;
    private int getAllDataResponseCode;
    private Handler handler;
    private String tableName;
    private String token;
    private String viewType;

    public NiotronAirtable(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.AIRTABLE_API_BASE_URL = "https://api.airtable.com/v0/";
        this.viewType = "Grid view";
        this.context = componentContainer.$context();
        this.handler = new Handler();
    }

    @SimpleProperty
    @Deprecated
    public String ApiKey() {
        return this.apiKey;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Api Key for Airtable")
    @Deprecated
    public void ApiKey(String str) {
        this.apiKey = str;
    }

    @SimpleProperty
    public String PersonalAccessToken() {
        return this.token;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Personal access token for Airtable")
    @DesignerProperty
    public void PersonalAccessToken(String str) {
        this.token = str;
    }

    @SimpleProperty(description = "Returns Base Id for Airtable")
    public String BaseId() {
        return this.baseId;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Sets Base Id for Airtable")
    @DesignerProperty
    public void BaseId(String str) {
        this.baseId = str;
    }

    @SimpleProperty
    public String TableName() {
        return this.tableName;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set The Airtable Table Name")
    @DesignerProperty(defaultValue = "MyTable")
    public void TableName(String str) {
        this.tableName = str;
    }

    @SimpleProperty(description = "Returns The Value of View Name")
    public String ViewType() {
        return this.viewType;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Sets The Value Of View Name")
    @DesignerProperty(defaultValue = "Grid view")
    public void ViewType(String str) {
        if (str == "" || str == null) {
            this.viewType = "Grid view";
        } else {
            this.viewType = str;
        }
        Log.d(LOG_TAG, "So its called");
        Log.d(LOG_TAG, str);
    }

    @SimpleFunction(description = "Use this block to get data for a Cell. Specify row number and column name")
    public void GetCell(final int i, final String str) {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NiotronAirtable.this.Cell(i, str);
                } catch (Exception e) {
                    Log.d(NiotronAirtable.LOG_TAG, e.toString());
                }
            }
        }).start();
    }

    @SimpleFunction(description = "Get Column From Provided Column Name And Max Record")
    public void GetColumn(final String str, final int i) {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NiotronAirtable.this.Column(str, i);
                } catch (Exception e) {
                    Log.d(NiotronAirtable.LOG_TAG, e.toString());
                }
            }
        }).start();
    }

    @SimpleFunction(description = "Gets The Data Of A Specific Row")
    public void GetRow(final int i) {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NiotronAirtable.this.getRow(i);
                } catch (Exception e) {
                    Log.d(NiotronAirtable.LOG_TAG, e.toString());
                }
            }
        }).start();
    }

    @SimpleFunction(description = "Sets Cell Value")
    public void SetCell(final int i, final String str, final String str2) {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NiotronAirtable.this.setCell(i, str, str2);
                } catch (Exception e) {
                    Log.d(NiotronAirtable.LOG_TAG, e.toString());
                }
            }
        }).start();
    }

    @SimpleFunction(description = "Deletes The Row In The Specified Row Number")
    public void DeleteRow(final int i) {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NiotronAirtable.this.deleteRow(i);
                } catch (Exception e) {
                    Log.d(NiotronAirtable.LOG_TAG, e.getLocalizedMessage());
                }
            }
        }).start();
    }

    @SimpleFunction(description = "Creates A Row With The Provided List/Single String Of Column Name And Values")
    public void CreateRow(final Object obj, final Object obj2) {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Object obj3 = obj;
                    if (obj3 instanceof String) {
                        Object obj4 = obj2;
                        if (obj4 instanceof String) {
                            NiotronAirtable.this.createRow(YailList.makeList(new String[]{(String) obj3}), YailList.makeList(new String[]{(String) obj4}));
                            return;
                        }
                    }
                    if (obj3 instanceof YailList) {
                        Object obj5 = obj2;
                        if (obj5 instanceof YailList) {
                            NiotronAirtable.this.createRow((YailList) obj3, (YailList) obj5);
                        }
                    }
                } catch (Exception e) {
                    Log.d(NiotronAirtable.LOG_TAG, e.toString());
                }
            }
        }).start();
    }

    @SimpleFunction(description = "Updates A Row By Number")
    public void UpdateRow(final int i, final YailList yailList, final YailList yailList2) {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NiotronAirtable.this.updateRow(i, yailList, yailList2);
                } catch (Exception e) {
                    Log.d(NiotronAirtable.LOG_TAG, e.toString());
                }
            }
        }).start();
    }

    @SimpleFunction(description = "Fetches All The Rows")
    public void GetAllRows() {
        new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NiotronAirtable.this.GetAllData();
                } catch (Exception e) {
                    Log.d(NiotronAirtable.LOG_TAG, e.toString());
                }
            }
        }).start();
    }

    @SimpleEvent(description = "Raises After Got Cell Successfully")
    public void GotCell(int i, String str, String str2, String str3) {
        EventDispatcher.dispatchEvent(this, "GotCell", Integer.valueOf(i), str, str2, str3);
    }

    @SimpleEvent(description = "Raises After Got Column Successfully")
    public void GotColumn(int i, List<String> list, List<String> list2, List<String> list3) {
        EventDispatcher.dispatchEvent(this, "GotColumn", Integer.valueOf(i), list, list2, list3);
    }

    @SimpleEvent(description = "Raises After Got Row Successfully")
    public void GotRow(int i, List<String> list) {
        EventDispatcher.dispatchEvent(this, "GotRow", Integer.valueOf(i), list);
    }

    @SimpleEvent(description = "Raises After Cell Updated Successfully")
    public void CellUpdated(int i) {
        EventDispatcher.dispatchEvent(this, "CellUpdated", Integer.valueOf(i));
    }

    @SimpleEvent(description = "Raises After Row Deleted Successfully")
    public void DeletedRow(int i) {
        EventDispatcher.dispatchEvent(this, "DeletedRow", Integer.valueOf(i));
    }

    @SimpleEvent(description = "Raises After Row Created Successfully")
    public void RowCreated(int i) {
        EventDispatcher.dispatchEvent(this, "RowCreated", Integer.valueOf(i));
    }

    @SimpleEvent(description = "Raises After Row Updated SuccessFully")
    public void RowUpdated(int i) {
        EventDispatcher.dispatchEvent(this, "RowUpdated", Integer.valueOf(i));
    }

    @SimpleEvent(description = "Raises After Got All Rows Successfully")
    public void GotAllRows(int i, int i2, String str) {
        EventDispatcher.dispatchEvent(this, "GotAllRows", Integer.valueOf(i), Integer.valueOf(i2), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCell(int i, String str, String str2) throws JSONException, IOException {
        try {
            GetAllData();
            String string = new JSONArray(this.getAllData).getJSONObject(i - 1).getString("id");
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((this.AIRTABLE_API_BASE_URL + this.baseId + "/" + this.tableName + "/" + string).replaceAll(" ", "%20")).openConnection();
            StringBuilder sb = new StringBuilder("{\"fields\": {\"");
            sb.append(str);
            sb.append("\": \"");
            sb.append(str2);
            sb.append("\"},\"typecast\": true}");
            String string2 = sb.toString();
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
            httpURLConnection.addRequestProperty(HttpHeaders.AUTHORIZATION, FusiontablesControl.AUTHORIZATION_HEADER_PREFIX + this.token);
            httpURLConnection.setRequestMethod("PATCH");
            httpURLConnection.setDoOutput(true);
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.writeBytes(string2);
            dataOutputStream.flush();
            dataOutputStream.close();
            if (httpURLConnection.getResponseCode() != 200) {
                Log.d(LOG_TAG, httpURLConnection.getResponseMessage());
                return;
            }
            final int responseCode = httpURLConnection.getResponseCode();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            while (bufferedReader.readLine() != null) {
                this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.9
                    @Override // java.lang.Runnable
                    public void run() {
                        NiotronAirtable.this.CellUpdated(responseCode);
                    }
                });
            }
        } catch (Exception e) {
            Log.d(LOG_TAG, e.toString());
        }
    }

    public void createRow(YailList yailList, YailList yailList2) throws JSONException, IOException {
        try {
            String[] stringArray = yailList.toStringArray();
            String[] stringArray2 = yailList2.toStringArray();
            JSONObject jSONObject = new JSONObject();
            for (int i = 0; i < stringArray.length; i++) {
                jSONObject.put(stringArray[i], stringArray2[i]);
            }
            String string = jSONObject.toString();
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((this.AIRTABLE_API_BASE_URL + this.baseId + "/" + this.tableName).replaceAll(" ", "%20")).openConnection();
            StringBuilder sb = new StringBuilder();
            sb.append("{\"fields\":");
            sb.append(string);
            sb.append(",\"typecast\": true}");
            String string2 = sb.toString();
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
            httpURLConnection.addRequestProperty(HttpHeaders.AUTHORIZATION, FusiontablesControl.AUTHORIZATION_HEADER_PREFIX + this.token);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoOutput(true);
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.writeBytes(string2);
            dataOutputStream.flush();
            dataOutputStream.close();
            if (httpURLConnection.getResponseCode() != 200) {
                Log.d(LOG_TAG, httpURLConnection.getResponseMessage());
                return;
            }
            final int responseCode = httpURLConnection.getResponseCode();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            while (bufferedReader.readLine() != null) {
                this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.10
                    @Override // java.lang.Runnable
                    public void run() {
                        NiotronAirtable.this.RowCreated(responseCode);
                    }
                });
            }
        } catch (Exception e) {
            Log.d(LOG_TAG, e.toString());
        }
    }

    private void ColumnWithOffset(final List<String> list, final List<String> list2, final List<String> list3, String str, int i, String str2) throws JSONException, IOException {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((this.AIRTABLE_API_BASE_URL + this.baseId + "/" + this.tableName + "?fields[]=" + str + "&maxRecords=" + i + "&view=" + this.viewType + "&offset=" + str2).replaceAll(" ", "%20")).openConnection();
            String str3 = this.token;
            StringBuilder sb = new StringBuilder(FusiontablesControl.AUTHORIZATION_HEADER_PREFIX);
            sb.append(str3);
            httpURLConnection.setRequestProperty(HttpHeaders.AUTHORIZATION, sb.toString());
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
            final int responseCode = httpURLConnection.getResponseCode();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
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
            JSONObject jSONObject = new JSONObject(stringBuffer.toString());
            JSONArray jSONArray = jSONObject.getJSONArray("records");
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                String string = jSONObject2.getString("id");
                String string2 = jSONObject2.getString("createdTime");
                String string3 = jSONObject2.getJSONObject("fields").getString(str);
                list.add(string);
                list2.add(string2);
                list3.add(string3);
            }
            if (jSONObject.has("offset")) {
                ColumnWithOffset(list, list2, list3, str, i, jSONObject.getString("offset"));
            } else {
                this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.11
                    @Override // java.lang.Runnable
                    public void run() {
                        NiotronAirtable.this.GotColumn(responseCode, list3, list, list2);
                    }
                });
            }
        } catch (Exception e) {
            Log.d(LOG_TAG, e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRow(int i, YailList yailList, YailList yailList2) throws JSONException, IOException {
        try {
            GetAllData();
            String[] stringArray = yailList.toStringArray();
            String[] stringArray2 = yailList2.toStringArray();
            String string = new JSONArray(this.getAllData).getJSONObject(i - 1).getString("id");
            JSONObject jSONObject = new JSONObject();
            for (int i2 = 0; i2 < stringArray.length; i2++) {
                jSONObject.put(stringArray[i2], stringArray2[i2]);
            }
            String string2 = jSONObject.toString();
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((this.AIRTABLE_API_BASE_URL + this.baseId + "/" + this.tableName + "/" + string).replaceAll(" ", "%20")).openConnection();
            StringBuilder sb = new StringBuilder();
            sb.append("{\"fields\":");
            sb.append(string2);
            sb.append(",\"typecast\": true}");
            String string3 = sb.toString();
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
            httpURLConnection.addRequestProperty(HttpHeaders.AUTHORIZATION, FusiontablesControl.AUTHORIZATION_HEADER_PREFIX + this.token);
            httpURLConnection.setRequestMethod("PUT");
            httpURLConnection.setDoOutput(true);
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.writeBytes(string3);
            dataOutputStream.flush();
            dataOutputStream.close();
            if (httpURLConnection.getResponseCode() != 200) {
                Log.d(LOG_TAG, httpURLConnection.getResponseMessage());
                return;
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            while (bufferedReader.readLine() != null) {
                final int responseCode = httpURLConnection.getResponseCode();
                this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.12
                    @Override // java.lang.Runnable
                    public void run() {
                        NiotronAirtable.this.RowUpdated(responseCode);
                    }
                });
            }
        } catch (Exception e) {
            Log.d(LOG_TAG, e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteRow(int i) throws JSONException, IOException {
        try {
            GetAllData();
            String string = new JSONArray(this.getAllData).getJSONObject(i - 1).getString("id");
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((this.AIRTABLE_API_BASE_URL + this.baseId + "/" + this.tableName + "/" + string).replaceAll(" ", "%20")).openConnection();
            String str = this.token;
            StringBuilder sb = new StringBuilder(FusiontablesControl.AUTHORIZATION_HEADER_PREFIX);
            sb.append(str);
            httpURLConnection.setRequestProperty(HttpHeaders.AUTHORIZATION, sb.toString());
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
            httpURLConnection.setRequestMethod("DELETE");
            final int responseCode = httpURLConnection.getResponseCode();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    stringBuffer.append(line);
                } else {
                    bufferedReader.close();
                    this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.13
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronAirtable.this.DeletedRow(responseCode);
                        }
                    });
                    return;
                }
            }
        } catch (Exception e) {
            Log.d(LOG_TAG, e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void GetAllData() throws JSONException, IOException {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((this.AIRTABLE_API_BASE_URL + this.baseId + "/" + this.tableName + "?&view=" + this.viewType).replaceAll(" ", "%20")).openConnection();
            String str = this.token;
            StringBuilder sb = new StringBuilder(FusiontablesControl.AUTHORIZATION_HEADER_PREFIX);
            sb.append(str);
            httpURLConnection.setRequestProperty(HttpHeaders.AUTHORIZATION, sb.toString());
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
            httpURLConnection.getResponseCode();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
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
            JSONObject jSONObject = new JSONObject(stringBuffer.toString());
            final JSONArray jSONArray = jSONObject.getJSONArray("records");
            if (jSONObject.has("offset")) {
                GetAllWithOffset(jSONObject.getString("offset"), jSONArray);
                return;
            }
            this.getAllData = jSONArray.toString();
            this.getAllDataResponseCode = httpURLConnection.getResponseCode();
            this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.14
                @Override // java.lang.Runnable
                public void run() {
                    NiotronAirtable.this.GotAllRows(jSONArray.length(), NiotronAirtable.this.getAllDataResponseCode, NiotronAirtable.this.getAllData);
                }
            });
        } catch (Exception e) {
            Log.d(LOG_TAG, e.toString());
        }
    }

    private void GetAllWithOffset(String str, JSONArray jSONArray) throws JSONException, IOException {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((this.AIRTABLE_API_BASE_URL + this.baseId + "/" + this.tableName + "?&view=" + this.viewType + "&offset=" + str).replaceAll(" ", "%20")).openConnection();
            String str2 = this.token;
            StringBuilder sb = new StringBuilder(FusiontablesControl.AUTHORIZATION_HEADER_PREFIX);
            sb.append(str2);
            httpURLConnection.setRequestProperty(HttpHeaders.AUTHORIZATION, sb.toString());
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
            httpURLConnection.getResponseCode();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
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
            JSONObject jSONObject = new JSONObject(stringBuffer.toString());
            JSONArray jSONArray2 = jSONObject.getJSONArray("records");
            for (int i = 0; i < jSONArray2.length(); i++) {
                jSONArray.put(jSONArray2.getJSONObject(i));
            }
            if (jSONObject.has("offset")) {
                GetAllWithOffset(jSONObject.getString("offset"), jSONArray);
                return;
            }
            this.getAllData = jSONArray.toString();
            this.getAllDataResponseCode = httpURLConnection.getResponseCode();
            final int length = jSONArray.length();
            this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.15
                @Override // java.lang.Runnable
                public void run() {
                    NiotronAirtable niotronAirtable = NiotronAirtable.this;
                    niotronAirtable.GotAllRows(length, niotronAirtable.getAllDataResponseCode, NiotronAirtable.this.getAllData);
                }
            });
        } catch (Exception e) {
            Log.d(LOG_TAG, e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Cell(int i, String str) throws JSONException, IOException {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((this.AIRTABLE_API_BASE_URL + this.baseId + "/" + this.tableName + "?fields[]=" + str + "&view=" + this.viewType).replaceAll(" ", "%20")).openConnection();
            String str2 = this.token;
            StringBuilder sb = new StringBuilder(FusiontablesControl.AUTHORIZATION_HEADER_PREFIX);
            sb.append(str2);
            httpURLConnection.setRequestProperty(HttpHeaders.AUTHORIZATION, sb.toString());
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
            final int responseCode = httpURLConnection.getResponseCode();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
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
            JSONObject jSONObject = new JSONObject(stringBuffer.toString());
            JSONArray jSONArray = jSONObject.getJSONArray("records");
            if (jSONObject.has("offset")) {
                GetCellWithOffset(jSONObject.getString("offset"), jSONArray, str, i);
                return;
            }
            int i2 = i - 1;
            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
            final String string = jSONObject2.getString("id");
            final String string2 = jSONObject2.getString("createdTime");
            final String string3 = ((JSONObject) jSONArray.get(i2)).getJSONObject("fields").getString(str);
            this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.16
                @Override // java.lang.Runnable
                public void run() {
                    NiotronAirtable.this.GotCell(responseCode, string3, string, string2);
                }
            });
        } catch (Exception e) {
            Log.d(LOG_TAG, e.toString());
        }
    }

    private void GetCellWithOffset(String str, JSONArray jSONArray, String str2, int i) throws JSONException, IOException {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((this.AIRTABLE_API_BASE_URL + this.baseId + "/" + this.tableName + "?fields[]=" + str2 + "&view=" + this.viewType + "&offset=" + str).replaceAll(" ", "%20")).openConnection();
            String str3 = this.token;
            StringBuilder sb = new StringBuilder(FusiontablesControl.AUTHORIZATION_HEADER_PREFIX);
            sb.append(str3);
            httpURLConnection.setRequestProperty(HttpHeaders.AUTHORIZATION, sb.toString());
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
            final int responseCode = httpURLConnection.getResponseCode();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
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
            JSONObject jSONObject = new JSONObject(stringBuffer.toString());
            JSONArray jSONArray2 = jSONObject.getJSONArray("records");
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                jSONArray.put(jSONArray2.getJSONObject(i2));
            }
            if (jSONObject.has("offset")) {
                GetCellWithOffset(jSONObject.getString("offset"), jSONArray, str2, i);
                return;
            }
            int i3 = i - 1;
            JSONObject jSONObject2 = jSONArray.getJSONObject(i3);
            final String string = jSONObject2.getString("id");
            final String string2 = jSONObject2.getString("createdTime");
            final String string3 = ((JSONObject) jSONArray.get(i3)).getJSONObject("fields").getString(str2);
            this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.17
                @Override // java.lang.Runnable
                public void run() {
                    NiotronAirtable.this.GotCell(responseCode, string3, string, string2);
                }
            });
        } catch (Exception e) {
            Log.d(LOG_TAG, e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Column(String str, int i) throws JSONException, IOException {
        try {
            final ArrayList arrayList = new ArrayList();
            final ArrayList arrayList2 = new ArrayList();
            final ArrayList arrayList3 = new ArrayList();
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((this.AIRTABLE_API_BASE_URL + this.baseId + "/" + this.tableName + "?fields[]=" + str + "&maxRecords=" + i + "&view=" + this.viewType).replaceAll(" ", "%20")).openConnection();
            String str2 = this.token;
            StringBuilder sb = new StringBuilder(FusiontablesControl.AUTHORIZATION_HEADER_PREFIX);
            sb.append(str2);
            httpURLConnection.setRequestProperty(HttpHeaders.AUTHORIZATION, sb.toString());
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
            final int responseCode = httpURLConnection.getResponseCode();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
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
            JSONObject jSONObject = new JSONObject(stringBuffer.toString());
            JSONArray jSONArray = jSONObject.getJSONArray("records");
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                String string = jSONObject2.getString("id");
                String string2 = jSONObject2.getString("createdTime");
                String string3 = jSONObject2.getJSONObject("fields").getString(str);
                arrayList.add(string);
                arrayList2.add(string2);
                arrayList3.add(string3);
            }
            if (jSONObject.has("offset")) {
                try {
                    ColumnWithOffset(arrayList, arrayList2, arrayList3, str, i, jSONObject.getString("offset"));
                    return;
                } catch (Exception e) {
                    e = e;
                    Log.d(LOG_TAG, e.toString());
                    return;
                }
            }
            this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.18
                @Override // java.lang.Runnable
                public void run() {
                    NiotronAirtable.this.GotColumn(responseCode, arrayList3, arrayList, arrayList2);
                }
            });
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getRow(int i) throws JSONException, IOException {
        final ArrayList arrayList = new ArrayList();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((this.AIRTABLE_API_BASE_URL + this.baseId + "/" + this.tableName + "?&view=" + this.viewType).replaceAll(" ", "%20")).openConnection();
            String str = this.token;
            StringBuilder sb = new StringBuilder(FusiontablesControl.AUTHORIZATION_HEADER_PREFIX);
            sb.append(str);
            httpURLConnection.setRequestProperty(HttpHeaders.AUTHORIZATION, sb.toString());
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
            final int responseCode = httpURLConnection.getResponseCode();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
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
            JSONObject jSONObject = new JSONObject(stringBuffer.toString());
            JSONArray jSONArray = jSONObject.getJSONArray("records");
            if (jSONObject.has("offset")) {
                RowWithOffset(i, jSONObject.getString("offset"), arrayList, jSONArray);
                return;
            }
            JSONObject jSONObject2 = jSONArray.getJSONObject(i - 1).getJSONObject("fields");
            JSONArray jSONArrayNames = jSONObject2.names();
            for (int i2 = 0; i2 < jSONArrayNames.length(); i2++) {
                arrayList.add(jSONObject2.getString(jSONArrayNames.getString(i2)));
            }
            this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.19
                @Override // java.lang.Runnable
                public void run() {
                    NiotronAirtable.this.GotRow(responseCode, arrayList);
                }
            });
        } catch (Exception e) {
            Log.d(LOG_TAG, e.toString());
        }
    }

    private void RowWithOffset(int i, String str, final List<String> list, JSONArray jSONArray) throws JSONException, IOException {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL((this.AIRTABLE_API_BASE_URL + this.baseId + "/" + this.tableName + "?&view=" + this.viewType + "&offset=" + str).replaceAll(" ", "%20")).openConnection();
            String str2 = this.token;
            StringBuilder sb = new StringBuilder(FusiontablesControl.AUTHORIZATION_HEADER_PREFIX);
            sb.append(str2);
            httpURLConnection.setRequestProperty(HttpHeaders.AUTHORIZATION, sb.toString());
            httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, "application/json");
            final int responseCode = httpURLConnection.getResponseCode();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
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
            JSONObject jSONObject = new JSONObject(stringBuffer.toString());
            JSONArray jSONArray2 = jSONObject.getJSONArray("records");
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                jSONArray.put(jSONArray2.getJSONObject(i2));
            }
            if (jSONObject.has("offset")) {
                RowWithOffset(i, jSONObject.getString("offset"), list, jSONArray);
                return;
            }
            JSONObject jSONObject2 = jSONArray.getJSONObject(i - 1).getJSONObject("fields");
            JSONArray jSONArrayNames = jSONObject2.names();
            for (int i3 = 0; i3 < jSONArrayNames.length(); i3++) {
                list.add(jSONObject2.getString(jSONArrayNames.getString(i3)));
            }
            this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronAirtable.20
                @Override // java.lang.Runnable
                public void run() {
                    NiotronAirtable.this.GotRow(responseCode, list);
                }
            });
        } catch (Exception e) {
            Log.d(LOG_TAG, e.toString());
        }
    }
}
