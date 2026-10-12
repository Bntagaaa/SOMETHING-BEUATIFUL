.class Landroidx/core/location/LocationRequestCompat$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Ljava/lang/Class;

.field public static b:Ljava/lang/reflect/Method;

.field public static c:Ljava/lang/reflect/Method;

.field public static d:Ljava/lang/reflect/Method;

.field public static e:Ljava/lang/reflect/Method;

.field public static f:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toLocationRequest(Landroidx/core/location/LocationRequestCompat;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 538
    :try_start_0
    sget-object v6, Landroidx/core/location/LocationRequestCompat$a;->a:Ljava/lang/Class;

    if-nez v6, :cond_0

    .line 539
    const-string v6, "android.location.LocationRequest"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Landroidx/core/location/LocationRequestCompat$a;->a:Ljava/lang/Class;

    .line 541
    :cond_0
    sget-object v6, Landroidx/core/location/LocationRequestCompat$a;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-nez v6, :cond_1

    .line 542
    :try_start_1
    sget-object v6, Landroidx/core/location/LocationRequestCompat$a;->a:Ljava/lang/Class;

    const-string v8, "createFromDeprecatedProvider"

    new-array v9, v2, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v3

    aput-object v7, v9, v4

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v1

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v0

    .line 543
    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Landroidx/core/location/LocationRequestCompat$a;->b:Ljava/lang/reflect/Method;

    .line 547
    invoke-virtual {v6, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 550
    :cond_1
    sget-object v6, Landroidx/core/location/LocationRequestCompat$a;->b:Ljava/lang/reflect/Method;

    .line 552
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getIntervalMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 553
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getMinUpdateDistanceMeters()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v8, v2, v4

    aput-object v9, v2, v1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, v2, v0

    .line 550
    invoke-virtual {v6, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v5

    .line 558
    :cond_2
    sget-object v0, Landroidx/core/location/LocationRequestCompat$a;->c:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_3

    .line 559
    :try_start_2
    sget-object v0, Landroidx/core/location/LocationRequestCompat$a;->a:Ljava/lang/Class;

    const-string v2, "setQuality"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v1, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationRequestCompat$a;->c:Ljava/lang/reflect/Method;

    .line 561
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 563
    :cond_3
    sget-object v0, Landroidx/core/location/LocationRequestCompat$a;->c:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getQuality()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v3

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v0, Landroidx/core/location/LocationRequestCompat$a;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    .line 566
    sget-object v0, Landroidx/core/location/LocationRequestCompat$a;->a:Ljava/lang/Class;

    const-string v2, "setFastestInterval"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationRequestCompat$a;->d:Ljava/lang/reflect/Method;

    .line 568
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 571
    :cond_4
    sget-object v0, Landroidx/core/location/LocationRequestCompat$a;->d:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getMinUpdateIntervalMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v3

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getMaxUpdates()I

    move-result v0

    const v2, 0x7fffffff

    if-ge v0, v2, :cond_6

    .line 574
    sget-object v0, Landroidx/core/location/LocationRequestCompat$a;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_5

    .line 575
    sget-object v0, Landroidx/core/location/LocationRequestCompat$a;->a:Ljava/lang/Class;

    const-string v2, "setNumUpdates"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v1, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationRequestCompat$a;->e:Ljava/lang/reflect/Method;

    .line 577
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 580
    :cond_5
    sget-object v0, Landroidx/core/location/LocationRequestCompat$a;->e:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getMaxUpdates()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_6
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getDurationMillis()J

    move-result-wide v0

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v2, v0, v8

    if-gez v2, :cond_8

    .line 584
    sget-object v0, Landroidx/core/location/LocationRequestCompat$a;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_7

    .line 585
    sget-object v0, Landroidx/core/location/LocationRequestCompat$a;->a:Ljava/lang/Class;

    const-string v1, "setExpireIn"

    new-array v2, v4, [Ljava/lang/Class;

    aput-object v7, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/location/LocationRequestCompat$a;->f:Ljava/lang/reflect/Method;

    .line 587
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 590
    :cond_7
    sget-object v0, Landroidx/core/location/LocationRequestCompat$a;->f:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getDurationMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    return-object p1

    :catch_0
    return-object v5
.end method
