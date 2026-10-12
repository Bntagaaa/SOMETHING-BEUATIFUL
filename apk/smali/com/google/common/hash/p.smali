.class final Lcom/google/common/hash/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/p$c;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/base/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    :try_start_0
    new-instance v0, Lcom/google/common/hash/q;

    invoke-direct {v0}, Lcom/google/common/hash/q;-><init>()V

    .line 32
    new-instance v0, Lcom/google/common/hash/p$a;

    invoke-direct {v0}, Lcom/google/common/hash/p$a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    new-instance v0, Lcom/google/common/hash/p$b;

    invoke-direct {v0}, Lcom/google/common/hash/p$b;-><init>()V

    .line 48
    :goto_0
    sput-object v0, Lcom/google/common/hash/p;->a:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/common/hash/o;
    .locals 1

    .line 52
    sget-object v0, Lcom/google/common/hash/p;->a:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/o;

    return-object v0
.end method
