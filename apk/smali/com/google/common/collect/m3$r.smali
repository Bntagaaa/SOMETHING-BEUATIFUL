.class final Lcom/google/common/collect/m3$r;
.super Lcom/google/common/collect/m3$c;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/m3$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/m3$r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/m3$c<",
        "TK;",
        "Lcom/google/common/collect/MapMaker$a;",
        "Lcom/google/common/collect/m3$r<",
        "TK;>;>;",
        "Lcom/google/common/collect/m3$x<",
        "TK;",
        "Lcom/google/common/collect/MapMaker$a;",
        "Lcom/google/common/collect/m3$r<",
        "TK;>;>;"
    }
.end annotation


# virtual methods
.method public getValue()Lcom/google/common/collect/MapMaker$a;
    .locals 1

    .line 581
    sget-object v0, Lcom/google/common/collect/MapMaker$a;->a:Lcom/google/common/collect/MapMaker$a;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 572
    invoke-virtual {p0}, Lcom/google/common/collect/m3$r;->getValue()Lcom/google/common/collect/MapMaker$a;

    move-result-object v0

    return-object v0
.end method
