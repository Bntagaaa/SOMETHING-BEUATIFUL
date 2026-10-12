.class public final Lcom/google/android/material/internal/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public A:Landroid/graphics/Typeface;

.field public B:Landroid/graphics/Typeface;

.field public C:Landroid/graphics/Typeface;

.field public D:Landroid/graphics/Typeface;

.field public E:Lcom/google/android/material/resources/CancelableFontCallback;

.field public F:Lcom/google/android/material/resources/CancelableFontCallback;

.field public G:Ljava/lang/CharSequence;

.field public H:Ljava/lang/CharSequence;

.field public I:Z

.field public J:Z

.field public K:Landroid/graphics/Bitmap;

.field public L:F

.field public M:F

.field public N:F

.field public O:F

.field public P:F

.field public Q:I

.field public R:[I

.field public S:Z

.field public final T:Landroid/text/TextPaint;

.field public final U:Landroid/text/TextPaint;

.field public V:Landroid/animation/TimeInterpolator;

.field public W:Landroid/animation/TimeInterpolator;

.field public X:F

.field public Y:F

.field public Z:F

.field public final a:Landroid/view/View;

.field public a0:Landroid/content/res/ColorStateList;

.field public b:Z

.field public b0:F

.field public c:F

.field public c0:F

.field public d:Z

.field public d0:F

.field public e:F

.field public e0:Landroid/content/res/ColorStateList;

.field public f:F

.field public f0:F

.field public g:I

.field public g0:F

.field public final h:Landroid/graphics/Rect;

.field public h0:F

.field public final i:Landroid/graphics/Rect;

.field public i0:Landroid/text/StaticLayout;

.field public final j:Landroid/graphics/RectF;

.field public j0:F

.field public k:I

.field public k0:F

.field public l:I

.field public l0:F

.field public m:F

.field public m0:Ljava/lang/CharSequence;

.field public n:F

.field public n0:I

.field public o:Landroid/content/res/ColorStateList;

.field public o0:F

.field public p:Landroid/content/res/ColorStateList;

.field public p0:F

.field public q:I

.field public q0:I

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:Landroid/graphics/Typeface;

.field public y:Landroid/graphics/Typeface;

.field public z:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 105
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->k:I

    .line 106
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->l:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 107
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    .line 108
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->J:Z

    .line 174
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n0:I

    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->o0:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 176
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->p0:F

    .line 177
    sget v1, Lcom/google/android/material/internal/a;->m:I

    iput v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->q0:I

    .line 180
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Landroid/view/View;

    .line 182
    new-instance v1, Landroid/text/TextPaint;

    const/16 v2, 0x81

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->T:Landroid/text/TextPaint;

    .line 183
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->U:Landroid/text/TextPaint;

    .line 185
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i:Landroid/graphics/Rect;

    .line 186
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->h:Landroid/graphics/Rect;

    .line 187
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j:Landroid/graphics/RectF;

    .line 327
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->e:F

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2, v1}, L_COROUTINE/a;->a(FFFF)F

    move-result v0

    .line 189
    iput v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->f:F

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->maybeUpdateFontWeightAdjustment(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static a(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1249
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v2, v1

    .line 1250
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v3, v1

    .line 1251
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v4, v1

    .line 1252
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p1, p0

    .line 1253
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static e(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    .line 1259
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 1261
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 943
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 937
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->J:Z

    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    .line 948
    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_1

    .line 949
    :cond_1
    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 950
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1

    :cond_2
    return v2
.end method

.method public final c(FZ)V
    .locals 12

    .line 973
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    goto/16 :goto_e

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 978
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, p1, v2

    .line 1221
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    const v5, 0x3727c5ac    # 1.0E-5f

    const/4 v6, 0x1

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v7, 0x0

    if-eqz v3, :cond_3

    .line 986
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    .line 987
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->f0:F

    .line 988
    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->L:F

    .line 989
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->D:Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->x:Landroid/graphics/Typeface;

    if-eq v1, v3, :cond_2

    .line 990
    iput-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->D:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    goto :goto_4

    :cond_2
    const/4 v1, 0x0

    goto :goto_4

    .line 995
    :cond_3
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    .line 996
    iget v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->g0:F

    .line 997
    iget-object v9, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->D:Landroid/graphics/Typeface;

    iget-object v10, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->A:Landroid/graphics/Typeface;

    if-eq v9, v10, :cond_4

    .line 998
    iput-object v10, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->D:Landroid/graphics/Typeface;

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    sub-float v10, p1, v7

    .line 1221
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v5, v10, v5

    if-gez v5, :cond_5

    .line 1003
    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->L:F

    goto :goto_2

    .line 1006
    :cond_5
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    iget v10, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    iget-object v11, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->W:Landroid/animation/TimeInterpolator;

    .line 1007
    invoke-static {v5, v10, p1, v11}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result p1

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    div-float/2addr p1, v5

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->L:F

    .line 1011
    :goto_2
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    div-float/2addr p1, v5

    mul-float v5, v1, p1

    if-eqz p2, :cond_7

    :cond_6
    move v0, v1

    :goto_3
    move p1, v3

    move p2, v8

    move v1, v9

    goto :goto_4

    :cond_7
    cmpl-float p2, v5, v0

    if-lez p2, :cond_6

    div-float/2addr v0, p1

    .line 1028
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v0, p1

    goto :goto_3

    :goto_4
    cmpl-float v3, v0, v7

    if-lez v3, :cond_c

    .line 1034
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->M:F

    cmpl-float v3, v3, p1

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    .line 1035
    :goto_5
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->h0:F

    cmpl-float v5, v5, p2

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    if-nez v3, :cond_b

    if-nez v5, :cond_b

    .line 1036
    iget-boolean v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->S:Z

    if-nez v3, :cond_b

    if-eqz v1, :cond_a

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v1, 0x1

    .line 1037
    :goto_8
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->M:F

    .line 1038
    iput p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->h0:F

    .line 1039
    iput-boolean v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->S:Z

    .line 1042
    :cond_c
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->H:Ljava/lang/CharSequence;

    if-eqz p1, :cond_d

    if-eqz v1, :cond_16

    .line 1043
    :cond_d
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->T:Landroid/text/TextPaint;

    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->M:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1044
    iget-object p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->D:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1046
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->h0:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 1049
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->L:F

    cmpl-float p2, p2, v2

    if-eqz p2, :cond_e

    const/4 p2, 0x1

    goto :goto_9

    :cond_e
    const/4 p2, 0x0

    :goto_9
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 1051
    iget-object p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->I:Z

    .line 870
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n0:I

    if-le v1, v6, :cond_f

    if-eqz p2, :cond_10

    iget-boolean v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Z

    if-eqz v2, :cond_f

    goto :goto_a

    :cond_f
    const/4 v1, 0x1

    :cond_10
    :goto_a
    if-ne v1, v6, :cond_11

    .line 1061
    :try_start_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_b

    :catch_0
    move-exception p1

    goto :goto_c

    .line 1080
    :cond_11
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->k:I

    .line 1081
    invoke-static {v2, p2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    if-eq v2, v6, :cond_15

    const/4 v3, 0x5

    if-eq v2, v3, :cond_13

    .line 1090
    iget-boolean v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->I:Z

    if-eqz v2, :cond_12

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_b

    :cond_12
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_b

    .line 1088
    :cond_13
    iget-boolean v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->I:Z

    if-eqz v2, :cond_14

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_b

    :cond_14
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_b

    .line 1086
    :cond_15
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1062
    :goto_b
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Ljava/lang/CharSequence;

    float-to-int v0, v0

    .line 1063
    invoke-static {v3, p1, v0}, Lcom/google/android/material/internal/a;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/a;

    move-result-object p1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 1064
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/a;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/a;

    move-result-object p1

    .line 1065
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/a;->setIsRtl(Z)Lcom/google/android/material/internal/a;

    move-result-object p1

    .line 1066
    invoke-virtual {p1, v2}, Lcom/google/android/material/internal/a;->setAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/a;

    move-result-object p1

    .line 1067
    invoke-virtual {p1, v4}, Lcom/google/android/material/internal/a;->setIncludePad(Z)Lcom/google/android/material/internal/a;

    move-result-object p1

    .line 1068
    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/a;->setMaxLines(I)Lcom/google/android/material/internal/a;

    move-result-object p1

    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->o0:F

    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->p0:F

    .line 1069
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/internal/a;->setLineSpacing(FF)Lcom/google/android/material/internal/a;

    move-result-object p1

    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->q0:I

    .line 1070
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/a;->setHyphenationFrequency(I)Lcom/google/android/material/internal/a;

    move-result-object p1

    .line 1071
    invoke-virtual {p1}, Lcom/google/android/material/internal/a;->build()Landroid/text/StaticLayout;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/material/internal/a$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    .line 1073
    :goto_c
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CollapsingTextHelper"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 1076
    :goto_d
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/StaticLayout;

    .line 1052
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i0:Landroid/text/StaticLayout;

    .line 1053
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->H:Ljava/lang/CharSequence;

    :cond_16
    :goto_e
    return-void
.end method

.method public final d(Landroid/content/res/ColorStateList;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 702
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->R:[I

    if-eqz v1, :cond_1

    .line 703
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    .line 705
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 828
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 830
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->H:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->b:Z

    if-eqz v1, :cond_9

    .line 831
    iget-object v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->T:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->M:F

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 832
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->v:F

    .line 833
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->w:F

    .line 846
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->L:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Z

    if-nez v4, :cond_0

    .line 847
    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 870
    :cond_0
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n0:I

    const/4 v9, 0x1

    if-le v3, v9, :cond_8

    iget-boolean v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->I:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Z

    if-eqz v3, :cond_8

    .line 857
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->c:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->f:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 859
    :cond_2
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->v:F

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i0:Landroid/text/StaticLayout;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 874
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    .line 876
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 878
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->l0:F

    int-to-float v2, v11

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 883
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1f

    if-lt v1, v12, :cond_3

    .line 884
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->N:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->O:F

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->P:F

    iget v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->Q:I

    .line 888
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    invoke-static {v6, v7}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v6

    .line 884
    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 890
    :cond_3
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i0:Landroid/text/StaticLayout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 893
    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->k0:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    if-lt v1, v12, :cond_4

    .line 896
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->N:F

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->O:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->P:F

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->Q:I

    .line 900
    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v5

    .line 896
    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 902
    :cond_4
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i0:Landroid/text/StaticLayout;

    invoke-virtual {v2, v10}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    .line 903
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->m0:Ljava/lang/CharSequence;

    .line 906
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    int-to-float v7, v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    .line 903
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-lt v1, v12, :cond_5

    .line 913
    iget p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->N:F

    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->O:F

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->P:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->Q:I

    invoke-virtual {v8, p1, v1, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 917
    :cond_5
    iget-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Z

    if-nez p1, :cond_7

    .line 919
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->m0:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 920
    const-string v1, "\u2026"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 921
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p1, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_6
    move-object v3, p1

    .line 924
    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 925
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i0:Landroid/text/StaticLayout;

    .line 928
    invoke-virtual {p1, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 925
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    :cond_7
    move-object p1, v2

    goto :goto_0

    .line 861
    :cond_8
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 862
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i0:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 865
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    return-void
.end method

.method public final f()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    .line 354
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    .line 356
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->b:Z

    return-void
.end method

.method public final g(Landroid/graphics/Typeface;)Z
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->F:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->z:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_2

    .line 478
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->z:Landroid/graphics/Typeface;

    .line 479
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Landroid/view/View;

    .line 481
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 480
    invoke-static {v0, p1}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->y:Landroid/graphics/Typeface;

    if-nez p1, :cond_1

    .line 483
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->z:Landroid/graphics/Typeface;

    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->x:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getCollapsedTextActualBounds(Landroid/graphics/RectF;II)V
    .locals 10
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 268
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->I:Z

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x5

    .line 276
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i:Landroid/graphics/Rect;

    const v4, 0x800005

    const/4 v5, 0x1

    const/16 v6, 0x11

    if-eq p3, v6, :cond_5

    and-int/lit8 v7, p3, 0x7

    if-ne v7, v5, :cond_0

    goto :goto_3

    :cond_0
    and-int v7, p3, v4

    if-eq v7, v4, :cond_3

    and-int/lit8 v7, p3, 0x5

    if-ne v7, v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 283
    iget v7, v3, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j0:F

    :goto_0
    sub-float/2addr v7, v8

    goto :goto_4

    :cond_2
    iget v7, v3, Landroid/graphics/Rect;->left:I

    :goto_1
    int-to-float v7, v7

    goto :goto_4

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 281
    iget v7, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_4
    iget v7, v3, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j0:F

    goto :goto_0

    :cond_5
    :goto_3
    int-to-float v7, p2

    div-float/2addr v7, v1

    .line 278
    iget v8, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j0:F

    div-float/2addr v8, v1

    goto :goto_0

    .line 269
    :goto_4
    iput v7, p1, Landroid/graphics/RectF;->left:F

    .line 270
    iget v8, v3, Landroid/graphics/Rect;->top:I

    int-to-float v9, v8

    iput v9, p1, Landroid/graphics/RectF;->top:F

    if-eq p3, v6, :cond_b

    and-int/lit8 v6, p3, 0x7

    if-ne v6, v5, :cond_6

    goto :goto_8

    :cond_6
    and-int p2, p3, v4

    if-eq p2, v4, :cond_9

    and-int/lit8 p2, p3, 0x5

    if-ne p2, v2, :cond_7

    goto :goto_7

    :cond_7
    if-eqz v0, :cond_8

    .line 295
    iget p2, v3, Landroid/graphics/Rect;->right:I

    :goto_5
    int-to-float p2, p2

    goto :goto_9

    :cond_8
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j0:F

    :goto_6
    add-float/2addr p2, v7

    goto :goto_9

    :cond_9
    :goto_7
    if-eqz v0, :cond_a

    .line 293
    iget p2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j0:F

    goto :goto_6

    :cond_a
    iget p2, v3, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_b
    :goto_8
    int-to-float p2, p2

    div-float/2addr p2, v1

    .line 290
    iget p3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j0:F

    div-float/2addr p3, v1

    add-float/2addr p2, p3

    .line 271
    :goto_9
    iput p2, p1, Landroid/graphics/RectF;->right:F

    int-to-float p2, v8

    .line 272
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result p3

    add-float/2addr p3, p2

    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->p:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCollapsedTextGravity()I
    .locals 1

    .line 378
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->l:I

    return v0
.end method

.method public getCollapsedTextHeight()F
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->U:Landroid/text/TextPaint;

    .line 344
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 345
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->x:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 347
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->f0:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 314
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public getCollapsedTextSize()F
    .locals 1

    .line 576
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    return v0
.end method

.method public getCollapsedTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->x:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getCurrentCollapsedTextColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->p:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public getExpandedLineCount()I
    .locals 1

    .line 1183
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->q:I

    return v0
.end method

.method public getExpandedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->o:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getExpandedTextFullHeight()F
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->U:Landroid/text/TextPaint;

    .line 336
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 337
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->A:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 339
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->g0:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 308
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    add-float/2addr v0, v1

    return v0
.end method

.method public getExpandedTextGravity()I
    .locals 1

    .line 367
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->k:I

    return v0
.end method

.method public getExpandedTextHeight()F
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->U:Landroid/text/TextPaint;

    .line 336
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 337
    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->A:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 339
    iget v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->g0:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 302
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public getExpandedTextSize()F
    .locals 1

    .line 580
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    return v0
.end method

.method public getExpandedTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->A:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getExpansionFraction()F
    .locals 1

    .line 572
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->c:F

    return v0
.end method

.method public getFadeModeThresholdFraction()F
    .locals 1

    .line 568
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->f:F

    return v0
.end method

.method public getHyphenationFrequency()I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1213
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->q0:I

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i0:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLineSpacingAdd()F
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1193
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i0:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v0

    return v0
.end method

.method public getLineSpacingMultiplier()F
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1203
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i0:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v0

    return v0
.end method

.method public getMaxLines()I
    .locals 1

    .line 1165
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n0:I

    return v0
.end method

.method public getPositionInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->V:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1146
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final h(Landroid/graphics/Typeface;)Z
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->E:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->C:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_2

    .line 497
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->C:Landroid/graphics/Typeface;

    .line 498
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Landroid/view/View;

    .line 500
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 499
    invoke-static {v0, p1}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->B:Landroid/graphics/Typeface;

    if-nez p1, :cond_1

    .line 502
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->C:Landroid/graphics/Typeface;

    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->A:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final i(F)V
    .locals 1

    const/4 v0, 0x0

    .line 968
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->c(FZ)V

    .line 964
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public isRtlTextDirectionHeuristicsEnabled()Z
    .locals 1

    .line 588
    iget-boolean v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->J:Z

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->o:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 564
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public maybeUpdateFontWeightAdjustment(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 517
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_4

    .line 518
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->z:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 520
    invoke-static {p1, v0}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->y:Landroid/graphics/Typeface;

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->C:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 525
    invoke-static {p1, v0}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->B:Landroid/graphics/Typeface;

    .line 528
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->y:Landroid/graphics/Typeface;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->z:Landroid/graphics/Typeface;

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->x:Landroid/graphics/Typeface;

    .line 530
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->B:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->C:Landroid/graphics/Typeface;

    :goto_1
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->A:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    .line 531
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    :cond_4
    return-void
.end method

.method public recalculate()V
    .locals 1

    const/4 v0, 0x0

    .line 1118
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    return-void
.end method

.method public recalculate(Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1122
    iget-object v2, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    if-eqz v1, :cond_19

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 710
    invoke-virtual {v0, v3, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->c(FZ)V

    .line 711
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->H:Ljava/lang/CharSequence;

    iget-object v5, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->T:Landroid/text/TextPaint;

    if-eqz v4, :cond_2

    iget-object v6, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->i0:Landroid/text/StaticLayout;

    if-eqz v6, :cond_2

    .line 713
    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v5, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->m0:Ljava/lang/CharSequence;

    .line 715
    :cond_2
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->m0:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 800
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v5, v4, v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    .line 716
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->j0:F

    goto :goto_0

    .line 718
    :cond_3
    iput v6, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->j0:F

    .line 720
    :goto_0
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->l:I

    .line 723
    iget-boolean v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->I:Z

    .line 721
    invoke-static {v4, v8}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v8, v4, 0x70

    .line 725
    iget-object v9, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->i:Landroid/graphics/Rect;

    const/16 v10, 0x50

    const/16 v11, 0x30

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v8, v11, :cond_5

    if-eq v8, v10, :cond_4

    .line 734
    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    sub-float/2addr v8, v13

    div-float/2addr v8, v12

    .line 735
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v8

    iput v13, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:F

    goto :goto_1

    .line 727
    :cond_4
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v13

    add-float/2addr v13, v8

    iput v13, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:F

    goto :goto_1

    .line 730
    :cond_5
    iget v8, v9, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iput v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:F

    :goto_1
    const v8, 0x800007

    and-int/2addr v4, v8

    const/4 v13, 0x5

    const/4 v14, 0x1

    if-eq v4, v14, :cond_7

    if-eq v4, v13, :cond_6

    .line 748
    iget v4, v9, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->u:F

    goto :goto_2

    .line 744
    :cond_6
    iget v4, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v15, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->j0:F

    sub-float/2addr v4, v15

    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->u:F

    goto :goto_2

    .line 741
    :cond_7
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget v15, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->j0:F

    div-float/2addr v15, v12

    sub-float/2addr v4, v15

    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->u:F

    .line 752
    :goto_2
    invoke-virtual {v0, v6, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->c(FZ)V

    .line 753
    iget-object v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->i0:Landroid/text/StaticLayout;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 755
    :goto_3
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->i0:Landroid/text/StaticLayout;

    if-eqz v4, :cond_9

    iget v15, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->n0:I

    if-le v15, v14, :cond_9

    .line 756
    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    goto :goto_4

    .line 757
    :cond_9
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->H:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    .line 800
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-virtual {v5, v4, v7, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    .line 760
    :goto_4
    iget-object v15, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->i0:Landroid/text/StaticLayout;

    if-eqz v15, :cond_b

    invoke-virtual {v15}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v15

    goto :goto_5

    :cond_b
    const/4 v15, 0x0

    :goto_5
    iput v15, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->q:I

    .line 762
    iget v15, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->k:I

    const v16, 0x800007

    .line 765
    iget-boolean v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->I:Z

    .line 763
    invoke-static {v15, v8}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v8

    and-int/lit8 v15, v8, 0x70

    const/high16 v17, 0x40000000    # 2.0f

    .line 766
    iget-object v12, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->h:Landroid/graphics/Rect;

    if-eq v15, v11, :cond_d

    if-eq v15, v10, :cond_c

    div-float v1, v1, v17

    .line 776
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v1

    iput v10, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->r:F

    goto :goto_6

    .line 768
    :cond_c
    iget v10, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, v1

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v1, v10

    iput v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->r:F

    goto :goto_6

    .line 771
    :cond_d
    iget v1, v12, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->r:F

    :goto_6
    and-int v1, v8, v16

    if-eq v1, v14, :cond_f

    if-eq v1, v13, :cond_e

    .line 789
    iget v1, v12, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->t:F

    goto :goto_7

    .line 785
    :cond_e
    iget v1, v12, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->t:F

    goto :goto_7

    .line 782
    :cond_f
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v4, v17

    sub-float/2addr v1, v4

    iput v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->t:F

    .line 1150
    :goto_7
    iget-object v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->K:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_10

    .line 1151
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    .line 1152
    iput-object v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->K:Landroid/graphics/Bitmap;

    .line 796
    :cond_10
    iget v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->c:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->i(F)V

    .line 592
    iget v1, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->c:F

    .line 804
    iget-boolean v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Z

    iget-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->j:Landroid/graphics/RectF;

    if-eqz v4, :cond_12

    .line 805
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->f:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_11

    move-object v9, v12

    :cond_11
    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_8

    .line 807
    :cond_12
    iget v4, v12, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v10, v9, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget-object v11, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->V:Landroid/animation/TimeInterpolator;

    .line 808
    invoke-static {v4, v10, v1, v11}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iput v4, v8, Landroid/graphics/RectF;->left:F

    .line 809
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->r:F

    iget v10, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:F

    iget-object v11, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->V:Landroid/animation/TimeInterpolator;

    invoke-static {v4, v10, v1, v11}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iput v4, v8, Landroid/graphics/RectF;->top:F

    .line 810
    iget v4, v12, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v10, v9, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget-object v11, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->V:Landroid/animation/TimeInterpolator;

    .line 811
    invoke-static {v4, v10, v1, v11}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iput v4, v8, Landroid/graphics/RectF;->right:F

    .line 812
    iget v4, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iget-object v10, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->V:Landroid/animation/TimeInterpolator;

    .line 813
    invoke-static {v4, v9, v1, v10}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iput v4, v8, Landroid/graphics/RectF;->bottom:F

    .line 598
    :goto_8
    iget-boolean v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Z

    if-eqz v4, :cond_14

    .line 599
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->f:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_13

    .line 601
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->t:F

    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->v:F

    .line 602
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->r:F

    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->w:F

    .line 604
    invoke-virtual {v0, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->i(F)V

    const/4 v4, 0x0

    goto :goto_9

    .line 607
    :cond_13
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->u:F

    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->v:F

    .line 608
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:F

    iget v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->g:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v4, v7

    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->w:F

    .line 610
    invoke-virtual {v0, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->i(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_9

    .line 614
    :cond_14
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->t:F

    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->u:F

    iget-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->V:Landroid/animation/TimeInterpolator;

    invoke-static {v4, v7, v1, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->v:F

    .line 615
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->r:F

    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:F

    iget-object v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->V:Landroid/animation/TimeInterpolator;

    invoke-static {v4, v7, v1, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->w:F

    .line 617
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->i(F)V

    move v4, v1

    :goto_9
    sub-float v7, v3, v1

    .line 620
    sget-object v8, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 621
    invoke-static {v6, v3, v7, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v7

    sub-float v7, v3, v7

    .line 818
    iput v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->k0:F

    .line 819
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 622
    invoke-static {v3, v6, v1, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v7

    .line 823
    iput v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->l0:F

    .line 824
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 624
    iget-object v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->p:Landroid/content/res/ColorStateList;

    iget-object v9, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->o:Landroid/content/res/ColorStateList;

    if-eq v7, v9, :cond_15

    .line 689
    invoke-virtual {v0, v9}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    move-result v7

    .line 629
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v9

    .line 628
    invoke-static {v7, v9, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->a(IIF)I

    move-result v4

    .line 627
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a

    .line 631
    :cond_15
    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 635
    :goto_a
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->f0:F

    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->g0:F

    cmpl-float v9, v4, v7

    if-eqz v9, :cond_16

    .line 637
    invoke-static {v7, v4, v1, v8}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v4

    .line 636
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_b

    .line 643
    :cond_16
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 648
    :goto_b
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->b0:F

    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->X:F

    .line 1261
    invoke-static {v4, v7, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v4

    .line 648
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->N:F

    .line 649
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->c0:F

    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->Y:F

    .line 1261
    invoke-static {v4, v7, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v4

    .line 649
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->O:F

    .line 650
    iget v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->d0:F

    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->Z:F

    .line 1261
    invoke-static {v4, v7, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v4

    .line 650
    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->P:F

    .line 651
    iget-object v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->e0:Landroid/content/res/ColorStateList;

    .line 653
    invoke-virtual {v0, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    move-result v4

    iget-object v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->a0:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    move-result v7

    .line 652
    invoke-static {v4, v7, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->a(IIF)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->Q:I

    .line 654
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->N:F

    iget v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->O:F

    iget v9, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->P:F

    invoke-virtual {v5, v7, v8, v9, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 657
    iget-boolean v4, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Z

    if-eqz v4, :cond_18

    .line 658
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    .line 670
    iget v7, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->f:F

    cmpg-float v8, v1, v7

    if-gtz v8, :cond_17

    .line 671
    iget v8, v0, Lcom/google/android/material/internal/CollapsingTextHelper;->e:F

    invoke-static {v3, v6, v8, v7, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v1

    goto :goto_c

    .line 678
    :cond_17
    invoke-static {v6, v3, v7, v3, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v1

    :goto_c
    int-to-float v3, v4

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 663
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 666
    :cond_18
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method public setCollapsedBounds(IIII)V
    .locals 2

    .line 1265
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v1, p4, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 258
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->S:Z

    .line 259
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->f()V

    return-void
.end method

.method public setCollapsedBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 264
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    return-void
.end method

.method public setCollapsedTextAppearance(I)V
    .locals 4

    .line 382
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 384
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->p:Landroid/content/res/ColorStateList;

    .line 387
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_1

    .line 388
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    .line 390
    :cond_1
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 391
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->a0:Landroid/content/res/ColorStateList;

    .line 393
    :cond_2
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->Y:F

    .line 394
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->Z:F

    .line 395
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->X:F

    .line 396
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->letterSpacing:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->f0:F

    .line 399
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->F:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz p1, :cond_3

    .line 400
    invoke-virtual {p1}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    .line 402
    :cond_3
    new-instance p1, Lcom/google/android/material/resources/CancelableFontCallback;

    new-instance v2, Lcom/google/android/material/internal/CollapsingTextHelper$a;

    invoke-direct {v2, p0}, Lcom/google/android/material/internal/CollapsingTextHelper$a;-><init>(Lcom/google/android/material/internal/CollapsingTextHelper;)V

    .line 410
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getFallbackFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/google/android/material/resources/CancelableFontCallback;-><init>(Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->F:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 411
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->F:Lcom/google/android/material/resources/CancelableFontCallback;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 413
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method public setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->p:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 224
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->p:Landroid/content/res/ColorStateList;

    .line 225
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedTextGravity(I)V
    .locals 1

    .line 371
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->l:I

    if-eq v0, p1, :cond_0

    .line 372
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->l:I

    .line 373
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedTextSize(F)V
    .locals 1

    .line 216
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 217
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n:F

    .line 218
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCollapsedTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 451
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->g(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setCurrentOffsetY(I)V
    .locals 0

    .line 318
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->g:I

    return-void
.end method

.method public setExpandedBounds(IIII)V
    .locals 2

    .line 1265
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->h:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v1, p4, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->S:Z

    .line 247
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->f()V

    return-void
.end method

.method public setExpandedBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 252
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpandedBounds(IIII)V

    return-void
.end method

.method public setExpandedLetterSpacing(F)V
    .locals 1

    .line 237
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->g0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 238
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->g0:F

    .line 239
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTextAppearance(I)V
    .locals 4

    .line 417
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 418
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->o:Landroid/content/res/ColorStateList;

    .line 421
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_1

    .line 422
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    .line 424
    :cond_1
    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 425
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->e0:Landroid/content/res/ColorStateList;

    .line 427
    :cond_2
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->c0:F

    .line 428
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->d0:F

    .line 429
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->b0:F

    .line 430
    iget p1, v0, Lcom/google/android/material/resources/TextAppearance;->letterSpacing:F

    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->g0:F

    .line 433
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->E:Lcom/google/android/material/resources/CancelableFontCallback;

    if-eqz p1, :cond_3

    .line 434
    invoke-virtual {p1}, Lcom/google/android/material/resources/CancelableFontCallback;->cancel()V

    .line 436
    :cond_3
    new-instance p1, Lcom/google/android/material/resources/CancelableFontCallback;

    new-instance v2, Lcom/google/android/material/internal/CollapsingTextHelper$b;

    invoke-direct {v2, p0}, Lcom/google/android/material/internal/CollapsingTextHelper$b;-><init>(Lcom/google/android/material/internal/CollapsingTextHelper;)V

    .line 444
    invoke-virtual {v0}, Lcom/google/android/material/resources/TextAppearance;->getFallbackFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/google/android/material/resources/CancelableFontCallback;-><init>(Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->E:Lcom/google/android/material/resources/CancelableFontCallback;

    .line 445
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->E:Lcom/google/android/material/resources/CancelableFontCallback;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    .line 447
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method public setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->o:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 231
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->o:Landroid/content/res/ColorStateList;

    .line 232
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTextGravity(I)V
    .locals 1

    .line 360
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->k:I

    if-eq v0, p1, :cond_0

    .line 361
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->k:I

    .line 362
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTextSize(F)V
    .locals 1

    .line 209
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 210
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->m:F

    .line 211
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpandedTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 457
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->h(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_0
    return-void
.end method

.method public setExpansionFraction(F)V
    .locals 8

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 543
    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 545
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->c:F

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_8

    .line 546
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->c:F

    .line 804
    iget-boolean v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Z

    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->j:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->i:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->h:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 805
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->f:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    move-object v4, v5

    :cond_0
    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 807
    :cond_1
    iget v2, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v6, v4, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->V:Landroid/animation/TimeInterpolator;

    .line 808
    invoke-static {v2, v6, p1, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iput v2, v3, Landroid/graphics/RectF;->left:F

    .line 809
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->r:F

    iget v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:F

    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->V:Landroid/animation/TimeInterpolator;

    invoke-static {v2, v6, p1, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iput v2, v3, Landroid/graphics/RectF;->top:F

    .line 810
    iget v2, v5, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v6, v4, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->V:Landroid/animation/TimeInterpolator;

    .line 811
    invoke-static {v2, v6, p1, v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iput v2, v3, Landroid/graphics/RectF;->right:F

    .line 812
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->V:Landroid/animation/TimeInterpolator;

    .line 813
    invoke-static {v2, v4, p1, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 598
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Z

    if-eqz v2, :cond_3

    .line 599
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->f:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    .line 601
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->t:F

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->v:F

    .line 602
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->r:F

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->w:F

    .line 604
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->i(F)V

    const/4 v2, 0x0

    goto :goto_1

    .line 607
    :cond_2
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->u:F

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->v:F

    .line 608
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->g:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->w:F

    .line 610
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->i(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    .line 614
    :cond_3
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->t:F

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->u:F

    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->V:Landroid/animation/TimeInterpolator;

    invoke-static {v2, v3, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->v:F

    .line 615
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->r:F

    iget v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->s:F

    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->V:Landroid/animation/TimeInterpolator;

    invoke-static {v2, v3, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->w:F

    .line 617
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->i(F)V

    move v2, p1

    :goto_1
    sub-float v3, v1, p1

    .line 620
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 621
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    sub-float v3, v1, v3

    .line 818
    iput v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->k0:F

    .line 819
    iget-object v3, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->a:Landroid/view/View;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 622
    invoke-static {v1, v0, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v5

    .line 823
    iput v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->l0:F

    .line 824
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 624
    iget-object v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->p:Landroid/content/res/ColorStateList;

    iget-object v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->o:Landroid/content/res/ColorStateList;

    iget-object v7, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->T:Landroid/text/TextPaint;

    if-eq v5, v6, :cond_4

    .line 689
    invoke-virtual {p0, v6}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 629
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v6

    .line 628
    invoke-static {v5, v6, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->a(IIF)I

    move-result v2

    .line 627
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 631
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCurrentCollapsedTextColor()I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 635
    :goto_2
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->f0:F

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->g0:F

    cmpl-float v6, v2, v5

    if-eqz v6, :cond_5

    .line 637
    invoke-static {v5, v2, p1, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->e(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    .line 636
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_3

    .line 643
    :cond_5
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 648
    :goto_3
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->b0:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->X:F

    .line 1261
    invoke-static {v2, v4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    .line 648
    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->N:F

    .line 649
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->c0:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->Y:F

    .line 1261
    invoke-static {v2, v4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    .line 649
    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->O:F

    .line 650
    iget v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->d0:F

    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->Z:F

    .line 1261
    invoke-static {v2, v4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    .line 650
    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->P:F

    .line 651
    iget-object v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->e0:Landroid/content/res/ColorStateList;

    .line 653
    invoke-virtual {p0, v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    move-result v2

    iget-object v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->a0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v4}, Lcom/google/android/material/internal/CollapsingTextHelper;->d(Landroid/content/res/ColorStateList;)I

    move-result v4

    .line 652
    invoke-static {v2, v4, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->a(IIF)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->Q:I

    .line 654
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->N:F

    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->O:F

    iget v6, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->P:F

    invoke-virtual {v7, v4, v5, v6, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 657
    iget-boolean v2, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Z

    if-eqz v2, :cond_7

    .line 658
    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 670
    iget v4, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->f:F

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_6

    .line 671
    iget v5, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->e:F

    invoke-static {v1, v0, v5, v4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    goto :goto_4

    .line 678
    :cond_6
    invoke-static {v0, v1, v4, v1, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result p1

    :goto_4
    int-to-float v0, v2

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 663
    invoke-virtual {v7, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 666
    :cond_7
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_8
    return-void
.end method

.method public setFadeModeEnabled(Z)V
    .locals 0

    .line 332
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->d:Z

    return-void
.end method

.method public setFadeModeStartFraction(F)V
    .locals 2

    .line 322
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->e:F

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 327
    invoke-static {v0, p1, v1, p1}, L_COROUTINE/a;->a(FFFF)F

    move-result p1

    .line 323
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->f:F

    return-void
.end method

.method public setHyphenationFrequency(I)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1208
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->q0:I

    return-void
.end method

.method public setLineSpacingAdd(F)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1188
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->o0:F

    return-void
.end method

.method public setLineSpacingMultiplier(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1198
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->p0:F

    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .line 1157
    iget v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n0:I

    if-eq p1, v0, :cond_1

    .line 1158
    iput p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->n0:I

    .line 1150
    iget-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->K:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 1151
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    .line 1152
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->K:Landroid/graphics/Bitmap;

    .line 1160
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_1
    return-void
.end method

.method public setPositionInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->V:Landroid/animation/TimeInterpolator;

    .line 200
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method public setRtlTextDirectionHeuristicsEnabled(Z)V
    .locals 0

    .line 584
    iput-boolean p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->J:Z

    return-void
.end method

.method public final setState([I)Z
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->R:[I

    .line 554
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1137
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->G:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 1138
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->H:Ljava/lang/CharSequence;

    .line 1150
    iget-object v0, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->K:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1151
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1152
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->K:Landroid/graphics/Bitmap;

    .line 1140
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method public setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/google/android/material/internal/CollapsingTextHelper;->W:Landroid/animation/TimeInterpolator;

    .line 195
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    return-void
.end method

.method public setTypefaces(Landroid/graphics/Typeface;)V
    .locals 1

    .line 463
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->g(Landroid/graphics/Typeface;)Z

    move-result v0

    .line 464
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->h(Landroid/graphics/Typeface;)Z

    move-result p1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 466
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    return-void
.end method
