.class Landroidx/appcompat/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/r$a;,
        Landroidx/appcompat/widget/r$b;,
        Landroidx/appcompat/widget/r$c;,
        Landroidx/appcompat/widget/r$e;,
        Landroidx/appcompat/widget/r$d;,
        Landroidx/appcompat/widget/r$f;
    }
.end annotation


# static fields
.field public static final l:Landroid/graphics/RectF;

.field public static final m:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public a:I

.field public b:Z

.field public c:F

.field public d:F

.field public e:F

.field public f:[I

.field public g:Z

.field public h:Landroid/text/TextPaint;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/content/Context;

.field public final k:Landroidx/appcompat/widget/r$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/r;->l:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/r;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Landroidx/appcompat/widget/r;->a:I

    .line 91
    iput-boolean v0, p0, Landroidx/appcompat/widget/r;->b:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 93
    iput v1, p0, Landroidx/appcompat/widget/r;->c:F

    .line 95
    iput v1, p0, Landroidx/appcompat/widget/r;->d:F

    .line 97
    iput v1, p0, Landroidx/appcompat/widget/r;->e:F

    .line 100
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/appcompat/widget/r;->f:[I

    .line 104
    iput-boolean v0, p0, Landroidx/appcompat/widget/r;->g:Z

    .line 155
    iput-object p1, p0, Landroidx/appcompat/widget/r;->i:Landroid/widget/TextView;

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/r;->j:Landroid/content/Context;

    .line 157
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    .line 158
    new-instance p1, Landroidx/appcompat/widget/r$e;

    invoke-direct {p1}, Landroidx/appcompat/widget/r$e;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/r;->k:Landroidx/appcompat/widget/r$f;

    return-void

    :cond_0
    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    .line 160
    new-instance p1, Landroidx/appcompat/widget/r$d;

    invoke-direct {p1}, Landroidx/appcompat/widget/r$d;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/r;->k:Landroidx/appcompat/widget/r$f;

    return-void

    .line 162
    :cond_1
    new-instance p1, Landroidx/appcompat/widget/r$f;

    invoke-direct {p1}, Landroidx/appcompat/widget/r$f;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/r;->k:Landroidx/appcompat/widget/r$f;

    return-void
.end method

.method public static b([I)[I
    .locals 6

    .line 512
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 516
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    .line 518
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 520
    aget v4, p0, v3

    if-lez v4, :cond_1

    .line 523
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    .line 524
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 528
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    :goto_1
    return-object p0

    .line 531
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 532
    new-array v0, p0, [I

    :goto_2
    if-ge v2, p0, :cond_4

    .line 534
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    .line 846
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/r;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 848
    const-class v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 850
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 852
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-object v1

    .line 858
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to retrieve TextView#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "() method"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ACTVAutoSizeHelper"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 813
    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/widget/r;->d(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 814
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 822
    throw p0

    .line 817
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to invoke TextView#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() method"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTVAutoSizeHelper"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 605
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 609
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/r;->b:Z

    if-eqz v0, :cond_6

    .line 610
    iget-object v0, p0, Landroidx/appcompat/widget/r;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/widget/r;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_3

    .line 614
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/r;->k:Landroidx/appcompat/widget/r$f;

    iget-object v1, p0, Landroidx/appcompat/widget/r;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/r$f;->b(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x100000

    goto :goto_0

    .line 618
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/r;->i:Landroid/widget/TextView;

    .line 617
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/r;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/r;->i:Landroid/widget/TextView;

    .line 618
    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 619
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/r;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/appcompat/widget/r;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/appcompat/widget/r;->i:Landroid/widget/TextView;

    .line 620
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v0, :cond_5

    if-gtz v1, :cond_3

    goto :goto_3

    .line 626
    :cond_3
    sget-object v2, Landroidx/appcompat/widget/r;->l:Landroid/graphics/RectF;

    monitor-enter v2

    .line 627
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    int-to-float v0, v0

    .line 628
    iput v0, v2, Landroid/graphics/RectF;->right:F

    int-to-float v0, v1

    .line 629
    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 630
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/r;->c(Landroid/graphics/RectF;)I

    move-result v0

    int-to-float v0, v0

    .line 631
    iget-object v1, p0, Landroidx/appcompat/widget/r;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 632
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/r;->g(IF)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 634
    :cond_4
    :goto_1
    monitor-exit v2

    goto :goto_4

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_3
    return-void

    :cond_6
    :goto_4
    const/4 v0, 0x1

    .line 638
    iput-boolean v0, p0, Landroidx/appcompat/widget/r;->b:Z

    return-void
.end method

.method public final c(Landroid/graphics/RectF;)I
    .locals 13

    .line 699
    iget-object v0, p0, Landroidx/appcompat/widget/r;->f:[I

    array-length v0, v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-gt v2, v0, :cond_6

    add-int v3, v2, v0

    .line 709
    div-int/lit8 v3, v3, 0x2

    .line 710
    iget-object v4, p0, Landroidx/appcompat/widget/r;->f:[I

    aget v4, v4, v3

    .line 753
    iget-object v9, p0, Landroidx/appcompat/widget/r;->i:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 754
    invoke-virtual {v9}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 756
    invoke-interface {v6, v5, v9}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v5, v6

    .line 762
    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v9}, Landroidx/appcompat/widget/r$a;->b(Landroid/widget/TextView;)I

    move-result v8

    .line 724
    iget-object v7, p0, Landroidx/appcompat/widget/r;->h:Landroid/text/TextPaint;

    if-nez v7, :cond_1

    .line 725
    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    iput-object v7, p0, Landroidx/appcompat/widget/r;->h:Landroid/text/TextPaint;

    goto :goto_1

    .line 727
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Paint;->reset()V

    .line 729
    :goto_1
    iget-object v7, p0, Landroidx/appcompat/widget/r;->h:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 730
    iget-object v7, p0, Landroidx/appcompat/widget/r;->h:Landroid/text/TextPaint;

    int-to-float v4, v4

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 766
    const-string v4, "getLayoutAlignment"

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-static {v9, v4, v7}, Landroidx/appcompat/widget/r;->e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/Layout$Alignment;

    .line 768
    iget v7, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/16 v10, 0x17

    if-lt v6, v10, :cond_2

    .line 742
    iget-object v10, p0, Landroidx/appcompat/widget/r;->h:Landroid/text/TextPaint;

    iget-object v11, p0, Landroidx/appcompat/widget/r;->k:Landroidx/appcompat/widget/r$f;

    move-object v6, v4

    invoke-static/range {v5 .. v11}, Landroidx/appcompat/widget/r$c;->a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;IILandroid/widget/TextView;Landroid/text/TextPaint;Landroidx/appcompat/widget/r$f;)Landroid/text/StaticLayout;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v6, v4

    .line 745
    iget-object v4, p0, Landroidx/appcompat/widget/r;->h:Landroid/text/TextPaint;

    invoke-static {v5, v6, v7, v9, v4}, Landroidx/appcompat/widget/r$a;->a(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;ILandroid/widget/TextView;Landroid/text/TextPaint;)Landroid/text/StaticLayout;

    move-result-object v4

    :goto_2
    const/4 v6, -0x1

    if-eq v8, v6, :cond_3

    .line 771
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-gt v6, v8, :cond_4

    .line 772
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v6, v5, :cond_3

    goto :goto_3

    .line 777
    :cond_3
    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v12, v3

    move v3, v2

    move v2, v12

    goto/16 :goto_0

    .line 719
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/widget/r;->f:[I

    aget p1, p1, v3

    return p1

    .line 701
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No available text sizes to choose from."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()Z
    .locals 1

    .line 890
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/r;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g(IF)V
    .locals 3

    .line 653
    iget-object v0, p0, Landroidx/appcompat/widget/r;->j:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 654
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    .line 655
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 657
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 661
    iget-object p2, p0, Landroidx/appcompat/widget/r;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    .line 662
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 666
    invoke-static {p2}, Landroidx/appcompat/widget/r$b;->a(Landroid/view/View;)Z

    move-result p1

    .line 669
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 671
    iput-boolean v0, p0, Landroidx/appcompat/widget/r;->b:Z

    .line 675
    :try_start_0
    const-string v1, "nullLayouts"

    invoke-static {v1}, Landroidx/appcompat/widget/r;->d(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 677
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 680
    const-string v1, "ACTVAutoSizeHelper"

    const-string v2, "Failed to invoke TextView#nullLayouts() method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 684
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    .line 686
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->forceLayout()V

    .line 689
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public final h()Z
    .locals 7

    .line 575
    invoke-virtual {p0}, Landroidx/appcompat/widget/r;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/appcompat/widget/r;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 579
    iget-boolean v0, p0, Landroidx/appcompat/widget/r;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/r;->f:[I

    array-length v0, v0

    if-nez v0, :cond_2

    .line 581
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/r;->e:F

    iget v3, p0, Landroidx/appcompat/widget/r;->d:F

    sub-float/2addr v0, v3

    iget v3, p0, Landroidx/appcompat/widget/r;->c:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    add-int/2addr v0, v2

    .line 583
    new-array v3, v0, [I

    :goto_0
    if-ge v1, v0, :cond_1

    .line 585
    iget v4, p0, Landroidx/appcompat/widget/r;->d:F

    int-to-float v5, v1

    iget v6, p0, Landroidx/appcompat/widget/r;->c:F

    mul-float v5, v5, v6

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    :cond_1
    invoke-static {v3}, Landroidx/appcompat/widget/r;->b([I)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/r;->f:[I

    .line 590
    :cond_2
    iput-boolean v2, p0, Landroidx/appcompat/widget/r;->b:Z

    goto :goto_1

    .line 592
    :cond_3
    iput-boolean v1, p0, Landroidx/appcompat/widget/r;->b:Z

    .line 595
    :goto_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/r;->b:Z

    return v0
.end method

.method public final i()Z
    .locals 5

    .line 499
    iget-object v0, p0, Landroidx/appcompat/widget/r;->f:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 500
    :goto_0
    iput-boolean v4, p0, Landroidx/appcompat/widget/r;->g:Z

    if-eqz v4, :cond_1

    .line 502
    iput v3, p0, Landroidx/appcompat/widget/r;->a:I

    .line 503
    aget v2, v0, v2

    int-to-float v2, v2

    iput v2, p0, Landroidx/appcompat/widget/r;->d:F

    sub-int/2addr v1, v3

    .line 504
    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/widget/r;->e:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 505
    iput v0, p0, Landroidx/appcompat/widget/r;->c:F

    :cond_1
    return v4
.end method

.method public final j()Z
    .locals 1

    .line 899
    iget-object v0, p0, Landroidx/appcompat/widget/r;->i:Landroid/widget/TextView;

    instance-of v0, v0, Landroidx/appcompat/widget/AppCompatEditText;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final k(FFF)V
    .locals 3

    .line 550
    const-string v0, "px) is less or equal to (0px)"

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-lez v2, :cond_2

    cmpg-float v2, p2, p1

    if-lez v2, :cond_1

    cmpg-float v1, p3, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 567
    iput v0, p0, Landroidx/appcompat/widget/r;->a:I

    .line 568
    iput p1, p0, Landroidx/appcompat/widget/r;->d:F

    .line 569
    iput p2, p0, Landroidx/appcompat/widget/r;->e:F

    .line 570
    iput p3, p0, Landroidx/appcompat/widget/r;->c:F

    const/4 p1, 0x0

    .line 571
    iput-boolean p1, p0, Landroidx/appcompat/widget/r;->g:Z

    return-void

    .line 562
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "The auto-size step granularity ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 556
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Maximum auto-size text size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "px)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 551
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Minimum auto-size text size ("

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
