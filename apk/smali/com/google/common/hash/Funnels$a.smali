.class final enum Lcom/google/common/hash/Funnels$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/Funnel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Funnels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/Funnels$a;",
        ">;",
        "Lcom/google/common/hash/Funnel<",
        "[B>;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/Funnels$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/google/common/hash/Funnels$a;

    .line 39
    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object v0, Lcom/google/common/hash/Funnels$a;->a:Lcom/google/common/hash/Funnels$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic funnel(Ljava/lang/Object;Lcom/google/common/hash/PrimitiveSink;)V
    .locals 0

    .line 39
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Funnels$a;->funnel([BLcom/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public funnel([BLcom/google/common/hash/PrimitiveSink;)V
    .locals 0

    .line 44
    invoke-interface {p2, p1}, Lcom/google/common/hash/PrimitiveSink;->putBytes([B)Lcom/google/common/hash/PrimitiveSink;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "Funnels.byteArrayFunnel()"

    return-object v0
.end method
