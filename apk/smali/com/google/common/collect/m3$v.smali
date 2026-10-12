.class final Lcom/google/common/collect/m3$v;
.super Lcom/google/common/collect/m3$c;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/m3$g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/m3$v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/m3$c<",
        "TK;TV;",
        "Lcom/google/common/collect/m3$v<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/m3$g0<",
        "TK;TV;",
        "Lcom/google/common/collect/m3$v<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public volatile d:Lcom/google/common/collect/m3$h0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/m3$v;)V
    .locals 0

    .line 482
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/m3$c;-><init>(Ljava/lang/Object;ILcom/google/common/collect/m3$c;)V

    .line 386
    sget-object p1, Lcom/google/common/collect/m3;->j:Lcom/google/common/collect/m3$a;

    .line 479
    iput-object p1, p0, Lcom/google/common/collect/m3$v;->d:Lcom/google/common/collect/m3$h0;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/google/common/collect/m3$v;->d:Lcom/google/common/collect/m3$h0;

    invoke-interface {v0}, Lcom/google/common/collect/m3$h0;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueReference()Lcom/google/common/collect/m3$h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m3$h0<",
            "TK;TV;",
            "Lcom/google/common/collect/m3$v<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/google/common/collect/m3$v;->d:Lcom/google/common/collect/m3$h0;

    return-object v0
.end method
