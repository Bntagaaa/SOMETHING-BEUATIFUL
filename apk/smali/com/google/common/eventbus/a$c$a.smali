.class final Lcom/google/common/eventbus/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/google/common/eventbus/c;


# direct methods
.method public constructor <init>(Lcom/google/common/eventbus/c;Ljava/lang/Object;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/google/common/eventbus/a$c$a;->a:Ljava/lang/Object;

    .line 173
    iput-object p1, p0, Lcom/google/common/eventbus/a$c$a;->b:Lcom/google/common/eventbus/c;

    return-void
.end method
