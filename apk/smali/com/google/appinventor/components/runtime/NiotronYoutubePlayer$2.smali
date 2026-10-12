.class Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerFullScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->Init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onYouTubePlayerEnterFullScreen()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->OnFullScreen()V

    return-void
.end method

.method public onYouTubePlayerExitFullScreen()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer$2;->this$0:Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->OnMinimizeScreen()V

    return-void
.end method
