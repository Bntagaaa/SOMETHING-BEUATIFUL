.class public final Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;
.super Lcom/google/zxing/client/android/common/PlatformSupportManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/zxing/client/android/common/PlatformSupportManager<",
        "Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/google/zxing/client/android/common/executor/DefaultAsyncTaskExecInterface;

    invoke-direct {v0}, Lcom/google/zxing/client/android/common/executor/DefaultAsyncTaskExecInterface;-><init>()V

    const-class v1, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    invoke-direct {p0, v1, v0}, Lcom/google/zxing/client/android/common/PlatformSupportManager;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    const/16 v0, 0xb

    .line 25
    const-string v1, "com.google.zxing.client.android.common.executor.HoneycombAsyncTaskExecInterface"

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/client/android/common/PlatformSupportManager;->addImplementationClass(ILjava/lang/String;)V

    return-void
.end method
