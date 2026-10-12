.class public final Lcom/google/appinventor/components/runtime/NiotronCloudinary;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Cloudinary component helps you upload your images and videos in cloudenary cloud storage "
    iconName = "images/niotronCloudinary.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "cloudinary-android-1.30.0.jar, cloudinary-android-core-1.30.0.jar, cloudinary-core-1.29.0.jar, android-job.jar, android-job.aar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.WAKE_LOCK, android.permission.ACCESS_NETWORK_STATE, android.permission.RECEIVE_BOOT_COMPLETED"
.end annotation


# instance fields
.field private apiKey:Ljava/lang/String;

.field private apiSecret:Ljava/lang/String;

.field private cloudName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private isInitialized:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 44
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 46
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public ApiKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "API Key"
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "API-KEY"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "API Key"
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public ApiSecret()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "API Secret"
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->apiSecret:Ljava/lang/String;

    return-object v0
.end method

.method public ApiSecret(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "API-SECRET"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "API Secret"
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->apiSecret:Ljava/lang/String;

    return-void
.end method

.method public CloudName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "API Secret"
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->cloudName:Ljava/lang/String;

    return-object v0
.end method

.method public CloudName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "CLOUD-NAME"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Cloud Name"
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->cloudName:Ljava/lang/String;

    return-void
.end method

.method public DeleteFile(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes file"
    .end annotation

    .line 116
    :try_start_0
    invoke-static {}, Lcom/cloudinary/android/MediaManager;->get()Lcom/cloudinary/android/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloudinary/android/MediaManager;->getCloudinary()Lcom/cloudinary/Cloudinary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloudinary/Cloudinary;->uploader()Lcom/cloudinary/Uploader;

    move-result-object v0

    invoke-static {}, Lcom/cloudinary/utils/ObjectUtils;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/cloudinary/Uploader;->destroy(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 118
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v0, "Cloudinary"

    const-string v1, "Could not delete file because of IOException"

    invoke-direct {p1, v0, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public InitializeSdk()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initializes the SDK"
    .end annotation

    .line 153
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->isInitialized:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->isInitialized:Z

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cloudinary/android/MediaManager;->init(Landroid/content/Context;)V

    .line 159
    invoke-static {}, Lcom/cloudinary/android/MediaManager;->get()Lcom/cloudinary/android/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloudinary/android/MediaManager;->getCloudinary()Lcom/cloudinary/Cloudinary;

    move-result-object v0

    iget-object v0, v0, Lcom/cloudinary/Cloudinary;->config:Lcom/cloudinary/Configuration;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->apiKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/cloudinary/Configuration;->apiKey:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/cloudinary/android/MediaManager;->get()Lcom/cloudinary/android/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloudinary/android/MediaManager;->getCloudinary()Lcom/cloudinary/Cloudinary;

    move-result-object v0

    iget-object v0, v0, Lcom/cloudinary/Cloudinary;->config:Lcom/cloudinary/Configuration;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->apiSecret:Ljava/lang/String;

    iput-object v1, v0, Lcom/cloudinary/Configuration;->apiSecret:Ljava/lang/String;

    .line 161
    invoke-static {}, Lcom/cloudinary/android/MediaManager;->get()Lcom/cloudinary/android/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloudinary/android/MediaManager;->getCloudinary()Lcom/cloudinary/Cloudinary;

    move-result-object v0

    iget-object v0, v0, Lcom/cloudinary/Cloudinary;->config:Lcom/cloudinary/Configuration;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronCloudinary;->cloudName:Ljava/lang/String;

    iput-object v1, v0, Lcom/cloudinary/Configuration;->cloudName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public RandomPublicId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get Random public id"
    .end annotation

    .line 133
    invoke-static {}, Lcom/cloudinary/android/MediaManager;->get()Lcom/cloudinary/android/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloudinary/android/MediaManager;->getCloudinary()Lcom/cloudinary/Cloudinary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloudinary/Cloudinary;->randomPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public RenameFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Rename file"
    .end annotation

    .line 125
    :try_start_0
    invoke-static {}, Lcom/cloudinary/android/MediaManager;->get()Lcom/cloudinary/android/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloudinary/android/MediaManager;->getCloudinary()Lcom/cloudinary/Cloudinary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloudinary/Cloudinary;->uploader()Lcom/cloudinary/Uploader;

    move-result-object v0

    invoke-static {}, Lcom/cloudinary/utils/ObjectUtils;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/cloudinary/Uploader;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 127
    :catch_0
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string p2, "Cloudinary"

    const-string v0, "Could not rename file because of IOException"

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public UploadComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invoked after upload complete"
    .end annotation

    .line 138
    const-string v0, "UploadComplete"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UploadFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invoked after upload failed"
    .end annotation

    .line 148
    const-string v0, "UploadFail"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UploadFile(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Upload file"
    .end annotation

    .line 84
    invoke-static {}, Lcom/cloudinary/android/MediaManager;->get()Lcom/cloudinary/android/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloudinary/android/MediaManager;->upload(Ljava/lang/String;)Lcom/cloudinary/android/UploadRequest;

    move-result-object p1

    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronCloudinary$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronCloudinary$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronCloudinary;)V

    invoke-virtual {p1, v0}, Lcom/cloudinary/android/UploadRequest;->callback(Lcom/cloudinary/android/callback/UploadCallback;)Lcom/cloudinary/android/UploadRequest;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/cloudinary/android/UploadRequest;->dispatch()Ljava/lang/String;

    return-void
.end method

.method public UploadProgress(Ljava/lang/String;J)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invoked after upload progress"
    .end annotation

    .line 143
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 p1, 0x1

    aput-object p2, p3, p1

    const-string p1, "UploadProgress"

    invoke-static {p0, p1, p3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
