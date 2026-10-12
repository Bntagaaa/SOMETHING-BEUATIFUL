.class final Landroidx/emoji2/text/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public final b:Landroidx/emoji2/text/MetadataRepo$a;

.field public c:Landroidx/emoji2/text/MetadataRepo$a;

.field public d:Landroidx/emoji2/text/MetadataRepo$a;

.field public e:I

.field public f:I

.field public final g:Z

.field public final h:[I


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/MetadataRepo$a;Z[I)V
    .locals 1

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 526
    iput v0, p0, Landroidx/emoji2/text/i$b;->a:I

    .line 566
    iput-object p1, p0, Landroidx/emoji2/text/i$b;->b:Landroidx/emoji2/text/MetadataRepo$a;

    .line 567
    iput-object p1, p0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/MetadataRepo$a;

    .line 568
    iput-boolean p2, p0, Landroidx/emoji2/text/i$b;->g:Z

    .line 569
    iput-object p3, p0, Landroidx/emoji2/text/i$b;->h:[I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    .line 575
    iget-object v0, p0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/MetadataRepo$a;

    .line 251
    iget-object v0, v0, Landroidx/emoji2/text/MetadataRepo$a;->a:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/MetadataRepo$a;

    .line 576
    :goto_0
    iget v1, p0, Landroidx/emoji2/text/i$b;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    if-nez v0, :cond_1

    .line 609
    invoke-virtual {p0}, Landroidx/emoji2/text/i$b;->b()V

    goto :goto_3

    .line 611
    :cond_1
    iput v3, p0, Landroidx/emoji2/text/i$b;->a:I

    .line 612
    iput-object v0, p0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/MetadataRepo$a;

    .line 613
    iput v2, p0, Landroidx/emoji2/text/i$b;->f:I

    :goto_1
    const/4 v2, 0x2

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    .line 579
    iput-object v0, p0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/MetadataRepo$a;

    .line 580
    iget v0, p0, Landroidx/emoji2/text/i$b;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/emoji2/text/i$b;->f:I

    goto :goto_1

    :cond_3
    const v0, 0xfe0e

    if-ne p1, v0, :cond_4

    .line 584
    invoke-virtual {p0}, Landroidx/emoji2/text/i$b;->b()V

    goto :goto_3

    :cond_4
    const v0, 0xfe0f

    if-ne p1, v0, :cond_5

    goto :goto_1

    .line 587
    :cond_5
    iget-object v0, p0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/MetadataRepo$a;

    .line 255
    iget-object v1, v0, Landroidx/emoji2/text/MetadataRepo$a;->b:Landroidx/emoji2/text/EmojiMetadata;

    if-eqz v1, :cond_8

    .line 588
    iget v1, p0, Landroidx/emoji2/text/i$b;->f:I

    const/4 v3, 0x3

    if-ne v1, v2, :cond_7

    .line 589
    invoke-virtual {p0}, Landroidx/emoji2/text/i$b;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 590
    iget-object v0, p0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/MetadataRepo$a;

    iput-object v0, p0, Landroidx/emoji2/text/i$b;->d:Landroidx/emoji2/text/MetadataRepo$a;

    .line 592
    invoke-virtual {p0}, Landroidx/emoji2/text/i$b;->b()V

    :goto_2
    const/4 v2, 0x3

    goto :goto_3

    .line 594
    :cond_6
    invoke-virtual {p0}, Landroidx/emoji2/text/i$b;->b()V

    goto :goto_3

    .line 597
    :cond_7
    iput-object v0, p0, Landroidx/emoji2/text/i$b;->d:Landroidx/emoji2/text/MetadataRepo$a;

    .line 599
    invoke-virtual {p0}, Landroidx/emoji2/text/i$b;->b()V

    goto :goto_2

    .line 602
    :cond_8
    invoke-virtual {p0}, Landroidx/emoji2/text/i$b;->b()V

    .line 619
    :goto_3
    iput p1, p0, Landroidx/emoji2/text/i$b;->e:I

    return v2
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 625
    iput v0, p0, Landroidx/emoji2/text/i$b;->a:I

    .line 626
    iget-object v0, p0, Landroidx/emoji2/text/i$b;->b:Landroidx/emoji2/text/MetadataRepo$a;

    iput-object v0, p0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/MetadataRepo$a;

    const/4 v0, 0x0

    .line 627
    iput v0, p0, Landroidx/emoji2/text/i$b;->f:I

    return-void
.end method

.method public final c()Z
    .locals 4

    .line 658
    iget-object v0, p0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/MetadataRepo$a;

    .line 255
    iget-object v0, v0, Landroidx/emoji2/text/MetadataRepo$a;->b:Landroidx/emoji2/text/EmojiMetadata;

    .line 658
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiMetadata;->isDefaultEmoji()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 662
    :cond_0
    iget v0, p0, Landroidx/emoji2/text/i$b;->e:I

    const v2, 0xfe0f

    if-ne v0, v2, :cond_1

    return v1

    .line 666
    :cond_1
    iget-boolean v0, p0, Landroidx/emoji2/text/i$b;->g:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 669
    iget-object v0, p0, Landroidx/emoji2/text/i$b;->h:[I

    if-nez v0, :cond_2

    goto :goto_0

    .line 672
    :cond_2
    iget-object v3, p0, Landroidx/emoji2/text/i$b;->c:Landroidx/emoji2/text/MetadataRepo$a;

    .line 255
    iget-object v3, v3, Landroidx/emoji2/text/MetadataRepo$a;->b:Landroidx/emoji2/text/EmojiMetadata;

    .line 672
    invoke-virtual {v3, v2}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointAt(I)I

    move-result v3

    .line 673
    invoke-static {v0, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_3

    :goto_0
    return v1

    :cond_3
    return v2
.end method
