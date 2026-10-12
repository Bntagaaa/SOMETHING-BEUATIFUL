.class public Lcom/google/appinventor/components/runtime/NiotronFirestore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Firebase Firestore component for storing data"
    iconName = "images/firestore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "firebase-firestore.aar, firebase-firestore.jar, firebase-common.aar, firebase-common.jar, firebase-components.aar, firebase-components.jar, firebase-auth-interop.aar, firebase-auth-interop.jar, firebase-annotations.jar, protolite-well-known-types.aar, protolite-well-known-types.jar, firebase-database-collection.aar, firebase-database-collection.jar, firebase-appcheck-interop.aar, firebase-appcheck-interop.jar, play-services-base.aar, play-services-base.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, annotation.jar, grpc-stub.jar, grpc-protobuf-lite.jar, grpc-okhttp.jar, grpc-android.aar, grpc-android.jar, javax.inject.jar, protobuf-javalite.jar, grpc-core.jar, grpc-api.jar, jsr305.jar, okio-jvm.jar, perfmark-api.jar, grpc-context.jar, failureaccess.jar, gson.jar, annotations.jar, animal-sniffer-annotations.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE"
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final TAG:Ljava/lang/String; = "Niotron Firestore"


# instance fields
.field public activity:Landroid/app/Activity;

.field public context:Landroid/content/Context;

.field private db:Lcom/google/firebase/firestore/FirebaseFirestore;

.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/ListenerRegistration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 84
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-wide/16 v3, 0x3c

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 88
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->listeners:Ljava/util/Map;

    .line 89
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->context:Landroid/content/Context;

    .line 90
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->activity:Landroid/app/Activity;

    .line 92
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronFirestore;Lcom/google/firebase/firestore/Query;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->deleteQueryBatch(Lcom/google/firebase/firestore/Query;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private deleteCollection(Lcom/google/firebase/firestore/CollectionReference;ILjava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/CollectionReference;",
            "I",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 540
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirestore$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore$18;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;Lcom/google/firebase/firestore/CollectionReference;I)V

    invoke-static {p3, v0}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private deleteCollection(Ljava/lang/String;)V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    const/16 v0, 0x32

    sget-object v1, Lcom/google/appinventor/components/runtime/NiotronFirestore;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->deleteCollection(Lcom/google/firebase/firestore/CollectionReference;ILjava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private deleteQueryBatch(Lcom/google/firebase/firestore/Query;)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/Query;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 559
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/QuerySnapshot;

    .line 561
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Query;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->batch()Lcom/google/firebase/firestore/WriteBatch;

    move-result-object p1

    .line 562
    invoke-virtual {v0}, Lcom/google/firebase/firestore/QuerySnapshot;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    .line 563
    invoke-virtual {v2}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->getReference()Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/firebase/firestore/WriteBatch;->delete(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/WriteBatch;

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/WriteBatch;->commit()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 567
    invoke-virtual {v0}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private toMap(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 527
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFirestore$17;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$17;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    .line 528
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/NiotronFirestore$17;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 527
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 530
    const-string v0, "Niotron Firestore"

    const-string v1, "Error converting YailDictionary to Map"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method


# virtual methods
.method public AddDocument(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new document with a generated id."
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    if-nez v0, :cond_0

    .line 250
    const-string p1, "Firestore not initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 258
    const-string p1, "Document cannot be null"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    .line 262
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->toMap(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/CollectionReference;->add(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$8;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$8;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$7;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$7;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    .line 268
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 254
    :cond_3
    :goto_0
    const-string p1, "Collection reference cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void
.end method

.method public DeleteCollection(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deleted collection."
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    if-nez v0, :cond_0

    .line 428
    const-string p1, "Firestore not initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 431
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 435
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->deleteCollection(Ljava/lang/String;)V

    return-void

    .line 432
    :cond_2
    :goto_0
    const-string p1, "Collection reference cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void
.end method

.method public DeleteDocument(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deleted document."
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    if-nez v0, :cond_0

    .line 441
    const-string p1, "Firestore not initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 444
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    .line 449
    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirestore$16;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$16;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirestore$15;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$15;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    .line 455
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 445
    :cond_2
    :goto_0
    const-string p1, "Document reference cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void
.end method

.method public FailedToInitialize(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Failed to Initialize Firebase Firestore Component"
    .end annotation

    .line 511
    const-string v0, "FailedToInitialize"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FirestoreInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Firebase Firestore Component Initialized"
    .end annotation

    const/4 v0, 0x0

    .line 506
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FirestoreInitialized"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetAllDocs(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the complete list of documents in the collection, returning to \"GotAllDocs.\""
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    if-nez v0, :cond_0

    .line 341
    const-string p1, "Firestore not initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 344
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/CollectionReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirestore$13;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$13;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 345
    :cond_2
    :goto_0
    const-string p1, "Collection reference cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void
.end method

.method public GetDocument(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the Document by returning a Dictionary in \"GotDocument\"."
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    if-nez v0, :cond_0

    .line 117
    const-string p1, "Firestore not initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirestore$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 121
    :cond_2
    :goto_0
    const-string p1, "Document reference cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void
.end method

.method public GetDocumentQuery(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get a list of documents according to the query, returning it in \"GotQuery\"."
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    if-nez v0, :cond_0

    .line 150
    const-string p1, "Firestore not initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 158
    const-string p1, "Query cannot be null"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    .line 162
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    .line 163
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/query/QueryHelper;->processQueries(Lorg/json/JSONArray;Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Query;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$2;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid query format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    .line 183
    const-string p2, "Niotron Firestore"

    const-string v0, "JSON Exception in GetDocumentQuery"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 154
    :cond_3
    :goto_0
    const-string p1, "Collection reference cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void
.end method

.method public GotAllDocs(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event returns all documents."
    .end annotation

    .line 471
    const-string v0, "GotAllDocs"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotDocument(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Returns the document in the dictionary type obtained from \"GotValue\"."
    .end annotation

    .line 466
    const-string v0, "GotDocument"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotQuery(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event returns a list with the selected data."
    .end annotation

    .line 476
    const-string v0, "GotQuery"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public InitializeFirestore(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the Firebase Firestore Component"
    .end annotation

    .line 97
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/FirebaseCore;

    if-eqz v0, :cond_2

    .line 98
    check-cast p1, Lcom/google/appinventor/components/runtime/FirebaseCore;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FirebaseCore;->getFirebaseAppInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    if-nez p1, :cond_0

    .line 100
    const-string p1, "Firebase Core Component is not Initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->FailedToInitialize(Ljava/lang/String;)V

    return-void

    .line 103
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    if-nez p1, :cond_1

    .line 105
    const-string p1, "Firebase Firestore failed to Initialize. Returned Null"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->FailedToInitialize(Ljava/lang/String;)V

    return-void

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->FirestoreInitialized()V

    return-void

    .line 110
    :cond_2
    const-string p1, "Invalid Firebase Core Component"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->FailedToInitialize(Ljava/lang/String;)V

    return-void
.end method

.method public NewDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new empty document with a specific name, if you want to create it by generating an id leave the documentName field empty."
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    if-nez v0, :cond_0

    .line 280
    const-string p1, "Firestore not initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 283
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 287
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_3

    .line 289
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    goto :goto_1

    .line 290
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {p2, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/CollectionReference;->document()Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    .line 293
    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$10;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$10;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$9;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$9;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    .line 299
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 284
    :cond_4
    :goto_2
    const-string p1, "Collection reference cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void
.end method

.method public OnFailure(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Returns the error message."
    .end annotation

    .line 486
    const-string v0, "OnFailure"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnListenerAdded(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When registering the listener, this event will be called when adding a field to the collection."
    .end annotation

    .line 491
    const-string v0, "OnListenerAdded"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnListenerModified(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When registering the listener, this event will be called when modifying a field in the collection."
    .end annotation

    .line 496
    const-string v0, "OnListenerModified"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnListenerRemoved(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When registering the listener, this event will be called when removing a field from the collection."
    .end annotation

    .line 501
    const-string v0, "OnListenerRemoved"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Returns the event if any method is successful."
    .end annotation

    .line 481
    const-string v0, "OnSuccess"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RegisterListener(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Register a listener and if there are changes to the collection it will return to OnListenerAdded, OnListenerModified, OnListenerRemoved."
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    if-nez v0, :cond_0

    .line 370
    const-string p1, "Firestore not initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 373
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    const-string v0, "Listener already exists for collection: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    .line 383
    new-instance v1, Lcom/google/appinventor/components/runtime/NiotronFirestore$14;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$14;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/Query;->addSnapshotListener(Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->listeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 374
    :cond_3
    :goto_0
    const-string p1, "Collection reference cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void
.end method

.method public RemoveAllListeners()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes all listeners."
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 517
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 518
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/ListenerRegistration;

    invoke-interface {v1}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    goto :goto_0

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 522
    const-string v0, "All listeners removed"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public RemoveListener(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes the listener."
    .end annotation

    if-eqz p1, :cond_2

    .line 412
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/ListenerRegistration;

    if-eqz v0, :cond_1

    .line 418
    invoke-interface {v0}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    .line 419
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 421
    :cond_1
    const-string v0, "No listener found for collection: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    .line 413
    :cond_2
    :goto_0
    const-string p1, "Collection reference cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void
.end method

.method public SetDocument(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the documents."
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    if-nez v0, :cond_0

    .line 190
    const-string p1, "Firestore not initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 198
    const-string p1, "Document cannot be null"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    .line 202
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->toMap(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$4;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$3;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    .line 208
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 194
    :cond_3
    :goto_0
    const-string p1, "Document reference cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void
.end method

.method public SetFieldWithMerge(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update one field, creating the document if it does not already exist."
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    if-nez v0, :cond_0

    .line 220
    const-string p1, "Firestore not initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 228
    const-string p1, "Document cannot be null"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    .line 232
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->toMap(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/Map;

    move-result-object p2

    invoke-static {}, Lcom/google/firebase/firestore/SetOptions;->merge()Lcom/google/firebase/firestore/SetOptions;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$6;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$6;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$5;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$5;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    .line 238
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 224
    :cond_3
    :goto_0
    const-string p1, "Document reference cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void
.end method

.method public UpdateDocument(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Updates the document."
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    if-nez v0, :cond_0

    .line 311
    const-string p1, "Firestore not initialized"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 319
    const-string p1, "Document cannot be null"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirestore;->db:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object p1

    .line 323
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->toMap(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$12;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$12;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirestore$11;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore$11;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirestore;)V

    .line 329
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 315
    :cond_3
    :goto_0
    const-string p1, "Document reference cannot be null or empty"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->OnFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 572
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/NiotronFirestore;->RemoveAllListeners()V

    return-void
.end method
