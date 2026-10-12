.class public final Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/asynchronousImageLoader.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "picasso.jar, okhttp.jar"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field private placeholder:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 35
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public ImageFailedToLoad(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Image failed to load"
    .end annotation

    .line 94
    const-string v0, "ImageFailedToLoad"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ImageLoaded(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Image loaded"
    .end annotation

    .line 89
    const-string v0, "ImageLoaded"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadImage(Lcom/google/appinventor/components/runtime/Image;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads image async"
    .end annotation

    if-nez p3, :cond_0

    .line 42
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p3

    .line 43
    invoke-virtual {p3, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {p3, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    .line 45
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Image;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader$1;

    invoke-direct {v1, p0, p2}, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;Ljava/lang/String;)V

    invoke-virtual {p3, v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 56
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Image;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    return-void

    .line 58
    :cond_0
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p3

    .line 59
    invoke-virtual {p3, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p3, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    .line 61
    invoke-virtual {p3}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    .line 62
    invoke-virtual {p3}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p3

    .line 63
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Image;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader$2;

    invoke-direct {v0, p0, p2}, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;Ljava/lang/String;)V

    invoke-virtual {p3, p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    return-void
.end method

.method public Placeholder(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the place holder"
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAsynchronousImageLoader;->placeholder:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
