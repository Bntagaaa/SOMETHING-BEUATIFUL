.class public final Lcom/google/appinventor/components/runtime/NiotronFTP;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/fTP.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "commons-net.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private client:Lorg/apache/commons/net/ftp/FTPClient;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private directory:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private host:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private port:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->host:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->port:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->username:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->password:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->directory:Ljava/lang/String;

    .line 39
    const-string v0, "NiotronFTP"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->LOG_TAG:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 49
    new-instance p1, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {p1}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    .line 50
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/NiotronFTP;)Lorg/apache/commons/net/ftp/FTPClient;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->directory:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/NiotronFTP;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->host:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->password:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->port:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/NiotronFTP;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->username:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public Connect()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Connects to the FTP Server"
    .end annotation

    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public ConnectError()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Error while connecting"
    .end annotation

    const/4 v0, 0x0

    .line 418
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ConnectError"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Connected()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Connected to server"
    .end annotation

    const/4 v0, 0x0

    .line 423
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Connected"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DeleteDirectory(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes the specified directory"
    .end annotation

    .line 184
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$6;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFTP$6;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public Disconnect()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Disconnects the FTP Server"
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public DisconnectError()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Error while disconnecting"
    .end annotation

    const/4 v0, 0x0

    .line 428
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DisconnectError"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Disconnected()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Disconnected from server"
    .end annotation

    const/4 v0, 0x0

    .line 433
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Disconnected"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DownloadFailed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Download failed"
    .end annotation

    const/4 v0, 0x0

    .line 403
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DownloadFailed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Downloads the file specified"
    .end annotation

    .line 200
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronFTP$7;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public DownloadSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Download successful"
    .end annotation

    const/4 v0, 0x0

    .line 398
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DownloadSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetFileList()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the list of available files"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->client:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->listNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 290
    :catch_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetListOfFiles()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the list of available files"
    .end annotation

    .line 296
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFTP$9;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$9;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP;)V

    .line 310
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public GotFileList(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Got List Of Files"
    .end annotation

    .line 408
    const-string v0, "GotFileList"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Host(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the FTP server host here"
    .end annotation

    .line 350
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->host:Ljava/lang/String;

    return-void
.end method

.method public Login()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Logs in the user"
    .end annotation

    .line 115
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public LoginResult(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Login result got"
    .end annotation

    .line 448
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "LoginResult"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Logout()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Logs out the user"
    .end annotation

    .line 152
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFTP$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public MakeDirectory(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Makes a new directory"
    .end annotation

    .line 168
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$5;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFTP$5;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public Password(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the FTP server host here"
    .end annotation

    .line 356
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->password:Ljava/lang/String;

    return-void
.end method

.method public Port(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "FTP FTP port"
    .end annotation

    .line 362
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->port:Ljava/lang/String;

    return-void
.end method

.method public Rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Renames the remote file"
    .end annotation

    .line 315
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronFTP$10;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 344
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public RenameFailed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Renaming file failed"
    .end annotation

    const/4 v0, 0x0

    .line 443
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RenameFailed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RenameSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Renaming file successful"
    .end annotation

    const/4 v0, 0x0

    .line 438
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RenameSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UploadFailed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Upload failed"
    .end annotation

    const/4 v0, 0x0

    .line 393
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UploadFailed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UploadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Uploads the file specified"
    .end annotation

    .line 243
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFTP$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronFTP$8;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 281
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public UploadSuccessful()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Upload successful"
    .end annotation

    const/4 v0, 0x0

    .line 388
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UploadSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Username(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set FTP username"
    .end annotation

    .line 368
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->username:Ljava/lang/String;

    return-void
.end method

.method public WorkingDirectory(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the working directory"
    .end annotation

    .line 374
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFTP;->directory:Ljava/lang/String;

    .line 375
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFTP$11;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFTP$11;-><init>(Lcom/google/appinventor/components/runtime/NiotronFTP;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
