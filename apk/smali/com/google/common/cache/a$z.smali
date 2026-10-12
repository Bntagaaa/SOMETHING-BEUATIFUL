.class final Lcom/google/common/cache/a$z;
.super Lcom/google/common/cache/a$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "z"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/a<",
        "TK;TV;>.i<TV;>;"
    }
.end annotation


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 4300
    invoke-virtual {p0}, Lcom/google/common/cache/a$i;->c()Lcom/google/common/cache/a$l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/a$l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
