.class final enum Lcom/google/common/cache/a$f$f;
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
    const-string v0, "WEAK_ACCESS"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/common/cache/a$r;Lcom/google/common/cache/f;Lcom/google/common/cache/f;)Lcom/google/common/cache/f;
    .locals 0

    .line 507
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/cache/a$f;->b(Lcom/google/common/cache/a$r;Lcom/google/common/cache/f;Lcom/google/common/cache/f;)Lcom/google/common/cache/f;

    move-result-object p1

    .line 508
    invoke-static {p2, p1}, Lcom/google/common/cache/a$f;->a(Lcom/google/common/cache/f;Lcom/google/common/cache/f;)V

    return-object p1
.end method

.method public final d(ILcom/google/common/cache/a$r;Lcom/google/common/cache/f;Ljava/lang/Object;)Lcom/google/common/cache/f;
    .locals 1

    .line 501
    new-instance v0, Lcom/google/common/cache/a$c0;

    iget-object p2, p2, Lcom/google/common/cache/a$r;->h:Ljava/lang/ref/ReferenceQueue;

    .line 1267
    invoke-direct {v0, p1, p3, p4, p2}, Lcom/google/common/cache/a$e0;-><init>(ILcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-wide p1, 0x7fffffffffffffffL

    .line 1272
    iput-wide p1, v0, Lcom/google/common/cache/a$c0;->d:J

    .line 1285
    sget-object p1, Lcom/google/common/cache/a;->w:Ljava/util/logging/Logger;

    sget-object p1, Lcom/google/common/cache/a$q;->a:Lcom/google/common/cache/a$q;

    iput-object p1, v0, Lcom/google/common/cache/a$c0;->e:Lcom/google/common/cache/f;

    .line 1298
    iput-object p1, v0, Lcom/google/common/cache/a$c0;->f:Lcom/google/common/cache/f;

    return-object v0
.end method
