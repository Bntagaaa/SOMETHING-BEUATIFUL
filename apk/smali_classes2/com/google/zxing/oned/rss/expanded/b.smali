.class final Lcom/google/zxing/oned/rss/expanded/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/oned/rss/DataCharacter;

.field public final b:Lcom/google/zxing/oned/rss/DataCharacter;

.field public final c:Lcom/google/zxing/oned/rss/FinderPattern;


# direct methods
.method public constructor <init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/oned/rss/expanded/b;->a:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 47
    iput-object p2, p0, Lcom/google/zxing/oned/rss/expanded/b;->b:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 48
    iput-object p3, p0, Lcom/google/zxing/oned/rss/expanded/b;->c:Lcom/google/zxing/oned/rss/FinderPattern;

    return-void
.end method


# virtual methods
.method public mustBeLast()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/b;->b:Lcom/google/zxing/oned/rss/DataCharacter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
