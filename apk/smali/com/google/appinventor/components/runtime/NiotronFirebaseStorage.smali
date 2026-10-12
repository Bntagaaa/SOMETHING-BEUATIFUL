.class public final Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for firebase cloud storage"
    iconName = "images/niotronFirebaseStorage.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "firebase-storage.aar, firebase-storage.jar, json.jar, firebase-auth-interop.aar, firebase-auth-interop.jar, firebase-appcheck.aar, firebase-appcheck.jar, firebase-appcheck-interop.aar, firebase-appcheck-interop.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "Firebase Storage"


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private storage:Lcom/google/firebase/storage/FirebaseStorage;

.field private storageRef:Lcom/google/firebase/storage/StorageReference;

.field private uploadTask:Lcom/google/firebase/storage/UploadTask;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 54
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 55
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->context:Landroid/content/Context;

    .line 56
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public BuildMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 243
    new-instance v0, Lcom/google/firebase/storage/StorageMetadata$Builder;

    invoke-direct {v0}, Lcom/google/firebase/storage/StorageMetadata$Builder;-><init>()V

    .line 244
    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentType(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    move-result-object p1

    .line 245
    invoke-virtual {p1, p2}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentLanguage(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    move-result-object p1

    .line 246
    invoke-virtual {p1, p3}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setCacheControl(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    move-result-object p1

    .line 247
    invoke-virtual {p1, p4}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentDisposition(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    move-result-object p1

    .line 248
    invoke-virtual {p1, p5}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentEncoding(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    move-result-object p1

    .line 250
    invoke-virtual {p6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 p4, 0x0

    .line 251
    invoke-virtual {p3, p4}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x1

    .line 252
    invoke-virtual {p3, p5}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 253
    invoke-virtual {p1, p4, p3}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setCustomMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata$Builder;->build()Lcom/google/firebase/storage/StorageMetadata;

    move-result-object p1

    return-object p1
.end method

.method public CancelUpload()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cancels the ongoing upload"
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->uploadTask:Lcom/google/firebase/storage/UploadTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->cancel()Z

    return-void
.end method

.method public DeleteFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 291
    const-string v0, "DeleteFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DeleteFile(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes the file in the cloud"
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$12;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$12;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$11;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$11;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V

    .line 194
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public DownloadUrl(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 271
    const-string v0, "DownloadUrl"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DownloadUrlFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 276
    const-string v0, "DownloadUrlFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FailedToInitialize(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Failed to Initialized Firebase Storage Component"
    .end annotation

    .line 76
    const-string v0, "FailedToInitialize"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FileDeleted()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 296
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DeleteFailed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FileListError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 286
    const-string v0, "FileListError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FileListFound(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 281
    const-string v0, "FileListFound"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FileUploaded(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 301
    const-string v0, "FileUploaded"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetDownloadURL(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Fetched the publicly accessible url of the file"
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getDownloadUrl()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$10;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$10;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$9;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$9;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V

    .line 177
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public InitializeFirebaseStorage(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize the Firebase Storage Component"
    .end annotation

    .line 61
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/FirebaseCore;

    if-eqz v0, :cond_1

    .line 62
    check-cast p1, Lcom/google/appinventor/components/runtime/FirebaseCore;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FirebaseCore;->getFirebaseAppInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    if-nez p1, :cond_0

    .line 64
    const-string p1, "Firebase Core Component failed to Initialize"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->FailedToInitialize(Ljava/lang/String;)V

    return-void

    .line 67
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->storage:Lcom/google/firebase/storage/FirebaseStorage;

    .line 68
    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->storageRef:Lcom/google/firebase/storage/StorageReference;

    return-void

    .line 70
    :cond_1
    const-string p1, "Invalid Firebase Core Component"

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->FailedToInitialize(Ljava/lang/String;)V

    return-void
.end method

.method public ListFiles(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Lists all the files in the path given"
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->listAll()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$14;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$14;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V

    .line 206
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$13;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$13;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V

    .line 230
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public MetaDataUpdateFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 266
    const-string v0, "MetaDataUpdateFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PauseUpload()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pauses the ongoing upload"
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->uploadTask:Lcom/google/firebase/storage/UploadTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->pause()Z

    return-void
.end method

.method public ResumeUpload()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes the paused upload"
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->uploadTask:Lcom/google/firebase/storage/UploadTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/UploadTask;->resume()Z

    return-void
.end method

.method public UpdateProperties(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 149
    instance-of v0, p2, Lcom/google/firebase/storage/StorageMetadata;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    check-cast p2, Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {p1, p2}, Lcom/google/firebase/storage/StorageReference;->updateMetadata(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$8;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$8;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V

    .line 153
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$7;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$7;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V

    .line 160
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 150
    :cond_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Firebase Storage"

    const-string v0, "Metadata format invalid"

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public UpdatedMetaData()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 261
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UpdatedMetaData"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UploadFailed(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 306
    const-string v0, "UploadFailed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v1, "Firebase Storage"

    if-eqz p1, :cond_2

    .line 85
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->storageRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0, p2}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p2

    .line 87
    instance-of v0, p3, Lcom/google/firebase/storage/StorageMetadata;

    if-eqz v0, :cond_0

    .line 88
    check-cast p3, Lcom/google/firebase/storage/StorageMetadata;

    invoke-virtual {p2, p1, p3}, Lcom/google/firebase/storage/StorageReference;->putFile(Landroid/net/Uri;Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/UploadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->uploadTask:Lcom/google/firebase/storage/UploadTask;

    goto :goto_0

    .line 89
    :cond_0
    instance-of p3, p3, Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 90
    invoke-virtual {p2, p1}, Lcom/google/firebase/storage/StorageReference;->putFile(Landroid/net/Uri;)Lcom/google/firebase/storage/UploadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->uploadTask:Lcom/google/firebase/storage/UploadTask;

    .line 95
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->uploadTask:Lcom/google/firebase/storage/UploadTask;

    new-instance p3, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$2;

    invoke-direct {p3, p0, p2}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$2;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;Lcom/google/firebase/storage/StorageReference;)V

    invoke-virtual {p1, p3}, Lcom/google/firebase/storage/UploadTask;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V

    .line 105
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 119
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;->uploadTask:Lcom/google/firebase/storage/UploadTask;

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$6;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$6;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V

    invoke-virtual {p1, p2}, Lcom/google/firebase/storage/UploadTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$5;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$5;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V

    .line 126
    invoke-virtual {p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$4;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$4;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V

    .line 132
    invoke-virtual {p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$3;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage$3;-><init>(Lcom/google/appinventor/components/runtime/NiotronFirebaseStorage;)V

    .line 138
    invoke-virtual {p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    return-void

    .line 92
    :cond_1
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Invalid metadata provided"

    invoke-direct {p1, p2, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_2
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Local file does not exist"

    invoke-direct {p1, p2, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public UploadPaused()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 311
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UploadPaused"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UploadProgressed(D)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 316
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "UploadProgressed"

    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
