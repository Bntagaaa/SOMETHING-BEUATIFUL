.class public final Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A navigation bar widget inspired on Bottom Navigation mixed with Chips component"
    iconName = "images/niotronChipNavigationBar.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "chipnavigation.jar,chipnavigation.aar"
.end annotation


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private items:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/gauravk/bubblenavigation/BubbleToggleView;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->items:Ljava/util/HashMap;

    .line 49
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 50
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->context:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->view:Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;

    const/4 v1, 0x4

    .line 52
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;->setElevation(F)V

    const/16 v1, 0xc

    .line 53
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v1

    .line 54
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;->setPadding(IIII)V

    .line 55
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 56
    new-instance p1, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;)V

    invoke-virtual {v0, p1}, Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;->setNavigationChangeListener(Lcom/gauravk/bubblenavigation/listener/BubbleNavigationChangeListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;)Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->view:Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;

    return-object p0
.end method


# virtual methods
.method public AddItem(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adds item in the chip navigation"
    .end annotation

    .line 67
    :try_start_0
    new-instance v0, Lcom/gauravk/bubblenavigation/BubbleToggleItem;

    invoke-direct {v0}, Lcom/gauravk/bubblenavigation/BubbleToggleItem;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/gauravk/bubblenavigation/BubbleToggleItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {v0, p1}, Lcom/gauravk/bubblenavigation/BubbleToggleItem;->setTitle(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, p3}, Lcom/gauravk/bubblenavigation/BubbleToggleItem;->setColorActive(I)V

    .line 72
    invoke-virtual {v0, p4}, Lcom/gauravk/bubblenavigation/BubbleToggleItem;->setColorInactive(I)V

    .line 73
    invoke-virtual {v0, p3}, Lcom/gauravk/bubblenavigation/BubbleToggleItem;->setShapeColor(I)V

    .line 74
    new-instance p1, Lcom/gauravk/bubblenavigation/BubbleToggleView;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lcom/gauravk/bubblenavigation/BubbleToggleView;-><init>(Landroid/content/Context;Lcom/gauravk/bubblenavigation/BubbleToggleItem;)V

    .line 75
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gauravk/bubblenavigation/BubbleToggleView;->setId(I)V

    .line 76
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->view:Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;

    invoke-virtual {p2, p1}, Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;->addView(Landroid/view/View;)V

    .line 77
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->items:Ljava/util/HashMap;

    invoke-virtual {p2, p5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = ""
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->view:Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;

    invoke-virtual {v0, p1}, Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;->setBackgroundColor(I)V

    return-void
.end method

.method public Create()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Creates the navigation view"
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->view:Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;)V

    invoke-virtual {v0, v1}, Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Error occurred"
    .end annotation

    .line 117
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetActiveItemPosition()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get active item position"
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->view:Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;

    invoke-virtual {v0}, Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;->getCurrentActiveItemPosition()I

    move-result v0

    return v0
.end method

.method public OnPositionChanged(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "On position changed"
    .end annotation

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnPositionChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SetActiveItemPosition(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set active item position"
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->view:Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;

    invoke-virtual {v0, p1}, Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;->setCurrentActiveItem(I)V

    return-void
.end method

.method public Toggle(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Toggle id"
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->items:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gauravk/bubblenavigation/BubbleToggleView;

    invoke-virtual {p1}, Lcom/gauravk/bubblenavigation/BubbleToggleView;->toggle()V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronChipNavigationBar;->view:Lcom/gauravk/bubblenavigation/BubbleNavigationLinearView;

    return-object v0
.end method
