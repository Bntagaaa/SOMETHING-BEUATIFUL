.class public Lcom/google/appinventor/components/runtime/Spreadsheet;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ObservableDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Spreadsheet is a non-visible component for storing and receiving data from a Spreadsheet document using the Google Sheets API. <p>In order to utilize this component, one must first have a Google Developer Account. Then, one must create a new project under that Google Developer Account, enable the Google Sheets API on that project, and finally create a Service Account for the Sheets API.</p><p>Instructions on how to create the Service Account, as well as where to find other relevant information for using the Spreadsheet Component, can be found <a href=\'/reference/other/googlesheets-api-setup.html\'>here</a>.</p>"
    iconName = "images/spreadsheet.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "googlesheets.jar",
        "jackson-core.jar",
        "google-api-client.jar",
        "google-api-client-jackson2.jar",
        "google-http-client.jar",
        "google-http-client-jackson2.jar",
        "google-oauth-client.jar",
        "google-oauth-client-jetty.jar",
        "grpc-context.jar",
        "opencensus.jar",
        "opencensus-contrib-http-util.jar",
        "jetty.jar",
        "jetty-util.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCOUNT_MANAGER",
        "android.permission.GET_ACCOUNTS",
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;",
        "Lcom/google/appinventor/components/runtime/Component;",
        "Lcom/google/appinventor/components/runtime/ObservableDataSource<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        "Ljava/util/concurrent/Future<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final INTEGER:Ljava/util/regex/Pattern;

.field private static final LOG_TAG:Ljava/lang/String; = "SPREADSHEET"

.field private static final WEBVIEW_ACTIVITY_CLASS:Ljava/lang/String;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field private apiKey:Ljava/lang/String;

.field private applicationName:Ljava/lang/String;

.field private cachedCredentialsFile:Ljava/io/File;

.field private columns:Lcom/google/appinventor/components/runtime/util/YailList;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private credentialsPath:Ljava/lang/String;

.field private lastTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final observers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private requestCode:I

.field private final sheetIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sheetsService:Lcom/google/api/services/sheets/v4/Sheets;

.field private spreadsheetID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    const-string v0, "^[0-9]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Spreadsheet;->INTEGER:Ljava/util/regex/Pattern;

    .line 141
    const-class v0, Lcom/google/appinventor/components/runtime/WebViewActivity;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Spreadsheet;->WEBVIEW_ACTIVITY_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 174
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    .line 150
    const-string v0, "App Inventor"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->applicationName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->cachedCredentialsFile:Ljava/io/File;

    .line 154
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->accessToken:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetsService:Lcom/google/api/services/sheets/v4/Sheets;

    .line 160
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->lastTask:Ljava/util/concurrent/FutureTask;

    .line 162
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->observers:Ljava/util/Set;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/Map;

    .line 175
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 176
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private authorize()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    const-string v0, "SPREADSHEET"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->cachedCredentialsFile:Ljava/io/File;

    if-nez v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 271
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    .line 270
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->cachedCredentialsFile:Ljava/io/File;

    :cond_0
    const/4 v1, 0x0

    .line 280
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->cachedCredentialsFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 282
    :try_start_1
    invoke-static {v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->fromStream(Ljava/io/InputStream;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v1

    const-string v3, "https://www.googleapis.com/auth/spreadsheets"

    .line 283
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->createScoped(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->refreshToken()Z

    .line 285
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->accessToken:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 290
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->accessToken:Ljava/lang/String;

    const-string v3, "Credential after refresh token: "

    .line 0
    invoke-static {v3, v2, v0}, L_COROUTINE/a;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 287
    :goto_0
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 288
    throw v1
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->observers:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/Spreadsheet;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/api/services/sheets/v4/Sheets;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getSheetID(Lcom/google/api/services/sheets/v4/Sheets;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getSheetsService()Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object p0

    return-object p0
.end method

.method private getColNum(Ljava/lang/String;)I
    .locals 4

    if-eqz p1, :cond_2

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 330
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v3, p1, v1

    mul-int/lit8 v2, v2, 0x1a

    add-int/lit8 v3, v3, -0x41

    add-int/2addr v3, v2

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private getColString(I)Ljava/lang/String;
    .locals 27

    if-nez p1, :cond_0

    .line 311
    const-string v0, ""

    return-object v0

    .line 313
    :cond_0
    const-string v25, "Y"

    const-string v26, "Z"

    const-string v1, "A"

    const-string v2, "B"

    const-string v3, "C"

    const-string v4, "D"

    const-string v5, "E"

    const-string v6, "F"

    const-string v7, "G"

    const-string v8, "H"

    const-string v9, "I"

    const-string v10, "J"

    const-string v11, "K"

    const-string v12, "L"

    const-string v13, "M"

    const-string v14, "N"

    const-string v15, "O"

    const-string v16, "P"

    const-string v17, "Q"

    const-string v18, "R"

    const-string v19, "S"

    const-string v20, "T"

    const-string v21, "U"

    const-string v22, "V"

    const-string v23, "W"

    const-string v24, "X"

    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v2, p1

    :goto_0
    if-lez v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    .line 318
    rem-int/lit8 v3, v2, 0x1a

    aget-object v3, v0, v3

    const/4 v4, 0x0

    .line 319
    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    div-int/lit8 v2, v2, 0x1a

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getColumn(I)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2

    .line 2028
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 2030
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 2031
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    return-object p1

    :cond_0
    return-object v0
.end method

.method private getColumn(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 5

    .line 2013
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2015
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2016
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 2018
    invoke-virtual {v3}, Lgnu/lists/Pair;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 427
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 432
    :catch_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 429
    throw p0
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    const-string v0, "SPREADSHEET"

    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 402
    const-string v1, "UTF-8"

    :cond_0
    const/4 v2, 0x0

    .line 406
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getConnectionStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 407
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentLength()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    .line 410
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/16 p0, 0x400

    .line 411
    new-array p0, p0, [C

    .line 413
    :goto_1
    invoke-virtual {v3, p0}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-eq v4, v1, :cond_2

    const/4 v5, 0x0

    .line 414
    invoke-virtual {v2, p0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 416
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    return-object p0

    :catchall_1
    move-exception p0

    :goto_2
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 419
    throw p0
.end method

.method private declared-synchronized getSheetID(Lcom/google/api/services/sheets/v4/Sheets;Ljava/lang/String;)I
    .locals 5

    const-string v0, "getSheetID: IOException - "

    const-string v1, "getSheetID: Unknown Exception - "

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v2, -0x1

    .line 192
    :try_start_1
    invoke-virtual {p1}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object p1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->get(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;

    move-result-object p1

    .line 193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p1, v3}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;->setRanges(Ljava/util/List;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;

    .line 196
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;->setIncludeGridData(Ljava/lang/Boolean;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;

    .line 197
    invoke-virtual {p1}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Get;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/sheets/v4/model/Spreadsheet;

    .line 198
    invoke-virtual {p1}, Lcom/google/api/services/sheets/v4/model/Spreadsheet;->size()I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 199
    monitor-exit p0

    return v2

    .line 201
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/google/api/services/sheets/v4/model/Spreadsheet;->getSheets()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/sheets/v4/model/Sheet;

    invoke-virtual {p1}, Lcom/google/api/services/sheets/v4/model/Sheet;->getProperties()Lcom/google/api/services/sheets/v4/model/SheetProperties;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/services/sheets/v4/model/SheetProperties;->getSheetId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 202
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/Map;

    invoke-interface {v4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    monitor-exit p0

    return v3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 208
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    monitor-exit p0

    return v2

    .line 205
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 206
    monitor-exit p0

    return v2

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private getSheetsService()Lcom/google/api/services/sheets/v4/Sheets;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetsService:Lcom/google/api/services/sheets/v4/Sheets;

    if-nez v0, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->authorize()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    .line 300
    new-instance v1, Lcom/google/api/services/sheets/v4/Sheets$Builder;

    new-instance v2, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v2}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    .line 301
    invoke-static {}, Lcom/google/api/client/json/jackson2/JacksonFactory;->getDefaultInstance()Lcom/google/api/client/json/jackson2/JacksonFactory;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/api/services/sheets/v4/Sheets$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->applicationName:Ljava/lang/String;

    .line 302
    invoke-virtual {v1, v0}, Lcom/google/api/services/sheets/v4/Sheets$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets$Builder;->build()Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetsService:Lcom/google/api/services/sheets/v4/Sheets;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetsService:Lcom/google/api/services/sheets/v4/Sheets;

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->removeSheetID(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->updateColumns(Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->updateSheetID(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic k(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized removeSheetID(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static sanitizeList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2059
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2060
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/lists/LList;

    invoke-virtual {p0}, Lgnu/lists/AbstractSequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2061
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->sanitizeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static sanitizeObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2067
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-object p0

    .line 2069
    :cond_0
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_1

    .line 2070
    check-cast p0, Lgnu/math/IntNum;

    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 2071
    :cond_1
    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_2

    .line 2072
    check-cast p0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 2073
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    return-object p0

    .line 2075
    :cond_3
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 2076
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 2077
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object p0

    .line 2080
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method private updateColumns(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0

    .line 2006
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;->getTranspose(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2008
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    return-void
.end method

.method private declared-synchronized updateSheetID(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->sheetIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public AddColumn(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given a list of values as `data`, appends the values to the next empty column of the sheet."
    .end annotation

    .line 1147
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1156
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1157
    invoke-virtual {p2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/lists/LList;

    invoke-virtual {p2}, Lgnu/lists/AbstractSequence;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->sanitizeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1162
    :cond_2
    new-instance p2, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {p2}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 1163
    invoke-virtual {p2, v0}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object p2

    .line 1166
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet$10;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 1151
    :cond_3
    :goto_1
    const-string p1, "AddColumn: Credentials JSON is required."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 1148
    :cond_4
    :goto_2
    const-string p1, "AddColumn: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public AddRow(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given a list of values as `data`, appends the values to the next empty row of the sheet. Additionally, this returns the row number for the new row."
    .end annotation

    .line 797
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 806
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 807
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->sanitizeList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object p2

    .line 808
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    new-instance p2, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {p2}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 812
    invoke-virtual {p2, v0}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setRange(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object p2

    .line 815
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet$6;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 801
    :cond_2
    :goto_0
    const-string p1, "AddRow: Credentials JSON is required."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 798
    :cond_3
    :goto_1
    const-string p1, "AddRow: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public AddSheet(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 682
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$4;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$4;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 678
    :cond_2
    :goto_0
    const-string p1, "AddSheet: Credentials JSON is required."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 675
    :cond_3
    :goto_1
    const-string p1, "AddSheet: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public ApplicationName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public ApplicationName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "App Inventor"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The name of your application, used when making API calls."
    .end annotation

    .line 263
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->applicationName:Ljava/lang/String;

    return-void
.end method

.method public ClearRange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Empties the cells in the given range. Once complete, this block triggers the FinishedClearRange callback event."
    .end annotation

    .line 1717
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1720
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1721
    const-string p1, "ClearRange: Credential JSON is required."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 1725
    :cond_1
    const-string v0, "!"

    .line 0
    invoke-static {p1, v0, p2}, L_COROUTINE/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1726
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Clearing Range: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SPREADSHEET"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    new-instance p2, Lcom/google/appinventor/components/runtime/Spreadsheet$16;

    invoke-direct {p2, p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$16;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 1718
    :cond_2
    :goto_0
    const-string p1, "ClearRange: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public CredentialsJson()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    return-object v0
.end method

.method public CredentialsJson(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The JSON File with credentials for the Service Account"
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    return-void
.end method

.method public DeleteSheet(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 744
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$5;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 740
    :cond_2
    :goto_0
    const-string p1, "DeleteSheet: Credentials JSON is required."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 737
    :cond_3
    :goto_1
    const-string p1, "DeleteSheet: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered whenever an API call encounters an error. Details about the error are in `errorMessage`."
    .end annotation

    .line 342
    const-string v0, "SPREADSHEET"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/Spreadsheet$1;

    invoke-direct {v1, p0, p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public FinishedAddColumn(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event will be triggered once the AddColumn method has finished executing and the values on the spreadsheet have been updated. Additionally, this returns the column number for the new column."
    .end annotation

    .line 1228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FinishedAddColumn"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FinishedAddRow(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the AddRow block, called once the values on the table have been updated."
    .end annotation

    .line 869
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FinishedAddRow"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FinishedAddSheet(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the addSheet block, called once the values on the table have been updated."
    .end annotation

    .line 726
    const-string v0, "FinishedAddSheet"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FinishedClearRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ClearRange block."
    .end annotation

    const/4 v0, 0x0

    .line 1759
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FinishedClearRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FinishedDeleteSheet(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the DeleteSheet block, called once the values on the table have been updated."
    .end annotation

    .line 783
    const-string v0, "FinishedDeleteSheet"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FinishedRemoveColumn()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the RemoveColumn block, called once the values on the table have been updated."
    .end annotation

    const/4 v0, 0x0

    .line 1296
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FinishedRemoveColumn"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FinishedRemoveRow()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the RemoveRow block, called once thevalues on the table have been updated."
    .end annotation

    const/4 v0, 0x0

    .line 934
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FinishedRemoveRow"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FinishedWriteCell()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the WriteCell block."
    .end annotation

    const/4 v0, 0x0

    .line 1498
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FinishedWriteCell"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FinishedWriteColumn()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the WriteColumn block, called once thevalues on the table have been updated."
    .end annotation

    const/4 v0, 0x0

    .line 1135
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FinishedWriteColumn"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FinishedWriteRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the WriteRange block."
    .end annotation

    const/4 v0, 0x0

    .line 1706
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FinishedWriteRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FinishedWriteRow()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the WriteRow block, called after the values on the table have finished updating"
    .end annotation

    const/4 v0, 0x0

    .line 664
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FinishedWriteRow"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetCellReference(II)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Converts the integer representation of rows and columns to A1-Notation used in Google Sheets for a single cell."
    .end annotation

    .line 366
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColString(I)Ljava/lang/String;

    move-result-object p2

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetRangeReference(IIII)Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Converts the integer representation of rows and columns for the corners of the range to A1-Notation used in Google Sheets."
    .end annotation

    .line 379
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GetCellReference(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GetCellReference(II)Ljava/lang/String;

    move-result-object p2

    const-string p3, ":"

    .line 0
    invoke-static {p1, p3, p2}, L_COROUTINE/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GotCellData(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ReadCell block. The `cellData` is the text value in the cell (and not the underlying formula)."
    .end annotation

    .line 1428
    const-string v0, "GotCellData got: "

    const-string v1, "SPREADSHEET"

    .line 0
    invoke-static {v0, p1, v1}, L_COROUTINE/a;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    const-string v0, "GotCellData"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotColumnData(Ljava/util/List;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "After calling the ReadColumn method, the data in the column will be stored as a list of text values in `columnData`."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GotColumnData got: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const-string v0, "GotColumnData"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotFilterResult(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ReadWithExactQuery or ReadWithPartialQuery block. The `response` is a list of rows numbers and a list of rows containing cell data."
        userVisible = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GotFilterResult got: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v0, "GotFilterResult"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotRangeData(Ljava/util/List;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ReadRange block. The `rangeData` is a list of rows with the requested dimensions."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GotRangeData got: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    const-string v0, "GotRangeData"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotRowData(Ljava/util/List;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ReadRow block. The `rowDataList` is a list of cell values in order of increasing column number."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 593
    const-string v0, "GotRowData"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotSheetData(Ljava/util/List;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The callback event for the ReadSheet block. The `sheetData` is a list of rows."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GotSheetData got: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    const-string v0, "GotSheetData"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ReadCell(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "On the page with the provided sheetName, reads the cell at the given cellReference and triggers the GotCellData callback event."
    .end annotation

    .line 1310
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1320
    :cond_0
    const-string v0, "[a-zA-Z]+[0-9]+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1321
    const-string p1, "ReadCell: Invalid Cell Reference"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 1326
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$12;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$12;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 1311
    :cond_2
    :goto_0
    const-string p1, "ReadCell: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public ReadColumn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "On the page with the provided sheetName, reads the column at the given index and triggers the GotColumnData callback event."
    .end annotation

    .line 947
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 958
    :cond_0
    const-string v0, "^[0-9]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColString(I)Ljava/lang/String;

    move-result-object p2

    .line 961
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 964
    new-instance p2, Lcom/google/appinventor/components/runtime/Spreadsheet$8;

    invoke-direct {p2, p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$8;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 948
    :cond_2
    :goto_0
    const-string p1, "ReadColumn: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public ReadRange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "On the page with the provided sheetName, reads the cells at the given range. Triggers the getRangeReference once complete."
    .end annotation

    .line 1513
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1524
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$14;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$14;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 1514
    :cond_1
    :goto_0
    const-string p1, "ReadRange: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public ReadRow(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "On the page with the provided sheetName, this method will read the row at the given rowNumber and trigger the GotRowData callback event."
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Read Row number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 498
    new-instance p2, Lcom/google/appinventor/components/runtime/Spreadsheet$2;

    invoke-direct {p2, p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet$2;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 485
    :cond_1
    :goto_0
    const-string p1, "ReadRow: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public ReadSheet(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads the *entire* Google Sheet document and triggers the GotSheetData callback event."
    .end annotation

    .line 1773
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v1, p0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1777
    invoke-virtual/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->RetrieveSheet(Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 1774
    :goto_0
    const-string p1, "ReadSheet: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public ReadWithExactFilter(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Filters a Google Sheet for rows where the given column number matches the provided value."
    .end annotation

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReadRowsWithFilter colID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v1, p0

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 452
    invoke-virtual/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->RetrieveSheet(Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 448
    :goto_0
    const-string p1, "ReadWithExactFilter: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public ReadWithPartialFilter(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Filters a Google Sheet for rows where the given column number contains the provided value string."
    .end annotation

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReadWithPartialFilter colID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v1, p0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 469
    invoke-virtual/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->RetrieveSheet(Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 465
    :goto_0
    const-string p1, "ReadWithPartialFilter: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public RemoveColumn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes the column with the given column number from the table.This does not clear the column, but removes it entirely."
    .end annotation

    .line 1242
    const-string v0, "^[0-9]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    .line 1245
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColNum(Ljava/lang/String;)I

    move-result p2

    .line 1248
    :goto_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet$11;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public RemoveRow(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes the row with the given row number from the table.This does not clear the row, but removes it entirely."
    .end annotation

    .line 883
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet$7;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public RetrieveSheet(Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/Runnable;
    .locals 7

    .line 1782
    new-instance v0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v6, p3

    move v5, p4

    move v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/Spreadsheet$17;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;ZIZLjava/lang/String;)V

    return-object v0
.end method

.method public SpreadsheetID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    return-object v0
.end method

.method public SpreadsheetID(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The ID for the Google Sheets file you want to edit. You can find the spreadsheetID in the URL of the Google Sheets file."
    .end annotation

    .line 238
    const-string v0, "https:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    .line 241
    aget-object p1, p1, v0

    .line 243
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    return-void
.end method

.method public WriteCell(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given text or a number as `data`, writes the value into the cell. Once complete, it triggers the FinishedWriteCell callback event"
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1441
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_0

    .line 1442
    const-string p1, "WriteCell: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 1444
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1445
    const-string p1, "WriteCell: Credentials JSON is required."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 1450
    :cond_1
    const-string v2, "!"

    .line 0
    invoke-static {p1, v2, p2}, L_COROUTINE/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1452
    new-instance p2, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {p2}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 1454
    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->sanitizeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    new-array v1, v1, [Ljava/util/List;

    aput-object p3, v1, v0

    .line 1453
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object p2

    .line 1456
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Writing Cell: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SPREADSHEET"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    new-instance p3, Lcom/google/appinventor/components/runtime/Spreadsheet$13;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet$13;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public WriteColumn(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given a list of values as `data`, this method will write the values to the column of the sheet and calls the FinishedWriteColumn event once complete."
    .end annotation

    .line 1072
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1082
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/runtime/Spreadsheet;->INTEGER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1083
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColString(I)Ljava/lang/String;

    move-result-object p2

    .line 1085
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1088
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    invoke-virtual {p3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lgnu/lists/LList;

    invoke-virtual {p3}, Lgnu/lists/AbstractSequence;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1090
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->sanitizeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1091
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1095
    :cond_3
    new-instance p3, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {p3}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 1096
    invoke-virtual {p3, p2}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object p2

    .line 1099
    new-instance p3, Lcom/google/appinventor/components/runtime/Spreadsheet$9;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet$9;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 1076
    :cond_4
    :goto_1
    const-string p1, "WriteColumn: Credentials JSON is required."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 1073
    :cond_5
    :goto_2
    const-string p1, "WriteColumn: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public WriteRange(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given list of lists as `data`, writes the values into the range. The number of rows and columns in the range reference must match the dimensions of the data."
    .end annotation

    .line 1633
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_7

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1637
    const-string p1, "WriteRange: Credentials JSON is required."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 1643
    :cond_1
    const-string v0, "!"

    .line 0
    invoke-static {p1, v0, p2}, L_COROUTINE/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1644
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Writing Range: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SPREADSHEET"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1649
    invoke-virtual {p3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lgnu/lists/LList;

    invoke-virtual {p3}, Lgnu/lists/AbstractSequence;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v1, -0x1

    const/4 v2, -0x1

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1650
    instance-of v4, v3, Lcom/google/appinventor/components/runtime/util/YailList;

    if-nez v4, :cond_3

    goto :goto_0

    .line 1652
    :cond_3
    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1654
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->sanitizeList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v3

    .line 1655
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v2, v1, :cond_4

    .line 1657
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1658
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 1659
    const-string p1, "WriteRange: Rows must have the same length"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 1665
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p3, :cond_6

    .line 1666
    const-string p1, "WriteRange: Data must be a list of lists."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 1670
    :cond_6
    new-instance p3, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {p3}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 1671
    invoke-virtual {p3, p2}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object p2

    .line 1672
    invoke-virtual {p2}, Lcom/google/api/services/sheets/v4/model/ValueRange;->getRange()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Body\'s Range in A1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    new-instance p3, Lcom/google/appinventor/components/runtime/Spreadsheet$15;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet$15;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 1634
    :cond_7
    :goto_1
    const-string p1, "WriteRange: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public WriteRow(Ljava/lang/String;ILcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given a list of values as `data`, writes the values to the row of the sheet with the given row number."
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->spreadsheetID:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->credentialsPath:Ljava/lang/String;

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 616
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "%s!A%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 619
    invoke-virtual {p3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/lists/LList;

    .line 620
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 622
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    new-instance p2, Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {p2}, Lcom/google/api/services/sheets/v4/model/ValueRange;-><init>()V

    .line 626
    invoke-virtual {p2, p3}, Lcom/google/api/services/sheets/v4/model/ValueRange;->setValues(Ljava/util/List;)Lcom/google/api/services/sheets/v4/model/ValueRange;

    move-result-object p2

    .line 629
    new-instance p3, Lcom/google/appinventor/components/runtime/Spreadsheet$3;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet$3;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void

    .line 611
    :cond_2
    :goto_0
    const-string p1, "WriteRow: Credentials JSON file is required."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void

    .line 608
    :cond_3
    :goto_1
    const-string p1, "WriteRow: SpreadsheetID is empty."

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1

    .line 1987
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 8

    .line 2038
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2039
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2040
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 2043
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColumn(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    goto :goto_2

    .line 2046
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-char v7, v3, v5

    mul-int/lit8 v6, v6, 0x1a

    add-int/lit8 v7, v7, -0x41

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2050
    :cond_1
    invoke-direct {p0, v6}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColumn(I)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    .line 2052
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2055
    :cond_2
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 99
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1959
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;Z)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;Z)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            "Z)",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .line 1963
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->lastTask:Ljava/util/concurrent/FutureTask;

    .line 1965
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet$18;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/util/concurrent/FutureTask;Lcom/google/appinventor/components/runtime/util/YailList;Z)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1981
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public notifyDataObservers(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V
    .locals 2

    .line 1997
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->observers:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    const/4 v0, 0x0

    .line 1998
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-interface {p2, p0, v0, v1}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onDataSourceValueChange(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 99
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->notifyDataObservers(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V

    return-void
.end method

.method public removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1

    .line 1992
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet;->observers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
