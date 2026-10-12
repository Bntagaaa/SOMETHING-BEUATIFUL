.class final Landroidx/emoji2/text/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/i$a;,
        Landroidx/emoji2/text/i$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/emoji2/text/MetadataRepo;

.field public final b:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

.field public final c:Z

.field public final d:[I


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/MetadataRepo;Landroidx/emoji2/text/EmojiCompat$d;Landroidx/emoji2/text/EmojiCompat$GlyphChecker;Z[I)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Landroidx/emoji2/text/i;->a:Landroidx/emoji2/text/MetadataRepo;

    .line 115
    iput-object p3, p0, Landroidx/emoji2/text/i;->b:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 116
    iput-boolean p4, p0, Landroidx/emoji2/text/i;->c:Z

    .line 117
    iput-object p5, p0, Landroidx/emoji2/text/i;->d:[I

    return-void
.end method

.method public static a(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6

    .line 485
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 379
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 380
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    if-eq v1, v2, :cond_6

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 385
    :cond_1
    const-class v2, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {p0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/emoji2/text/EmojiSpan;

    if-eqz v1, :cond_6

    .line 386
    array-length v2, v1

    if-lez v2, :cond_6

    .line 387
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 389
    aget-object v4, v1, v3

    .line 390
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 391
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-eqz p2, :cond_2

    if-eq v5, p1, :cond_4

    :cond_2
    if-nez p2, :cond_3

    if-eq v4, p1, :cond_4

    :cond_3
    if-le p1, v5, :cond_5

    if-ge p1, v4, :cond_5

    .line 395
    :cond_4
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v0
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;I)I
    .locals 11

    .line 128
    new-instance v0, Landroidx/emoji2/text/i$b;

    .line 194
    iget-object v1, p0, Landroidx/emoji2/text/i;->a:Landroidx/emoji2/text/MetadataRepo;

    iget-object v1, v1, Landroidx/emoji2/text/MetadataRepo;->c:Landroidx/emoji2/text/MetadataRepo$a;

    .line 128
    iget-boolean v2, p0, Landroidx/emoji2/text/i;->c:Z

    iget-object v3, p0, Landroidx/emoji2/text/i;->d:[I

    invoke-direct {v0, v1, v2, v3}, Landroidx/emoji2/text/i$b;-><init>(Landroidx/emoji2/text/MetadataRepo$a;Z[I)V

    .line 130
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v3, v1, :cond_5

    .line 136
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 137
    invoke-virtual {v0, v8}, Landroidx/emoji2/text/i$b;->a(I)I

    move-result v9

    .line 642
    iget-object v10, v0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/MetadataRepo$a;

    .line 255
    iget-object v10, v10, Landroidx/emoji2/text/MetadataRepo$a;->b:Landroidx/emoji2/text/EmojiMetadata;

    if-eq v9, v7, :cond_3

    if-eq v9, v6, :cond_2

    const/4 v6, 0x3

    if-eq v9, v6, :cond_1

    goto :goto_1

    .line 635
    :cond_1
    iget-object v6, v0, Landroidx/emoji2/text/i$b;->d:Landroidx/emoji2/text/MetadataRepo$a;

    .line 255
    iget-object v10, v6, Landroidx/emoji2/text/MetadataRepo$a;->b:Landroidx/emoji2/text/EmojiMetadata;

    .line 144
    invoke-virtual {v10}, Landroidx/emoji2/text/EmojiMetadata;->getCompatAdded()S

    move-result v6

    if-gt v6, p2, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 155
    :cond_2
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_1

    .line 150
    :cond_3
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, 0x0

    :cond_4
    :goto_1
    if-eqz v10, :cond_0

    .line 159
    invoke-virtual {v10}, Landroidx/emoji2/text/EmojiMetadata;->getCompatAdded()S

    move-result v6

    if-gt v6, p2, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    goto :goto_2

    .line 653
    :cond_6
    iget p1, v0, Landroidx/emoji2/text/i$b;->a:I

    if-ne p1, v6, :cond_8

    iget-object p1, v0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/MetadataRepo$a;

    .line 255
    iget-object p1, p1, Landroidx/emoji2/text/MetadataRepo$a;->b:Landroidx/emoji2/text/EmojiMetadata;

    if-eqz p1, :cond_8

    .line 653
    iget p1, v0, Landroidx/emoji2/text/i$b;->f:I

    if-gt p1, v7, :cond_7

    .line 654
    invoke-virtual {v0}, Landroidx/emoji2/text/i$b;->c()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 642
    :cond_7
    iget-object p1, v0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/MetadataRepo$a;

    .line 255
    iget-object p1, p1, Landroidx/emoji2/text/MetadataRepo$a;->b:Landroidx/emoji2/text/EmojiMetadata;

    .line 174
    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiMetadata;->getCompatAdded()S

    move-result p1

    if-gt p1, p2, :cond_8

    return v7

    :cond_8
    if-nez v5, :cond_9

    return v2

    :cond_9
    :goto_2
    return v6
.end method
