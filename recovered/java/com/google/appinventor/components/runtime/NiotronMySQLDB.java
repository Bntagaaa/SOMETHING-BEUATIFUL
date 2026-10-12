package com.google.appinventor.components.runtime;

import android.content.Context;
import android.os.Handler;
import android.text.Html;
import android.widget.Toast;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.common.net.HttpHeaders;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

@DesignerComponent(category = ComponentCategory.INTERNAL, description = "A Non visible component that provides access to the MySql Table storage.", iconName = "images/niotronMySQLDB.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronMySQLDB extends AndroidNonvisibleComponent {
    private static String mfileText = "";
    private static String mvalues = null;
    private static String response = "debug";
    private static String sLanguage = null;
    private static String tLanguage = null;
    private static String urlParameters = "";
    String ALLRESPONSE;
    double CHECKA;
    String DEMOKIL;
    private Context context;
    private String databsename;
    private String dbpassword;
    private Handler mainHandler;
    private int responseCode;
    private String serverURL;
    private String servername;
    private String tableName;
    private String username;

    public NiotronMySQLDB(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.servername = "";
        this.databsename = "";
        this.username = "";
        this.dbpassword = "";
        this.tableName = "";
        this.serverURL = "https://cttricks.com/database/mysqltable";
        this.DEMOKIL = "";
        this.ALLRESPONSE = "";
        this.CHECKA = 5.0d;
        this.mainHandler = new Handler();
        this.context = componentContainer.$context();
    }

    public class Perform_GET_Data extends android.os.AsyncTask<String, Void, String> {
        public /* synthetic */ Perform_GET_Data(NiotronMySQLDB niotronMySQLDB, int i) {
            this();
        }

        private Perform_GET_Data() {
        }

        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) throws IOException {
            String str = "";
            for (String str2 : strArr) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new DefaultHttpClient().execute(new HttpGet(str2)).getEntity().getContent()));
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        str = str + line;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return str;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            NiotronMySQLDB.this.ALLRESPONSE = Html.fromHtml(str).toString();
            NiotronMySQLDB niotronMySQLDB = NiotronMySQLDB.this;
            if (niotronMySQLDB.CHECKA == 11.0d) {
                niotronMySQLDB.GotRow(niotronMySQLDB.DEMOKIL, niotronMySQLDB.ALLRESPONSE);
            }
            NiotronMySQLDB niotronMySQLDB2 = NiotronMySQLDB.this;
            if (niotronMySQLDB2.CHECKA == 12.0d) {
                niotronMySQLDB2.GotColumn(niotronMySQLDB2.DEMOKIL, niotronMySQLDB2.ALLRESPONSE);
            }
            NiotronMySQLDB niotronMySQLDB3 = NiotronMySQLDB.this;
            if (niotronMySQLDB3.CHECKA == 13.0d) {
                niotronMySQLDB3.GotCell(niotronMySQLDB3.DEMOKIL, niotronMySQLDB3.ALLRESPONSE);
            }
            NiotronMySQLDB niotronMySQLDB4 = NiotronMySQLDB.this;
            if (niotronMySQLDB4.CHECKA == 14.0d) {
                niotronMySQLDB4.ColumnCreated(niotronMySQLDB4.ALLRESPONSE);
            }
            NiotronMySQLDB niotronMySQLDB5 = NiotronMySQLDB.this;
            if (niotronMySQLDB5.CHECKA == 15.0d) {
                niotronMySQLDB5.RowDeleted(niotronMySQLDB5.ALLRESPONSE);
            }
        }
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set Your Host\nHost is the IP of the Nameserver of your Hosting.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Host(String str) {
        this.servername = str;
    }

    @SimpleProperty(description = "It'll return the HOST/IP")
    public String Host() {
        return this.servername;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set Your database name.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Database(String str) {
        this.databsename = str;
    }

    @SimpleProperty(description = "It'll return the database name")
    public String Database() {
        return this.databsename;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set user of the given database.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void UserName(String str) {
        this.username = str;
    }

    @SimpleProperty(description = "It'll return user name")
    public String UserName() {
        return this.username;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set database password.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void SecretKey(String str) {
        this.dbpassword = str;
    }

    @SimpleProperty(description = "It'll return the secret key or password of the database")
    public String SecretKey() {
        return this.dbpassword;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Set Table Name.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void TableName(String str) {
        this.tableName = str;
    }

    @SimpleProperty(description = "It'll return the tablename")
    public String TableName() {
        return this.tableName;
    }

    @SimpleFunction(description = "Get entire data of a perticular row as a list element.")
    public void GetRow(double d) {
        if (d > 0.0d) {
            String str = this.serverURL + "/get.php?&action=getrow&table=" + this.tableName + "&dbname=" + this.databsename + "&pass=" + this.dbpassword + "&user=" + this.username + "&mhost=" + this.servername + "&mdata=" + d;
            this.CHECKA = 11.0d;
            new Perform_GET_Data(this, 0).execute(str);
            return;
        }
        GotRow("ERROR", "");
    }

    @SimpleEvent(description = "Triggered when got row data.\nResponse code 200 = Successfully Got Row Data")
    public void GotRow(String str, String str2) {
        String str3;
        if (str2.equals("ERROR")) {
            str3 = "401";
            str2 = "";
        } else {
            str3 = "200";
        }
        EventDispatcher.dispatchEvent(this, "GotRow", str3, str2);
    }

    @SimpleFunction(description = "Get entire data of a perticular column as a list element")
    public void GetColumn(String str) {
        if (!str.isEmpty()) {
            String str2 = this.serverURL + "/get.php?&action=getcolumn&table=" + this.tableName + "&dbname=" + this.databsename + "&pass=" + this.dbpassword + "&user=" + this.username + "&mhost=" + this.servername + "&mdata=" + str;
            this.CHECKA = 12.0d;
            new Perform_GET_Data(this, 0).execute(str2);
            return;
        }
        GotColumn("ERROR", "");
    }

    @SimpleEvent(description = "Triggered when got column data.\nResponse code 200 = Successfully Got Column List")
    public void GotColumn(String str, String str2) {
        String str3;
        if (str2.equals("ERROR")) {
            str3 = "401";
            str2 = "";
        } else {
            str3 = "200";
        }
        EventDispatcher.dispatchEvent(this, "GotColumn", str3, str2);
    }

    @SimpleFunction(description = "Get entire data of a perticular column as a list element")
    public void GetCell(double d, String str) {
        if (!str.isEmpty() && d > 0.0d) {
            String str2 = this.serverURL + "/get.php?&action=getcell&table=" + this.tableName + "&dbname=" + this.databsename + "&pass=" + this.dbpassword + "&user=" + this.username + "&mhost=" + this.servername + "&mdata=" + d + "%3D" + str;
            this.CHECKA = 13.0d;
            new Perform_GET_Data(this, 0).execute(str2);
            return;
        }
        GotCell("ERROR", "");
    }

    @SimpleEvent(description = "Triggered when got cell data.\nResponse code 200 = Successfully Got Cell Data")
    public void GotCell(String str, String str2) {
        String str3;
        if (str2.equals("ERROR")) {
            str3 = "401";
            str2 = "";
        } else {
            str3 = "200";
        }
        EventDispatcher.dispatchEvent(this, "GotCell", str3, str2);
    }

    @SimpleFunction(description = "Create new column")
    public void CreateColumn(String str) {
        if (!str.isEmpty()) {
            String str2 = this.serverURL + "/get.php?&action=addcolumn&table=" + this.tableName + "&dbname=" + this.databsename + "&pass=" + this.dbpassword + "&user=" + this.username + "&mhost=" + this.servername + "&mdata=" + str;
            this.CHECKA = 14.0d;
            new Perform_GET_Data(this, 0).execute(str2);
            return;
        }
        ColumnCreated("ERROR");
    }

    @SimpleEvent(description = "Triggered when column created.\nResponse code 200 = Column Created Successfully")
    public void ColumnCreated(String str) {
        String str2;
        if (str.equals("ERROR")) {
            str2 = "401";
        } else {
            str2 = "200";
        }
        EventDispatcher.dispatchEvent(this, "ColumnCreated", str2);
    }

    @SimpleFunction(description = "Get entire data of a perticular row as a list element.")
    public void DeleteRow(double d) {
        if (d > 0.0d) {
            String str = this.serverURL + "/get.php?&action=delete&table=" + this.tableName + "&dbname=" + this.databsename + "&pass=" + this.dbpassword + "&user=" + this.username + "&mhost=" + this.servername + "&mdata=" + d;
            this.CHECKA = 15.0d;
            new Perform_GET_Data(this, 0).execute(str);
            return;
        }
        RowDeleted("ERROR");
    }

    @SimpleEvent(description = "Triggered when row deleted.\nResponse code 200 = Row Deleted Successfully")
    public void RowDeleted(String str) {
        String str2;
        if (str.equals("ERROR")) {
            str2 = "401";
        } else {
            str2 = "200";
        }
        EventDispatcher.dispatchEvent(this, "RowDeleted", str2);
    }

    @SimpleFunction(description = "Create a new row in sql table.\nSupported Format : tag=value&tag2=value2..&tag_n=value_n")
    public void CreateRow(String str) {
        mvalues = str;
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronMySQLDB.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IOException {
                try {
                    String strInsertNewFormat = NiotronMySQLDB.this.insertNewFormat(NiotronMySQLDB.mvalues);
                    if (strInsertNewFormat != null && !NiotronMySQLDB.this.dbpassword.isEmpty() && !NiotronMySQLDB.this.username.isEmpty() && !NiotronMySQLDB.this.databsename.isEmpty() && !NiotronMySQLDB.this.servername.isEmpty() && !NiotronMySQLDB.this.tableName.isEmpty()) {
                        NiotronMySQLDB.urlParameters = "action=createRow&table=" + NiotronMySQLDB.this.tableName + "&dbname=" + NiotronMySQLDB.this.databsename + "&pass=" + NiotronMySQLDB.this.dbpassword + "&user=" + NiotronMySQLDB.this.username + "&mhost=" + NiotronMySQLDB.this.servername + "&mdata=" + strInsertNewFormat;
                        String str2 = NiotronMySQLDB.this.serverURL;
                        StringBuilder sb = new StringBuilder();
                        sb.append(str2);
                        sb.append("/set.php");
                        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(sb.toString()).openConnection();
                        httpsURLConnection.setRequestMethod("POST");
                        httpsURLConnection.setRequestProperty(HttpHeaders.USER_AGENT, "Mozilla/5.0");
                        httpsURLConnection.setRequestProperty(HttpHeaders.ACCEPT_LANGUAGE, "en-US,en;q=0.5");
                        httpsURLConnection.setDoOutput(true);
                        DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
                        dataOutputStream.writeBytes(NiotronMySQLDB.urlParameters);
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
                            NiotronMySQLDB.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronMySQLDB.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    NiotronMySQLDB.this.RowCreated(string);
                                }
                            });
                            return;
                        } else {
                            NiotronMySQLDB.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronMySQLDB.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    NiotronMySQLDB.this.RowCreated("ERROR");
                                }
                            });
                            return;
                        }
                    }
                    Toast.makeText(NiotronMySQLDB.this.context, "Required fields not filled", 0).show();
                } catch (Exception unused) {
                    NiotronMySQLDB.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronMySQLDB.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronMySQLDB.this.RowCreated("ERROR");
                        }
                    });
                }
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String insertNewFormat(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Exception unused) {
            RowCreated("ERROR");
            return null;
        }
    }

    @SimpleEvent(description = "Triggered When Row Created")
    public void RowCreated(String str) {
        String str2;
        if (str.equals("ERROR")) {
            str2 = "401";
        } else {
            str2 = "200";
        }
        EventDispatcher.dispatchEvent(this, "RowCreated", str2);
    }

    @SimpleFunction(description = "Create a new table.\nSupported Format : Column1,Column2,...,Column_n")
    public void CreateTable(String str) {
        mvalues = str;
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronMySQLDB.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IOException {
                try {
                    String str2 = "!" + NiotronMySQLDB.mvalues.replaceAll(",", "!");
                    if (str2 != null && !NiotronMySQLDB.this.dbpassword.isEmpty() && !NiotronMySQLDB.this.username.isEmpty() && !NiotronMySQLDB.this.databsename.isEmpty() && !NiotronMySQLDB.this.servername.isEmpty() && !NiotronMySQLDB.this.tableName.isEmpty()) {
                        NiotronMySQLDB.urlParameters = "action=newtable&table=" + NiotronMySQLDB.this.tableName + "&dbname=" + NiotronMySQLDB.this.databsename + "&pass=" + NiotronMySQLDB.this.dbpassword + "&user=" + NiotronMySQLDB.this.username + "&mhost=" + NiotronMySQLDB.this.servername + "&mdata=" + str2;
                        String str3 = NiotronMySQLDB.this.serverURL;
                        StringBuilder sb = new StringBuilder();
                        sb.append(str3);
                        sb.append("/set.php");
                        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(sb.toString()).openConnection();
                        httpsURLConnection.setRequestMethod("POST");
                        httpsURLConnection.setRequestProperty(HttpHeaders.USER_AGENT, "Mozilla/5.0");
                        httpsURLConnection.setRequestProperty(HttpHeaders.ACCEPT_LANGUAGE, "en-US,en;q=0.5");
                        httpsURLConnection.setDoOutput(true);
                        DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
                        dataOutputStream.writeBytes(NiotronMySQLDB.urlParameters);
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
                            NiotronMySQLDB.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronMySQLDB.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    NiotronMySQLDB.this.TableCreated(string);
                                }
                            });
                            return;
                        } else {
                            NiotronMySQLDB.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronMySQLDB.2.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    NiotronMySQLDB.this.TableCreated("ERROR");
                                }
                            });
                            return;
                        }
                    }
                    Toast.makeText(NiotronMySQLDB.this.context, "Required fields not filled", 0).show();
                } catch (Exception unused) {
                    NiotronMySQLDB.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronMySQLDB.2.3
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronMySQLDB.this.TableCreated("ERROR");
                        }
                    });
                }
            }
        }.start();
    }

    @SimpleEvent(description = "Triggered When Row Created")
    public void TableCreated(String str) {
        String str2;
        if (str.equals("ERROR")) {
            str2 = "401";
        } else {
            str2 = "200";
        }
        EventDispatcher.dispatchEvent(this, "TableCreated", str2);
    }

    @SimpleFunction(description = "Update Cell by Row Number abd Column Name")
    public void UpdateCell(final double d, final String str, String str2) {
        mvalues = d + "=" + str + "=" + str2;
        new Thread() { // from class: com.google.appinventor.components.runtime.NiotronMySQLDB.3
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws IOException {
                try {
                    String strInsertNewFormatA = NiotronMySQLDB.this.insertNewFormatA(NiotronMySQLDB.mvalues);
                    if (d > 0.0d && !str.isEmpty() && strInsertNewFormatA != null && !NiotronMySQLDB.this.dbpassword.isEmpty() && !NiotronMySQLDB.this.username.isEmpty() && !NiotronMySQLDB.this.databsename.isEmpty() && !NiotronMySQLDB.this.servername.isEmpty() && !NiotronMySQLDB.this.tableName.isEmpty()) {
                        NiotronMySQLDB.urlParameters = "action=updatecell&table=" + NiotronMySQLDB.this.tableName + "&dbname=" + NiotronMySQLDB.this.databsename + "&pass=" + NiotronMySQLDB.this.dbpassword + "&user=" + NiotronMySQLDB.this.username + "&mhost=" + NiotronMySQLDB.this.servername + "&mdata=" + strInsertNewFormatA;
                        String str3 = NiotronMySQLDB.this.serverURL;
                        StringBuilder sb = new StringBuilder();
                        sb.append(str3);
                        sb.append("/set.php");
                        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(sb.toString()).openConnection();
                        httpsURLConnection.setRequestMethod("POST");
                        httpsURLConnection.setRequestProperty(HttpHeaders.USER_AGENT, "Mozilla/5.0");
                        httpsURLConnection.setRequestProperty(HttpHeaders.ACCEPT_LANGUAGE, "en-US,en;q=0.5");
                        httpsURLConnection.setDoOutput(true);
                        DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
                        dataOutputStream.writeBytes(NiotronMySQLDB.urlParameters);
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
                            NiotronMySQLDB.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronMySQLDB.3.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    NiotronMySQLDB.this.CellUpdated(string);
                                }
                            });
                            return;
                        } else {
                            NiotronMySQLDB.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronMySQLDB.3.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    NiotronMySQLDB.this.CellUpdated("ERROR");
                                }
                            });
                            return;
                        }
                    }
                    Toast.makeText(NiotronMySQLDB.this.context, "Required fields not filled", 0).show();
                } catch (Exception unused) {
                    NiotronMySQLDB.this.mainHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronMySQLDB.3.3
                        @Override // java.lang.Runnable
                        public void run() {
                            NiotronMySQLDB.this.CellUpdated("ERROR");
                        }
                    });
                }
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String insertNewFormatA(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Exception unused) {
            CellUpdated("ERROR");
            return null;
        }
    }

    @SimpleEvent(description = "Triggered When Cell Updated")
    public void CellUpdated(String str) {
        String str2;
        if (str.equals("ERROR")) {
            str2 = "401";
        } else {
            str2 = "200";
        }
        EventDispatcher.dispatchEvent(this, "CellUpdated", str2);
    }
}
