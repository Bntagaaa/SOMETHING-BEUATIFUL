.class public final Lcom/google/appinventor/components/runtime/NiotronCircularMenu;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A simple, elegant UI menu with a circular layout"
    iconName = "images/niotronCircularMenu.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "circlemenu.aar,circlemenu.jar"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field menuView:Lcom/ramotion/circlemenu/CircleMenuView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 37
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularMenu;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public ButtonClickAnimationEnd(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Button clicked animation ended"
    .end annotation

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ButtonClickAnimationEnd"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ButtonClickAnimationStart(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Button clicked animation starts"
    .end annotation

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ButtonClickAnimationStart"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Close(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Closed"
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCircularMenu;->menuView:Lcom/ramotion/circlemenu/CircleMenuView;

    invoke-virtual {v0, p1}, Lcom/ramotion/circlemenu/CircleMenuView;->close(Z)V

    return-void
.end method

.method public CreateMenu(Lcom/google/appinventor/components/runtime/HVArrangement;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Creates menu"
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    :try_start_0
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p2

    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p2, v4

    .line 46
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v6, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 48
    :cond_0
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    array-length p3, p2

    :goto_1
    if-ge v3, p3, :cond_1

    aget-object v2, p2, v3

    .line 49
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 51
    :cond_1
    new-instance p2, Lcom/ramotion/circlemenu/CircleMenuView;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/NiotronCircularMenu;->context:Landroid/content/Context;

    invoke-direct {p2, p3, v0, v1}, Lcom/ramotion/circlemenu/CircleMenuView;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCircularMenu;->menuView:Lcom/ramotion/circlemenu/CircleMenuView;

    .line 52
    new-instance p3, Lcom/google/appinventor/components/runtime/NiotronCircularMenu$1;

    invoke-direct {p3, p0}, Lcom/google/appinventor/components/runtime/NiotronCircularMenu$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronCircularMenu;)V

    invoke-virtual {p2, p3}, Lcom/ramotion/circlemenu/CircleMenuView;->setEventListener(Lcom/ramotion/circlemenu/CircleMenuView$EventListener;)V

    .line 83
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/HVArrangement;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronCircularMenu;->menuView:Lcom/ramotion/circlemenu/CircleMenuView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 85
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronCircularMenu;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Error occurred"
    .end annotation

    .line 92
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MenuCloseAnimationEnd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Menu closed animation ended"
    .end annotation

    const/4 v0, 0x0

    .line 107
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MenuCloseAnimationEnd"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MenuCloseAnimationStart()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Menu closed animation started"
    .end annotation

    const/4 v0, 0x0

    .line 112
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MenuCloseAnimationStart"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MenuOpenAnimationEnd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Menu opened animation ended"
    .end annotation

    const/4 v0, 0x0

    .line 117
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MenuOpenAnimationEnd"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public MenuOpenAnimationStart()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Menu opened animation started"
    .end annotation

    const/4 v0, 0x0

    .line 122
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MenuOpenAnimationStart"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Open(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Opened"
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCircularMenu;->menuView:Lcom/ramotion/circlemenu/CircleMenuView;

    invoke-virtual {v0, p1}, Lcom/ramotion/circlemenu/CircleMenuView;->open(Z)V

    return-void
.end method
