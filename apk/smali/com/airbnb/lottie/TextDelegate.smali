.class public Lcom/airbnb/lottie/TextDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lcom/airbnb/lottie/LottieAnimationView;

.field public final c:Lcom/airbnb/lottie/LottieDrawable;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->a:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/airbnb/lottie/TextDelegate;->d:Z

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 27
    iput-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->c:Lcom/airbnb/lottie/LottieDrawable;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->a:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/airbnb/lottie/TextDelegate;->d:Z

    .line 32
    iput-object p1, p0, Lcom/airbnb/lottie/TextDelegate;->b:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/airbnb/lottie/TextDelegate;->c:Lcom/airbnb/lottie/LottieDrawable;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->a:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/airbnb/lottie/TextDelegate;->d:Z

    .line 38
    iput-object p1, p0, Lcom/airbnb/lottie/TextDelegate;->c:Lcom/airbnb/lottie/LottieDrawable;

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/airbnb/lottie/TextDelegate;->b:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method


# virtual methods
.method public final getTextInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 83
    iget-boolean v0, p0, Lcom/airbnb/lottie/TextDelegate;->d:Z

    iget-object v1, p0, Lcom/airbnb/lottie/TextDelegate;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 87
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/TextDelegate;->d:Z

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v1, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method public invalidateAllText()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 94
    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->b:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->c:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public invalidateText(Ljava/lang/String;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lcom/airbnb/lottie/TextDelegate;->b:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/TextDelegate;->c:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setCacheText(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/airbnb/lottie/TextDelegate;->d:Z

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/airbnb/lottie/TextDelegate;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lcom/airbnb/lottie/TextDelegate;->b:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/TextDelegate;->c:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method
