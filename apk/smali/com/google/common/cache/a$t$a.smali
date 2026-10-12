.class final enum Lcom/google/common/cache/a$t$a;
.super Lcom/google/common/cache/a$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 372
    const-string v0, "STRONG"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/base/Equivalence;
    .locals 1

    .line 389
    invoke-static {}, Lcom/google/common/base/Equivalence;->equals()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILcom/google/common/cache/a$r;Lcom/google/common/cache/f;Ljava/lang/Object;)Lcom/google/common/cache/a$a0;
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 382
    new-instance p1, Lcom/google/common/cache/a$x;

    invoke-direct {p1, p4}, Lcom/google/common/cache/a$x;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p2, Lcom/google/common/cache/a$i0;

    invoke-direct {p2, p4, p1}, Lcom/google/common/cache/a$i0;-><init>(Ljava/lang/Object;I)V

    return-object p2
.end method
