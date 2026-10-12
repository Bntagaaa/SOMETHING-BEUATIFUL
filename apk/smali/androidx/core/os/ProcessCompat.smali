.class public final Landroidx/core/os/ProcessCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/ProcessCompat$c;,
        Landroidx/core/os/ProcessCompat$b;,
        Landroidx/core/os/ProcessCompat$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isApplicationUid(I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 55
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 56
    invoke-static {p0}, Landroidx/core/os/ProcessCompat$c;->a(I)Z

    move-result p0

    return p0

    .line 96
    :cond_0
    :try_start_0
    sget-object v2, Landroidx/core/os/ProcessCompat$b;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :try_start_1
    sget-boolean v3, Landroidx/core/os/ProcessCompat$b;->c:Z

    if-nez v3, :cond_1

    .line 98
    sput-boolean v1, Landroidx/core/os/ProcessCompat$b;->c:Z

    .line 99
    const-class v3, Landroid/os/UserHandle;

    const-string v4, "isApp"

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroidx/core/os/ProcessCompat$b;->b:Ljava/lang/reflect/Method;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :try_start_2
    sget-object v2, Landroidx/core/os/ProcessCompat$b;->b:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_3

    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 p0, 0x0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    .line 109
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_2

    .line 107
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 102
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 112
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return v1
.end method
