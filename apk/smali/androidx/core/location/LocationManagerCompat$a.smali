.class Landroidx/core/location/LocationManagerCompat$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Ljava/lang/Class;

.field public static b:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)Z
    .locals 8
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1258
    :try_start_0
    sget-object v4, Landroidx/core/location/LocationManagerCompat$a;->a:Ljava/lang/Class;

    if-nez v4, :cond_0

    .line 1259
    const-string v4, "android.location.LocationRequest"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Landroidx/core/location/LocationManagerCompat$a;->a:Ljava/lang/Class;

    .line 1262
    :cond_0
    sget-object v4, Landroidx/core/location/LocationManagerCompat$a;->b:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    .line 1263
    const-class v4, Landroid/location/LocationManager;

    const-string v5, "requestLocationUpdates"

    new-array v6, v1, [Ljava/lang/Class;

    sget-object v7, Landroidx/core/location/LocationManagerCompat$a;->a:Ljava/lang/Class;

    aput-object v7, v6, v2

    const-class v7, Landroid/location/LocationListener;

    aput-object v7, v6, v3

    const-class v7, Landroid/os/Looper;

    aput-object v7, v6, v0

    .line 1264
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroidx/core/location/LocationManagerCompat$a;->b:Ljava/lang/reflect/Method;

    .line 1268
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1271
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1273
    sget-object p2, Landroidx/core/location/LocationManagerCompat$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p3, v1, v3

    aput-object p4, v1, v0

    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    :cond_2
    return v2
.end method

.method public static b(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationManagerCompat$l;)Z
    .locals 8
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1219
    :try_start_0
    sget-object v4, Landroidx/core/location/LocationManagerCompat$a;->a:Ljava/lang/Class;

    if-nez v4, :cond_0

    .line 1220
    const-string v4, "android.location.LocationRequest"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Landroidx/core/location/LocationManagerCompat$a;->a:Ljava/lang/Class;

    .line 1222
    :cond_0
    sget-object v4, Landroidx/core/location/LocationManagerCompat$a;->b:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    .line 1223
    const-class v4, Landroid/location/LocationManager;

    const-string v5, "requestLocationUpdates"

    new-array v6, v1, [Ljava/lang/Class;

    sget-object v7, Landroidx/core/location/LocationManagerCompat$a;->a:Ljava/lang/Class;

    aput-object v7, v6, v2

    const-class v7, Landroid/location/LocationListener;

    aput-object v7, v6, v3

    const-class v7, Landroid/os/Looper;

    aput-object v7, v6, v0

    .line 1224
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroidx/core/location/LocationManagerCompat$a;->b:Ljava/lang/reflect/Method;

    .line 1228
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1231
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1233
    sget-object p2, Landroidx/core/location/LocationManagerCompat;->d:Ljava/util/WeakHashMap;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    :try_start_1
    sget-object v4, Landroidx/core/location/LocationManagerCompat$a;->b:Ljava/lang/reflect/Method;

    .line 1235
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p3, v1, v3

    aput-object v5, v1, v0

    .line 1234
    invoke-virtual {v4, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    invoke-static {p0, p3}, Landroidx/core/location/LocationManagerCompat;->c(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$l;)V

    .line 1237
    monitor-exit p2

    return v3

    :catchall_0
    move-exception p0

    .line 1238
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    return v2
.end method
