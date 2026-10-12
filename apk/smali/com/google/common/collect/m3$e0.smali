.class final Lcom/google/common/collect/m3$e0;
.super Lcom/google/common/collect/m3$d;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/m3$g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/m3$e0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/m3$d<",
        "TK;TV;",
        "Lcom/google/common/collect/m3$e0<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/m3$g0<",
        "TK;TV;",
        "Lcom/google/common/collect/m3$e0<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public volatile c:Lcom/google/common/collect/m3$h0;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/m3$e0;)V
    .locals 0

    .line 854
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/m3$d;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/m3$d;)V

    .line 386
    sget-object p1, Lcom/google/common/collect/m3;->j:Lcom/google/common/collect/m3$a;

    .line 850
    iput-object p1, p0, Lcom/google/common/collect/m3$e0;->c:Lcom/google/common/collect/m3$h0;

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

    .line 859
    iget-object v0, p0, Lcom/google/common/collect/m3$e0;->c:Lcom/google/common/collect/m3$h0;

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
            "Lcom/google/common/collect/m3$e0<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/google/common/collect/m3$e0;->c:Lcom/google/common/collect/m3$h0;

    return-object v0
.end method
