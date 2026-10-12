.class public final Lcom/google/appinventor/components/runtime/NiotronCircularProgress;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MATERIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Customizable Circular Progress"
    iconName = "images/circularprogress.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "dynamicanimation.aar,dynamicanimation.jar"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private progressView:Lcom/google/android/material/progressindicator/CircularProgressIndicator;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 26
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 27
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->context:Landroid/content/Context;

    .line 28
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->activity:Landroid/app/Activity;

    .line 29
    new-instance v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->progressView:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 31
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, 0x4

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->StrokeWidth(I)V

    const/4 p1, 0x5

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->IndicatorBorderRadius(I)V

    return-void
.end method


# virtual methods
.method public CenterRadius(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set Center Radius"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public Color(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set Circular Progress Color"
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->progressView:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndicatorColor([I)V

    return-void
.end method

.method public Height()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public Height(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public HeightPercent(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public IndicatorBorderRadius(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the border radius of Indicator"
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->progressView:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setTrackCornerRadius(I)V

    return-void
.end method

.method public RoundCap(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set if cap should be round or not"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public SetColorList(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set multiple color for circular progress"
    .end annotation

    .line 43
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 44
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 45
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-lt v0, p1, :cond_1

    .line 50
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->progressView:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->progressView:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {p1, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 52
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->progressView:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {p1, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndicatorColor([I)V

    .line 53
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->progressView:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 54
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->progressView:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 48
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Minimum 3 Colors Required for Continuous Color Animation"

    const-string v1, "CircularProgress"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public StrokeWidth(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the width of the stroke"
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->progressView:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->setTrackThickness(I)V

    return-void
.end method

.method public Visible(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->progressView:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->progressView:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public Width(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    :cond_0
    if-lez p1, :cond_1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->progressView:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->setIndicatorSize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Width Cannot Be Less Than The Twice Of Track Size"

    const-string v1, "Circular Progress"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public WidthPercent(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-lez p1, :cond_0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->progressView:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->setIndicatorSize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Width Cannot Be Less Than The Twice Of Track Size"

    const-string v1, "Circular Progress"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->WidthPercent(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCircularProgress;->progressView:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    return-object v0
.end method
