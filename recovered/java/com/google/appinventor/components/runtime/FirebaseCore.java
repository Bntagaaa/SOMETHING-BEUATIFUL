package com.google.appinventor.components.runtime;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;

@DesignerComponent(androidMinSdk = 23, category = ComponentCategory.FIREBASE, description = "Firebase Core. Required for all Firebase Components", iconName = "images/firebaseCore.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "firebase-common.aar, firebase-common.jar, firebase-components.aar, firebase-components.jar, firebase-annotations.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, javax.inject.jar, annotation.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class FirebaseCore extends AndroidNonvisibleComponent {
    private FirebaseApp FirebaseAppInstance;
    private String apiKey;
    private String applicationId;
    private Context context;
    private String databaseUrl;
    private String gcmSenderId;
    private String instanceId;
    private String projectId;
    private String storageBucket;
    private boolean useJson;

    public FirebaseCore(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.instanceId = "Niotron";
        this.useJson = false;
        this.context = this.form.$context();
    }

    public FirebaseApp getFirebaseAppInstance() {
        return this.FirebaseAppInstance;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Use google-services json file")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void UseJsonFile(boolean z) {
        this.useJson = z;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Instance Id for Firebase Core")
    @DesignerProperty(defaultValue = "Niotron")
    public void InstanceId(String str) {
        this.instanceId = str;
    }

    @SimpleProperty(description = "Instance Id for Firebase Core")
    public String InstanceId() {
        return this.instanceId;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Application Id from Firebase. Example: 1:0000000000:android:7xxx5xxxxx1xxxfxxx5")
    @DesignerProperty
    public void ApplicationId(String str) {
        this.applicationId = str;
    }

    @SimpleProperty(description = "Application Id from Firebase")
    public String ApplicationId() {
        return this.applicationId;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "API Key from Firebase. Example: AIxxxxSxxxEZ-2xxxXxxxxxXxx8Xxxxxx")
    @DesignerProperty
    public void ApiKey(String str) {
        this.apiKey = str;
    }

    @SimpleProperty(description = "API Key from Firebase")
    public String ApiKey() {
        return this.apiKey;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Database URl from Firebase")
    @DesignerProperty
    public void DatabaseUrl(String str) {
        this.databaseUrl = str;
    }

    @SimpleProperty(description = "Database URl from Firebase")
    public String DatabaseUrl() {
        return this.databaseUrl;
    }

    @SimpleProperty(description = "Gcm Sender Id from Firebase")
    @DesignerProperty
    public void GcmSenderId(String str) {
        this.gcmSenderId = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Gcm Sender Id from Firebase")
    public String GcmSenderId() {
        return this.gcmSenderId;
    }

    @SimpleProperty(description = "Project Id from Firebase")
    @DesignerProperty
    public void ProjectId(String str) {
        this.projectId = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Project Id from Firebase")
    public String ProjectId() {
        return this.projectId;
    }

    @SimpleProperty(description = "Storage Bucket from Firebase")
    @DesignerProperty
    public void StorageBucket(String str) {
        this.storageBucket = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "Storage Bucket from Firebase")
    public String StorageBucket() {
        return this.storageBucket;
    }

    @SimpleFunction(description = "Initializes Firebase Core Component required for All Firebase Components. ApplicationId and APIKey are required. Other Values are optional")
    public void InitializeComponent() {
        FirebaseApp firebaseApp;
        String str;
        if (this.useJson) {
            try {
                this.FirebaseAppInstance = FirebaseApp.getInstance();
                ComponentInitialized();
                return;
            } catch (IllegalStateException unused) {
                this.FirebaseAppInstance = FirebaseApp.initializeApp(this.context);
                ComponentInitialized();
                return;
            }
        }
        if (this.applicationId == null || this.apiKey == null) {
            ErrorOccurred("ApplicationId and API Key are required. They can be found in the google-services.json file.");
            return;
        }
        try {
            firebaseApp = FirebaseApp.getInstance(this.instanceId);
        } catch (IllegalStateException unused2) {
            firebaseApp = null;
        }
        if (firebaseApp != null) {
            firebaseApp.delete();
        }
        FirebaseOptions.Builder apiKey = new FirebaseOptions.Builder().setApplicationId(this.applicationId).setApiKey(this.apiKey);
        String str2 = this.databaseUrl;
        if (str2 != null) {
            apiKey.setDatabaseUrl(str2);
        }
        String str3 = this.storageBucket;
        if (str3 != null) {
            apiKey.setStorageBucket(str3);
        }
        String str4 = this.gcmSenderId;
        if (str4 != null) {
            apiKey.setGcmSenderId(str4);
        }
        String str5 = this.projectId;
        if (str5 != null) {
            apiKey.setProjectId(str5);
        }
        String str6 = this.gcmSenderId;
        if (str6 != null && (str = this.projectId) != null) {
            String str7 = this.apiKey;
            String str8 = this.applicationId;
            String str9 = this.databaseUrl;
            String str10 = this.storageBucket;
            StringBuilder sb = new StringBuilder();
            sb.append(str7);
            sb.append(",");
            sb.append(str);
            sb.append(",");
            sb.append(str8);
            sb.append(",");
            sb.append(str6);
            sb.append(",");
            sb.append(str9);
            String strM = _COROUTINE.a.m(sb, ",", str10);
            SharedPreferences.Editor editorEdit = this.context.getSharedPreferences("NiotronFCM", 0).edit();
            editorEdit.putString("data", strM);
            editorEdit.commit();
        }
        try {
            this.FirebaseAppInstance = FirebaseApp.initializeApp(this.context, apiKey.build(), this.instanceId);
            ComponentInitialized();
        } catch (Exception e) {
            ErrorOccurred(e.getMessage());
        }
    }

    @SimpleEvent(description = "Firebase Core Component Initialized")
    public void ComponentInitialized() {
        EventDispatcher.dispatchEvent(this, "ComponentInitialized", new Object[0]);
    }

    @SimpleEvent(description = "Event Block that will be called when a error occurs")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }
}
