.class final enum Lcom/google/common/cache/a$f$a;
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
    const-string v0, "STRONG"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d(ILcom/google/common/cache/a$r;Lcom/google/common/cache/f;Ljava/lang/Object;)Lcom/google/common/cache/f;
    .locals 0

    .line 441
    new-instance p2, Lcom/google/common/cache/a$w;

    invoke-direct {p2, p4, p1, p3}, Lcom/google/common/cache/a$w;-><init>(Ljava/lang/Object;ILcom/google/common/cache/f;)V

    return-object p2
.end method
