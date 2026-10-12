.class public final Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MATERIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronLinearProgressBar.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "dynamicanimation.aar,dynamicanimation.jar"
.end annotation


# instance fields
.field private final progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 37
    new-instance v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 38
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, 0x4

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->TrackThickness(I)V

    return-void
.end method


# virtual methods
.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Background color"
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setTrackColor(I)V

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

.method public Indeterminate(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set progress type indeterminate"
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 64
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public IndeterminateColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set indeterminate color"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public Max(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set max range"
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method public Progress(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set progress"
    .end annotation

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-static {v0, p1}, Landroidx/core/os/f;->y(Lcom/google/android/material/progressindicator/LinearProgressIndicator;I)V

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgress(I)V

    return-void
.end method

.method public ProgressColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set progress color"
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndicatorColor([I)V

    return-void
.end method

.method public SetContinuousColors(Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .locals 5
    .param p2    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/LinearProgressBarAnimations;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set continuous colors"
    .end annotation

    .line 44
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 45
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 46
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

    .line 51
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 53
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1, v1}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndicatorColor([I)V

    .line 54
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1, p2}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndeterminateAnimationType(I)V

    .line 55
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 56
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 49
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Minimum 3 Colors Required for Continuous Color Animation"

    const-string v0, "LinearProgressBar"

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public TrackCornerRadius(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Track corner radius"
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setTrackCornerRadius(I)V

    return-void
.end method

.method public TrackThickness(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Track thickness"
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->px(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setTrackThickness(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronLinearProgressBar;->progressBar:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    return-object v0
.end method
