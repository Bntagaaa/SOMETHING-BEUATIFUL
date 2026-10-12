.class Lcom/airbnb/lottie/LottieDrawable$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/model/KeyPath;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/airbnb/lottie/value/LottieValueCallback;

.field public final synthetic d:Lcom/airbnb/lottie/LottieDrawable;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 0

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$g;->d:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieDrawable$g;->a:Lcom/airbnb/lottie/model/KeyPath;

    iput-object p3, p0, Lcom/airbnb/lottie/LottieDrawable$g;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/airbnb/lottie/LottieDrawable$g;->c:Lcom/airbnb/lottie/value/LottieValueCallback;

    return-void
.end method


# virtual methods
.method public run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3

    .line 1032
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$g;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$g;->c:Lcom/airbnb/lottie/value/LottieValueCallback;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$g;->d:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable$g;->a:Lcom/airbnb/lottie/model/KeyPath;

    invoke-virtual {v1, v2, p1, v0}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void
.end method
