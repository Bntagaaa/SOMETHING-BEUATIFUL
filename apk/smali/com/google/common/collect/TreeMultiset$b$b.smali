.class final enum Lcom/google/common/collect/TreeMultiset$b$b;
.super Lcom/google/common/collect/TreeMultiset$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 129
    const-string v0, "DISTINCT"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/TreeMultiset$c;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/google/common/collect/TreeMultiset$c;)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 557
    :cond_0
    iget p1, p1, Lcom/google/common/collect/TreeMultiset$c;->c:I

    int-to-long v0, p1

    return-wide v0
.end method
