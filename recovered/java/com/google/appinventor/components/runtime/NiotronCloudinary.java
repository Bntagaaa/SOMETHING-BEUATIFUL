package com.google.appinventor.components.runtime;

import android.content.Context;
import com.cloudinary.android.MediaManager;
import com.cloudinary.android.callback.ErrorInfo;
import com.cloudinary.android.callback.UploadCallback;
import com.cloudinary.utils.ObjectUtils;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import java.io.IOException;

@SimpleObject
@UsesPermissions(permissionNames = "android.permission.WAKE_LOCK, android.permission.ACCESS_NETWORK_STATE, android.permission.RECEIVE_BOOT_COMPLETED")
@DesignerComponent(category = ComponentCategory.STORAGE, description = "Cloudinary component helps you upload your images and videos in cloudenary cloud storage ", iconName = "images/niotronCloudinary.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "cloudinary-android-1.30.0.jar, cloudinary-android-core-1.30.0.jar, cloudinary-core-1.29.0.jar, android-job.jar, android-job.aar")
/* loaded from: classes.dex */
public final class NiotronCloudinary extends AndroidNonvisibleComponent {
    private String apiKey;
    private String apiSecret;
    private String cloudName;
    private Context context;
    private boolean isInitialized;

    public NiotronCloudinary(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.context = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "API Key")
    @DesignerProperty(defaultValue = "API-KEY", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ApiKey(String str) {
        this.apiKey = str;
    }

    @SimpleProperty(description = "API Key")
    public String ApiKey() {
        return this.apiKey;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "API Secret")
    @DesignerProperty(defaultValue = "API-SECRET", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ApiSecret(String str) {
        this.apiSecret = str;
    }

    @SimpleProperty(description = "API Secret")
    public String ApiSecret() {
        return this.apiSecret;
    }

    @SimpleProperty(description = "Cloud Name")
    @DesignerProperty(defaultValue = "CLOUD-NAME", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void CloudName(String str) {
        this.cloudName = str;
    }

    @SimpleProperty(category = PropertyCategory.CREDENTIALS, description = "API Secret")
    public String CloudName() {
        return this.cloudName;
    }

    @SimpleFunction(description = "Upload file")
    public void UploadFile(String str) {
        MediaManager.get().upload(str).callback(new UploadCallback() { // from class: com.google.appinventor.components.runtime.NiotronCloudinary.1
            public void onReschedule(String str2, ErrorInfo errorInfo) {
            }

            public void onStart(String str2) {
            }

            public void onProgress(String str2, long j, long j2) {
                NiotronCloudinary.this.UploadProgress(str2, (j / j2) * 100);
            }

            public void onSuccess(String str2, java.util.Map map) {
                NiotronCloudinary.this.UploadComplete(str2, (String) map.get("public_id"));
            }

            public void onError(String str2, ErrorInfo errorInfo) {
                NiotronCloudinary.this.UploadFail(str2, errorInfo.getDescription());
            }
        }).dispatch();
    }

    @SimpleFunction(description = "Deletes file")
    public void DeleteFile(String str) {
        try {
            MediaManager.get().getCloudinary().uploader().destroy(str, ObjectUtils.emptyMap());
        } catch (IOException unused) {
            throw new YailRuntimeError("Cloudinary", "Could not delete file because of IOException");
        }
    }

    @SimpleFunction(description = "Rename file")
    public void RenameFile(String str, String str2) {
        try {
            MediaManager.get().getCloudinary().uploader().rename(str, str2, ObjectUtils.emptyMap());
        } catch (IOException unused) {
            throw new YailRuntimeError("Cloudinary", "Could not rename file because of IOException");
        }
    }

    @SimpleFunction(description = "Get Random public id")
    public String RandomPublicId() {
        return MediaManager.get().getCloudinary().randomPublicId();
    }

    @SimpleEvent(description = "Invoked after upload complete")
    public void UploadComplete(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "UploadComplete", str, str2);
    }

    @SimpleEvent(description = "Invoked after upload progress")
    public void UploadProgress(String str, long j) {
        EventDispatcher.dispatchEvent(this, "UploadProgress", str, Long.valueOf(j));
    }

    @SimpleEvent(description = "Invoked after upload failed")
    public void UploadFail(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "UploadFail", str, str2);
    }

    @SimpleFunction(description = "Initializes the SDK")
    public void InitializeSdk() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        try {
            MediaManager.init(this.context);
            MediaManager.get().getCloudinary().config.apiKey = this.apiKey;
            MediaManager.get().getCloudinary().config.apiSecret = this.apiSecret;
            MediaManager.get().getCloudinary().config.cloudName = this.cloudName;
        } catch (Exception unused) {
        }
    }
}
