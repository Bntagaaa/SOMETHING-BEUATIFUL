.class Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->SetWallpaper(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->highQuality:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getHighQualityImage(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 87
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-boolean v2, v1, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->scrollable:Z

    if-nez v2, :cond_1

    .line 89
    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->manager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getBuiltInDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->manager:Landroid/app/WallpaperManager;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 91
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 92
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v3, 0x1

    .line 93
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->manager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 103
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$2;->val$path:Ljava/lang/String;

    const-string v1, "Unable to load "

    const-string v2, "Image"

    .line 0
    invoke-static {v1, v0, v2}, L_COROUTINE/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
