.class public final Lcom/google/appinventor/components/runtime/NiotronAnimations;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "You can show many animations with with component"
    iconName = "images/animations.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "animations.jar"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private animation:Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

.field animationControllerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/daimajia/androidanimations/library/YoYo$YoYoString;",
            ">;"
        }
    .end annotation
.end field

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 32
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations;->animationControllerMap:Ljava/util/Map;

    .line 33
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations;->context:Landroid/content/Context;

    .line 34
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public AnimationCancel(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Animation canceled"
    .end annotation

    .line 122
    const-string v0, "AnimationCancel"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AnimationEnd(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Animations ends"
    .end annotation

    .line 117
    const-string v0, "AnimationEnd"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AnimationRepeat(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Animation repeated"
    .end annotation

    .line 127
    const-string v0, "AnimationRepeat"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AnimationStart(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Animation starts"
    .end annotation

    .line 112
    const-string v0, "AnimationStart"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public IsRunning(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "is animation going on"
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations;->animationControllerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    .line 101
    invoke-virtual {p1}, Lcom/daimajia/androidanimations/library/YoYo$YoYoString;->isRunning()Z

    move-result p1

    return p1
.end method

.method public ShowAnimation(Lcom/google/appinventor/components/runtime/AndroidViewComponent;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Animation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows animation in the given component, with duration of animation and selected animation type, set repeat to true for repeating the animation"
    .end annotation

    .line 39
    invoke-static {p5}, Lcom/daimajia/androidanimations/library/Techniques;->valueOf(Ljava/lang/String;)Lcom/daimajia/androidanimations/library/Techniques;

    move-result-object p5

    invoke-static {p5}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object p5

    int-to-long v0, p2

    .line 40
    invoke-virtual {p5, v0, v1}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration(J)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object p2

    .line 41
    invoke-virtual {p2, p3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->repeat(I)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object p2

    new-instance p3, Lcom/google/appinventor/components/runtime/NiotronAnimations$1;

    invoke-direct {p3, p0, p4}, Lcom/google/appinventor/components/runtime/NiotronAnimations$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronAnimations;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2, p3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Landroid/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations;->animation:Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    .line 63
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations;->animationControllerMap:Ljava/util/Map;

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ShowAnimationPivot(Lcom/google/appinventor/components/runtime/AndroidViewComponent;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Animation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows animation in the given component, with duration of animation and selected animation type, set repeat to true for repeating the animation"
    .end annotation

    .line 69
    invoke-static {p5}, Lcom/daimajia/androidanimations/library/Techniques;->valueOf(Ljava/lang/String;)Lcom/daimajia/androidanimations/library/Techniques;

    move-result-object p5

    invoke-static {p5}, Lcom/daimajia/androidanimations/library/YoYo;->with(Lcom/daimajia/androidanimations/library/Techniques;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object p5

    int-to-long v0, p2

    .line 70
    invoke-virtual {p5, v0, v1}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->duration(J)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object p2

    .line 71
    invoke-virtual {p2, p3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->repeat(I)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object p2

    new-instance p3, Lcom/google/appinventor/components/runtime/NiotronAnimations$2;

    invoke-direct {p3, p0, p4}, Lcom/google/appinventor/components/runtime/NiotronAnimations$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronAnimations;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2, p3}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->withListener(Landroid/animation/Animator$AnimatorListener;)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object p2

    int-to-float p3, p6

    int-to-float p5, p7

    .line 93
    invoke-virtual {p2, p3, p5}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->pivot(FF)Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations;->animation:Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;

    .line 94
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/daimajia/androidanimations/library/YoYo$AnimationComposer;->playOn(Landroid/view/View;)Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations;->animationControllerMap:Ljava/util/Map;

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Stop(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stops the animation"
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronAnimations;->animationControllerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/daimajia/androidanimations/library/YoYo$YoYoString;

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p1, v0}, Lcom/daimajia/androidanimations/library/YoYo$YoYoString;->stop(Z)V

    return-void
.end method
