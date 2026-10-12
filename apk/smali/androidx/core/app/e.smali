.class final Landroidx/core/app/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/e$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Class;

.field public static final b:Ljava/lang/reflect/Field;

.field public static final c:Ljava/lang/reflect/Field;

.field public static final d:Ljava/lang/reflect/Method;

.field public static final e:Ljava/lang/reflect/Method;

.field public static final f:Ljava/lang/reflect/Method;

.field public static final g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x3

    .line 91
    const-class v1, Landroid/os/IBinder;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-class v6, Landroid/app/Activity;

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v7, Landroidx/core/app/e;->g:Landroid/os/Handler;

    const/4 v7, 0x0

    .line 378
    :try_start_0
    const-string v8, "android.app.ActivityThread"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v8, v7

    .line 94
    :goto_0
    sput-object v8, Landroidx/core/app/e;->a:Ljava/lang/Class;

    .line 358
    :try_start_1
    const-string v8, "mMainThread"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 359
    invoke-virtual {v8, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v8, v7

    .line 95
    :goto_1
    sput-object v8, Landroidx/core/app/e;->b:Ljava/lang/reflect/Field;

    .line 368
    :try_start_2
    const-string v8, "mToken"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 369
    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-object v6, v7

    .line 96
    :goto_2
    sput-object v6, Landroidx/core/app/e;->c:Ljava/lang/reflect/Field;

    .line 97
    sget-object v6, Landroidx/core/app/e;->a:Ljava/lang/Class;

    .line 302
    const-string v8, "performStopActivity"

    if-nez v6, :cond_0

    :catchall_3
    move-object v6, v7

    goto :goto_3

    .line 306
    :cond_0
    :try_start_3
    new-array v9, v0, [Ljava/lang/Class;

    aput-object v1, v9, v4

    aput-object v2, v9, v5

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v3

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 308
    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 97
    :goto_3
    sput-object v6, Landroidx/core/app/e;->d:Ljava/lang/reflect/Method;

    .line 98
    sget-object v6, Landroidx/core/app/e;->a:Ljava/lang/Class;

    if-nez v6, :cond_1

    :catchall_4
    move-object v6, v7

    goto :goto_4

    .line 320
    :cond_1
    :try_start_4
    new-array v9, v3, [Ljava/lang/Class;

    aput-object v1, v9, v4

    aput-object v2, v9, v5

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 322
    invoke-virtual {v6, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 98
    :goto_4
    sput-object v6, Landroidx/core/app/e;->e:Ljava/lang/reflect/Method;

    .line 99
    sget-object v6, Landroidx/core/app/e;->a:Ljava/lang/Class;

    .line 330
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-eq v8, v9, :cond_2

    const/16 v9, 0x1b

    if-ne v8, v9, :cond_4

    :cond_2
    if-nez v6, :cond_3

    goto :goto_5

    .line 338
    :cond_3
    :try_start_5
    const-string v8, "requestRelaunchActivity"

    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/Class;

    aput-object v1, v9, v4

    const-class v1, Ljava/util/List;

    aput-object v1, v9, v5

    aput-object v1, v9, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v9, v0

    const/4 v0, 0x4

    aput-object v2, v9, v0

    const-class v0, Landroid/content/res/Configuration;

    const/4 v1, 0x5

    aput-object v0, v9, v1

    const/4 v1, 0x6

    aput-object v0, v9, v1

    const/4 v0, 0x7

    aput-object v2, v9, v0

    const/16 v0, 0x8

    aput-object v2, v9, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 349
    invoke-virtual {v0, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v7, v0

    .line 99
    :catchall_5
    :cond_4
    :goto_5
    sput-object v7, Landroidx/core/app/e;->f:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static queueOnStopIfNecessary(Ljava/lang/Object;ILandroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    .line 257
    :try_start_0
    sget-object v1, Landroidx/core/app/e;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 259
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p0

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    sget-object p0, Landroidx/core/app/e;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 269
    sget-object p1, Landroidx/core/app/e;->g:Landroid/os/Handler;

    new-instance p2, Landroidx/core/app/e$a;

    invoke-direct {p2, p0, v1}, Landroidx/core/app/e$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return v0

    .line 296
    :goto_1
    const-string p1, "ActivityRecreator"

    const-string p2, "Exception while fetching field values"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
