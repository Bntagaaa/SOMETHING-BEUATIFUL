.class Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;
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
    name = "c"
.end annotation


# instance fields
.field public final a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 232
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$b;-><init>()V

    .line 233
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    return-void
.end method


# virtual methods
.method public final a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .line 237
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 264
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    return-object p1
.end method

.method public final b(Z)V
    .locals 1

    .line 237
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->b(Z)V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 237
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v0

    .line 303
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    if-nez v0, :cond_0

    .line 491
    iput-boolean p1, v1, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->c:Z

    return-void

    .line 306
    :cond_0
    invoke-virtual {v1, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->c(Z)V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 237
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->d()V

    return-void
.end method

.method public final e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    .line 237
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 279
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    .line 312
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$c;->a:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;

    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$a;->isEnabled()Z

    move-result v0

    return v0
.end method
