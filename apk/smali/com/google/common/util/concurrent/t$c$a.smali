.class final enum Lcom/google/common/util/concurrent/t$c$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/t$b;


# annotations
.annotation build Lcom/google/common/util/concurrent/x;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/t$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/t$c$a;",
        ">;",
        "Lcom/google/common/util/concurrent/t$b;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/ClassValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 126
    new-instance v0, Lcom/google/common/util/concurrent/t$c$a$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/t$c$a$a;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/t$c$a;->a:Ljava/lang/ClassValue;

    return-void
.end method


# virtual methods
.method public validateClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 137
    sget-object v0, Lcom/google/common/util/concurrent/t$c$a;->a:Ljava/lang/ClassValue;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/u;->b(Ljava/lang/ClassValue;Ljava/lang/Class;)V

    return-void
.end method
