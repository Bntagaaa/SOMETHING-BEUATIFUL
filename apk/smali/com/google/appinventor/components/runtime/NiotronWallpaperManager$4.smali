.class Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->SetLockScreenWallpaper(Ljava/lang/String;)V
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

    .line 127
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->highQuality:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getHighQualityImage(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 133
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->manager:Landroid/app/WallpaperManager;

    invoke-static {v1, v0}, Landroidx/core/os/f;->s(Landroid/app/WallpaperManager;Landroid/graphics/Bitmap;)V

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 142
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;->val$path:Ljava/lang/String;

    const-string v1, "Unable to load "

    const-string v2, "Image"

    .line 0
    invoke-static {v1, v0, v2}, L_COROUTINE/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
