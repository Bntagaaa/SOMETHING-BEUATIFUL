.class Lcom/google/common/collect/LinkedListMultimap$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/common/collect/LinkedListMultimap$d;

.field public b:Lcom/google/common/collect/LinkedListMultimap$d;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap$d;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$c;->a:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 144
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$c;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    const/4 v0, 0x0

    .line 145
    iput-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$d;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 146
    iput-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$d;->e:Lcom/google/common/collect/LinkedListMultimap$d;

    const/4 p1, 0x1

    .line 147
    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap$c;->c:I

    return-void
.end method
