.class Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FroyoUtil;->setAudioFocusChangeListener(Lcom/google/appinventor/components/runtime/Player;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private playbackFlag:Z

.field final synthetic val$player:Lcom/google/appinventor/components/runtime/Player;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Player;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->val$player:Lcom/google/appinventor/components/runtime/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->playbackFlag:Z

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    const/4 v0, -0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->val$player:Lcom/google/appinventor/components/runtime/Player;

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->playbackFlag:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v1, :cond_3

    .line 86
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Player;->Start()V

    .line 87
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->playbackFlag:Z

    return-void

    .line 80
    :cond_1
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->playbackFlag:Z

    .line 81
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->val$player:Lcom/google/appinventor/components/runtime/Player;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Player;->OtherPlayerStarted()V

    return-void

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->val$player:Lcom/google/appinventor/components/runtime/Player;

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/google/appinventor/components/runtime/Player;->playerState:Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v2, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    if-ne v0, v2, :cond_3

    .line 74
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Player;->pause()V

    .line 75
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;->playbackFlag:Z

    :cond_3
    :goto_0
    return-void
.end method
