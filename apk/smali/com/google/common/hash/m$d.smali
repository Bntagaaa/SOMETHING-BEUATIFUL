.class abstract enum Lcom/google/common/hash/m$d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/m$d;",
        ">;",
        "Lcom/google/common/hash/m$c;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/m$d$a;

.field public static final enum b:Lcom/google/common/hash/m$d$b;

.field public static final c:Lsun/misc/Unsafe;

.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 128
    new-instance v0, Lcom/google/common/hash/m$d$a;

    invoke-direct {v0}, Lcom/google/common/hash/m$d$a;-><init>()V

    sput-object v0, Lcom/google/common/hash/m$d;->a:Lcom/google/common/hash/m$d$a;

    .line 139
    new-instance v0, Lcom/google/common/hash/m$d$b;

    invoke-direct {v0}, Lcom/google/common/hash/m$d$b;-><init>()V

    sput-object v0, Lcom/google/common/hash/m$d;->b:Lcom/google/common/hash/m$d$b;

    .line 195
    invoke-static {}, Lcom/google/common/hash/m$d;->a()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/m$d;->c:Lsun/misc/Unsafe;

    .line 196
    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lcom/google/common/hash/m$d;->d:I

    .line 199
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static a()Lsun/misc/Unsafe;
    .locals 3

    .line 169
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 174
    :catch_0
    :try_start_1
    new-instance v0, Lcom/google/common/hash/n;

    invoke-direct {v0}, Lcom/google/common/hash/n;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 190
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
