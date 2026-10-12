.class public Lcom/google/appinventor/components/runtime/FusiontablesControl;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A non-visible component that communicates with Google Fusion Tables. Fusion Tables let you store, share, query and visualize data tables; this component lets you query, create, and modify these tables.</p> <p><font color=red><b>NOTE:</b>&nbsp;Google shutdown the Fusion Tables service on December 3, 2019. This component no longer functions.</font></p> <p>This component uses the <a href=\"https://developers.google.com/fusiontables/docs/v2/getting_started\" target=\"_blank\">Fusion Tables API V2.0</a>. <p>Applications using Fusion Tables must authentication to Google\'s servers. There are two ways this can be done. The first way uses an API Key which you the developer obtain (see below). With this approach end-users must also login to access a Fusion Table. The second approach is to use a Service Account. With this approach you create credentials and a special \"Service Account Email Address\" which you obtain from the <a href=\"https://code.google.com/apis/console/\" target=\"_blank\">Google APIs Console</a>. You then tell the Fusion Table Control the name of the Service Account Email address and upload the secret key as an asset to your application and set the KeyFile property to point at this file. Finally you check the \"UseServiceAuthentication\" checkbox in the designer. When using a Service Account, end-users do not need to login to use Fusion Tables, your service account authenticates all access.</p> <p>To get an API key, follow these instructions.</p> <ol><li>Go to your <a href=\"https://code.google.com/apis/console/\" target=\"_blank\">Google APIs Console</a> and login if necessary.</li><li>Select the <i>Services</i> item from the menu on the left.</li><li>Choose the <i>Fusiontables</i> service from the list provided and turn it on.</li><li>Go back to the main menu and select the <i>API Access</i> item. </li></ol><p>Your API Key will be near the bottom of that pane in the section called \"Simple API Access\".You will have to provide that key as the value for the <i>ApiKey</i> property in your Fusiontables app.</p><p>Once you have an API key, set the value of the <i>Query</i> property to a valid Fusiontables SQL query and call <i>SendQuery</i> to execute the query.  App Inventor will send the query to the Fusion Tables server and the <i>GotResult</i> block will fire when a result is returned from the server.Query results will be returned in CSV format, and can be converted to list format using the \"list from csv table\" or \"list from csv row\" blocks.</p><p>Note that you do not need to worry about UTF-encoding the query. But you do need to make sure the query follows the syntax described in <a href=\"https://developers.google.com/fusiontables/docs/v2/getting_started\" target=\"_blank\">the reference manual</a>, which means that things like capitalization for names of columns matters, and that single quotes must be used around column names if there are spaces in them.</p>"
    iconName = "images/fusiontables.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "fusiontables.jar,google-api-client.jar,google-api-client-android2-beta.jar,google-http-client.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar,google-oauth-client.jar,gson.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.ACCOUNT_MANAGER,android.permission.MANAGE_ACCOUNTS,android.permission.GET_ACCOUNTS,android.permission.USE_CREDENTIALS,android.permission.WRITE_EXTERNAL_STORAGE,android.permission.READ_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;,
        Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;
    }
.end annotation


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "App Inventor"

.field public static final AUTHORIZATION_HEADER_PREFIX:Ljava/lang/String; = "Bearer "

.field public static final AUTH_TOKEN_TYPE_FUSIONTABLES:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/fusiontables"

.field private static final DEFAULT_QUERY:Ljava/lang/String; = "show tables"

.field private static final DIALOG_TEXT:Ljava/lang/String; = "Choose an account to access FusionTables"

.field public static final FUSIONTABLES_POST:Ljava/lang/String; = "https://www.googleapis.com/fusiontables/v2/tables"

.field private static final FUSIONTABLE_SERVICE:Ljava/lang/String; = "fusiontables"

.field private static final FUSION_QUERY_URL:Ljava/lang/String; = "http://www.google.com/fusiontables/v2/query"

.field private static final LOG_TAG:Ljava/lang/String; = "FUSION"

.field private static final SERVER_TIMEOUT_MS:I = 0x7530


# instance fields
.field private final activity:Landroid/app/Activity;

.field private apiKey:Ljava/lang/String;

.field private authTokenType:Ljava/lang/String;

.field private cachedServiceCredentials:Ljava/io/File;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private errorMessage:Ljava/lang/String;

.field private isServiceAuth:Z

.field private keyPath:Ljava/lang/String;

.field private loadingDialogMessage:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private queryResultStr:Ljava/lang/String;

.field private final requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

.field private scope:Ljava/lang/String;

.field private serviceAccountEmail:Ljava/lang/String;

.field private showLoadingDialog:Z

.field private standardErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 229
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->cachedServiceCredentials:Ljava/io/File;

    .line 165
    const-string v0, "oauth2:https://www.googleapis.com/auth/fusiontables"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->authTokenType:Ljava/lang/String;

    .line 197
    const-string v0, "Error on Fusion Tables query"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->standardErrorMessage:Ljava/lang/String;

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->keyPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 215
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->isServiceAuth:Z

    .line 220
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->serviceAccountEmail:Ljava/lang/String;

    .line 222
    const-string v0, "https://www.googleapis.com/auth/fusiontables"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->scope:Ljava/lang/String;

    .line 224
    const-string v0, "Please wait loading..."

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->loadingDialogMessage:Ljava/lang/String;

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->showLoadingDialog:Z

    .line 230
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 231
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    .line 232
    const-string p1, "Choose an account to access FusionTables"

    const-string v0, "fusiontables"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->createClientLoginHelper(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    .line 233
    const-string p1, "show tables"

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 236
    const-string p1, "This application must exit."

    const-string v0, "Rats!"

    const-string v1, "Sorry. The Fusiontables component is not compatible with this phone."

    invoke-direct {p0, v1, p1, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->showNoticeAndDie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->authTokenType:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->cachedServiceCredentials:Ljava/io/File;

    return-object p0
.end method

.method private createClientLoginHelper(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;
    .locals 3

    .line 484
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 485
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 486
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const/16 v2, 0x7530

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 487
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 488
    new-instance v1, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2, p2, p1, v0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/ComponentContainer;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-object p0
.end method

.method private doPostRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 705
    const-string v0, "tableId"

    const-string v1, "Error: "

    const-string v2, "tableId,"

    .line 706
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 707
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Http Post content = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FUSION"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ApiKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https://www.googleapis.com/fusiontables/v2/tables?key="

    .line 0
    invoke-static {v7, v6}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 712
    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 714
    :try_start_0
    new-instance v6, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v6, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 719
    const-string v3, "application/json"

    invoke-virtual {v6, v3}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 720
    const-string v3, "Bearer "

    .line 0
    invoke-static {v3, p2}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 720
    const-string v3, "Authorization"

    invoke-virtual {v4, v3, p2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-virtual {v4, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 725
    new-instance p2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 727
    :try_start_1
    invoke-interface {p2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p2
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 739
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 742
    :try_start_2
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpApacheResponseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v3

    .line 743
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 745
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 747
    :cond_0
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 757
    :goto_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Query = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nResultStr = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 754
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 755
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-static {v1, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 751
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 752
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-static {v1, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 761
    :cond_1
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-static {v1, p1, v5}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    .line 765
    :goto_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    return-object p1

    :catch_2
    move-exception p1

    .line 732
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 733
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-static {v1, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    .line 729
    invoke-virtual {p1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 730
    invoke-virtual {p1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-static {v1, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_4
    move-exception p1

    .line 716
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 717
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 0
    invoke-static {v1, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->isServiceAuth:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->keyPath:Ljava/lang/String;

    return-object p0
.end method

.method private genFusiontablesQuery(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "http://www.google.com/fusiontables/v2/query"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 499
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 500
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sql"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance p1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {p1, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 502
    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentType(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    return-object p0
.end method

.method public static httpApacheResponseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 606
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 607
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 608
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 611
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->parseResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 613
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 617
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 583
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 587
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->parseResponse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 590
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 594
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->serviceAccountEmail:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->standardErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->cachedServiceCredentials:Ljava/io/File;

    return-void
.end method

.method public static bridge synthetic n(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic o(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic p(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->doPostRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 626
    const-string v0, ""

    .line 628
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 630
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 636
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    const-string p0, "FUSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 640
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private parseSqlCreateQueryToJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parsetoJSonSqlCreate :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUSION"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x28

    .line 672
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 673
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    const/16 v5, 0x29

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 674
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 675
    const-string v5, "{\'columns\':["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 676
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_1

    .line 677
    aget-object v7, p1, v6

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 678
    aget-object v8, v7, v5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aget-object v7, v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v9, "{\'name\': \'"

    const-string v10, "\', \'type\': \'"

    const-string v11, "\'}"

    .line 0
    invoke-static {v9, v8, v10, v7, v11}, L_COROUTINE/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 678
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    array-length v7, p1

    sub-int/2addr v7, v4

    if-ge v6, v7, :cond_0

    .line 680
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 683
    :cond_1
    const-string p1, "],\'isExportable\':\'true\',"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\'name\': \'"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const-string p1, "CREATE TABLE "

    invoke-virtual {v0, v5, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic q(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->genFusiontablesQuery(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->parseSqlCreateQueryToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showNoticeAndDie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 257
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 258
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 260
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 261
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 262
    new-instance p1, Lcom/google/appinventor/components/runtime/FusiontablesControl$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/FusiontablesControl$1;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;)V

    invoke-virtual {v0, p3, p1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 266
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public ApiKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Your Google API Key. For help, click on the questionmark (?) next to the FusiontablesControl component in the Palette. "
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public DoQuery()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "DEPRECATED. This block is deprecated as of the end of 2012.  Use SendQuery."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;I)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DoQuery"

    const/4 v3, 0x3

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public ForgetLogin()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Forget end-users login credentials. Has no effect on service authentication"
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->resetAccountCredential(Landroid/app/Activity;)V

    return-void
.end method

.method public GetRows(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets all the rows from a specified fusion table. The tableId field is the id of therequired fusion table. The columns field is a comma-separeted list of the columns to retrieve."
    .end annotation

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " FROM "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    .line 426
    new-instance p1, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {p1, p0, p2}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public GetRowsWithConditions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets all the rows from a fusion table that meet certain conditions. The tableId field isthe id of the required fusion table. The columns field is a comma-separeted list of the columns toretrieve. The conditions field specifies what rows to retrieve from the table, for example the rows in whicha particular column value is not null."
    .end annotation

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " FROM "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    .line 436
    new-instance p1, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {p1, p0, p2}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public GotResult(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the Fusion Tables query has finished processing, with a result.  The result of the query will generally be returned in CSV format, and can be converted to list format using the \"list from csv table\" or \"list from csv row\" blocks."
    .end annotation

    .line 400
    const-string v0, "GotResult"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InsertRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Inserts a row into the specified fusion table. The tableId field is the id of thefusion table. The columns is a comma-separated list of the columns to insert values into. The values field specifies what values to insert into each column."
    .end annotation

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") VALUES ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 0
    invoke-static {v0, p3, p1}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 416
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    .line 417
    new-instance p1, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {p1, p0, p2}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public KeyFile()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the path of the private key file.  This key file is used to get access to the FusionTables API."
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->keyPath:Ljava/lang/String;

    return-object v0
.end method

.method public KeyFile(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->keyPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->cachedServiceCredentials:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 357
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->cachedServiceCredentials:Ljava/io/File;

    .line 359
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->keyPath:Ljava/lang/String;

    return-void
.end method

.method public LoadingDialogMessage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the loading message for the dialog."
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->loadingDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method public LoadingDialogMessage(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Please wait loading..."
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 446
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->loadingDialogMessage:Ljava/lang/String;

    return-void
.end method

.method public Query()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The query to send to the Fusion Tables API. <p>For legal query formats and examples, see the <a href=\"https://developers.google.com/fusiontables/docs/v2/getting_started\" target=\"_blank\">Fusion Tables API v2.0 reference manual</a>.</p> <p>Note that you do not need to worry about UTF-encoding the query. But you do need to make sure it follows the syntax described in the reference manual, which means that things like capitalization for names of columns matters, and that single quotes need to be used around column names if there are spaces in them.</p> "
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    return-object v0
.end method

.method public Query(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "show tables"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 328
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    return-void
.end method

.method public SendQuery()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send the query to the Fusiontables server."
    .end annotation

    .line 376
    new-instance v0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public ServiceAccountEmail()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Service Account Email Address when service account authentication is in use."
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->serviceAccountEmail:Ljava/lang/String;

    return-object v0
.end method

.method public ServiceAccountEmail(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->serviceAccountEmail:Ljava/lang/String;

    return-void
.end method

.method public ShowLoadingDialog(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 467
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->showLoadingDialog:Z

    return-void
.end method

.method public ShowLoadingDialog()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether or not to show the loading dialog"
    .end annotation

    .line 478
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->showLoadingDialog:Z

    return v0
.end method

.method public UseServiceAuthentication(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 282
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->isServiceAuth:Z

    return-void
.end method

.method public UseServiceAuthentication()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Indicates whether a service account should be used for authentication"
    .end annotation

    .line 276
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->isServiceAuth:Z

    return v0
.end method

.method public handleOAuthError(Ljava/lang/String;)V
    .locals 2

    .line 651
    const-string v0, "handleOAuthError: "

    const-string v1, "FUSION"

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public sendQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpResponse;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public signalJsonResponseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 932
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xa29

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string p1, "SendQuery"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
