.class final Lcom/google/common/collect/m3$t;
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
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/m3$t$a;
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
        "Lcom/google/common/collect/m3$t<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/m3$x<",
        "TK;TV;",
        "Lcom/google/common/collect/m3$t<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public volatile d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/m3$t;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/m3$c;-><init>(Ljava/lang/Object;ILcom/google/common/collect/m3$c;)V

    const/4 p1, 0x0

    .line 393
    iput-object p1, p0, Lcom/google/common/collect/m3$t;->d:Ljava/lang/Object;

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

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/google/common/collect/m3$t;->d:Ljava/lang/Object;

    return-object v0
.end method
