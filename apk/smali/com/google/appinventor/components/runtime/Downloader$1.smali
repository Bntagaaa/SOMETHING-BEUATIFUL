.class Lcom/google/appinventor/components/runtime/Downloader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/downloader/OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Downloader;->StartDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Downloader;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Downloader;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Downloader$1;->this$0:Lcom/google/appinventor/components/runtime/Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Downloader$1;->this$0:Lcom/google/appinventor/components/runtime/Downloader;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Downloader;->DownloadCompleted()V

    return-void
.end method

.method public onError(Lcom/downloader/Error;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Downloader$1;->this$0:Lcom/google/appinventor/components/runtime/Downloader;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Downloader;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method
