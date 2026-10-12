.class Lcom/google/appinventor/components/runtime/NiotronCameraView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronCameraView$1;->onPictureTaken(Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronCameraView$1;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronCameraView$1;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronCameraView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView$1$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronCameraView$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronCameraView$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronCameraView;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/NiotronCameraView;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/NiotronCameraView;->PictureTaken(Ljava/lang/String;)V

    return-void
.end method
