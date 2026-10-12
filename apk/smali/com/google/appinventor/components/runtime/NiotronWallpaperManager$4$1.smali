.class Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4$1;->this$1:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager$4;->this$0:Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronWallpaperManager;->OnWallpaperSet()V

    return-void
.end method
