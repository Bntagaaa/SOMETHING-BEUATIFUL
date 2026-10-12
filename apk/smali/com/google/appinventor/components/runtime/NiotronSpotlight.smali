.class public final Lcom/google/appinventor/components/runtime/NiotronSpotlight;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Spotlight component helps you to show spotlight in components"
    iconName = "images/niotronSpotlight.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "spotlight.jar"
.end annotation


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private maskColor:I

.field private targets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/takusemba/spotlight/Target;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 39
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpotlight;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpotlight;->targets:Ljava/util/ArrayList;

    return-void
.end method

.method private init()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSpotlight;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/takusemba/spotlight/Spotlight;->with(Landroid/app/Activity;)Lcom/takusemba/spotlight/Spotlight;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/takusemba/spotlight/Spotlight;->setDuration(J)Lcom/takusemba/spotlight/Spotlight;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/takusemba/spotlight/Spotlight;->setAnimation(Landroid/animation/TimeInterpolator;)Lcom/takusemba/spotlight/Spotlight;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpotlight;->targets:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/takusemba/spotlight/Target;

    .line 91
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/takusemba/spotlight/Target;

    invoke-virtual {v0, v1}, Lcom/takusemba/spotlight/Spotlight;->setTargets([Lcom/takusemba/spotlight/Target;)Lcom/takusemba/spotlight/Spotlight;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSpotlight$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronSpotlight$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpotlight;)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/takusemba/spotlight/Spotlight;->setOnSpotlightStartedListener(Lcom/takusemba/spotlight/OnSpotlightStartedListener;)Lcom/takusemba/spotlight/Spotlight;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSpotlight$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronSpotlight$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronSpotlight;)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/takusemba/spotlight/Spotlight;->setOnSpotlightEndedListener(Lcom/takusemba/spotlight/OnSpotlightEndedListener;)Lcom/takusemba/spotlight/Spotlight;

    .line 103
    invoke-static {}, Lcom/takusemba/spotlight/Spotlight;->start()V

    return-void
.end method


# virtual methods
.method public AddCustomTarget(FFFLcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add new custom target"
    .end annotation

    .line 45
    new-instance v0, Lcom/takusemba/spotlight/CustomTarget$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpotlight;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/takusemba/spotlight/CustomTarget$Builder;-><init>(Landroid/app/Activity;)V

    .line 46
    invoke-virtual {v0, p1, p2}, Lcom/takusemba/spotlight/CustomTarget$Builder;->setPoint(FF)Lcom/takusemba/spotlight/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lcom/takusemba/spotlight/CustomTarget$Builder;

    .line 47
    invoke-virtual {p1, p3}, Lcom/takusemba/spotlight/CustomTarget$Builder;->setRadius(F)Lcom/takusemba/spotlight/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lcom/takusemba/spotlight/CustomTarget$Builder;

    .line 48
    invoke-virtual {p4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/takusemba/spotlight/CustomTarget$Builder;->setView(Landroid/view/View;)Lcom/takusemba/spotlight/CustomTarget$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/takusemba/spotlight/CustomTarget$Builder;->build()Lcom/takusemba/spotlight/CustomTarget;

    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpotlight;->targets:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public AddSimpleTarget(FFFLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add new custom target"
    .end annotation

    .line 56
    new-instance v0, Lcom/takusemba/spotlight/SimpleTarget$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSpotlight;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/takusemba/spotlight/SimpleTarget$Builder;-><init>(Landroid/app/Activity;)V

    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/takusemba/spotlight/SimpleTarget$Builder;->setPoint(FF)Lcom/takusemba/spotlight/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lcom/takusemba/spotlight/SimpleTarget$Builder;

    .line 58
    invoke-virtual {p1, p3}, Lcom/takusemba/spotlight/SimpleTarget$Builder;->setRadius(F)Lcom/takusemba/spotlight/AbstractBuilder;

    move-result-object p1

    check-cast p1, Lcom/takusemba/spotlight/SimpleTarget$Builder;

    .line 59
    invoke-virtual {p1, p4}, Lcom/takusemba/spotlight/SimpleTarget$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/takusemba/spotlight/SimpleTarget$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p5}, Lcom/takusemba/spotlight/SimpleTarget$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/takusemba/spotlight/SimpleTarget$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/takusemba/spotlight/SimpleTarget$Builder;->build()Lcom/takusemba/spotlight/SimpleTarget;

    move-result-object p1

    .line 62
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronSpotlight;->targets:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public End()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Animation started"
    .end annotation

    const/4 v0, 0x0

    .line 83
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "End"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MaskColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF888888"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the background color"
    .end annotation

    .line 68
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronSpotlight;->maskColor:I

    return-void
.end method

.method public Show()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts the spotlight"
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSpotlight;->init()V

    return-void
.end method

.method public Start()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Animation started"
    .end annotation

    const/4 v0, 0x0

    .line 78
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Start"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
