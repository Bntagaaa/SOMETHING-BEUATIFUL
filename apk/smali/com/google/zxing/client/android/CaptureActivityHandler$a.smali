.class final enum Lcom/google/zxing/client/android/CaptureActivityHandler$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/client/android/CaptureActivityHandler$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

.field public static final enum b:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

.field public static final enum c:Lcom/google/zxing/client/android/CaptureActivityHandler$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    .line 52
    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    sput-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$a;->a:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    .line 54
    new-instance v0, Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    .line 52
    const-string v1, "SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    sput-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$a;->b:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    .line 55
    new-instance v0, Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    .line 52
    const-string v1, "DONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    sput-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$a;->c:Lcom/google/zxing/client/android/CaptureActivityHandler$a;

    return-void
.end method
