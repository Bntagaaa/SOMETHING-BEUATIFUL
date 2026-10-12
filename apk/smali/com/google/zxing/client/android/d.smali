.class final Lcom/google/zxing/client/android/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/client/android/AppInvCaptureActivity;

.field public final b:Ljava/util/EnumMap;

.field public c:Landroid/os/Handler;

.field public final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/EnumSet;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/zxing/client/android/d;->a:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    .line 54
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/client/android/d;->d:Ljava/util/concurrent/CountDownLatch;

    .line 56
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/d;->b:Ljava/util/EnumMap;

    if-eqz p2, :cond_0

    .line 59
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 61
    const-class p1, Lcom/google/zxing/BarcodeFormat;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    .line 63
    sget-object p1, Lcom/google/zxing/client/android/b;->c:Ljava/util/EnumSet;

    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 66
    sget-object p1, Lcom/google/zxing/client/android/b;->d:Ljava/util/EnumSet;

    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 72
    :cond_1
    sget-object p1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 75
    sget-object p1, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, p1, p3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_2
    sget-object p1, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {v0, p1, p4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 92
    new-instance v0, Lcom/google/zxing/client/android/c;

    iget-object v1, p0, Lcom/google/zxing/client/android/d;->b:Ljava/util/EnumMap;

    iget-object v2, p0, Lcom/google/zxing/client/android/d;->a:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/client/android/c;-><init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/EnumMap;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/d;->c:Landroid/os/Handler;

    .line 93
    iget-object v0, p0, Lcom/google/zxing/client/android/d;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 94
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
