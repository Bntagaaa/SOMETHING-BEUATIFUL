.class final Lcom/google/common/util/concurrent/Striped$n;
.super Lcom/google/common/util/concurrent/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Lcom/google/common/util/concurrent/Striped$o;)V
    .locals 0

    .line 346
    invoke-direct {p0}, Lcom/google/common/util/concurrent/s;-><init>()V

    .line 347
    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$n;->a:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$n;->a:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 2

    .line 358
    new-instance v0, Lcom/google/common/util/concurrent/Striped$m;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Striped$n;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/Striped$m;-><init>(Ljava/util/concurrent/locks/Condition;)V

    return-object v0
.end method
