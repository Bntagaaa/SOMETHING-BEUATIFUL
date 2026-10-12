.class final Lcom/google/common/hash/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "Lcom/google/common/hash/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/common/hash/o;
    .locals 2

    .line 44
    new-instance v0, Lcom/google/common/hash/p$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/hash/p$c;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/google/common/hash/p$b;->get()Lcom/google/common/hash/o;

    move-result-object v0

    return-object v0
.end method
