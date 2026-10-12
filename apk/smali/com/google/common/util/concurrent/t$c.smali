.class Lcom/google/common/util/concurrent/t$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/t$c$b;,
        Lcom/google/common/util/concurrent/t$c$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/util/concurrent/t$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 112
    const-class v0, Lcom/google/common/util/concurrent/t$c;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$ClassValueValidator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/common/util/concurrent/t$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 191
    :catchall_0
    sget-object v0, Lcom/google/common/util/concurrent/t;->a:Lcom/google/common/collect/Ordering;

    sget-object v0, Lcom/google/common/util/concurrent/t$c$b;->a:Lcom/google/common/util/concurrent/t$c$b;

    .line 115
    :goto_0
    sput-object v0, Lcom/google/common/util/concurrent/t$c;->a:Lcom/google/common/util/concurrent/t$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
