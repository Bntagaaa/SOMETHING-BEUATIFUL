package com.google.appinventor.components.runtime;

import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.util.Log;
import com.google.api.client.extensions.android2.AndroidHttp;
import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
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
import com.google.appinventor.components.runtime.util.ClientLoginHelper;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.IClientLoginHelper;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.OAuth2Helper;
import com.google.appinventor.components.runtime.util.SdkLevel;
import com.google.common.net.HttpHeaders;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.json.JSONException;
import org.json.JSONObject;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET,android.permission.ACCOUNT_MANAGER,android.permission.MANAGE_ACCOUNTS,android.permission.GET_ACCOUNTS,android.permission.USE_CREDENTIALS,android.permission.WRITE_EXTERNAL_STORAGE,android.permission.READ_EXTERNAL_STORAGE")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "<p>A non-visible component that communicates with Google Fusion Tables. Fusion Tables let you store, share, query and visualize data tables; this component lets you query, create, and modify these tables.</p> <p><font color=red><b>NOTE:</b>&nbsp;Google shutdown the Fusion Tables service on December 3, 2019. This component no longer functions.</font></p> <p>This component uses the <a href=\"https://developers.google.com/fusiontables/docs/v2/getting_started\" target=\"_blank\">Fusion Tables API V2.0</a>. <p>Applications using Fusion Tables must authentication to Google's servers. There are two ways this can be done. The first way uses an API Key which you the developer obtain (see below). With this approach end-users must also login to access a Fusion Table. The second approach is to use a Service Account. With this approach you create credentials and a special \"Service Account Email Address\" which you obtain from the <a href=\"https://code.google.com/apis/console/\" target=\"_blank\">Google APIs Console</a>. You then tell the Fusion Table Control the name of the Service Account Email address and upload the secret key as an asset to your application and set the KeyFile property to point at this file. Finally you check the \"UseServiceAuthentication\" checkbox in the designer. When using a Service Account, end-users do not need to login to use Fusion Tables, your service account authenticates all access.</p> <p>To get an API key, follow these instructions.</p> <ol><li>Go to your <a href=\"https://code.google.com/apis/console/\" target=\"_blank\">Google APIs Console</a> and login if necessary.</li><li>Select the <i>Services</i> item from the menu on the left.</li><li>Choose the <i>Fusiontables</i> service from the list provided and turn it on.</li><li>Go back to the main menu and select the <i>API Access</i> item. </li></ol><p>Your API Key will be near the bottom of that pane in the section called \"Simple API Access\".You will have to provide that key as the value for the <i>ApiKey</i> property in your Fusiontables app.</p><p>Once you have an API key, set the value of the <i>Query</i> property to a valid Fusiontables SQL query and call <i>SendQuery</i> to execute the query.  App Inventor will send the query to the Fusion Tables server and the <i>GotResult</i> block will fire when a result is returned from the server.Query results will be returned in CSV format, and can be converted to list format using the \"list from csv table\" or \"list from csv row\" blocks.</p><p>Note that you do not need to worry about UTF-encoding the query. But you do need to make sure the query follows the syntax described in <a href=\"https://developers.google.com/fusiontables/docs/v2/getting_started\" target=\"_blank\">the reference manual</a>, which means that things like capitalization for names of columns matters, and that single quotes must be used around column names if there are spaces in them.</p>", iconName = "images/fusiontables.png", nonVisible = true, version = 4)
@UsesLibraries(libraries = "fusiontables.jar,google-api-client.jar,google-api-client-android2-beta.jar,google-http-client.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar,google-oauth-client.jar,gson.jar")
/* loaded from: classes.dex */
public class FusiontablesControl extends AndroidNonvisibleComponent implements Component {
    public static final String APP_NAME = "App Inventor";
    public static final String AUTHORIZATION_HEADER_PREFIX = "Bearer ";
    public static final String AUTH_TOKEN_TYPE_FUSIONTABLES = "oauth2:https://www.googleapis.com/auth/fusiontables";
    private static final String DEFAULT_QUERY = "show tables";
    private static final String DIALOG_TEXT = "Choose an account to access FusionTables";
    public static final String FUSIONTABLES_POST = "https://www.googleapis.com/fusiontables/v2/tables";
    private static final String FUSIONTABLE_SERVICE = "fusiontables";
    private static final String FUSION_QUERY_URL = "http://www.google.com/fusiontables/v2/query";
    private static final String LOG_TAG = "FUSION";
    private static final int SERVER_TIMEOUT_MS = 30000;
    private final Activity activity;
    private String apiKey;
    private String authTokenType;
    private java.io.File cachedServiceCredentials;
    private final ComponentContainer container;
    private String errorMessage;
    private boolean isServiceAuth;
    private String keyPath;
    private String loadingDialogMessage;
    private String query;
    private String queryResultStr;
    private final IClientLoginHelper requestHelper;
    private String scope;
    private String serviceAccountEmail;
    private boolean showLoadingDialog;
    private String standardErrorMessage;

    public HttpResponse sendQuery(String str, String str2) {
        return null;
    }

    public FusiontablesControl(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.cachedServiceCredentials = null;
        this.authTokenType = AUTH_TOKEN_TYPE_FUSIONTABLES;
        this.standardErrorMessage = "Error on Fusion Tables query";
        this.keyPath = "";
        this.isServiceAuth = false;
        this.serviceAccountEmail = "";
        this.scope = "https://www.googleapis.com/auth/fusiontables";
        this.loadingDialogMessage = "Please wait loading...";
        this.showLoadingDialog = true;
        this.container = componentContainer;
        this.activity = componentContainer.$context();
        this.requestHelper = createClientLoginHelper(DIALOG_TEXT, FUSIONTABLE_SERVICE);
        this.query = DEFAULT_QUERY;
        if (SdkLevel.getLevel() < 5) {
            showNoticeAndDie("Sorry. The Fusiontables component is not compatible with this phone.", "This application must exit.", "Rats!");
        }
    }

    private void showNoticeAndDie(String str, String str2, String str3) {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this.activity).create();
        alertDialogCreate.setTitle(str2);
        alertDialogCreate.setCancelable(false);
        alertDialogCreate.setMessage(str);
        alertDialogCreate.setButton(str3, new DialogInterface.OnClickListener() { // from class: com.google.appinventor.components.runtime.FusiontablesControl.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                FusiontablesControl.this.activity.finish();
            }
        });
        alertDialogCreate.show();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Indicates whether a service account should be used for authentication")
    public boolean UseServiceAuthentication() {
        return this.isServiceAuth;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void UseServiceAuthentication(boolean z) {
        this.isServiceAuth = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The Service Account Email Address when service account authentication is in use.")
    public String ServiceAccountEmail() {
        return this.serviceAccountEmail;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ServiceAccountEmail(String str) {
        this.serviceAccountEmail = str;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ApiKey(String str) {
        this.apiKey = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Your Google API Key. For help, click on the questionmark (?) next to the FusiontablesControl component in the Palette. ")
    public String ApiKey() {
        return this.apiKey;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = DEFAULT_QUERY, editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Query(String str) {
        this.query = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The query to send to the Fusion Tables API. <p>For legal query formats and examples, see the <a href=\"https://developers.google.com/fusiontables/docs/v2/getting_started\" target=\"_blank\">Fusion Tables API v2.0 reference manual</a>.</p> <p>Note that you do not need to worry about UTF-encoding the query. But you do need to make sure it follows the syntax described in the reference manual, which means that things like capitalization for names of columns matters, and that single quotes need to be used around column names if there are spaces in them.</p> ")
    public String Query() {
        return this.query;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void KeyFile(String str) {
        if (str.equals(this.keyPath)) {
            return;
        }
        java.io.File file = this.cachedServiceCredentials;
        if (file != null) {
            file.delete();
            this.cachedServiceCredentials = null;
        }
        this.keyPath = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Specifies the path of the private key file.  This key file is used to get access to the FusionTables API.")
    public String KeyFile() {
        return this.keyPath;
    }

    @SimpleFunction(description = "Send the query to the Fusiontables server.")
    public void SendQuery() {
        new QueryProcessorV2(this.activity).execute(this.query);
    }

    @SimpleFunction(description = "DEPRECATED. This block is deprecated as of the end of 2012.  Use SendQuery.")
    @Deprecated
    public void DoQuery() {
        int i = 0;
        if (this.requestHelper != null) {
            new QueryProcessor(this, i).execute(this.query);
        } else {
            this.form.dispatchErrorOccurredEvent(this, "DoQuery", 3, new Object[0]);
        }
    }

    @SimpleEvent(description = "Indicates that the Fusion Tables query has finished processing, with a result.  The result of the query will generally be returned in CSV format, and can be converted to list format using the \"list from csv table\" or \"list from csv row\" blocks.")
    public void GotResult(String str) {
        EventDispatcher.dispatchEvent(this, "GotResult", str);
    }

    @SimpleFunction(description = "Forget end-users login credentials. Has no effect on service authentication")
    public void ForgetLogin() {
        OAuth2Helper.resetAccountCredential(this.activity);
    }

    @SimpleFunction(description = "Inserts a row into the specified fusion table. The tableId field is the id of thefusion table. The columns is a comma-separated list of the columns to insert values into. The values field specifies what values to insert into each column.")
    public void InsertRow(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder("INSERT INTO ");
        sb.append(str);
        sb.append(" (");
        sb.append(str2);
        sb.append(") VALUES (");
        this.query = _COROUTINE.a.m(sb, str3, ")");
        new QueryProcessorV2(this.activity).execute(this.query);
    }

    @SimpleFunction(description = "Gets all the rows from a specified fusion table. The tableId field is the id of therequired fusion table. The columns field is a comma-separeted list of the columns to retrieve.")
    public void GetRows(String str, String str2) {
        this.query = "SELECT " + str2 + " FROM " + str;
        new QueryProcessorV2(this.activity).execute(this.query);
    }

    @SimpleFunction(description = "Gets all the rows from a fusion table that meet certain conditions. The tableId field isthe id of the required fusion table. The columns field is a comma-separeted list of the columns toretrieve. The conditions field specifies what rows to retrieve from the table, for example the rows in whicha particular column value is not null.")
    public void GetRowsWithConditions(String str, String str2, String str3) {
        this.query = "SELECT " + str2 + " FROM " + str + " WHERE " + str3;
        new QueryProcessorV2(this.activity).execute(this.query);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "Please wait loading...", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void LoadingDialogMessage(String str) {
        this.loadingDialogMessage = str;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the loading message for the dialog.")
    public String LoadingDialogMessage() {
        return this.loadingDialogMessage;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowLoadingDialog(boolean z) {
        this.showLoadingDialog = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether or not to show the loading dialog")
    public boolean ShowLoadingDialog() {
        return this.showLoadingDialog;
    }

    private IClientLoginHelper createClientLoginHelper(String str, String str2) {
        if (SdkLevel.getLevel() < 5) {
            return null;
        }
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
        HttpConnectionParams.setSoTimeout(defaultHttpClient.getParams(), SERVER_TIMEOUT_MS);
        HttpConnectionParams.setConnectionTimeout(defaultHttpClient.getParams(), SERVER_TIMEOUT_MS);
        return new ClientLoginHelper(this.activity, str2, str, defaultHttpClient);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HttpUriRequest genFusiontablesQuery(String str) throws IOException {
        HttpPost httpPost = new HttpPost(FUSION_QUERY_URL);
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new BasicNameValuePair("sql", str));
        UrlEncodedFormEntity urlEncodedFormEntity = new UrlEncodedFormEntity(arrayList, "UTF-8");
        urlEncodedFormEntity.setContentType("application/x-www-form-urlencoded");
        httpPost.setEntity(urlEncodedFormEntity);
        return httpPost;
    }

    public class QueryProcessor extends android.os.AsyncTask<String, Void, String> {
        private ProgressDialog progress;

        public /* synthetic */ QueryProcessor(FusiontablesControl fusiontablesControl, int i) {
            this();
        }

        private QueryProcessor() {
            this.progress = null;
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            this.progress = ProgressDialog.show(FusiontablesControl.this.activity, "Fusiontables", "processing query...", true);
        }

        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) throws IOException {
            try {
                HttpUriRequest httpUriRequestGenFusiontablesQuery = FusiontablesControl.this.genFusiontablesQuery(strArr[0]);
                Log.d(FusiontablesControl.LOG_TAG, "Fetching: " + strArr[0]);
                org.apache.http.HttpResponse httpResponseExecute = FusiontablesControl.this.requestHelper.execute(httpUriRequestGenFusiontablesQuery);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                httpResponseExecute.getEntity().writeTo(byteArrayOutputStream);
                Log.d(FusiontablesControl.LOG_TAG, "Response: " + httpResponseExecute.getStatusLine().toString());
                return byteArrayOutputStream.toString();
            } catch (IOException e) {
                e.printStackTrace();
                return e.getMessage();
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            this.progress.dismiss();
            FusiontablesControl.this.GotResult(str);
        }
    }

    public static String httpResponseToString(HttpResponse httpResponse) {
        if (httpResponse != null) {
            if (httpResponse.getStatusCode() != 200) {
                return httpResponse.getStatusCode() + " " + httpResponse.getStatusMessage();
            }
            try {
                return parseResponse(httpResponse.getContent());
            } catch (IOException e) {
                e.printStackTrace();
                return "";
            }
        }
        return "";
    }

    public static String httpApacheResponseToString(org.apache.http.HttpResponse httpResponse) {
        if (httpResponse != null) {
            if (httpResponse.getStatusLine().getStatusCode() != 200) {
                return httpResponse.getStatusLine().getStatusCode() + " " + httpResponse.getStatusLine().getReasonPhrase();
            }
            try {
                return parseResponse(httpResponse.getEntity().getContent());
            } catch (IOException e) {
                e.printStackTrace();
                return "";
            }
        }
        return "";
    }

    public static String parseResponse(InputStream inputStream) throws IOException {
        String string = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line != null) {
                    sb.append(line + "\n");
                } else {
                    string = sb.toString();
                    Log.i(LOG_TAG, "resultStr = " + string);
                    bufferedReader.close();
                    return string;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            return string;
        }
    }

    public void handleOAuthError(String str) {
        _COROUTINE.a.C("handleOAuthError: ", str, LOG_TAG);
        this.errorMessage = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String parseSqlCreateQueryToJson(String str) {
        Log.i(LOG_TAG, "parsetoJSonSqlCreate :" + str);
        StringBuilder sb = new StringBuilder();
        String strTrim = str.trim();
        String strTrim2 = strTrim.substring(12, strTrim.indexOf(40)).trim();
        String[] strArrSplit = strTrim.substring(strTrim.indexOf(40) + 1, strTrim.indexOf(41)).split(",");
        sb.append("{'columns':[");
        for (int i = 0; i < strArrSplit.length; i++) {
            String[] strArrSplit2 = strArrSplit[i].split(":");
            sb.append(_COROUTINE.a.k("{'name': '", strArrSplit2[0].trim(), "', 'type': '", strArrSplit2[1].trim(), "'}"));
            if (i < strArrSplit.length - 1) {
                sb.append(",");
            }
        }
        sb.append("],'isExportable':'true',");
        sb.append("'name': '" + strTrim2 + "'");
        sb.append("}");
        sb.insert(0, "CREATE TABLE ");
        Log.i(LOG_TAG, "result = " + sb.toString());
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String doPostRequest(String str, String str2) throws JSONException, IOException {
        String strSubstring = str.trim().substring(12);
        Log.i(LOG_TAG, "Http Post content = " + strSubstring);
        HttpPost httpPost = new HttpPost(_COROUTINE.a.i("https://www.googleapis.com/fusiontables/v2/tables?key=", ApiKey()));
        try {
            StringEntity stringEntity = new StringEntity(strSubstring);
            stringEntity.setContentType("application/json");
            httpPost.addHeader(HttpHeaders.AUTHORIZATION, _COROUTINE.a.i(AUTHORIZATION_HEADER_PREFIX, str2));
            httpPost.setEntity(stringEntity);
            try {
                org.apache.http.HttpResponse httpResponseExecute = new DefaultHttpClient().execute(httpPost);
                if (httpResponseExecute.getStatusLine().getStatusCode() == 200) {
                    try {
                        String strHttpApacheResponseToString = httpApacheResponseToString(httpResponseExecute);
                        JSONObject jSONObject = new JSONObject(strHttpApacheResponseToString);
                        if (jSONObject.has("tableId")) {
                            this.queryResultStr = "tableId," + jSONObject.get("tableId");
                        } else {
                            this.queryResultStr = strHttpApacheResponseToString;
                        }
                        Log.i(LOG_TAG, "Response code = " + httpResponseExecute.getStatusLine());
                        Log.i(LOG_TAG, "Query = " + str + "\nResultStr = " + this.queryResultStr);
                    } catch (IllegalStateException e) {
                        e.printStackTrace();
                        return _COROUTINE.a.i("Error: ", e.getMessage());
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                        return _COROUTINE.a.i("Error: ", e2.getMessage());
                    }
                } else {
                    _COROUTINE.a.C("Error: ", httpResponseExecute.getStatusLine().toString(), LOG_TAG);
                    this.queryResultStr = httpResponseExecute.getStatusLine().toString();
                }
                return this.queryResultStr;
            } catch (ClientProtocolException e3) {
                e3.printStackTrace();
                return _COROUTINE.a.i("Error: ", e3.getMessage());
            } catch (IOException e4) {
                e4.printStackTrace();
                return _COROUTINE.a.i("Error: ", e4.getMessage());
            }
        } catch (UnsupportedEncodingException e5) {
            e5.printStackTrace();
            return _COROUTINE.a.i("Error: ", e5.getMessage());
        }
    }

    public class QueryProcessorV2 extends android.os.AsyncTask<String, Void, String> {
        private static final String STAG = "FUSION_SERVICE_ACCOUNT";
        private static final String TAG = "QueryProcessorV2";
        private final Activity activity;
        private final ProgressDialog dialog;

        public QueryProcessorV2(Activity activity) {
            Log.i(TAG, "Creating AsyncFusiontablesQuery");
            this.activity = activity;
            this.dialog = new ProgressDialog(activity);
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (FusiontablesControl.this.ShowLoadingDialog()) {
                this.dialog.setMessage(FusiontablesControl.this.LoadingDialogMessage());
                this.dialog.show();
            }
        }

        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) {
            String str = strArr[0];
            _COROUTINE.a.C("Starting doInBackground ", str, TAG);
            return FusiontablesControl.this.isServiceAuth ? serviceAuthRequest(str) : userAuthRequest(str);
        }

        private String userAuthRequest(String str) throws OperationCanceledException, IOException, AuthenticatorException {
            FusiontablesControl.this.queryResultStr = "";
            String refreshedAuthToken = new OAuth2Helper().getRefreshedAuthToken(this.activity, FusiontablesControl.this.authTokenType);
            if (refreshedAuthToken == null) {
                return OAuth2Helper.getErrorMessage();
            }
            if (str.toLowerCase().contains("create table")) {
                FusiontablesControl fusiontablesControl = FusiontablesControl.this;
                fusiontablesControl.queryResultStr = fusiontablesControl.doPostRequest(fusiontablesControl.parseSqlCreateQueryToJson(str), refreshedAuthToken);
                return FusiontablesControl.this.queryResultStr;
            }
            HttpResponse httpResponseSendQuery = FusiontablesControl.this.sendQuery(str, refreshedAuthToken);
            if (httpResponseSendQuery != null) {
                FusiontablesControl.this.queryResultStr = FusiontablesControl.httpResponseToString(httpResponseSendQuery);
                Log.i(TAG, "Query = " + str + "\nResultStr = " + FusiontablesControl.this.queryResultStr);
            } else {
                FusiontablesControl fusiontablesControl2 = FusiontablesControl.this;
                fusiontablesControl2.queryResultStr = fusiontablesControl2.errorMessage;
                _COROUTINE.a.C("Error:  ", FusiontablesControl.this.errorMessage, TAG);
            }
            return FusiontablesControl.this.queryResultStr;
        }

        private String serviceAuthRequest(String str) {
            FusiontablesControl.this.queryResultStr = "";
            FusiontablesControl fusiontablesControl = FusiontablesControl.this;
            fusiontablesControl.errorMessage = fusiontablesControl.standardErrorMessage;
            HttpTransport httpTransportNewCompatibleTransport = AndroidHttp.newCompatibleTransport();
            _COROUTINE.a.C("keyPath ", FusiontablesControl.this.keyPath, STAG);
            try {
                if (FusiontablesControl.this.cachedServiceCredentials == null) {
                    FusiontablesControl fusiontablesControl2 = FusiontablesControl.this;
                    fusiontablesControl2.cachedServiceCredentials = MediaUtil.copyMediaToTempFile(fusiontablesControl2.container.$form(), FusiontablesControl.this.keyPath);
                }
                new GoogleCredential.Builder().setTransport(httpTransportNewCompatibleTransport).setJsonFactory((JsonFactory) null).setServiceAccountId(FusiontablesControl.this.serviceAccountEmail).setServiceAccountScopes(Collections.singleton(FusiontablesControl.this.scope)).setServiceAccountPrivateKeyFromP12File(FusiontablesControl.this.cachedServiceCredentials).build();
                FusiontablesControl fusiontablesControl3 = FusiontablesControl.this;
                fusiontablesControl3.queryResultStr = fusiontablesControl3.errorMessage;
                Log.i(STAG, "Error with null response:  " + FusiontablesControl.this.errorMessage);
                Log.i(STAG, "executed sql query");
            } catch (Throwable th) {
                Log.i(STAG, "in Catch Throwable e");
                th.printStackTrace();
                FusiontablesControl.this.queryResultStr = th.getMessage();
            }
            _COROUTINE.a.C("returning queryResultStr = ", FusiontablesControl.this.queryResultStr, STAG);
            return FusiontablesControl.this.queryResultStr;
        }

        public String parseJsonResponseException(String str) {
            _COROUTINE.a.C("parseJsonResponseException: ", str, STAG);
            return str;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            _COROUTINE.a.C("Query result ", str, FusiontablesControl.LOG_TAG);
            if (str == null) {
                str = FusiontablesControl.this.errorMessage;
            }
            this.dialog.dismiss();
            FusiontablesControl.this.GotResult(str);
        }
    }

    public void signalJsonResponseError(String str, String str2) {
        this.form.dispatchErrorOccurredEventDialog(this, "SendQuery", ErrorMessages.FUSION_TABLES_QUERY_ERROR, str, str2);
    }
}
