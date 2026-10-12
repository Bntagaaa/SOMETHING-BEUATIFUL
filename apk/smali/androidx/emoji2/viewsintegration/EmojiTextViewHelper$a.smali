.class Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;
.super Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$b;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroidx/emoji2/viewsintegration/b;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 322
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$b;-><init>()V

    .line 323
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->a:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 324
    iput-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->c:Z

    .line 325
    new-instance v0, Landroidx/emoji2/viewsintegration/b;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/b;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->b:Landroidx/emoji2/viewsintegration/b;

    return-void
.end method


# virtual methods
.method public final a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 6

    .line 349
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 409
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    .line 410
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 411
    aget-object v3, p1, v2

    instance-of v4, v3, Landroidx/emoji2/viewsintegration/b;

    if-eqz v4, :cond_0

    .line 412
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_2

    return-object p1

    .line 391
    :cond_2
    array-length v2, p1

    .line 392
    array-length v3, p1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v3, v4

    .line 393
    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 396
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_3

    .line 397
    aget-object v5, p1, v1

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v3

    .line 365
    :cond_5
    array-length v0, p1

    const/4 v3, 0x0

    .line 366
    :goto_2
    iget-object v4, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->b:Landroidx/emoji2/viewsintegration/b;

    if-ge v3, v0, :cond_7

    .line 367
    aget-object v5, p1, v3

    if-ne v5, v4, :cond_6

    return-object p1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 371
    :cond_7
    array-length v3, p1

    add-int/2addr v3, v2

    new-array v2, v3, [Landroid/text/InputFilter;

    .line 372
    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    aput-object v4, v2, v0

    return-object v2
.end method

.method public final b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->d()V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 472
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->c:Z

    .line 473
    invoke-virtual {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->d()V

    .line 342
    iget-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 343
    invoke-virtual {p0, v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 334
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method public final e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    .line 422
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->c:Z

    if-eqz v0, :cond_2

    .line 452
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/d;

    if-eqz v0, :cond_0

    return-object p1

    .line 454
    :cond_0
    instance-of v0, p1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_1

    return-object p1

    .line 457
    :cond_1
    new-instance v0, Landroidx/emoji2/viewsintegration/d;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/d;-><init>(Landroid/text/method/TransformationMethod;)V

    return-object v0

    .line 435
    :cond_2
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/d;

    if-eqz v0, :cond_3

    .line 436
    check-cast p1, Landroidx/emoji2/viewsintegration/d;

    .line 438
    invoke-virtual {p1}, Landroidx/emoji2/viewsintegration/d;->getOriginalTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->c:Z

    return v0
.end method
