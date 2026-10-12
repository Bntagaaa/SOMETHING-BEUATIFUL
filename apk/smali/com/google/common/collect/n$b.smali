.class final Lcom/google/common/collect/n$b;
.super Lcom/google/common/collect/Maps$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/n;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/n;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/google/common/collect/n$b;->d:Lcom/google/common/collect/n;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/NavigableMap;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/google/common/collect/n$b;->d:Lcom/google/common/collect/n;

    return-object v0
.end method

.method public final entryIterator()Ljava/util/Iterator;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/common/collect/n$b;->d:Lcom/google/common/collect/n;

    invoke-virtual {v0}, Lcom/google/common/collect/n;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
