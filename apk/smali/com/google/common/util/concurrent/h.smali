.class Lcom/google/common/util/concurrent/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/common/collect/ImmutableCollection;

.field public final synthetic b:Lcom/google/common/util/concurrent/i;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/i;Lcom/google/common/collect/ImmutableCollection;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/h;->b:Lcom/google/common/util/concurrent/i;

    iput-object p2, p0, Lcom/google/common/util/concurrent/h;->a:Lcom/google/common/collect/ImmutableCollection;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/google/common/util/concurrent/h;->b:Lcom/google/common/util/concurrent/i;

    iget-object v1, p0, Lcom/google/common/util/concurrent/h;->a:Lcom/google/common/collect/ImmutableCollection;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/i;->j(Lcom/google/common/util/concurrent/i;Lcom/google/common/collect/ImmutableCollection;)V

    return-void
.end method
