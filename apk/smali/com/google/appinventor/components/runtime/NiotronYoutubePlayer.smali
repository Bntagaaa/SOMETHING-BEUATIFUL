.class public final Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronYoutubePlayer.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "youtube-player-core.aar, youtube-player-core.jar, kotlin-stdlib.jar, kotlin-stdlib-common.jar, annotations.jar"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field player:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

.field private videoId:Ljava/lang/String;

.field private final view:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

.field private volume:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 37
    new-instance v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->view:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->context:Landroid/content/Context;

    .line 40
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 42
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->Init()V

    return-void
.end method

.method private Init()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->view:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->setEnableAutomaticInitialization(Z)V

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->view:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->initialize(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;Z)V

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->view:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;)V

    invoke-virtual {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->addFullScreenListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerFullScreenListener;)Z

    return-void
.end method


# virtual methods
.method public BackgroudPlay(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->view:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    invoke-virtual {v0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->enableBackgroundPlayback(Z)V

    return-void
.end method

.method public CurrentProgress(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 135
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "CurrentProgress"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public EnterFullScreen()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->view:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->enterFullScreen()V

    return-void
.end method

.method public Error(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 140
    const-string v0, "Error"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ExitFullScreen()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->view:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->exitFullScreen()V

    return-void
.end method

.method public Load()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->player:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->videoId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->loadVideo(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public Mute()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->player:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->mute()V

    :cond_0
    return-void
.end method

.method public OnFullScreen()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 115
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnFullScreen"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnMinimizeScreen()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 120
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnMinimizeScreen"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnReady()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 130
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnReady"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Pause()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->player:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->pause()V

    :cond_0
    return-void
.end method

.method public Play()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->player:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->play()V

    :cond_0
    return-void
.end method

.method public SeekTo(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->player:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->seekTo(F)V

    :cond_0
    return-void
.end method

.method public ToggleFullScreen()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->view:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->toggleFullScreen()V

    return-void
.end method

.method public UnMute()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->player:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->unMute()V

    :cond_0
    return-void
.end method

.method public VideoId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public VideoId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->videoId:Ljava/lang/String;

    return-void
.end method

.method public VideoLoded(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 125
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "VideoLoded"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Volume(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 92
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->volume:I

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->player:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->setVolume(I)V

    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronYoutubePlayer;->view:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    return-object v0
.end method
