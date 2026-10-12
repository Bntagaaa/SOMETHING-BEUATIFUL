.class public abstract Lcom/google/common/util/concurrent/Monitor$Guard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Guard"
.end annotation


# instance fields
.field public final a:Lcom/google/common/util/concurrent/Monitor;

.field public final b:Ljava/util/concurrent/locks/Condition;

.field public c:I

.field public d:Lcom/google/common/util/concurrent/Monitor$Guard;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/Monitor;)V
    .locals 1

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 309
    iput v0, p0, Lcom/google/common/util/concurrent/Monitor$Guard;->c:I

    .line 318
    const-string v0, "monitor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Monitor;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor$Guard;->a:Lcom/google/common/util/concurrent/Monitor;

    .line 203
    iget-object p1, p1, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 319
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/Monitor$Guard;->b:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public abstract isSatisfied()Z
.end method
