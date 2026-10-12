.class Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;
.super Landroid/widget/VideoView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResizableVideoView"
.end annotation


# instance fields
.field public forcedHeight:I

.field public forcedWidth:I

.field private mFoundMediaPlayer:Ljava/lang/Boolean;

.field private mVideoPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/content/Context;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 652
    invoke-direct {p0, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 637
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    const/4 p1, -0x1

    .line 643
    iput p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    .line 649
    iput p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->onMeasure(III)V

    return-void
.end method

.method private onMeasure(III)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 669
    const-string v5, "Got height from MediaPlayer>"

    const-string v0, "Got width from MediaPlayer>"

    .line 671
    iget-object v6, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v6

    .line 672
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Device Density = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "VideoPlayer..onMeasure"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget v7, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    iget v9, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "AI setting dimensions as:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 677
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Dimenions from super>>"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 675
    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget v7, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, -0x80000000

    const/4 v12, -0x1

    const/4 v13, -0x2

    const-string v14, "VideoPlayer.onMeasure"

    const/16 v16, 0xb0

    if-eq v7, v13, :cond_2

    if-eq v7, v12, :cond_0

    const/4 v11, 0x1

    goto :goto_4

    .line 701
    :cond_0
    iget-object v7, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 703
    :try_start_0
    iget-object v7, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v7

    .line 704
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v11, 0x0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 710
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v7, "Failed to get MediaPlayer for width:\n"

    .line 0
    invoke-static {v7, v0, v8}, L_COROUTINE/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/16 v7, 0xb0

    goto :goto_0

    .line 685
    :cond_2
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v10, :cond_4

    if-eqz v0, :cond_3

    if-eq v0, v9, :cond_4

    :goto_2
    goto :goto_1

    .line 692
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move v7, v0

    goto :goto_0

    :catch_1
    nop

    goto :goto_2

    .line 688
    :cond_4
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_3

    .line 721
    :goto_4
    iget v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    const-string v15, ")"

    const-string v12, "VideoPlayer...onMeasure"

    const/4 v13, 0x2

    const/16 v9, -0x3e8

    const/16 v10, 0x64

    if-gt v0, v9, :cond_6

    .line 722
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    if-nez v0, :cond_5

    if-ge v4, v13, :cond_5

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Width not stable... trying again (onMeasure "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->a(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;III)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 731
    invoke-virtual {v1, v10, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_5
    add-int/lit16 v7, v7, 0x3e8

    neg-int v7, v7

    mul-int v0, v0, v7

    .line 734
    div-int/2addr v0, v10

    int-to-float v0, v0

    :goto_5
    mul-float v0, v0, v6

    float-to-int v7, v0

    goto :goto_6

    :cond_6
    if-eqz v11, :cond_7

    int-to-float v0, v7

    goto :goto_5

    .line 739
    :cond_7
    :goto_6
    iget v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    const/4 v11, -0x2

    if-eq v0, v11, :cond_a

    const/4 v11, -0x1

    if-eq v0, v11, :cond_8

    const/4 v11, 0x1

    goto :goto_9

    .line 753
    :cond_8
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 755
    :try_start_2
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    .line 756
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_7
    const/4 v11, 0x0

    goto :goto_9

    :catch_2
    move-exception v0

    .line 762
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Failed to get MediaPlayer for height:\n"

    .line 0
    invoke-static {v5, v0, v8}, L_COROUTINE/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_8
    const/16 v0, 0x90

    goto :goto_7

    .line 741
    :cond_a
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v5, -0x80000000

    if-eq v0, v5, :cond_b

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v0, v5, :cond_b

    goto :goto_8

    .line 744
    :cond_b
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_7

    .line 772
    :goto_9
    iget v5, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    if-gt v5, v9, :cond_d

    .line 773
    iget-object v5, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v5

    if-nez v5, :cond_c

    if-ge v4, v13, :cond_c

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Height not stable... trying again (onMeasure "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->a(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$2;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$2;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;III)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 782
    invoke-virtual {v1, v10, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_c
    add-int/lit16 v0, v0, 0x3e8

    neg-int v0, v0

    mul-int v5, v5, v0

    .line 785
    div-int/2addr v5, v10

    int-to-float v0, v5

    :goto_a
    mul-float v0, v0, v6

    float-to-int v0, v0

    goto :goto_b

    :cond_d
    if-eqz v11, :cond_e

    int-to-float v0, v0

    goto :goto_a

    .line 792
    :cond_e
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting dimensions to:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v7, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 796
    invoke-virtual {v1, v7, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method public changeVideoSize(II)V
    .locals 0

    .line 803
    iput p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    .line 804
    iput p2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    .line 806
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 807
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidateMediaPlayer(Z)V
    .locals 1

    .line 814
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 815
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 818
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 819
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    .line 656
    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->onMeasure(III)V

    return-void
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;Z)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    .line 826
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    .line 829
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 830
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
