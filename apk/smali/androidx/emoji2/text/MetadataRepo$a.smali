.class Landroidx/emoji2/text/MetadataRepo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/MetadataRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public b:Landroidx/emoji2/text/EmojiMetadata;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 242
    invoke-direct {p0, v0}, Landroidx/emoji2/text/MetadataRepo$a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroidx/emoji2/text/MetadataRepo$a;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/emoji2/text/EmojiMetadata;II)V
    .locals 3

    .line 260
    invoke-virtual {p1, p2}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointAt(I)I

    move-result v0

    .line 251
    iget-object v1, p0, Landroidx/emoji2/text/MetadataRepo$a;->a:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/MetadataRepo$a;

    :goto_0
    if-nez v0, :cond_1

    .line 262
    new-instance v0, Landroidx/emoji2/text/MetadataRepo$a;

    invoke-direct {v0}, Landroidx/emoji2/text/MetadataRepo$a;-><init>()V

    .line 263
    invoke-virtual {p1, p2}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointAt(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-le p3, p2, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 267
    invoke-virtual {v0, p1, p2, p3}, Landroidx/emoji2/text/MetadataRepo$a;->a(Landroidx/emoji2/text/EmojiMetadata;II)V

    return-void

    .line 269
    :cond_2
    iput-object p1, v0, Landroidx/emoji2/text/MetadataRepo$a;->b:Landroidx/emoji2/text/EmojiMetadata;

    return-void
.end method
