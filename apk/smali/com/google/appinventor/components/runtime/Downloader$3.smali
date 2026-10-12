.class Lcom/google/appinventor/components/runtime/Downloader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/downloader/OnCancelListener;


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

    .line 78
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Downloader$3;->this$0:Lcom/google/appinventor/components/runtime/Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Downloader$3;->this$0:Lcom/google/appinventor/components/runtime/Downloader;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Downloader;->Cancelled()V

    return-void
.end method
