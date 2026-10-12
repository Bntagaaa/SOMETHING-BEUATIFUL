.class public final Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->FIREBASE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Firebase Realtime Database component for Niotron that enables real-time data storage and synchronization in the cloud. This component allows you to store and retrieve data that syncs across all connected devices instantly. Before using any database operations, you must first initialize the component with a Firebase Core instance. The database organizes data in a JSON tree structure where you can store strings, numbers, booleans, lists, and objects. Perfect for building chat apps, collaborative tools, live dashboards, and any app requiring real-time data updates."
    iconName = "images/firebaseDB.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "firebase-database.aar, firebase-database.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private childListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/ChildEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private databaseReference:Lcom/google/firebase/database/DatabaseReference;

.field private firebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

.field private valueListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/database/ValueEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 62
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->valueListeners:Ljava/util/Map;

    .line 54
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->childListeners:Ljava/util/Map;

    .line 63
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->context:Landroid/content/Context;

    .line 64
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertFromFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Lcom/google/firebase/database/DataSnapshot;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertSnapshotToList(Lcom/google/firebase/database/DataSnapshot;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertToFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private checkInitialized()Z
    .locals 2

    .line 1250
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->firebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1251
    :cond_1
    :goto_0
    const-string v0, "Database"

    const-string v1, "Firebase Realtime Database is not initialized. Call InitializeFirebaseRealtimeDB first."

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private convertFromFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1409
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 1410
    check-cast p1, Ljava/util/Map;

    .line 1411
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 1412
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1413
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertFromFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    .line 1419
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1420
    check-cast p1, Ljava/util/List;

    .line 1421
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1422
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1423
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertFromFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1425
    :cond_3
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method private convertSnapshotToList(Lcom/google/firebase/database/DataSnapshot;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 5

    .line 1291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/DataSnapshot;

    .line 1294
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 1295
    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key"

    invoke-virtual {v2, v4, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertFromFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "value"

    invoke-virtual {v2, v3, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1300
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method private convertToFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1321
    :cond_0
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v0, :cond_2

    .line 1322
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 1323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1324
    invoke-virtual {p1}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1325
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertToFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    .line 1331
    :cond_2
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v0, :cond_7

    .line 1332
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1335
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v0, :cond_5

    .line 1336
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1337
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 1339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 1340
    :goto_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1341
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    .line 1342
    instance-of v5, v4, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_3

    .line 1343
    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1344
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    if-lt v5, v2, :cond_3

    .line 1345
    invoke-virtual {v4, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertToFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    .line 1354
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1355
    :goto_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1356
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertToFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-object v0

    .line 1362
    :cond_7
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1363
    check-cast p1, Ljava/util/List;

    .line 1364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1365
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1366
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertToFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-object v0

    .line 1372
    :cond_9
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 1373
    check-cast p1, Ljava/util/Map;

    .line 1374
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1375
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1376
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertToFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_0
    move-exception p1

    throw p1

    :cond_a
    return-object v0

    .line 1383
    :cond_b
    instance-of v0, p1, Ljava/lang/String;

    return-object p1
.end method

.method private convertToNumber(Ljava/lang/Object;)D
    .locals 3

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 1438
    :cond_0
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 1439
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 1442
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;)D
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertToNumber(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->valuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private executeQuery(Lcom/google/firebase/database/Query;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1276
    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$25;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$25;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/Query;->addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V

    return-void
.end method

.method private stopChildListening(Ljava/lang/String;)V
    .locals 2

    .line 1267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->childListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/ChildEventListener;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    .line 1270
    invoke-virtual {v1, v0}, Lcom/google/firebase/database/DatabaseReference;->removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V

    .line 1271
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->childListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private stopListening(Ljava/lang/String;)V
    .locals 2

    .line 1258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->valueListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/ValueEventListener;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    .line 1261
    invoke-virtual {v1, v0}, Lcom/google/firebase/database/DatabaseReference;->removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V

    .line 1262
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->valueListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private valuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 1456
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public AppendValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add an item to the end of a list atomically, ensuring thread-safety when multiple users are adding items. This is similar to RunTransactionAppend but provides compatibility with the original FirebaseDB component naming. Creates a new list if none exists, or converts existing non-list values into a list with your new item appended. Perfect for building features like comment lists, activity feeds, or any growing collection of items."
    .end annotation

    .line 684
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 687
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 688
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$19;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$19;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->runTransaction(Lcom/google/firebase/database/Transaction$Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 734
    const-string p2, "AppendValue"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public ChildAdded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when a new child item is added to a path you\'re monitoring with StartChildListening. The \'tag\' shows which parent path the child was added to, \'key\' is the new child\'s unique identifier, \'value\' contains the new child\'s data, and \'previousChildName\' indicates where in the list it was inserted. Perfect for adding new items to lists or collections in your app\'s UI."
    .end annotation

    if-eqz p4, :cond_0

    goto :goto_0

    .line 1090
    :cond_0
    const-string p4, ""

    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 1089
    const-string p1, "ChildAdded"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ChildChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when an existing child item is modified at a path you\'re monitoring with StartChildListening. The \'tag\' shows which parent path contains the changed child, \'key\' identifies which child was modified, \'value\' contains the updated data, and \'previousChildName\' shows the child\'s position in the list. Perfect for updating specific items in lists without refreshing the entire list."
    .end annotation

    if-eqz p4, :cond_0

    goto :goto_0

    .line 1099
    :cond_0
    const-string p4, ""

    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 1098
    const-string p1, "ChildChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ChildListeningCancelled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when child listening is cancelled due to permission changes, network issues, or database errors. The \'tag\' parameter shows which path stopped being monitored for child changes, and \'errorMessage\' explains the cancellation reason. Common causes include database permission changes, network connectivity loss, or database rule violations."
    .end annotation

    .line 1130
    const-string v0, "ChildListeningCancelled"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ChildListeningStarted(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when you successfully start monitoring child changes at a path using StartChildListening. The \'tag\' parameter shows which path is now being monitored for child-level changes. After this event, you\'ll receive ChildAdded, ChildChanged, ChildRemoved, and ChildMoved events as appropriate."
    .end annotation

    .line 1123
    const-string v0, "ChildListeningStarted"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ChildMoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when a child item changes position in an ordered list you\'re monitoring with StartChildListening. The \'tag\' shows which parent path contains the moved child, \'key\' identifies which child was moved, \'value\' contains the child\'s data, and \'previousChildName\' shows its new position in the list. This happens when using ordered queries and the sort criteria changes for an item."
    .end annotation

    if-eqz p4, :cond_0

    goto :goto_0

    .line 1116
    :cond_0
    const-string p4, ""

    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 1115
    const-string p1, "ChildMoved"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ChildRemoved(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when a child item is deleted from a path you\'re monitoring with StartChildListening. The \'tag\' shows which parent path the child was removed from, \'key\' identifies which child was deleted, and \'value\' contains the data that was removed (useful for undo functionality). Perfect for removing items from lists in your app\'s UI when they\'re deleted from the database."
    .end annotation

    .line 1107
    const-string v0, "ChildRemoved"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ClearTag(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove all data at the specified path (compatibility function matching the original FirebaseDB component). This function provides the same behavior as RemoveValue but with the familiar name from the classic FirebaseDB component. Use this if you\'re migrating from the old FirebaseDB component and want to keep your existing block names. Completely deletes the data at the specified path. Triggers RemoveValueSuccessful or RemoveValueFailed events."
    .end annotation

    .line 676
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->RemoveValue(Ljava/lang/String;)V

    return-void
.end method

.method public DataChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered whenever data changes at a path you\'re listening to with StartListening. The \'tag\' parameter shows which path changed, and \'value\' contains the new data at that location. This fires immediately when you start listening (with current data) and then again whenever the data changes. Perfect for updating your app\'s UI in real-time as data changes."
    .end annotation

    .line 1067
    const-string v0, "DataChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public EnableOfflinePersistence()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable offline data persistence, allowing your app to work even when users lose internet connection. When enabled, Firebase keeps a local copy of data that your app has read, and writes are cached until reconnection. Must be called before any database operations. Perfect for apps that need to work offline or in areas with poor connectivity. Note: This affects the entire Firebase Database instance and should only be called once per app session."
    .end annotation

    .line 884
    :try_start_0
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/FirebaseDatabase;->setPersistenceEnabled(Z)V

    .line 885
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->OfflinePersistenceEnabled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 887
    const-string v1, "EnableOfflinePersistence"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when any database operation encounters an error not covered by specific failure events. The \'functionName\' indicates which operation failed, and \'errorMessage\' provides details about the error. This is a catch-all event for unexpected errors during database operations."
    .end annotation

    .line 1209
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FailedToInitialize(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when Firebase Realtime Database fails to initialize"
    .end annotation

    .line 96
    const-string v0, "FailedToInitialize"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FirebaseRealtimeDBInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when Firebase Realtime Database is successfully initialized"
    .end annotation

    const/4 v0, 0x0

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FirebaseRealtimeDBInitialized"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FirstRemoved(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when RemoveFirst successfully removes and returns the first item from a list. The \'value\' parameter contains the data that was removed from the front of the list. Perfect for implementing queue processing where you need to know what item was processed."
    .end annotation

    .line 1237
    const-string v0, "FirstRemoved"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GenerateKey()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Generate a unique key that can be used for creating new items in your database. These keys are timestamp-based and guaranteed to be unique, making them perfect for creating new records. Use this when you want to generate a key in advance before pushing data, or when implementing custom push logic. The generated key follows Firebase\'s standard format and will sort chronologically."
    .end annotation

    .line 944
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 947
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 949
    const-string v2, "GenerateKey"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public GetServerTimestamp(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the current server timestamp from Firebase and store it at the specified path. This provides a reliable server-side timestamp that\'s consistent across all users regardless of their device\'s clock settings. Perfect for recording when events occurred, implementing \'last updated\' fields, or sorting by creation time. The timestamp is returned in the ServerTimestampReceived event as a string representing milliseconds since epoch."
    .end annotation

    .line 959
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 962
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 963
    sget-object v1, Lcom/google/firebase/database/ServerValue;->TIMESTAMP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$24;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Lcom/google/firebase/database/DatabaseReference;Ljava/lang/String;)V

    .line 964
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$23;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$23;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;)V

    .line 979
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 986
    const-string v0, "GetServerTimestamp"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public GetTagList()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get a list of all top-level paths (tags) in your database, useful for discovering what data exists. This returns the names of all immediate children at the root level of your database. Perfect for building navigation, showing available categories, or implementing data management interfaces. The list is returned in the GotTagList event. Note: This only shows direct children, not nested paths."
    .end annotation

    .line 809
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 812
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$21;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$21;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 830
    const-string v1, "GetTagList"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public GetTagListFromTag(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get a list of all child paths (tags) under the specified tag in your database. This returns the names of all immediate children under the given tag, allowing you to explore nested data structures. The \'tag\' parameter specifies which path to examine (e.g., \'users\' to get all user IDs, \'posts/user123\' to get all posts by user123). Perfect for building dynamic navigation, showing available subcategories, or implementing hierarchical data browsing. The list is returned in the GotTagListFromTag event. Note: This only shows direct children, not deeper nested paths."
    .end annotation

    .line 840
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 843
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 844
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$22;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$22;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 862
    const-string v0, "GetTagListFromTag"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public GetValue(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieve data from the specified path in your database one time (not real-time). Use this for one-off data reads when you don\'t need live updates. The \'tag\' parameter specifies the path to read. If the path exists, GotValue event triggers with the data. If path doesn\'t exist, GotValue triggers with empty/null value. For real-time updates that automatically notify you of changes, use StartListening instead."
    .end annotation

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->GetValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public GetValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieve data from the specified path, with a fallback value if the path doesn\'t exist. This version allows you to specify a default value to return when the requested path has no data. Useful for providing default settings or handling missing user preferences gracefully. The GotValue event will trigger with either the actual data or your specified default value."
    .end annotation

    .line 299
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$13;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 322
    const-string p2, "GetValue"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public GetValueFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when retrieving data fails due to network issues, permission problems, or database errors. The \'tag\' parameter shows which path failed to read, and \'errorMessage\' explains why the read operation failed. Common causes include being offline, insufficient read permissions, or invalid path names."
    .end annotation

    .line 1059
    const-string v0, "GetValueFailed"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GoOffline()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Manually disconnect from Firebase servers while keeping the app running. Useful for testing offline behavior, reducing battery usage during inactive periods, or implementing custom connectivity logic. All pending writes are queued and will be sent when you call GoOnline. Listeners continue working with local cached data. The app will automatically reconnect if offline persistence is enabled and data is accessed."
    .end annotation

    .line 917
    :try_start_0
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->goOffline()V

    .line 918
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->WentOffline()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 920
    const-string v1, "GoOffline"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public GoOnline()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Manually reconnect to Firebase servers after being offline. Call this after GoOffline to resume normal online operations. All queued writes will be sent to the server, and real-time listeners will resume receiving live updates. Firebase also automatically reconnects when network connectivity is restored, so manual calling is optional."
    .end annotation

    .line 930
    :try_start_0
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/FirebaseDatabase;->goOnline()V

    .line 931
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->WentOnline()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 933
    const-string v1, "GoOnline"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public GotTagList(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when GetTagList successfully retrieves the list of all top-level paths in your database. The \'tagList\' parameter contains a YailList of strings representing all immediate child paths at the root level. Use this to discover what data exists in your database or to build navigation interfaces."
    .end annotation

    .line 1230
    const-string v0, "GotTagList"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotTagListFromTag(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when GetTagListFromTag successfully retrieves the list of all child paths under the specified tag in your database. The \'tag\' parameter shows which path was queried, and \'tagList\' contains a YailList of strings representing all immediate child paths under the given tag. Use this to explore nested data structures in your database or build dynamic navigation for hierarchical data."
    .end annotation

    .line 1244
    const-string v0, "GotTagListFromTag"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when data is successfully retrieved from the database using GetValue. The \'tag\' parameter shows which path was read, and \'value\' contains the actual data from that location. If the path doesn\'t exist, \'value\' will be empty/null or the default value you specified."
    .end annotation

    .line 1052
    const-string v0, "GotValue"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitializeFirebaseRealtimeDB(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the Firebase Realtime Database component with your Firebase Core instance. This must be called before using any other database functions. Pass the Firebase Core component that you have already set up with your project credentials. Once initialized successfully, the FirebaseRealtimeDBInitialized event will trigger."
    .end annotation

    .line 71
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/FirebaseCore;

    if-eqz v0, :cond_1

    .line 72
    check-cast p1, Lcom/google/appinventor/components/runtime/FirebaseCore;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FirebaseCore;->getFirebaseAppInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    if-nez p1, :cond_0

    .line 74
    const-string p1, "Firebase Core Component is not Initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->FailedToInitialize(Ljava/lang/String;)V

    return-void

    .line 78
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->firebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

    .line 79
    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    .line 80
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->FirebaseRealtimeDBInitialized()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Firebase Realtime Database failed to Initialize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->FailedToInitialize(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 85
    :cond_1
    const-string p1, "Invalid Firebase Core Component"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->FailedToInitialize(Ljava/lang/String;)V

    return-void
.end method

.method public KeepSynced(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Keep specific data synchronized and available offline, ensuring this data is always accessible. When enabled for a path, Firebase automatically downloads and keeps this data updated locally. Perfect for critical data like user profiles, app configuration, or frequently accessed content. Set \'keepSynced\' to true to enable or false to disable. Use sparingly as it consumes local storage and bandwidth."
    .end annotation

    .line 896
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 899
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 900
    invoke-virtual {v0, p2}, Lcom/google/firebase/database/DatabaseReference;->keepSynced(Z)V

    if-eqz p2, :cond_1

    .line 902
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->KeepSyncedEnabled(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 904
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->KeepSyncedDisabled(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 907
    :goto_0
    const-string p2, "KeepSynced"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public KeepSyncedDisabled(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when automatic synchronization is disabled for a specific path using KeepSynced. The \'tag\' parameter shows which path will no longer be automatically synchronized for offline access. The local cached data remains available but won\'t be automatically updated."
    .end annotation

    .line 1181
    const-string v0, "KeepSyncedDisabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public KeepSyncedEnabled(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when automatic synchronization is enabled for a specific path using KeepSynced. The \'tag\' parameter shows which path will now be kept synchronized locally for offline access. This data will be automatically downloaded and kept up-to-date on the device."
    .end annotation

    .line 1174
    const-string v0, "KeepSyncedEnabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ListeningCancelled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when real-time listening is cancelled due to permission changes, network issues, or database errors. The \'tag\' parameter shows which path stopped being monitored, and \'errorMessage\' explains why listening was cancelled. Common causes include database permission changes, network connectivity loss, or database rule violations."
    .end annotation

    .line 1081
    const-string v0, "ListeningCancelled"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ListeningStarted(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when you successfully start listening for real-time changes at a path using StartListening. The \'tag\' parameter shows which path is now being monitored for changes. After this event, you\'ll receive DataChanged events whenever the data at this path is modified."
    .end annotation

    .line 1074
    const-string v0, "ListeningStarted"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OfflinePersistenceEnabled()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when offline data persistence is successfully enabled for your Firebase Database. After this event, your app can read previously accessed data and queue writes even when offline. This setting affects the entire Firebase Database instance and persists until the app is closed."
    .end annotation

    const/4 v0, 0x0

    .line 1167
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OfflinePersistenceEnabled"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PushValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new item to a list at the specified path with an automatically generated unique key. Firebase creates a unique timestamp-based key for each pushed item, ensuring proper ordering and preventing conflicts. Perfect for adding new entries to lists like messages, posts, or user-generated content. Returns the generated key in the PushValueSuccessful event, which you can save for future reference."
    .end annotation

    .line 230
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 235
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertToFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 237
    invoke-virtual {v0, p2}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$10;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$10;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;Lcom/google/firebase/database/DatabaseReference;)V

    .line 238
    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$9;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$9;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 251
    const-string p2, "PushValue"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public PushValueFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when pushing data fails due to network issues, permission problems, or invalid data. The \'tag\' parameter shows which path failed, and \'errorMessage\' provides details about the failure. Common causes include being offline, insufficient write permissions, or database rules rejecting the data."
    .end annotation

    .line 1045
    const-string v0, "PushValueFailed"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PushValueSuccessful(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when data is successfully pushed to the database using PushValue or PushValueWithKey. The \'tag\' parameter shows where the data was pushed, and \'key\' provides the unique identifier for the new item. Save this key if you need to reference, update, or delete this specific item later."
    .end annotation

    .line 1038
    const-string v0, "PushValueSuccessful"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PushValueWithKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new item to a list at the specified path using your own custom key instead of auto-generated one. Use this when you need predictable keys or want to ensure no duplicates (since using the same key twice overwrites). The final path becomes \'tag/key\' where your data is stored. For example, tag=\'users\' and key=\'john123\' stores data at \'users/john123\'. Triggers PushValueSuccessful or PushValueFailed events."
    .end annotation

    .line 260
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 264
    invoke-direct {p0, p3}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertToFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 266
    invoke-virtual {v0, p3}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$12;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p3, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance p3, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$11;

    invoke-direct {p3, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$11;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 280
    const-string p2, "PushValueWithKey"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public QueryFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when a database query fails due to network issues, permission problems, or invalid query parameters. The \'tag\' shows which path was being queried, \'queryType\' indicates which query failed, and \'errorMessage\' provides details about why the query couldn\'t be completed. Common causes include being offline, insufficient read permissions, or invalid sort criteria."
    .end annotation

    .line 1146
    const-string v0, "QueryFailed"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public QueryLimitToFirst(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Limit query results to the first N items in the sorted order. Must be combined with an ordering function (QueryOrderByChild, QueryOrderByKey, or QueryOrderByValue). Perfect for implementing \'top 10\' lists, recent items, or pagination where you want the first page of results. For example, use with QueryOrderByChild(\'score\') and limit=5 to get the 5 lowest scores."
    .end annotation

    .line 486
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 490
    invoke-virtual {v0, p2}, Lcom/google/firebase/database/DatabaseReference;->limitToFirst(I)Lcom/google/firebase/database/Query;

    move-result-object p2

    .line 491
    const-string v0, "LimitToFirst"

    invoke-direct {p0, p2, p1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->executeQuery(Lcom/google/firebase/database/Query;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 493
    const-string p2, "QueryLimitToFirst"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public QueryLimitToLast(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Limit query results to the last N items in the sorted order. Must be combined with an ordering function to specify the sort criteria. Perfect for getting the \'latest\' or \'highest\' items, like recent messages or top scores. For example, use with QueryOrderByChild(\'timestamp\') and limit=10 to get the 10 most recent items. Note: \'Last\' refers to the end of the sorted list, so with ascending order this gives you the highest values."
    .end annotation

    .line 503
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 507
    invoke-virtual {v0, p2}, Lcom/google/firebase/database/DatabaseReference;->limitToLast(I)Lcom/google/firebase/database/Query;

    move-result-object p2

    .line 508
    const-string v0, "LimitToLast"

    invoke-direct {p0, p2, p1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->executeQuery(Lcom/google/firebase/database/Query;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 510
    const-string p2, "QueryLimitToLast"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public QueryOrderByChild(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Query and sort data by the value of a specific child property. Use this to retrieve data ordered by a particular field within each item. For example, if storing users with \'age\' property, use \'age\' as childKey to get users sorted by age. Results are returned in the QueryResult event as a sorted list. Combine with limit functions for pagination. Note: The child key must exist in the items you\'re sorting, or those items will appear first in results."
    .end annotation

    .line 438
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 442
    invoke-virtual {v0, p2}, Lcom/google/firebase/database/DatabaseReference;->orderByChild(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p2

    .line 443
    const-string v0, "OrderByChild"

    invoke-direct {p0, p2, p1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->executeQuery(Lcom/google/firebase/database/Query;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 445
    const-string p2, "QueryOrderByChild"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public QueryOrderByKey(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Query and sort data by the keys (names) of child items in alphabetical order. Useful when your child keys are meaningful (like usernames, dates, or IDs) and you want them sorted alphabetically. For timestamp-based keys, this provides chronological ordering. Results appear in QueryResult event. Commonly used with auto-generated Firebase keys since they sort chronologically by creation time."
    .end annotation

    .line 454
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->orderByKey()Lcom/google/firebase/database/Query;

    move-result-object v0

    .line 459
    const-string v1, "OrderByKey"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->executeQuery(Lcom/google/firebase/database/Query;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 461
    const-string v0, "QueryOrderByKey"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public QueryOrderByValue(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Query and sort data by the actual values stored at each child location. Use this when each child contains a simple value (string, number) that you want to sort by. For example, if storing a list of scores where each child is just a number, this sorts by those scores. Results are returned in QueryResult event in ascending order. Works best with simple data types."
    .end annotation

    .line 470
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->orderByValue()Lcom/google/firebase/database/Query;

    move-result-object v0

    .line 475
    const-string v1, "OrderByValue"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->executeQuery(Lcom/google/firebase/database/Query;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 477
    const-string v0, "QueryOrderByValue"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public QueryResult(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when a database query returns results from functions like QueryOrderByChild, QueryOrderByKey, etc. The \'tag\' shows which path was queried, \'queryType\' indicates which type of query was performed, and \'results\' contains a list of objects with \'key\' and \'value\' properties for each matching item. Results are returned in the order specified by your query (sorted by child, key, or value)."
    .end annotation

    .line 1138
    const-string v0, "QueryResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RemoveFirst(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Atomically remove and return the first item from a list, useful for implementing queues or processing lists. This safely removes the first element even if multiple users are accessing the list simultaneously. Perfect for implementing job queues, message processing, or any first-in-first-out (FIFO) system. If the list is empty or the path doesn\'t contain a list, the operation fails gracefully. The removed value is returned in the FirstRemoved event."
    .end annotation

    .line 744
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    .line 748
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 750
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$20;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$20;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/DatabaseReference;->runTransaction(Lcom/google/firebase/database/Transaction$Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 800
    const-string v0, "RemoveFirst"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public RemoveValue(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete all data at the specified path in your database. The \'tag\' parameter specifies which path to remove (e.g., \'users/john\' removes the entire john user object). This operation cannot be undone, so use carefully. If the path doesn\'t exist, the operation still succeeds. Triggers RemoveValueSuccessful on success or RemoveValueFailed on failure."
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->removeValue()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$8;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$8;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$7;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$7;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 221
    const-string v0, "RemoveValue"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public RemoveValueFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when deleting data fails due to network issues, permission problems, or database rules. The \'tag\' parameter shows which path failed to be removed, and \'errorMessage\' provides failure details. Common causes include being offline, insufficient delete permissions, or database security rules preventing deletion."
    .end annotation

    .line 1031
    const-string v0, "RemoveValueFailed"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RemoveValueSuccessful(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when data is successfully deleted from the specified path using RemoveValue or ClearTag. The \'tag\' parameter indicates which path was successfully removed from the database. This confirms the deletion has been processed by Firebase servers and applied across all connected devices."
    .end annotation

    .line 1024
    const-string v0, "RemoveValueSuccessful"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RunTransactionAppend(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Safely add an item to the end of a list, even if multiple users are adding simultaneously. This ensures items are properly appended without overwriting each other\'s additions. If the path doesn\'t contain a list, it creates a new list. If it contains a non-list value, that value becomes the first item and your value is appended as the second. Perfect for chat messages, notifications, or any growing list where order matters."
    .end annotation

    .line 612
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 615
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 616
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$18;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$18;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->runTransaction(Lcom/google/firebase/database/Transaction$Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 657
    const-string p2, "RunTransactionAppend"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public RunTransactionConditional(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update data only if the current value matches what you expect, preventing conflicts. This conditional update is perfect for implementing optimistic concurrency control. For example, only update a user\'s status if it\'s currently \'online\', or only increment a counter if it\'s below a limit. If the current value matches \'expectedValue\', it gets replaced with \'newValue\'. If not, the transaction aborts safely. Triggers TransactionSuccessful if updated, TransactionAborted if condition not met, or TransactionFailed on error."
    .end annotation

    .line 567
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 571
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$17;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->runTransaction(Lcom/google/firebase/database/Transaction$Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 602
    const-string p2, "RunTransactionConditional"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public RunTransactionCounter(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Increment a counter by 1 in a thread-safe manner, perfect for like counts, view counts, or visitor counters. This is a convenience function that calls RunTransactionIncrement with a value of 1. Multiple users can call this simultaneously without data corruption or lost increments. If the counter doesn\'t exist, it starts at 1. Triggers TransactionSuccessful with the new count."
    .end annotation

    const/4 v0, 0x1

    .line 666
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->RunTransactionIncrement(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public RunTransactionIncrement(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Atomically increment a numeric value by the specified amount, handling concurrent users safely. Perfect for counters, scores, or any number that multiple users might modify simultaneously. Firebase ensures the increment happens atomically, preventing race conditions where simultaneous updates could cause data loss. If the path doesn\'t exist, it starts at 0. The \'incrementBy\' can be positive or negative. Triggers TransactionSuccessful with the final value, or TransactionFailed if something goes wrong."
    .end annotation

    .line 522
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 526
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$16;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->runTransaction(Lcom/google/firebase/database/Transaction$Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 557
    const-string p2, "RunTransactionIncrement"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public ServerTimestampReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when a server timestamp is successfully retrieved and stored using GetServerTimestamp. The \'tag\' shows where the timestamp was stored, and \'timestamp\' contains the server time as milliseconds since epoch. Use this timestamp for accurate time-based operations that need to be consistent across all users."
    .end annotation

    .line 1202
    const-string v0, "ServerTimestampReceived"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public StartChildListening(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start listening for child-level changes (add, remove, modify, move) at the specified path. Unlike StartListening which notifies of any changes, this provides detailed events for each child item. Triggers separate events: ChildAdded, ChildChanged, ChildRemoved, and ChildMoved. Perfect for managing lists where you need to know exactly what happened to each item, like updating a list view efficiently. Use for chat message lists, user lists, or any collection where individual item changes matter."
    .end annotation

    .line 375
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->stopChildListening(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 382
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$15;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;)V

    .line 413
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->childListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;

    .line 415
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ChildListeningStarted(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 417
    const-string v0, "StartChildListening"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public StartListening(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start listening for real-time changes to data at the specified path. Once activated, any changes to the data (by any user, from any device) will automatically trigger the DataChanged event. Perfect for live chat, collaborative editing, or any feature requiring instant updates. The listener stays active until you call StopListening. Only one listener per path is allowed - calling this again on the same path replaces the previous listener."
    .end annotation

    .line 332
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->stopListening(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 339
    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$14;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$14;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->valueListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    .line 354
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ListeningStarted(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 356
    const-string v0, "StartListening"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public StopChildListening(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop receiving child-level change notifications for the specified path. Removes the child event listener that was created by StartChildListening. Call this when you no longer need detailed information about individual child changes. Good practice for memory management and reducing unnecessary network traffic."
    .end annotation

    .line 426
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 427
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->stopChildListening(Ljava/lang/String;)V

    return-void
.end method

.method public StopListening(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop receiving real-time updates for the specified path. Call this to conserve bandwidth and battery when you no longer need live updates for a particular path. Good practice to stop listeners when users navigate away from screens or when data is no longer needed. If no listener exists for the path, this operation does nothing (no error occurs)."
    .end annotation

    .line 365
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->stopListening(Ljava/lang/String;)V

    return-void
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Store any value (text, number, boolean, list, or object) at the specified path in your database. The \'tag\' parameter acts as the path/location where data will be stored (e.g., \'users/john/age\'). This completely replaces any existing data at that location. Use forward slashes to create nested paths. Triggers StoreValueSuccessful event on success or StoreValueFailed event on failure."
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 110
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertToFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 112
    invoke-virtual {v0, p2}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$2;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$2;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$1;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 126
    const-string p2, "StoreValue"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public StoreValueFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when storing data fails due to network issues, permission problems, or invalid data. The \'tag\' parameter shows which path failed, and \'errorMessage\' provides details about the failure. Common causes include being offline, insufficient database permissions, or invalid JSON data."
    .end annotation

    .line 1003
    const-string v0, "StoreValueFailed"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public StoreValueSuccessful(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when data is successfully stored at the specified path using StoreValue. The \'tag\' parameter indicates which path was successfully updated. This confirms your data has been written to Firebase servers and synchronized to all connected devices."
    .end annotation

    .line 996
    const-string v0, "StoreValueSuccessful"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TransactionAborted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when a conditional transaction is aborted because the current value didn\'t match the expected value. The \'tag\' shows which path was being updated, and \'reason\' explains why the transaction was aborted. This is normal behavior for RunTransactionConditional when the condition check fails - it\'s not an error."
    .end annotation

    .line 1216
    const-string v0, "TransactionAborted"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TransactionData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered during transaction processing to provide information about the current data state. The \'tag\' shows which path is being processed, and \'currentValue\' contains the current data at that location. This event is primarily for debugging and monitoring transaction behavior."
    .end annotation

    .line 1223
    const-string v0, "TransactionData"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TransactionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when a transaction fails due to network issues, permission problems, or too many retries. The \'tag\' shows which path the transaction was attempting to modify, and \'errorMessage\' explains why it failed. Transactions may fail due to being offline, insufficient permissions, or if Firebase retries too many times due to conflicts."
    .end annotation

    .line 1160
    const-string v0, "TransactionFailed"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TransactionSuccessful(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when a transaction completes successfully, such as from RunTransactionIncrement or RunTransactionConditional. The \'tag\' shows which path was modified by the transaction, and \'finalValue\' contains the resulting data after the transaction. This confirms that your atomic operation completed successfully and shows you the final state of the data."
    .end annotation

    .line 1153
    const-string v0, "TransactionSuccessful"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Unauthenticate()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Placeholder function for compatibility with the original FirebaseDB component. Modern Firebase authentication should be handled through the separate FirebaseAuth component in Niotron. This function doesn\'t perform any actual authentication operations - it\'s only provided for backward compatibility when migrating projects from the classic FirebaseDB component."
    .end annotation

    .line 873
    const-string v0, "FirebaseRealtimeDB"

    const-string v1, "Unauthenticate called - use FirebaseAuth component for authentication management"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public UpdateValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update a single value at the specified path in your database. Similar to StoreValue but semantically indicates you\'re updating existing data. The \'tag\' parameter specifies the exact path to update (e.g., \'users/john/email\'). Completely replaces the value at that location. Triggers UpdateValueSuccessful or UpdateValueFailed events."
    .end annotation

    .line 135
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 139
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertToFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 141
    invoke-virtual {v0, p2}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$4;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$4;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$3;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$3;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 155
    const-string p2, "UpdateValue"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public UpdateValueFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when updating data fails due to network issues, permission problems, or invalid data. The \'tag\' parameter shows which path failed to update, and \'errorMessage\' explains the failure reason. Common causes include being offline, insufficient database permissions, or malformed update data."
    .end annotation

    .line 1017
    const-string v0, "UpdateValueFailed"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UpdateValueSuccessful(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when data is successfully updated at the specified path using UpdateValue or UpdateValues. The \'tag\' parameter indicates which path was successfully modified. This confirms your update has been applied to Firebase servers and synchronized across all devices."
    .end annotation

    .line 1010
    const-string v0, "UpdateValueSuccessful"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UpdateValues(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update multiple fields at once under the specified path without overwriting the entire object. Use this when you want to update several properties of an object simultaneously. The \'updates\' parameter should be a dictionary where keys are field names and values are the new data. For example, to update both name and age: create a dictionary with \'name\':\'John\' and \'age\':25. Only the specified fields are updated; other existing fields remain unchanged."
    .end annotation

    .line 165
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 168
    :cond_0
    const-string v0, "UpdateValues"

    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual {p2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 173
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 175
    invoke-virtual {p2}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->convertToFirebaseType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 179
    :cond_2
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->databaseReference:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {p2, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p2

    .line 180
    invoke-virtual {p2, v1}, Lcom/google/firebase/database/DatabaseReference;->updateChildren(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$6;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$6;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$5;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB$5;-><init>(Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 169
    :cond_3
    :goto_1
    const-string p1, "Updates dictionary cannot be null or empty"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 194
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/FirebaseRealtimeDB;->ErrorOccurred(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public WentOffline()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when the Firebase Database connection goes offline, either manually via GoOffline or due to network loss. While offline, writes are queued locally and listeners work with cached data. Your app can continue functioning with previously loaded data until connectivity is restored."
    .end annotation

    const/4 v0, 0x0

    .line 1188
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WentOffline"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public WentOnline()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when the Firebase Database connection comes back online, either manually via GoOnline or when network is restored. When online, all queued writes are sent to the server and real-time listeners will resume receiving live updates. Your app will start receiving fresh data from the server again."
    .end annotation

    const/4 v0, 0x0

    .line 1195
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WentOnline"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
