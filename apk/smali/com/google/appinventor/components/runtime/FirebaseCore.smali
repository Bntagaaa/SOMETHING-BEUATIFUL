.class public final Lcom/google/appinventor/components/runtime/FirebaseCore;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x17
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->FIREBASE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Firebase Core. Required for all Firebase Components"
    iconName = "images/firebaseCore.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "firebase-common.aar, firebase-common.jar, firebase-components.aar, firebase-components.jar, firebase-annotations.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, javax.inject.jar, annotation.jar"
.end annotation


# instance fields
.field private FirebaseAppInstance:Lcom/google/firebase/FirebaseApp;

.field private apiKey:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private databaseUrl:Ljava/lang/String;

.field private gcmSenderId:Ljava/lang/String;

.field private instanceId:Ljava/lang/String;

.field private projectId:Ljava/lang/String;

.field private storageBucket:Ljava/lang/String;

.field private useJson:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 29
    const-string p1, "Niotron"

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->instanceId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->useJson:Z

    .line 50
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public ApiKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "API Key from Firebase"
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "API Key from Firebase. Example: AIxxxxSxxxEZ-2xxxXxxxxxXxx8Xxxxxx"
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public ApplicationId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Application Id from Firebase"
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public ApplicationId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Application Id from Firebase. Example: 1:0000000000:android:7xxx5xxxxx1xxxfxxx5"
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public ComponentInitialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Firebase Core Component Initialized"
    .end annotation

    const/4 v0, 0x0

    .line 210
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ComponentInitialized"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DatabaseUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Database URl from Firebase"
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->databaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public DatabaseUrl(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Database URl from Firebase"
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->databaseUrl:Ljava/lang/String;

    return-void
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event Block that will be called when a error occurs"
    .end annotation

    .line 215
    const-string v0, "ErrorOccurred"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GcmSenderId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gcm Sender Id from Firebase"
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->gcmSenderId:Ljava/lang/String;

    return-object v0
.end method

.method public GcmSenderId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gcm Sender Id from Firebase"
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->gcmSenderId:Ljava/lang/String;

    return-void
.end method

.method public InitializeComponent()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initializes Firebase Core Component required for All Firebase Components. ApplicationId and APIKey are required. Other Values are optional"
    .end annotation

    .line 144
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->useJson:Z

    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->FirebaseAppInstance:Lcom/google/firebase/FirebaseApp;

    .line 147
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FirebaseCore;->ComponentInitialized()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 150
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->FirebaseAppInstance:Lcom/google/firebase/FirebaseApp;

    .line 151
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FirebaseCore;->ComponentInitialized()V

    goto/16 :goto_1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->applicationId:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->apiKey:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 158
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->instanceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->delete()V

    .line 167
    :cond_1
    new-instance v0, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->applicationId:Ljava/lang/String;

    .line 168
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->apiKey:Ljava/lang/String;

    .line 169
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->databaseUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setDatabaseUrl(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->storageBucket:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 176
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setStorageBucket(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    .line 179
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->gcmSenderId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 180
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    .line 183
    :cond_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->projectId:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 184
    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    .line 187
    :cond_5
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->gcmSenderId:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->projectId:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 188
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->apiKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->applicationId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->databaseUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->storageBucket:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 0
    invoke-static {v7, v3, v6}, L_COROUTINE/a;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->context:Landroid/content/Context;

    const-string v3, "NiotronFCM"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 190
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 191
    const-string v3, "data"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->instanceId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->FirebaseAppInstance:Lcom/google/firebase/FirebaseApp;

    .line 197
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FirebaseCore;->ComponentInitialized()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseCore;->ErrorOccurred(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 202
    :cond_7
    const-string v0, "ApplicationId and API Key are required. They can be found in the google-services.json file."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseCore;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public InstanceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Instance Id for Firebase Core"
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public InstanceId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Niotron"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Instance Id for Firebase Core"
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->instanceId:Ljava/lang/String;

    return-void
.end method

.method public ProjectId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Project Id from Firebase"
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public ProjectId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Project Id from Firebase"
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->projectId:Ljava/lang/String;

    return-void
.end method

.method public StorageBucket()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Storage Bucket from Firebase"
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->storageBucket:Ljava/lang/String;

    return-object v0
.end method

.method public StorageBucket(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Storage Bucket from Firebase"
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->storageBucket:Ljava/lang/String;

    return-void
.end method

.method public UseJsonFile(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->CREDENTIALS:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Use google-services json file"
    .end annotation

    .line 60
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->useJson:Z

    return-void
.end method

.method public getFirebaseAppInstance()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseCore;->FirebaseAppInstance:Lcom/google/firebase/FirebaseApp;

    return-object v0
.end method
