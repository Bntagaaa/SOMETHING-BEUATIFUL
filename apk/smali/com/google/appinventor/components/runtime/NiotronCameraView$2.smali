.class Lcom/google/appinventor/components/runtime/NiotronCameraView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/cameraview/CameraViewImpl$OnCameraErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronCameraView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronCameraView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronCameraView;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraError(Ljava/lang/Exception;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCameraView$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronCameraView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/NiotronCameraView;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method
