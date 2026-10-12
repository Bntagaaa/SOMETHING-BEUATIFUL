.class public Landroidx/core/text/PrecomputedTextCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/PrecomputedTextCompat$Params;,
        Landroidx/core/text/PrecomputedTextCompat$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/Object;

.field public static f:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final a:Landroid/text/Spannable;

.field public final b:Landroidx/core/text/PrecomputedTextCompat$Params;

.field public final c:[I

.field public final d:Landroid/text/PrecomputedText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/text/PrecomputedTextCompat;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/text/PrecomputedText;Landroidx/core/text/PrecomputedTextCompat$Params;)V
    .locals 2

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-object p1, p0, Landroidx/core/text/PrecomputedTextCompat;->a:Landroid/text/Spannable;

    .line 499
    iput-object p2, p0, Landroidx/core/text/PrecomputedTextCompat;->b:Landroidx/core/text/PrecomputedTextCompat$Params;

    const/4 p2, 0x0

    .line 500
    iput-object p2, p0, Landroidx/core/text/PrecomputedTextCompat;->c:[I

    .line 501
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Landroidx/core/text/PrecomputedTextCompat;->d:Landroid/text/PrecomputedText;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;[I)V
    .locals 1

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->a:Landroid/text/Spannable;

    .line 491
    iput-object p2, p0, Landroidx/core/text/PrecomputedTextCompat;->b:Landroidx/core/text/PrecomputedTextCompat$Params;

    .line 492
    iput-object p3, p0, Landroidx/core/text/PrecomputedTextCompat;->c:[I

    const/4 p1, 0x0

    .line 493
    iput-object p1, p0, Landroidx/core/text/PrecomputedTextCompat;->d:Landroid/text/PrecomputedText;

    return-void
.end method

.method public static create(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;)Landroidx/core/text/PrecomputedTextCompat;
    .locals 10
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/text/PrecomputedTextCompat$Params;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 431
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :try_start_0
    const-string v0, "PrecomputedText"

    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Landroidx/core/text/PrecomputedTextCompat$Params;->e:Landroid/text/PrecomputedText$Params;

    if-eqz v0, :cond_0

    .line 438
    new-instance v1, Landroidx/core/text/PrecomputedTextCompat;

    .line 439
    invoke-static {p0, v0}, Landroidx/core/app/f;->o(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Landroidx/core/text/PrecomputedTextCompat;-><init>(Landroid/text/PrecomputedText;Landroidx/core/text/PrecomputedTextCompat$Params;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-object v1

    .line 442
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    const/16 v4, 0xa

    .line 447
    invoke-static {p0, v4, v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    if-gez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 456
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 458
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 459
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 460
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 466
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_4

    .line 467
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroidx/appcompat/widget/m;->i(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 469
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getBreakStrategy()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/appcompat/widget/m;->g(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 470
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getHyphenationFrequency()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/appcompat/widget/m;->x(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 471
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/appcompat/widget/m;->h(Landroid/text/StaticLayout$Builder;Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 472
    invoke-static {v0}, Landroidx/appcompat/widget/m;->q(Landroid/text/StaticLayout$Builder;)V

    move-object v3, p0

    goto :goto_3

    .line 474
    :cond_4
    new-instance v2, Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v5, 0x7fffffff

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 481
    :goto_3
    new-instance p0, Landroidx/core/text/PrecomputedTextCompat;

    invoke-direct {p0, v3, p1, v1}, Landroidx/core/text/PrecomputedTextCompat;-><init>(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 484
    throw p0
.end method

.method public static getTextFuture(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Future;
    .locals 2
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/text/PrecomputedTextCompat$Params;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroidx/core/text/PrecomputedTextCompat$Params;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroidx/core/text/PrecomputedTextCompat;",
            ">;"
        }
    .end annotation

    .line 649
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat$a;

    .line 582
    new-instance v1, Landroidx/core/text/PrecomputedTextCompat$a$a;

    .line 569
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p1, v1, Landroidx/core/text/PrecomputedTextCompat$a$a;->a:Landroidx/core/text/PrecomputedTextCompat$Params;

    .line 571
    iput-object p0, v1, Landroidx/core/text/PrecomputedTextCompat$a$a;->b:Ljava/lang/CharSequence;

    .line 582
    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    if-nez p2, :cond_1

    .line 651
    sget-object p0, Landroidx/core/text/PrecomputedTextCompat;->e:Ljava/lang/Object;

    monitor-enter p0

    .line 652
    :try_start_0
    sget-object p1, Landroidx/core/text/PrecomputedTextCompat;->f:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 653
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    sput-object p1, Landroidx/core/text/PrecomputedTextCompat;->f:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 655
    :cond_0
    :goto_0
    sget-object p2, Landroidx/core/text/PrecomputedTextCompat;->f:Ljava/util/concurrent/ExecutorService;

    .line 656
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 658
    :cond_1
    :goto_2
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 747
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->a:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getParagraphCount()I
    .locals 2
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 529
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 530
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->d:Landroid/text/PrecomputedText;

    invoke-static {v0}, Landroidx/core/app/f;->c(Landroid/text/PrecomputedText;)I

    move-result v0

    return v0

    .line 532
    :cond_0
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->c:[I

    array-length v0, v0

    return v0
.end method

.method public getParagraphEnd(I)I
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 552
    invoke-virtual {p0}, Landroidx/core/text/PrecomputedTextCompat;->getParagraphCount()I

    move-result v0

    const-string v1, "paraIndex"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 553
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 554
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->d:Landroid/text/PrecomputedText;

    invoke-static {v0, p1}, Landroidx/core/app/f;->d(Landroid/text/PrecomputedText;I)I

    move-result p1

    return p1

    .line 556
    :cond_0
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public getParagraphStart(I)I
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .line 540
    invoke-virtual {p0}, Landroidx/core/text/PrecomputedTextCompat;->getParagraphCount()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "paraIndex"

    invoke-static {p1, v1, v0, v2}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 541
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 542
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->d:Landroid/text/PrecomputedText;

    invoke-static {v0, p1}, Landroidx/core/app/f;->C(Landroid/text/PrecomputedText;I)I

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 544
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public getParams()Landroidx/core/text/PrecomputedTextCompat$Params;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 522
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->b:Landroidx/core/text/PrecomputedTextCompat$Params;

    return-object v0
.end method

.method public getPrecomputedText()Landroid/text/PrecomputedText;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->a:Landroid/text/Spannable;

    invoke-static {v0}, Landroidx/core/app/f;->z(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    invoke-static {v0}, Landroidx/core/app/f;->p(Ljava/lang/Object;)Landroid/text/PrecomputedText;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 1

    .line 722
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->a:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 1

    .line 727
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->a:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 1

    .line 717
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->a:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 707
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 708
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->d:Landroid/text/PrecomputedText;

    invoke-static {v0, p1, p2, p3}, Landroidx/core/app/f;->A(Landroid/text/PrecomputedText;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 710
    :cond_0
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->a:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .locals 1

    .line 742
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->a:Landroid/text/Spannable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1

    .line 732
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->a:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 2

    .line 689
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_1

    .line 693
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 694
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->d:Landroid/text/PrecomputedText;

    invoke-static {v0, p1}, Landroidx/core/app/f;->u(Landroid/text/PrecomputedText;Ljava/lang/Object;)V

    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->a:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void

    .line 690
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MetricAffectingSpan can not be removed from PrecomputedText."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 2

    .line 673
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_1

    .line 677
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 678
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->d:Landroid/text/PrecomputedText;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/app/f;->v(Landroid/text/PrecomputedText;Ljava/lang/Object;III)V

    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->a:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void

    .line 674
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MetricAffectingSpan can not be set to PrecomputedText."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 752
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->a:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 758
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat;->a:Landroid/text/Spannable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
