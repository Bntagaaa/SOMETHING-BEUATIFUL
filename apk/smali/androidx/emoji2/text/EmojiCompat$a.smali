.class final Landroidx/emoji2/text/EmojiCompat$a;
.super Landroidx/emoji2/text/EmojiCompat$b;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public volatile b:Landroidx/emoji2/text/i;

.field public volatile c:Landroidx/emoji2/text/MetadataRepo;


# virtual methods
.method public getEmojiMatch(Ljava/lang/CharSequence;I)I
    .locals 1

    .line 1677
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$a;->b:Landroidx/emoji2/text/i;

    invoke-virtual {v0, p1, p2}, Landroidx/emoji2/text/i;->b(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method
