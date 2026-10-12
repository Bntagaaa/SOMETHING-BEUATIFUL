.class final Lcom/google/common/util/concurrent/Striped$m;
.super Lcom/google/common/util/concurrent/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .line 369
    invoke-direct {p0}, Lcom/google/common/util/concurrent/q;-><init>()V

    .line 370
    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$m;->a:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$m;->a:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method
