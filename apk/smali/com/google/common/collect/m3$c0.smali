.class final Lcom/google/common/collect/m3$c0;
.super Lcom/google/common/collect/m3$d;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/m3$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/m3$c0$a;
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
        "Lcom/google/common/collect/m3$c0<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/m3$x<",
        "TK;TV;",
        "Lcom/google/common/collect/m3$c0<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public volatile c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/m3$c0;)V
    .locals 0

    .line 765
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/m3$d;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/m3$d;)V

    const/4 p1, 0x0

    .line 758
    iput-object p1, p0, Lcom/google/common/collect/m3$c0;->c:Ljava/lang/Object;

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

    .line 771
    iget-object v0, p0, Lcom/google/common/collect/m3$c0;->c:Ljava/lang/Object;

    return-object v0
.end method
