.class Lcom/google/android/material/timepicker/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;
.implements Lcom/google/android/material/timepicker/q$d;
.implements Lcom/google/android/material/timepicker/q$c;
.implements Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;
.implements Lcom/google/android/material/timepicker/m;


# static fields
.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;


# instance fields
.field public final a:Lcom/google/android/material/timepicker/q;

.field public final b:Lcom/google/android/material/timepicker/i;

.field public c:F

.field public d:F

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 48
    const-string v10, "10"

    const-string v11, "11"

    const-string v0, "12"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/l;->f:[Ljava/lang/String;

    .line 51
    const-string v11, "20"

    const-string v12, "22"

    const-string v1, "00"

    const-string v2, "2"

    const-string v3, "4"

    const-string v4, "6"

    const-string v5, "8"

    const-string v6, "10"

    const-string v7, "12"

    const-string v8, "14"

    const-string v9, "16"

    const-string v10, "18"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/l;->g:[Ljava/lang/String;

    .line 54
    const-string v11, "50"

    const-string v12, "55"

    const-string v1, "00"

    const-string v2, "5"

    const-string v3, "10"

    const-string v4, "15"

    const-string v5, "20"

    const-string v6, "25"

    const-string v7, "30"

    const-string v8, "35"

    const-string v9, "40"

    const-string v10, "45"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/timepicker/l;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/timepicker/q;Lcom/google/android/material/timepicker/i;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/google/android/material/timepicker/l;->e:Z

    .line 68
    iput-object p1, p0, Lcom/google/android/material/timepicker/l;->a:Lcom/google/android/material/timepicker/q;

    .line 69
    iput-object p2, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/i;

    .line 70
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/l;->initialize()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/i;

    iget v0, v0, Lcom/google/android/material/timepicker/i;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xf

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method public final b(IZ)V
    .locals 4

    const/16 v0, 0xc

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 160
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/timepicker/l;->a:Lcom/google/android/material/timepicker/q;

    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/q;->setAnimateOnTouchUp(Z)V

    .line 161
    iget-object v3, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/i;

    iput p1, v3, Lcom/google/android/material/timepicker/i;->f:I

    if-eqz v0, :cond_1

    .line 163
    sget-object v1, Lcom/google/android/material/timepicker/l;->h:[Ljava/lang/String;

    goto :goto_1

    .line 107
    :cond_1
    iget v3, v3, Lcom/google/android/material/timepicker/i;->c:I

    if-ne v3, v1, :cond_2

    sget-object v1, Lcom/google/android/material/timepicker/l;->g:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/google/android/material/timepicker/l;->f:[Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_3

    .line 164
    sget v3, Lcom/google/android/material/R$string;->material_minute_suffix:I

    goto :goto_2

    :cond_3
    sget v3, Lcom/google/android/material/R$string;->material_hour_suffix:I

    .line 162
    :goto_2
    invoke-virtual {v2, v1, v3}, Lcom/google/android/material/timepicker/q;->setValues([Ljava/lang/String;I)V

    if-eqz v0, :cond_4

    .line 165
    iget v0, p0, Lcom/google/android/material/timepicker/l;->c:F

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/google/android/material/timepicker/l;->d:F

    :goto_3
    invoke-virtual {v2, v0, p2}, Lcom/google/android/material/timepicker/q;->setHandRotation(FZ)V

    .line 166
    invoke-virtual {v2, p1}, Lcom/google/android/material/timepicker/q;->setActiveSelection(I)V

    .line 167
    new-instance p1, Lcom/google/android/material/timepicker/j;

    .line 168
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/google/android/material/R$string;->material_hour_selection:I

    invoke-direct {p1, p0, p2, v0}, Lcom/google/android/material/timepicker/j;-><init>(Lcom/google/android/material/timepicker/l;Landroid/content/Context;I)V

    .line 167
    invoke-virtual {v2, p1}, Lcom/google/android/material/timepicker/q;->setMinuteHourDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 179
    new-instance p1, Lcom/google/android/material/timepicker/k;

    .line 180
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/google/android/material/R$string;->material_minute_selection:I

    invoke-direct {p1, p0, p2, v0}, Lcom/google/android/material/timepicker/k;-><init>(Lcom/google/android/material/timepicker/l;Landroid/content/Context;I)V

    .line 179
    invoke-virtual {v2, p1}, Lcom/google/android/material/timepicker/q;->setHourClickDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public final c(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 236
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/google/android/material/timepicker/l;->a:Lcom/google/android/material/timepicker/q;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/material/timepicker/i;->formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->a:Lcom/google/android/material/timepicker/q;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/i;

    iget v0, v0, Lcom/google/android/material/timepicker/i;->c:I

    iget-object v1, p0, Lcom/google/android/material/timepicker/l;->a:Lcom/google/android/material/timepicker/q;

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {v1}, Lcom/google/android/material/timepicker/q;->showToggle()V

    .line 79
    :cond_0
    invoke-virtual {v1, p0}, Lcom/google/android/material/timepicker/q;->addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V

    .line 82
    invoke-virtual {v1, p0}, Lcom/google/android/material/timepicker/q;->setOnActionUpListener(Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V

    .line 230
    sget-object v0, Lcom/google/android/material/timepicker/l;->f:[Ljava/lang/String;

    const-string v1, "%d"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/timepicker/l;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/google/android/material/timepicker/l;->g:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/timepicker/l;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/google/android/material/timepicker/l;->h:[Ljava/lang/String;

    const-string v1, "%02d"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/timepicker/l;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/l;->invalidate()V

    return-void
.end method

.method public invalidate()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/i;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/i;->getHourForDisplay()I

    move-result v1

    .line 90
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/l;->a()I

    move-result v2

    mul-int v1, v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/timepicker/l;->d:F

    .line 91
    iget v1, v0, Lcom/google/android/material/timepicker/i;->e:I

    mul-int/lit8 v1, v1, 0x6

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/timepicker/l;->c:F

    .line 92
    iget v1, v0, Lcom/google/android/material/timepicker/i;->f:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/timepicker/l;->b(IZ)V

    .line 225
    iget v1, v0, Lcom/google/android/material/timepicker/i;->g:I

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/i;->getHourForDisplay()I

    move-result v2

    iget v0, v0, Lcom/google/android/material/timepicker/i;->e:I

    iget-object v3, p0, Lcom/google/android/material/timepicker/l;->a:Lcom/google/android/material/timepicker/q;

    invoke-virtual {v3, v1, v2, v0}, Lcom/google/android/material/timepicker/q;->updateTime(III)V

    return-void
.end method

.method public onActionUp(FZ)V
    .locals 8

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/google/android/material/timepicker/l;->e:Z

    .line 195
    iget-object v1, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/i;

    iget v2, v1, Lcom/google/android/material/timepicker/i;->e:I

    .line 196
    iget v3, v1, Lcom/google/android/material/timepicker/i;->d:I

    .line 197
    iget v4, v1, Lcom/google/android/material/timepicker/i;->f:I

    const/16 v5, 0xa

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/material/timepicker/l;->a:Lcom/google/android/material/timepicker/q;

    if-ne v4, v5, :cond_1

    .line 200
    iget p1, p0, Lcom/google/android/material/timepicker/l;->d:F

    invoke-virtual {v7, p1, v6}, Lcom/google/android/material/timepicker/q;->setHandRotation(FZ)V

    .line 204
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    .line 207
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/l;->b(IZ)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-nez p2, :cond_2

    add-int/lit8 p1, p1, 0xf

    .line 213
    div-int/lit8 p1, p1, 0x1e

    mul-int/lit8 p1, p1, 0x5

    .line 214
    invoke-virtual {v1, p1}, Lcom/google/android/material/timepicker/i;->setMinute(I)V

    .line 215
    iget p1, v1, Lcom/google/android/material/timepicker/i;->e:I

    mul-int/lit8 p1, p1, 0x6

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/timepicker/l;->c:F

    .line 217
    :cond_2
    iget p1, p0, Lcom/google/android/material/timepicker/l;->c:F

    invoke-virtual {v7, p1, p2}, Lcom/google/android/material/timepicker/q;->setHandRotation(FZ)V

    .line 219
    :goto_0
    iput-boolean v6, p0, Lcom/google/android/material/timepicker/l;->e:Z

    .line 225
    iget p1, v1, Lcom/google/android/material/timepicker/i;->g:I

    invoke-virtual {v1}, Lcom/google/android/material/timepicker/i;->getHourForDisplay()I

    move-result p2

    iget v0, v1, Lcom/google/android/material/timepicker/i;->e:I

    invoke-virtual {v7, p1, p2, v0}, Lcom/google/android/material/timepicker/q;->updateTime(III)V

    .line 141
    iget p1, v1, Lcom/google/android/material/timepicker/i;->e:I

    if-ne p1, v2, :cond_4

    iget p1, v1, Lcom/google/android/material/timepicker/i;->d:I

    if-eq p1, v3, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    const/4 p1, 0x4

    .line 143
    invoke-virtual {v7, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public onRotate(FZ)V
    .locals 5

    .line 116
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/l;->e:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->b:Lcom/google/android/material/timepicker/i;

    iget v1, v0, Lcom/google/android/material/timepicker/i;->d:I

    .line 121
    iget v2, v0, Lcom/google/android/material/timepicker/i;->e:I

    .line 122
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 123
    iget v3, v0, Lcom/google/android/material/timepicker/i;->f:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    add-int/lit8 p1, p1, 0x3

    .line 125
    div-int/lit8 p1, p1, 0x6

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/i;->setMinute(I)V

    .line 126
    iget p1, v0, Lcom/google/android/material/timepicker/i;->e:I

    mul-int/lit8 p1, p1, 0x6

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float p1, v3

    iput p1, p0, Lcom/google/android/material/timepicker/l;->c:F

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/l;->a()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    .line 129
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/l;->a()I

    move-result p1

    div-int/2addr v3, p1

    invoke-virtual {v0, v3}, Lcom/google/android/material/timepicker/i;->setHour(I)V

    .line 130
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/i;->getHourForDisplay()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/l;->a()I

    move-result v3

    mul-int p1, p1, v3

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/timepicker/l;->d:F

    :goto_0
    if-nez p2, :cond_3

    .line 225
    iget p1, v0, Lcom/google/android/material/timepicker/i;->g:I

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/i;->getHourForDisplay()I

    move-result p2

    iget v3, v0, Lcom/google/android/material/timepicker/i;->e:I

    iget-object v4, p0, Lcom/google/android/material/timepicker/l;->a:Lcom/google/android/material/timepicker/q;

    invoke-virtual {v4, p1, p2, v3}, Lcom/google/android/material/timepicker/q;->updateTime(III)V

    .line 141
    iget p1, v0, Lcom/google/android/material/timepicker/i;->e:I

    if-ne p1, v2, :cond_2

    iget p1, v0, Lcom/google/android/material/timepicker/i;->d:I

    if-eq p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x4

    .line 143
    invoke-virtual {v4, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public show()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/google/android/material/timepicker/l;->a:Lcom/google/android/material/timepicker/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
