.class Landroidx/emoji2/text/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/m$c;,
        Landroidx/emoji2/text/m$b;,
        Landroidx/emoji2/text/m$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Landroid/text/Spannable;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Landroidx/emoji2/text/m;->a:Z

    .line 49
    iput-object p1, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Landroidx/emoji2/text/m;->a:Z

    .line 57
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 61
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    .line 62
    iget-boolean v1, p0, Landroidx/emoji2/text/m;->a:Z

    if-nez v1, :cond_1

    .line 161
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    .line 162
    new-instance v1, Landroidx/emoji2/text/m$b;

    invoke-direct {v1}, Landroidx/emoji2/text/m$b;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/emoji2/text/m$c;

    invoke-direct {v1}, Landroidx/emoji2/text/m$c;-><init>()V

    .line 62
    :goto_0
    invoke-virtual {v1, v0}, Landroidx/emoji2/text/m$b;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    :cond_1
    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Landroidx/emoji2/text/m;->a:Z

    return-void
.end method

.method public charAt(I)C
    .locals 1

    .line 116
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1
.end method

.method public chars()Ljava/util/stream/IntStream;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 135
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    .line 156
    invoke-static {v0}, Landroidx/core/os/f;->B(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public codePoints()Ljava/util/stream/IntStream;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 142
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    .line 152
    invoke-static {v0}, Landroidx/core/os/f;->r(Ljava/lang/CharSequence;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 1

    .line 91
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .locals 1

    .line 111
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1

    .line 106
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 1

    .line 80
    invoke-virtual {p0}, Landroidx/emoji2/text/m;->a()V

    .line 81
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Landroidx/emoji2/text/m;->a()V

    .line 75
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 122
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 128
    iget-object v0, p0, Landroidx/emoji2/text/m;->b:Landroid/text/Spannable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
