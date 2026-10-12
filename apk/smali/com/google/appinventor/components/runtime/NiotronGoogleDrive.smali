.class public final Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A non-visible component that provide assess to the GoogleDrive storage. You can upload your files like Image,  Videos, Audios & Docs etc to your google drive"
    iconName = "images/niotronGoogleDrive.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static mfileName:Ljava/lang/String; = null

.field private static mfolderId:Ljava/lang/String; = null

.field private static mformat:Ljava/lang/String; = null

.field private static mimage:Ljava/lang/String; = null

.field private static response:Ljava/lang/String; = "debug"

.field private static url:Ljava/lang/String; = null

.field private static urlParameters:Ljava/lang/String; = ""


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private mainHandler:Landroid/os/Handler;

.field private responseCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->mainHandler:Landroid/os/Handler;

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->context:Landroid/content/Context;

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->activity:Landroid/app/Activity;

    return-void
.end method

.method private FileMIMETYpe(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 313
    const-string v0, "/storage/emulated/0"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 314
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 315
    const-string v0, "comma-separated-values"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-string p1, "text/csv"

    :cond_0
    return-object p1
.end method

.method private FileToBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 322
    const-string v0, "/storage/emulated/0"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 326
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "null"

    if-eqz v0, :cond_0

    .line 328
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/AppInventor/assets"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 329
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    new-array v0, v0, [B

    .line 332
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 333
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 335
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 339
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int p1, v3

    new-array p1, p1, [B

    .line 342
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 343
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v0, v0, [B

    .line 344
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 345
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :catch_1
    move-exception p1

    .line 337
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 356
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    new-instance v0, Ljava/io/File;

    const-string v3, "/mnt/sdcard"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    :try_start_2
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 360
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v0, v0, [B

    .line 361
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 362
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 380
    :try_start_3
    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object p1

    .line 382
    :catch_2
    const-string v0, "Unable to parse media. Try again"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->ErrorOccurred(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->FileToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->mfileName:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->mfolderId:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->mformat:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->mimage:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->response:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->url:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->urlParameters:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic l(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->response:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic m(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->urlParameters:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public DownloadURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return date when file created from response data"
    .end annotation

    .line 306
    const-string v0, "https://drive.google.com/uc?export=view&id="

    .line 0
    invoke-static {v0, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered after upload failed"
    .end annotation

    .line 182
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FileCreatedOn(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return date when file created from response data"
    .end annotation

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 294
    :cond_0
    const-string v1, ""

    .line 296
    :try_start_0
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v1, p1, p2

    .line 297
    new-instance p1, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    :try_start_1
    const-string p2, "::"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    aget-object p1, p2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-object v1, p1

    :catch_1
    return-object v1
.end method

.method public FileID(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return file ID from response data"
    .end annotation

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 266
    :cond_0
    const-string v2, ""

    .line 268
    :try_start_0
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v2, p1, p2

    .line 269
    new-instance p1, Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    :try_start_1
    const-string p2, "::"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p1, p2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-object v2, p1

    :catch_1
    return-object v2
.end method

.method public FileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns File Name/Title"
    .end annotation

    .line 90
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->mfileName:Ljava/lang/String;

    return-object v0
.end method

.method public FileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return file name from response data"
    .end annotation

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 252
    :cond_0
    const-string v1, ""

    .line 254
    :try_start_0
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v1, p1, p2

    .line 255
    new-instance p1, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    :try_start_1
    const-string p2, "::"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p1, p2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-object v1, p1

    :catch_1
    return-object v1
.end method

.method public FileName(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "text"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set File Name/Title"
    .end annotation

    .line 81
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    const/16 v1, 0x5f

    .line 82
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->mfileName:Ljava/lang/String;

    return-void

    .line 84
    :cond_0
    sput-object p1, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->mfileName:Ljava/lang/String;

    return-void
.end method

.method public FileSize(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return file Size from response data"
    .end annotation

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 280
    :cond_0
    const-string v1, ""

    .line 282
    :try_start_0
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v1, p1, p2

    .line 283
    new-instance p1, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    :try_start_1
    const-string p2, "::"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    aget-object p1, p2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-object v1, p1

    :catch_1
    return-object v1
.end method

.method public FolderID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the folder ID"
    .end annotation

    .line 64
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->mfolderId:Ljava/lang/String;

    return-object v0
.end method

.method public FolderID(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "text"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set Google Drive Folder ID"
    .end annotation

    .line 59
    sput-object p1, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->mfolderId:Ljava/lang/String;

    return-void
.end method

.method public GetFolder()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get all files of a folder."
    .end annotation

    .line 194
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->url:Ljava/lang/String;

    sget-object v1, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->mfolderId:Ljava/lang/String;

    const-string v2, "?folderid="

    .line 0
    invoke-static {v0, v2, v1}, L_COROUTINE/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public GotFolder(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered after got folder data"
    .end annotation

    .line 238
    const-string v0, "GotFolder"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MediaUploaded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered after media upload successfully"
    .end annotation

    .line 187
    const-string p2, "https://drive.google.com/uc?export=view&id="

    .line 0
    invoke-static {p2, p1}, L_COROUTINE/a;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 188
    const-string v0, "MediaUploaded"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ServerURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns Google Drive Server Url"
    .end annotation

    .line 75
    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->url:Ljava/lang/String;

    return-object v0
.end method

.method public ServerURL(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "text"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set Google Drive Server Url"
    .end annotation

    .line 70
    sput-object p1, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->url:Ljava/lang/String;

    return-void
.end method

.method public TotalFiles(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return total number of files from response data"
    .end annotation

    .line 244
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    return p1
.end method

.method public UploadMedia(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Upload the specified media to your Google Drive Storage."
    .end annotation

    .line 96
    sput-object p1, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->mimage:Ljava/lang/String;

    .line 98
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->FileMIMETYpe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;->mformat:Ljava/lang/String;

    .line 101
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronGoogleDrive$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronGoogleDrive;)V

    .line 177
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
