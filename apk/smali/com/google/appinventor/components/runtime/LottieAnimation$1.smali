.class Lcom/google/appinventor/components/runtime/LottieAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LottieAnimation;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/LottieAnimation;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/LottieAnimation;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LottieAnimation$1;->this$0:Lcom/google/appinventor/components/runtime/LottieAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LottieAnimation$1;->this$0:Lcom/google/appinventor/components/runtime/LottieAnimation;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/LottieAnimation;->AnimationCanceled()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LottieAnimation$1;->this$0:Lcom/google/appinventor/components/runtime/LottieAnimation;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/LottieAnimation;->AnimationEnded()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LottieAnimation$1;->this$0:Lcom/google/appinventor/components/runtime/LottieAnimation;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/LottieAnimation;->AnimationRepeated()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LottieAnimation$1;->this$0:Lcom/google/appinventor/components/runtime/LottieAnimation;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/LottieAnimation;->AnimationStarted()V

    return-void
.end method
