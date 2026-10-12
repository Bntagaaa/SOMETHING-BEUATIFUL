.class final enum Lcom/google/common/cache/a$f$e;
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
    const-string v0, "WEAK"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(ILcom/google/common/cache/a$r;Lcom/google/common/cache/f;Ljava/lang/Object;)Lcom/google/common/cache/f;
    .locals 1

    .line 494
    new-instance v0, Lcom/google/common/cache/a$e0;

    iget-object p2, p2, Lcom/google/common/cache/a$r;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p3, p4, p2}, Lcom/google/common/cache/a$e0;-><init>(ILcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method
