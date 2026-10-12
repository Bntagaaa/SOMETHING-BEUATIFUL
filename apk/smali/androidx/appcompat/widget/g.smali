.class Landroidx/appcompat/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/appcompat/widget/g;->a:Landroid/widget/TextView;

    .line 43
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;-><init>(Landroid/widget/TextView;Z)V

    iput-object v0, p0, Landroidx/appcompat/widget/g;->b:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 52
    iget-object v0, p0, Landroidx/appcompat/widget/g;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    :try_start_0
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_emojiCompatEnabled:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/g;->c(Z)V

    return-void

    .line 61
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    throw p2
.end method

.method public final b(Z)V
    .locals 1

    .line 109
    iget-object v0, p0, Landroidx/appcompat/widget/g;->b:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->setAllCaps(Z)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/appcompat/widget/g;->b:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->setEnabled(Z)V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/appcompat/widget/g;->b:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1
    .param p1    # Landroid/text/method/TransformationMethod;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 122
    iget-object v0, p0, Landroidx/appcompat/widget/g;->b:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p1

    return-object p1
.end method
