.class public final Lcom/google/appinventor/components/runtime/LinearProgress;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A visible component that indicates the progress of an operation using an animated linear bar."
    iconName = "images/linearProgress.png"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LinearProgress"


# instance fields
.field private context:Landroid/content/Context;

.field private indeterminateColor:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressColor:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 46
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const v0, -0xffff01

    .line 42
    iput v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressColor:I

    .line 43
    iput v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->indeterminateColor:I

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->context:Landroid/content/Context;

    .line 49
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    .line 51
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LinearProgress;->Minimum(I)V

    const/16 p1, 0x64

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LinearProgress;->Maximum(I)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LinearProgress;->ProgressColor(I)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LinearProgress;->IndeterminateColor(I)V

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LinearProgress;->Indeterminate(Z)V

    const/4 p1, -0x2

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 59
    const-string p1, "LinearProgress"

    const-string v0, "Linear Progress created"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public Height()I
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LinearProgress;->getView()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

.method public HeightPercent(I)V
    .locals 0

    return-void
.end method

.method public IncrementProgressBy(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Increase the progress bar\'s progress by the specified amount."
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 131
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LinearProgress;->ProgressChanged(I)V

    return-void
.end method

.method public Indeterminate(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Change the indeterminate mode for this progress bar. In indeterminate mode, the progress is ignored and the progress bar shows an infinite animation instead."
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Indeterminate is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LinearProgress"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Indeterminate()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicate whether this progress bar is in indeterminate mode."
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    return v0
.end method

.method public IndeterminateColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 171
    iget v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->indeterminateColor:I

    return v0
.end method

.method public IndeterminateColor(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF0000FF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Change the indeterminate color of the progress bar."
    .end annotation

    .line 159
    iput p1, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->indeterminateColor:I

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 161
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 162
    new-instance v1, Landroid/graphics/BlendModeColorFilter;

    sget-object v1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    new-instance v2, Landroid/graphics/BlendModeColorFilter;

    invoke-direct {v2, p1, v1}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 164
    :cond_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 166
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Indeterminate Color = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LinearProgress"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Maximum()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0
.end method

.method public Maximum(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the upper range of the progress bar max."
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setMax = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LinearProgress"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Minimum()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {v0}, Landroidx/core/graphics/b;->d(Landroid/widget/ProgressBar;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Minimum(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the lower range of the progress bar to min. This function works only for devices with API >= 26"
    .end annotation

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-string v2, "LinearProgress"

    if-lt v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, p1}, Landroidx/core/graphics/b;->A(Landroid/widget/ProgressBar;I)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setMin = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "setMin of progress bar is not possible. API is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Progress()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the progress bar\'s current level of progress."
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public Progress(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the current progress to the specified value. Does not do anything if the progress bar is in indeterminate mode."
    .end annotation

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, p1}, Landroidx/core/os/f;->x(Landroid/widget/ProgressBar;I)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 120
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LinearProgress;->ProgressChanged(I)V

    return-void
.end method

.method public ProgressChanged(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event that indicates that the progress of the progress bar has been changed. Returns the current progress value. If \"Indeterminate\" is set to true, then it returns \"0\"."
    .end annotation

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ProgressChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ProgressColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 151
    iget v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressColor:I

    return v0
.end method

.method public ProgressColor(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF0000FF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Change the progress color of the progress bar."
    .end annotation

    .line 139
    iput p1, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressColor:I

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 142
    new-instance v1, Landroid/graphics/BlendModeColorFilter;

    sget-object v1, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    new-instance v2, Landroid/graphics/BlendModeColorFilter;

    invoke-direct {v2, p1, v1}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 144
    :cond_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 146
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Progress Color = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LinearProgress"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LinearProgress;->getView()Landroid/widget/ProgressBar;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/widget/ProgressBar;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearProgress;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method
