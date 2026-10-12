.class Lcom/google/appinventor/components/runtime/ViewUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ViewUtils;->scanGallery(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ViewUtils;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ViewUtils;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ViewUtils$1;->this$0:Lcom/google/appinventor/components/runtime/ViewUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method
