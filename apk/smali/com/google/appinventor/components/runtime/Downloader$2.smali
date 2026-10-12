.class Lcom/google/appinventor/components/runtime/Downloader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/downloader/OnProgressListener;


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

    .line 84
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Downloader$2;->this$0:Lcom/google/appinventor/components/runtime/Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/downloader/Progress;)V
    .locals 5

    .line 87
    iget-wide v0, p1, Lcom/downloader/Progress;->currentBytes:J

    long-to-double v0, v0

    iget-wide v2, p1, Lcom/downloader/Progress;->totalBytes:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    .line 88
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Downloader$2;->this$0:Lcom/google/appinventor/components/runtime/Downloader;

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/Downloader;->ProgressChanged(I)V

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Downloader$2;->this$0:Lcom/google/appinventor/components/runtime/Downloader;

    iget-wide v1, p1, Lcom/downloader/Progress;->currentBytes:J

    iget-wide v3, p1, Lcom/downloader/Progress;->totalBytes:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Downloader;->ProgressChangedBytes(JJ)V

    return-void
.end method
