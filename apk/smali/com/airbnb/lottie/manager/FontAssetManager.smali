.class public Lcom/airbnb/lottie/manager/FontAssetManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/airbnb/lottie/model/MutablePair;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Landroid/content/res/AssetManager;

.field public e:Lcom/airbnb/lottie/FontAssetDelegate;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 1
    .param p2    # Lcom/airbnb/lottie/FontAssetDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/airbnb/lottie/model/MutablePair;

    invoke-direct {v0}, Lcom/airbnb/lottie/model/MutablePair;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->a:Lcom/airbnb/lottie/model/MutablePair;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->b:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->c:Ljava/util/HashMap;

    .line 30
    const-string v0, ".ttf"

    iput-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->f:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->e:Lcom/airbnb/lottie/FontAssetDelegate;

    .line 34
    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_0

    .line 35
    const-string p1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {p1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->d:Landroid/content/res/AssetManager;

    return-void

    .line 40
    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->d:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 6

    .line 59
    iget-object v0, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->a:Lcom/airbnb/lottie/model/MutablePair;

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/model/MutablePair;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_0

    return-object v2

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    if-eqz v3, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->e:Lcom/airbnb/lottie/FontAssetDelegate;

    if-eqz v3, :cond_2

    .line 78
    invoke-virtual {v3, p1}, Lcom/airbnb/lottie/FontAssetDelegate;->fetchFont(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 81
    :goto_0
    iget-object v4, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->e:Lcom/airbnb/lottie/FontAssetDelegate;

    iget-object v5, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->d:Landroid/content/res/AssetManager;

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    .line 82
    invoke-virtual {v4, p1}, Lcom/airbnb/lottie/FontAssetDelegate;->getFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 84
    invoke-static {v5, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fonts/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v5, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 93
    :cond_4
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :goto_1
    const-string p1, "Italic"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 100
    const-string v2, "Bold"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    const/4 p1, 0x3

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    const/4 p1, 0x2

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    const/4 p1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 109
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    if-ne p2, p1, :cond_8

    goto :goto_3

    .line 113
    :cond_8
    invoke-static {v3, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 66
    :goto_3
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->f:Ljava/lang/String;

    return-void
.end method

.method public setDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 0
    .param p1    # Lcom/airbnb/lottie/FontAssetDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    iput-object p1, p0, Lcom/airbnb/lottie/manager/FontAssetManager;->e:Lcom/airbnb/lottie/FontAssetDelegate;

    return-void
.end method
