.class Lcom/google/common/util/concurrent/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/f0;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lcom/google/common/util/concurrent/f0;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/f0;Ljava/lang/Runnable;)V
    .locals 0

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/f0$a;->b:Lcom/google/common/util/concurrent/f0;

    iput-object p2, p0, Lcom/google/common/util/concurrent/f0$a;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/google/common/util/concurrent/f0$a;->b:Lcom/google/common/util/concurrent/f0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/common/util/concurrent/f0;->a:Z

    .line 986
    iget-object v0, p0, Lcom/google/common/util/concurrent/f0$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
