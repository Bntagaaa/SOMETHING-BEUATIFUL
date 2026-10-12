.class public final Lcom/google/appinventor/components/runtime/NiotronViewFlipper;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "View flipper component lets you add flipping between views"
    iconName = "images/viewpager.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private display:I

.field private flipper:Landroid/widget/ViewFlipper;

.field private interval:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 31
    const-string v0, "View Flipper"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->LOG_TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/widget/ViewFlipper;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    .line 36
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->context:Landroid/content/Context;

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    const/4 p1, -0x2

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->Width(I)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->Height(I)V

    .line 44
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "View flipper initalized"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public AddView(Ljava/lang/Object;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adds view to ViewFlipper. Accepts Visible components or the list of visible components"
    .end annotation

    .line 49
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "AndroidViewComponent"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    check-cast p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Was not visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "is visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 62
    :cond_1
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v3, "Invalid Input"

    if-eqz v0, :cond_5

    .line 63
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 65
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    if-eqz v4, :cond_3

    .line 66
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 67
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    .line 68
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 69
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 74
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_3
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Every iten of the ViewFlipper should be either component or layout"

    invoke-direct {p1, v0, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->LOG_TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Height: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->LOG_TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_5
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "The \"input\" parameter should be either component/layout or list of component/layout"

    invoke-direct {p1, v0, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public Animation(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ScreenAnimation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "default"
        editorType = "screen_animation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 127
    const-string v0, "fade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "anim"

    if-eqz v0, :cond_0

    .line 128
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fadeout"

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hold"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 130
    :cond_0
    const-string v0, "zoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zoom_exit_reverse"

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zoom_enter_reverse"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 133
    :cond_1
    const-string v0, "slidehorizontal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "slide_exit_reverse"

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "slide_enter_reverse"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 136
    :cond_2
    const-string v0, "slidevertical"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "slide_v_exit_reverse"

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "slide_v_enter_reverse"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 139
    :cond_3
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    :cond_4
    return-void
.end method

.method public AutoStart(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets if the view flipper should start flipping automatically or not"
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setAutoStart(Z)V

    return-void
.end method

.method public AutoStart()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns if the view flipper autostarted of not"
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->isAutoStart()Z

    move-result v0

    return v0
.end method

.method public DisplayChild()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the interval in millisends of flipping between views"
    .end annotation

    .line 190
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->display:I

    return v0
.end method

.method public DisplayChild(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the interval in millisends of flipping between views"
    .end annotation

    .line 156
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->display:I

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 213
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public Interval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the interval of flipping view in view flipper"
    .end annotation

    .line 175
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->interval:I

    return v0
.end method

.method public Interval(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "500"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the interval in millisends of flipping between views"
    .end annotation

    .line 163
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->interval:I

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    return-void
.end method

.method public RemoveView(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes a page from viewpager"
    .end annotation

    .line 89
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v1, "Invalid Input"

    if-eqz v0, :cond_1

    .line 90
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v0, 0x0

    .line 91
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 93
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 94
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "List for removing view by index must be interger type"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void

    .line 102
    :cond_1
    :try_start_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 106
    :catch_1
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Arguement for removing view should be either a index or list of index"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public StartFlipping()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts the flipping action"
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    return-void
.end method

.method public StopFlipping()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts the flipping action"
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    return-void
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 204
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method public isFlipping()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns if the view flipper autostarted of not"
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronViewFlipper;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v0

    return v0
.end method
