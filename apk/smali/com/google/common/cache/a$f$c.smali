.class final enum Lcom/google/common/cache/a$f$c;
.super Lcom/google/common/cache/a$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 436
    const-string v0, "STRONG_WRITE"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/common/cache/a$r;Lcom/google/common/cache/f;Lcom/google/common/cache/f;)Lcom/google/common/cache/f;
    .locals 0

    .line 469
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/cache/a$f;->b(Lcom/google/common/cache/a$r;Lcom/google/common/cache/f;Lcom/google/common/cache/f;)Lcom/google/common/cache/f;

    move-result-object p1

    .line 470
    invoke-static {p2, p1}, Lcom/google/common/cache/a$f;->c(Lcom/google/common/cache/f;Lcom/google/common/cache/f;)V

    return-object p1
.end method

.method public final d(ILcom/google/common/cache/a$r;Lcom/google/common/cache/f;Ljava/lang/Object;)Lcom/google/common/cache/f;
    .locals 0

    .line 463
    new-instance p2, Lcom/google/common/cache/a$y;

    .line 1025
    invoke-direct {p2, p4, p1, p3}, Lcom/google/common/cache/a$w;-><init>(Ljava/lang/Object;ILcom/google/common/cache/f;)V

    const-wide p3, 0x7fffffffffffffffL

    .line 1030
    iput-wide p3, p2, Lcom/google/common/cache/a$y;->e:J

    .line 1043
    sget-object p1, Lcom/google/common/cache/a;->w:Ljava/util/logging/Logger;

    sget-object p1, Lcom/google/common/cache/a$q;->a:Lcom/google/common/cache/a$q;

    iput-object p1, p2, Lcom/google/common/cache/a$y;->f:Lcom/google/common/cache/f;

    .line 1056
    iput-object p1, p2, Lcom/google/common/cache/a$y;->g:Lcom/google/common/cache/f;

    return-object p2
.end method
