.class public Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A layout with ability to refresh on drag from top"
    iconName = "images/swiperefreshlayout.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "swiperefreshlayout.aar, swiperefreshlayout.jar"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MockSwipeRefreshLayout"


# instance fields
.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

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

.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private contentPaddingBottom:I

.field private contentPaddingLeft:I

.field private contentPaddingRight:I

.field private contentPaddingTop:I

.field private final context:Landroid/app/Activity;

.field private defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private horizontalAlignment:I

.field private imagePath:Ljava/lang/String;

.field private final orientation:I

.field private scrollable:Z

.field private size:I

.field private swLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private verticalAlignment:I

.field private final viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 93
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->scrollable:Z

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->allChildren:Ljava/util/List;

    .line 66
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->imagePath:Ljava/lang/String;

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->androidUIHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    .line 72
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->contentPaddingLeft:I

    .line 74
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->contentPaddingTop:I

    .line 76
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->contentPaddingRight:I

    .line 78
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->contentPaddingBottom:I

    const/4 v1, 0x1

    .line 80
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->size:I

    .line 94
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->context:Landroid/app/Activity;

    .line 96
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->orientation:I

    .line 97
    new-instance v3, Lcom/google/appinventor/components/runtime/LinearLayout;

    const/16 v4, 0x64

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 99
    invoke-direct {v3, v2, v0, v5, v5}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 101
    invoke-virtual {v3, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setBaselineAligned(Z)V

    .line 102
    new-instance v5, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-direct {v5, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 103
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->horizontalAlignment:I

    .line 104
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->verticalAlignment:I

    .line 105
    invoke-virtual {v5, v1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 106
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget v5, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->verticalAlignment:I

    invoke-virtual {v1, v5}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 108
    new-instance v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-direct {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->swLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 110
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->swLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->BackgroundColor(I)V

    .line 121
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->AddListener()V

    return-void
.end method

.method private AddListener()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->swLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private updateAppearance()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 447
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->backgroundColor:I

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 454
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->allChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public AlignHorizontal()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the %type% are aligned  horizontally. The choices are: 1 = left aligned, 2 = right aligned,  3 = horizontally centered.  Alignment has no effect if the arrangement\'s width is automatic."
    .end annotation

    .line 227
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->horizontalAlignment:I

    return v0
.end method

.method public AlignHorizontal(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 245
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->horizontalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 247
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 248
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 247
    const-string p1, "HorizontalAlignment"

    const/16 v2, 0x579

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public AlignVertical()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the %type% are aligned  vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom.  Alignment has no effect if the arrangement\'s height is automatic."
    .end annotation

    .line 264
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->verticalAlignment:I

    return v0
.end method

.method public AlignVertical(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 282
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->verticalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 284
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 285
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 284
    const-string p1, "VerticalAlignment"

    const/16 v2, 0x57a

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the background color of the %type%"
    .end annotation

    .line 298
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color of the %type%. The background color will not be visible if an Image is being displayed."
    .end annotation

    .line 316
    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->backgroundColor:I

    .line 318
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->updateAppearance()V

    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets if the layout is enabled or not"
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->swLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 374
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->updateAppearance()V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->swLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the background image for the %type%.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-void

    .line 352
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->imagePath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 358
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 360
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->imagePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :catch_0
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->updateAppearance()V

    return-void
.end method

.method public NestedScrolling(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->swLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 396
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->updateAppearance()V

    return-void
.end method

.method public NestedScrolling()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->swLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public OnPageRefresh()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = ""
    .end annotation

    const/4 v0, 0x0

    .line 428
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnPageRefresh"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RefreshBarBackGroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF0000FF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = ""
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->swLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public Refreshing(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->swLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 385
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->updateAppearance()V

    return-void
.end method

.method public Refreshing()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->swLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    return v0
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

    .line 204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->allChildren:Ljava/util/List;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->swLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_1

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 190
    div-int/lit8 p2, v0, 0x64

    .line 193
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 195
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 196
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForHorizontalLayout(Landroid/view/View;I)V

    return-void

    .line 198
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    if-ge p3, v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 p3, -0x3e8

    if-gt p2, p3, :cond_1

    .line 163
    const-string p3, "HVArrangement.setChildWidth(): width = "

    const-string v1, " parent Width = "

    const-string v2, " child = "

    .line 0
    invoke-static {p2, v0, p3, v1, v2}, L_COROUTINE/a;->n(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 163
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "MockSwipeRefreshLayout"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit16 p2, p2, 0x3e8

    neg-int p2, p2

    mul-int v0, v0, p2

    .line 164
    div-int/lit8 p2, v0, 0x64

    .line 167
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 169
    iget p3, p0, Lcom/google/appinventor/components/runtime/NiotronSwipeRefreshLayout;->orientation:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 170
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForHorizontalLayout(Landroid/view/View;I)V

    return-void

    .line 172
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    return-void
.end method
