.class final Lcom/google/common/collect/m3$l;
.super Lcom/google/common/collect/m3$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/m3<",
        "TK;TV;TE;TS;>.i<TK;>;"
    }
.end annotation


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2617
    invoke-virtual {p0}, Lcom/google/common/collect/m3$i;->c()Lcom/google/common/collect/m3$j0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/m3$j0;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
