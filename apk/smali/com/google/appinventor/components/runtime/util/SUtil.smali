.class public Lcom/google/appinventor/components/runtime/util/SUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;
    .locals 2

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 157
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    .line 158
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    return-object p0

    .line 160
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    return-object p0
.end method

.method private static performRequest(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Form;",
            "Lcom/google/appinventor/components/runtime/Component;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/appinventor/components/runtime/PermissionResultHandler;",
            ")Z"
        }
    .end annotation

    .line 167
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    .line 174
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Ljava/lang/String;

    .line 175
    new-instance v4, Lcom/google/appinventor/components/runtime/util/SUtil$1;

    move-object v5, p1

    move-object v6, p2

    move-object v9, p3

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/util/SUtil$1;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;Ljava/util/List;)V

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    :cond_2
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method

.method public static requestPermissionsForAdvertising(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 1

    .line 106
    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/SUtil;->requestPermissionsForS(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result p0

    return p0
.end method

.method public static requestPermissionsForConnecting(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/BluetoothClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 1

    .line 88
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/SUtil;->requestPermissionsForS(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result p0

    return p0
.end method

.method public static requestPermissionsForS(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 0

    .line 122
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/SUtil;->requestPermissionsForS([Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result p0

    return p0
.end method

.method public static requestPermissionsForS([Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 3

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    .line 141
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_0
    const-string p0, "android.permission.BLUETOOTH"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const-string p0, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :goto_0
    invoke-static {p1, p2, p3, v0, p4}, Lcom/google/appinventor/components/runtime/util/SUtil;->performRequest(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result p0

    return p0
.end method

.method public static requestPermissionsForScanning(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/BluetoothClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 3

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    .line 61
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->NoLocationNeeded()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->doesAppDeclarePermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/appinventor/components/runtime/util/SUtil;->performRequest(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result p0

    return p0
.end method
