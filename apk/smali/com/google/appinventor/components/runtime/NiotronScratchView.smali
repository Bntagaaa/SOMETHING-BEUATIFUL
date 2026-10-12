.class public final Lcom/google/appinventor/components/runtime/NiotronScratchView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronScratchView.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "scratchview.jar"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private allChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field

.field private final androidUIHandler:Landroid/os/Handler;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private containerLayout:Landroid/widget/LinearLayout;

.field private context:Landroid/content/Context;

.field private mainOverlay:Landroid/widget/FrameLayout;

.field private scratchView:Lcom/anupkumarpanwar/scratchview/ScratchView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 55
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->allChildren:Ljava/util/List;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->androidUIHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->mainOverlay:Landroid/widget/FrameLayout;

    .line 58
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->containerLayout:Landroid/widget/LinearLayout;

    .line 59
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->mainOverlay:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 60
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 61
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->context:Landroid/content/Context;

    .line 62
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->activity:Landroid/app/Activity;

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-void
.end method

.method private calculatePixels(Landroid/view/View;I)I
    .locals 0

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->containerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->allChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public Create(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 69
    :try_start_0
    new-instance v0, Lcom/anupkumarpanwar/scratchview/ScratchView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->mainOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->mainOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/anupkumarpanwar/scratchview/ScratchView;-><init>(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;IILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->scratchView:Lcom/anupkumarpanwar/scratchview/ScratchView;

    .line 70
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronScratchView$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronScratchView$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronScratchView;)V

    invoke-virtual {v0, p1}, Lcom/anupkumarpanwar/scratchview/ScratchView;->setRevealListener(Lcom/anupkumarpanwar/scratchview/ScratchView$IRevealListener;)V

    .line 81
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->mainOverlay:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->scratchView:Lcom/anupkumarpanwar/scratchview/ScratchView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public Finish()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->scratchView:Lcom/anupkumarpanwar/scratchview/ScratchView;

    invoke-virtual {v0}, Lcom/anupkumarpanwar/scratchview/ScratchView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->scratchView:Lcom/anupkumarpanwar/scratchview/ScratchView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public RevealPercentChange(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 98
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "RevealPercentChange"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Revealed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 93
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Revealed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->allChildren:Ljava/util/List;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->mainOverlay:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 5

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronScratchView$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronScratchView$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronScratchView;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_1

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 179
    div-int/lit8 p2, v0, 0x64

    .line 182
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 184
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 186
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_4

    .line 187
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eq p2, v2, :cond_3

    if-eq p2, v1, :cond_2

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronScratchView;->calculatePixels(Landroid/view/View;I)I

    move-result p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 199
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 190
    :cond_2
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 191
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 194
    :cond_3
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 195
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 202
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    .line 204
    :cond_4
    const-string p1, "ViewUtil"

    const-string p2, "The view does not have linear layout parameters"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/NiotronScratchView;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    if-ge p3, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronScratchView;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronScratchView$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/NiotronScratchView$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronScratchView;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 p3, -0x3e8

    if-gt p2, p3, :cond_1

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 139
    div-int/lit8 p2, v0, 0x64

    .line 142
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 144
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 146
    instance-of v0, p3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_4

    .line 147
    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    if-eq p2, v1, :cond_3

    if-eq p2, v0, :cond_2

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronScratchView;->calculatePixels(Landroid/view/View;I)I

    move-result p2

    iput p2, p3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 150
    :cond_2
    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 153
    :cond_3
    iput v0, p3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 160
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void

    .line 162
    :cond_4
    const-string p1, "ViewUtil"

    const-string p2, "The view does not have linear layout parameters"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
