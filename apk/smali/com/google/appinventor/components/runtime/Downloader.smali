.class public final Lcom/google/appinventor/components/runtime/Downloader;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0xe
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Download Component can be used to download any type of files like image, video, pdf, apk and etc.Supports Multiple File Downloads"
    iconName = "images/downloader.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "prdownloader.aar, prdownloader.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.WRITE_EXTERNAL_STORAGE, android.permission.WRITE_EXTERNAL_STORAGE"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field downloadId:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 50
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 51
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Downloader;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public CancelAllDownloads()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cancels all the ongoing download tasks"
    .end annotation

    .line 129
    invoke-static {}, Lcom/downloader/PRDownloader;->cancelAll()V

    return-void
.end method

.method public CancelDownload()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cancels the download"
    .end annotation

    .line 118
    iget v0, p0, Lcom/google/appinventor/components/runtime/Downloader;->downloadId:I

    invoke-static {v0}, Lcom/downloader/PRDownloader;->cancel(I)V

    return-void
.end method

.method public Cancelled()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Download Cancelled"
    .end annotation

    const/4 v0, 0x0

    .line 145
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cancelled"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DownloadCompleted()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Download Completed"
    .end annotation

    const/4 v0, 0x0

    .line 160
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DownloadCompleted"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DownloadScheduled(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Download was Scheduled. Use the Download id to check stats in the future"
    .end annotation

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "DownloadScheduled"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Some Error Occurred"
    .end annotation

    .line 165
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetDownloadStatus()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the download status"
    .end annotation

    .line 123
    iget v0, p0, Lcom/google/appinventor/components/runtime/Downloader;->downloadId:I

    invoke-static {v0}, Lcom/downloader/PRDownloader;->getStatus(I)Lcom/downloader/Status;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/downloader/Status;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public InitializeDownloader(II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the Downloader First. readTimeout and connectTimeout in seconds"
    .end annotation

    .line 56
    invoke-static {}, Lcom/downloader/PRDownloaderConfig;->newBuilder()Lcom/downloader/PRDownloaderConfig$Builder;

    move-result-object v0

    mul-int/lit16 p1, p1, 0x3e8

    .line 57
    invoke-virtual {v0, p1}, Lcom/downloader/PRDownloaderConfig$Builder;->setReadTimeout(I)Lcom/downloader/PRDownloaderConfig$Builder;

    move-result-object p1

    mul-int/lit16 p2, p2, 0x3e8

    .line 58
    invoke-virtual {p1, p2}, Lcom/downloader/PRDownloaderConfig$Builder;->setConnectTimeout(I)Lcom/downloader/PRDownloaderConfig$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/downloader/PRDownloaderConfig$Builder;->build()Lcom/downloader/PRDownloaderConfig;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Downloader;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/downloader/PRDownloader;->initialize(Landroid/content/Context;Lcom/downloader/PRDownloaderConfig;)V

    return-void
.end method

.method public PauseDownload()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pauses the download"
    .end annotation

    .line 108
    iget v0, p0, Lcom/google/appinventor/components/runtime/Downloader;->downloadId:I

    invoke-static {v0}, Lcom/downloader/PRDownloader;->pause(I)V

    return-void
.end method

.method public Paused()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Download Paused"
    .end annotation

    const/4 v0, 0x0

    .line 140
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Paused"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ProgressChanged(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Download Progress Changed. Progress in percentage"
    .end annotation

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ProgressChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ProgressChangedBytes(JJ)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Download Progress Changed. Progress in bytes"
    .end annotation

    .line 155
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const-string p1, "ProgressChangedBytes"

    invoke-static {p0, p1, p3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ResumeDownload()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes the download"
    .end annotation

    .line 113
    iget v0, p0, Lcom/google/appinventor/components/runtime/Downloader;->downloadId:I

    invoke-static {v0}, Lcom/downloader/PRDownloader;->resume(I)V

    return-void
.end method

.method public StartDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the Download of a File"
    .end annotation

    .line 65
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/downloader/PRDownloader;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/downloader/request/DownloadRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/downloader/request/DownloadRequestBuilder;->build()Lcom/downloader/request/DownloadRequest;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/Downloader$5;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/Downloader$5;-><init>(Lcom/google/appinventor/components/runtime/Downloader;)V

    .line 66
    invoke-virtual {p1, p2}, Lcom/downloader/request/DownloadRequest;->setOnStartOrResumeListener(Lcom/downloader/OnStartOrResumeListener;)Lcom/downloader/request/DownloadRequest;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/Downloader$4;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/Downloader$4;-><init>(Lcom/google/appinventor/components/runtime/Downloader;)V

    .line 72
    invoke-virtual {p1, p2}, Lcom/downloader/request/DownloadRequest;->setOnPauseListener(Lcom/downloader/OnPauseListener;)Lcom/downloader/request/DownloadRequest;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/Downloader$3;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/Downloader$3;-><init>(Lcom/google/appinventor/components/runtime/Downloader;)V

    .line 78
    invoke-virtual {p1, p2}, Lcom/downloader/request/DownloadRequest;->setOnCancelListener(Lcom/downloader/OnCancelListener;)Lcom/downloader/request/DownloadRequest;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/Downloader$2;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/Downloader$2;-><init>(Lcom/google/appinventor/components/runtime/Downloader;)V

    .line 84
    invoke-virtual {p1, p2}, Lcom/downloader/request/DownloadRequest;->setOnProgressListener(Lcom/downloader/OnProgressListener;)Lcom/downloader/request/DownloadRequest;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/Downloader$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/Downloader$1;-><init>(Lcom/google/appinventor/components/runtime/Downloader;)V

    .line 92
    invoke-virtual {p1, p2}, Lcom/downloader/request/DownloadRequest;->start(Lcom/downloader/OnDownloadListener;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Downloader;->downloadId:I

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Downloader;->DownloadScheduled(I)V

    return-void
.end method

.method public StartedOrResumed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Download Started"
    .end annotation

    const/4 v0, 0x0

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StartedOrResumed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
