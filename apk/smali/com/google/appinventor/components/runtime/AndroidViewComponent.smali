.class public abstract Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.super Lcom/google/appinventor/components/runtime/VisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private column:I

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private lastSetHeight:I

.field private lastSetWidth:I

.field private paddingBottom:I

.field private paddingBottom2:I

.field private paddingLeft:I

.field private paddingLeft2:I

.field private paddingRight:I

.field private paddingRight2:I

.field private paddingTop:I

.field private paddingTop2:I

.field private percentHeightHolder:I

.field private percentWidthHolder:I

.field private row:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VisibleComponent;-><init>()V

    const/4 v0, -0x3

    .line 28
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentWidthHolder:I

    .line 29
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentHeightHolder:I

    .line 30
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetWidth:I

    .line 31
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetHeight:I

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->column:I

    .line 34
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->row:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingLeft:I

    .line 36
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingTop:I

    .line 37
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingRight:I

    .line 38
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingBottom:I

    .line 39
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingLeft2:I

    .line 40
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingTop2:I

    .line 41
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingRight2:I

    .line 42
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingBottom2:I

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-void
.end method

.method private refreshMargin()V
    .locals 6

    .line 391
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 394
    iget v2, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingLeft:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingTop:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingRight:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingBottom:I

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 395
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 397
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 398
    iget v2, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingLeft:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingTop:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingRight:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v4

    iget v5, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingBottom:I

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 399
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private refreshPadding()V
    .locals 5

    .line 404
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    .line 405
    iget v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingLeft2:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingTop2:I

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingRight2:I

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingBottom2:I

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public Column()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 253
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->column:I

    return v0
.end method

.method public Column(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 263
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->column:I

    return-void
.end method

.method public CopyHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimplePropertyCopier;
    .end annotation

    .line 243
    iget p1, p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetHeight:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public CopyWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimplePropertyCopier;
    .end annotation

    .line 181
    iget p1, p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetWidth:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public Height()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 192
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public Height(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the vertical height of the %type%, measured in pixels."
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 204
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetHeight:I

    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sget-object v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    return-void

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    sget-object v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-virtual {p1, p0, v0}, Lcom/google/appinventor/components/runtime/Form;->unregisterPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    return-void
.end method

.method public HeightPercent(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the vertical height of the %type% as a percentage of the height of the Screen."
    .end annotation

    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    add-int/lit16 p1, p1, -0x3e8

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void

    .line 224
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 224
    const-string p1, "HeightPercent"

    const/16 v2, 0xaf1

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public HeihMargin(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "0,0,0,0"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 371
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 372
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingLeft:I

    const/4 v0, 0x1

    .line 373
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingRight:I

    const/4 v0, 0x2

    .line 374
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingTop:I

    const/4 v0, 0x3

    .line 375
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingBottom:I

    .line 376
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->refreshMargin()V

    return-void
.end method

.method public HeihPadding(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "0,0,0,0"
        editorType = "four"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 382
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 383
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingLeft2:I

    const/4 v0, 0x1

    .line 384
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingRight2:I

    const/4 v0, 0x2

    .line 385
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingTop2:I

    const/4 v0, 0x3

    .line 386
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingBottom2:I

    .line 387
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->refreshPadding()V

    return-void
.end method

.method public MarginBottom(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingBottom:I

    .line 315
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->refreshMargin()V

    return-void
.end method

.method public MarginLeft(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingLeft:I

    .line 307
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->refreshMargin()V

    return-void
.end method

.method public MarginRight(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingRight:I

    .line 299
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->refreshMargin()V

    return-void
.end method

.method public MarginTop(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingTop:I

    .line 291
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->refreshMargin()V

    return-void
.end method

.method public PaddingBottom(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 346
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingBottom2:I

    .line 347
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->refreshPadding()V

    return-void
.end method

.method public PaddingLeft(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingLeft2:I

    .line 339
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->refreshPadding()V

    return-void
.end method

.method public PaddingRight(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingRight2:I

    .line 331
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->refreshPadding()V

    return-void
.end method

.method public PaddingTop(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingTop2:I

    .line 323
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->refreshPadding()V

    return-void
.end method

.method public Row()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 273
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->row:I

    return v0
.end method

.method public Row(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 283
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->row:I

    return-void
.end method

.method public SetMargin(IIII)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets margin in the component"
    .end annotation

    .line 352
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingTop:I

    .line 353
    iput p2, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingBottom:I

    .line 354
    iput p3, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingRight:I

    .line 355
    iput p4, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingLeft:I

    .line 356
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->refreshMargin()V

    return-void
.end method

.method public SetPadding(IIII)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets padding in the component"
    .end annotation

    .line 361
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingTop2:I

    .line 362
    iput p2, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingBottom2:I

    .line 363
    iput p3, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingRight2:I

    .line 364
    iput p4, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->paddingLeft2:I

    .line 365
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->refreshPadding()V

    return-void
.end method

.method public Visible(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the %type% should be visible on the screen. Value is true if the %type% is showing and false if hidden."
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Width()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public Width(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the horizontal width of the %type%, measured in pixels."
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 114
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetWidth:I

    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sget-object v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->WIDTH:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    return-void

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    sget-object v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->WIDTH:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-virtual {p1, p0, v0}, Lcom/google/appinventor/components/runtime/Form;->unregisterPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    return-void
.end method

.method public WidthPercent(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the horizontal width of the %type% as a percentage of the width of the Screen."
    .end annotation

    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    add-int/lit16 p1, p1, -0x3e8

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void

    .line 134
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 134
    const-string p1, "WidthPercent"

    const/16 v2, 0xaf1

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 59
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public getSetHeight()I
    .locals 2

    .line 163
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentHeightHolder:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSetWidth()I
    .locals 2

    .line 149
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentWidthHolder:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width()I

    move-result v0

    :cond_0
    return v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public px(I)I
    .locals 1

    int-to-float p1, p1

    .line 63
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public setLastHeight(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentHeightHolder:I

    return-void
.end method

.method public setLastWidth(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentWidthHolder:I

    return-void
.end method
