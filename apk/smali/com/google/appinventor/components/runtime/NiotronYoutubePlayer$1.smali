.class Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;


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

    .line 152
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V
    .locals 0

    return-void
.end method

.method public onCurrentSecond(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;F)V
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->CurrentProgress(F)V

    return-void
.end method

.method public onError(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;)V
    .locals 0

    .line 192
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;

    invoke-virtual {p2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->Error(Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackQualityChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;)V
    .locals 0

    return-void
.end method

.method public onPlaybackRateChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;)V
    .locals 0

    return-void
.end method

.method public onReady(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;

    iput-object p1, v0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->player:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    .line 176
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->OnReady()V

    return-void
.end method

.method public onStateChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;)V
    .locals 0

    return-void
.end method

.method public onVideoDuration(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;F)V
    .locals 0

    return-void
.end method

.method public onVideoId(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onVideoLoadedFraction(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;F)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer$1;->this$0:Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->VideoLoded(F)V

    return-void
.end method
