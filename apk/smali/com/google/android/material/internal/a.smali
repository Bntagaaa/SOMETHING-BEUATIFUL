.class final Lcom/google/android/material/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/a$a;
    }
.end annotation


# static fields
.field public static final m:I

.field public static n:Z

.field public static o:Ljava/lang/reflect/Constructor;

.field public static p:Landroid/text/TextDirectionHeuristic;


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/TextPaint;

.field public final c:I

.field public d:I

.field public e:Landroid/text/Layout$Alignment;

.field public f:I

.field public g:F

.field public h:F

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/google/android/material/internal/a;->m:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/android/material/internal/a;->a:Ljava/lang/CharSequence;

    .line 90
    iput-object p2, p0, Lcom/google/android/material/internal/a;->b:Landroid/text/TextPaint;

    .line 91
    iput p3, p0, Lcom/google/android/material/internal/a;->c:I

    .line 93
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/a;->d:I

    .line 94
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object p1, p0, Lcom/google/android/material/internal/a;->e:Landroid/text/Layout$Alignment;

    const p1, 0x7fffffff

    .line 95
    iput p1, p0, Lcom/google/android/material/internal/a;->f:I

    const/4 p1, 0x0

    .line 96
    iput p1, p0, Lcom/google/android/material/internal/a;->g:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 97
    iput p1, p0, Lcom/google/android/material/internal/a;->h:F

    .line 98
    sget p1, Lcom/google/android/material/internal/a;->m:I

    iput p1, p0, Lcom/google/android/material/internal/a;->i:I

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->j:Z

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/google/android/material/internal/a;->l:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method public static obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/a;
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 114
    new-instance v0, Lcom/google/android/material/internal/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/internal/a;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/text/StaticLayout;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/material/internal/a$a;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/16 v12, 0xd

    .line 224
    iget-object v13, v1, Lcom/google/android/material/internal/a;->b:Landroid/text/TextPaint;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0xc

    iget-object v0, v1, Lcom/google/android/material/internal/a;->a:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 225
    const-string v0, ""

    iput-object v0, v1, Lcom/google/android/material/internal/a;->a:Ljava/lang/CharSequence;

    .line 229
    :cond_0
    iget v0, v1, Lcom/google/android/material/internal/a;->c:I

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v17, 0xb

    .line 230
    iget-object v2, v1, Lcom/google/android/material/internal/a;->a:Ljava/lang/CharSequence;

    const/16 v18, 0xa

    .line 231
    iget v3, v1, Lcom/google/android/material/internal/a;->f:I

    if-ne v3, v14, :cond_1

    int-to-float v3, v0

    const/16 v19, 0x9

    .line 232
    iget-object v4, v1, Lcom/google/android/material/internal/a;->l:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v13, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/16 v19, 0x9

    .line 235
    :goto_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, v1, Lcom/google/android/material/internal/a;->d:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Lcom/google/android/material/internal/a;->d:I

    .line 236
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x8

    const/16 v5, 0x17

    if-lt v4, v5, :cond_8

    .line 237
    iget-boolean v4, v1, Lcom/google/android/material/internal/a;->k:Z

    if-eqz v4, :cond_2

    iget v4, v1, Lcom/google/android/material/internal/a;->f:I

    if-ne v4, v14, :cond_2

    .line 238
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    iput-object v4, v1, Lcom/google/android/material/internal/a;->e:Landroid/text/Layout$Alignment;

    .line 243
    :cond_2
    invoke-static {v2, v3, v13, v0}, Landroidx/vectordrawable/graphics/drawable/c;->c(Ljava/lang/CharSequence;ILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 245
    iget-object v2, v1, Lcom/google/android/material/internal/a;->e:Landroid/text/Layout$Alignment;

    invoke-static {v0, v2}, Landroidx/vectordrawable/graphics/drawable/c;->k(Landroid/text/StaticLayout$Builder;Landroid/text/Layout$Alignment;)V

    .line 246
    iget-boolean v2, v1, Lcom/google/android/material/internal/a;->j:Z

    invoke-static {v0, v2}, Landroidx/vectordrawable/graphics/drawable/c;->m(Landroid/text/StaticLayout$Builder;Z)V

    .line 247
    iget-boolean v2, v1, Lcom/google/android/material/internal/a;->k:Z

    if-eqz v2, :cond_3

    .line 248
    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 249
    :cond_3
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 250
    :goto_1
    invoke-static {v0, v2}, Landroidx/appcompat/widget/m;->r(Landroid/text/StaticLayout$Builder;Landroid/text/TextDirectionHeuristic;)V

    .line 251
    iget-object v2, v1, Lcom/google/android/material/internal/a;->l:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_4

    .line 252
    invoke-static {v0, v2}, Landroidx/vectordrawable/graphics/drawable/c;->l(Landroid/text/StaticLayout$Builder;Landroid/text/TextUtils$TruncateAt;)V

    .line 254
    :cond_4
    iget v2, v1, Lcom/google/android/material/internal/a;->f:I

    invoke-static {v0, v2}, Landroidx/vectordrawable/graphics/drawable/c;->j(Landroid/text/StaticLayout$Builder;I)V

    .line 255
    iget v2, v1, Lcom/google/android/material/internal/a;->g:F

    cmpl-float v3, v2, v21

    if-nez v3, :cond_5

    iget v3, v1, Lcom/google/android/material/internal/a;->h:F

    cmpl-float v3, v3, v20

    if-eqz v3, :cond_6

    .line 257
    :cond_5
    iget v3, v1, Lcom/google/android/material/internal/a;->h:F

    invoke-static {v0, v2, v3}, Landroidx/vectordrawable/graphics/drawable/c;->i(Landroid/text/StaticLayout$Builder;FF)V

    .line 259
    :cond_6
    iget v2, v1, Lcom/google/android/material/internal/a;->f:I

    if-le v2, v14, :cond_7

    .line 260
    iget v2, v1, Lcom/google/android/material/internal/a;->i:I

    invoke-static {v0, v2}, Landroidx/vectordrawable/graphics/drawable/c;->r(Landroid/text/StaticLayout$Builder;I)V

    .line 262
    :cond_7
    invoke-static {v0}, Landroidx/vectordrawable/graphics/drawable/c;->d(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0

    .line 309
    :cond_8
    sget-boolean v3, Lcom/google/android/material/internal/a;->n:Z

    if-eqz v3, :cond_9

    goto :goto_4

    .line 315
    :cond_9
    :try_start_0
    iget-boolean v3, v1, Lcom/google/android/material/internal/a;->k:Z

    if-eqz v3, :cond_a

    if-lt v4, v5, :cond_a

    const/4 v3, 0x1

    goto :goto_2

    :cond_a
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_b

    .line 318
    sget-object v3, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_b
    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    :goto_3
    sput-object v3, Lcom/google/android/material/internal/a;->p:Landroid/text/TextDirectionHeuristic;

    .line 327
    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v3, v15

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v14

    aput-object v4, v3, v11

    const-class v5, Landroid/text/TextPaint;

    aput-object v5, v3, v10

    aput-object v4, v3, v9

    const-class v5, Landroid/text/Layout$Alignment;

    aput-object v5, v3, v8

    const-class v5, Landroid/text/TextDirectionHeuristic;

    aput-object v5, v3, v7

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v6

    aput-object v5, v3, v22

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v19

    const-class v5, Landroid/text/TextUtils$TruncateAt;

    aput-object v5, v3, v18

    aput-object v4, v3, v17

    aput-object v4, v3, v16

    .line 344
    const-class v4, Landroid/text/StaticLayout;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcom/google/android/material/internal/a;->o:Ljava/lang/reflect/Constructor;

    .line 345
    invoke-virtual {v3, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 346
    sput-boolean v14, Lcom/google/android/material/internal/a;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_4
    :try_start_1
    sget-object v3, Lcom/google/android/material/internal/a;->o:Ljava/lang/reflect/Constructor;

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    .line 271
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/google/android/material/internal/a;->d:I

    .line 272
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x7

    iget-object v6, v1, Lcom/google/android/material/internal/a;->e:Landroid/text/Layout$Alignment;

    sget-object v25, Lcom/google/android/material/internal/a;->p:Landroid/text/TextDirectionHeuristic;

    .line 276
    invoke-static/range {v25 .. v25}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .line 277
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    .line 278
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    const/16 v26, 0x6

    iget-boolean v7, v1, Lcom/google/android/material/internal/a;->j:Z

    .line 279
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v27, 0x5

    iget v8, v1, Lcom/google/android/material/internal/a;->f:I

    .line 282
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v2, v12, v15

    aput-object v4, v12, v14

    aput-object v5, v12, v11

    aput-object v13, v12, v10

    aput-object v23, v12, v9

    aput-object v6, v12, v27

    aput-object v25, v12, v26

    aput-object v20, v12, v24

    aput-object v21, v12, v22

    aput-object v7, v12, v19

    const/4 v2, 0x0

    aput-object v2, v12, v18

    aput-object v0, v12, v17

    aput-object v8, v12, v16

    .line 269
    invoke-virtual {v3, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 284
    new-instance v2, Lcom/google/android/material/internal/a$a;

    invoke-direct {v2, v0}, Lcom/google/android/material/internal/a$a;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 348
    :goto_5
    new-instance v2, Lcom/google/android/material/internal/a$a;

    invoke-direct {v2, v0}, Lcom/google/android/material/internal/a$a;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/a;
    .locals 0
    .param p1    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/google/android/material/internal/a;->e:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/a;
    .locals 0
    .param p1    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/google/android/material/internal/a;->l:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public setHyphenationFrequency(I)Lcom/google/android/material/internal/a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 204
    iput p1, p0, Lcom/google/android/material/internal/a;->i:I

    return-object p0
.end method

.method public setIncludePad(Z)Lcom/google/android/material/internal/a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 139
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->j:Z

    return-object p0
.end method

.method public setIsRtl(Z)Lcom/google/android/material/internal/a;
    .locals 0

    .line 353
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->k:Z

    return-object p0
.end method

.method public setLineSpacing(FF)Lcom/google/android/material/internal/a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 190
    iput p1, p0, Lcom/google/android/material/internal/a;->g:F

    .line 191
    iput p2, p0, Lcom/google/android/material/internal/a;->h:F

    return-object p0
.end method

.method public setMaxLines(I)Lcom/google/android/material/internal/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 176
    iput p1, p0, Lcom/google/android/material/internal/a;->f:I

    return-object p0
.end method
