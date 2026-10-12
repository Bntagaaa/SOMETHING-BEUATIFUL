package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.appupdate.AppUpdateInfo;
import com.google.android.play.core.appupdate.AppUpdateManager;
import com.google.android.play.core.appupdate.AppUpdateManagerFactory;
import com.google.android.play.core.install.InstallState;
import com.google.android.play.core.install.InstallStateUpdatedListener;
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

@DesignerComponent(androidMinSdk = 21, category = ComponentCategory.EXTRAS, description = "GPlay updates is a Play Core library feature that introduces a new request flow to prompt active users to update your app.Works only with devices running Android 5.0 (API level 21) or higher,", iconName = "images/gPlayAppUpdater.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "app-update.aar, app-update.jar, play-services-tasks.aar, play-services-tasks.jar, play-services-basement.aar, play-services-basement.jar, play-core-common.aar, play-core-common.jar, annotation.jar")
@SimpleObject
/* loaded from: classes.dex */
public final class GPlayAppUpdater extends AndroidNonvisibleComponent implements ActivityResultListener {
    private int MY_REQUEST_CODE;
    private Activity activity;
    private Task<AppUpdateInfo> appUpdateInfoTask;
    private AppUpdateManager appUpdateManager;
    private boolean autoUpdate;
    private Context context;
    private boolean flexible;
    private InstallStateUpdatedListener listener;

    public GPlayAppUpdater(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.activity = componentContainer.$context();
        this.context = componentContainer.$context();
        AppUpdateManager appUpdateManagerCreate = AppUpdateManagerFactory.create(componentContainer.$context());
        this.appUpdateManager = appUpdateManagerCreate;
        this.appUpdateInfoTask = appUpdateManagerCreate.getAppUpdateInfo();
        InstallStateUpdatedListener installStateUpdatedListener = new InstallStateUpdatedListener() { // from class: com.google.appinventor.components.runtime.GPlayAppUpdater.1
            public void onStateUpdate(InstallState installState) {
                if (installState.installStatus() == 11) {
                    GPlayAppUpdater.this.UpdateDownloaded();
                }
            }
        };
        this.listener = installStateUpdatedListener;
        this.appUpdateManager.registerListener(installStateUpdatedListener);
        if (this.MY_REQUEST_CODE == 0) {
            this.MY_REQUEST_CODE = this.form.registerForActivityResult(this);
        }
        this.appUpdateInfoTask.addOnSuccessListener(new OnSuccessListener<AppUpdateInfo>() { // from class: com.google.appinventor.components.runtime.GPlayAppUpdater.2
            public void onSuccess(AppUpdateInfo appUpdateInfo) {
                if (GPlayAppUpdater.this.flexible) {
                    if (appUpdateInfo.updateAvailability() == 2 && appUpdateInfo.isUpdateTypeAllowed(0)) {
                        if (GPlayAppUpdater.this.autoUpdate) {
                            try {
                                GPlayAppUpdater.this.appUpdateManager.startUpdateFlowForResult(appUpdateInfo, 0, GPlayAppUpdater.this.activity, GPlayAppUpdater.this.MY_REQUEST_CODE);
                                return;
                            } catch (Exception e) {
                                GPlayAppUpdater.this.UpdateFailed(e.getLocalizedMessage());
                                return;
                            }
                        }
                        GPlayAppUpdater.this.UpdateAvailable(true, appUpdateInfo);
                        return;
                    }
                    GPlayAppUpdater.this.UpdateAvailable(false, appUpdateInfo);
                    return;
                }
                if (GPlayAppUpdater.this.flexible) {
                    return;
                }
                if (appUpdateInfo.updateAvailability() == 2 && appUpdateInfo.isUpdateTypeAllowed(1)) {
                    if (GPlayAppUpdater.this.autoUpdate) {
                        try {
                            GPlayAppUpdater.this.appUpdateManager.startUpdateFlowForResult(appUpdateInfo, 1, GPlayAppUpdater.this.activity, GPlayAppUpdater.this.MY_REQUEST_CODE);
                            return;
                        } catch (Exception e2) {
                            GPlayAppUpdater.this.UpdateFailed(e2.getLocalizedMessage());
                            return;
                        }
                    }
                    GPlayAppUpdater.this.UpdateAvailable(true, appUpdateInfo);
                    return;
                }
                GPlayAppUpdater.this.UpdateAvailable(false, appUpdateInfo);
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int i, int i2, Intent intent) {
        if (i != this.MY_REQUEST_CODE || i2 == -1) {
            return;
        }
        UpdateCancelled();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "If Enabled Update will happen in the background")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Flexible(boolean z) {
        this.flexible = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Automatically Check and Show Updates")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void AutoUpdate(boolean z) {
        this.autoUpdate = z;
    }

    @SimpleFunction(description = "Call this Function if Auto Update is not enabled")
    public void StartUpdate(Object obj) {
        if (obj instanceof AppUpdateInfo) {
            if (this.flexible) {
                try {
                    this.appUpdateManager.startUpdateFlowForResult((AppUpdateInfo) obj, 0, this.activity, this.MY_REQUEST_CODE);
                    return;
                } catch (Exception e) {
                    UpdateFailed(e.getLocalizedMessage());
                    return;
                }
            }
            try {
                this.appUpdateManager.startUpdateFlowForResult((AppUpdateInfo) obj, 1, this.activity, this.MY_REQUEST_CODE);
                return;
            } catch (Exception e2) {
                UpdateFailed(e2.getLocalizedMessage());
                return;
            }
        }
        UpdateFailed("Invalid AppUpdate Info");
    }

    @SimpleFunction(description = "Complete Update in Case of a Flexible Update. This Function will restart the App and Complete the Update")
    public void CompleteUpdate() {
        if (this.flexible) {
            this.appUpdateManager.completeUpdate();
        }
    }

    @SimpleEvent(description = "Update Was Downloaded")
    public void UpdateDownloaded() {
        EventDispatcher.dispatchEvent(this, "UpdateDownloaded", new Object[0]);
    }

    @SimpleEvent(description = "Update available")
    public void UpdateAvailable(boolean z, Object obj) {
        EventDispatcher.dispatchEvent(this, "UpdateAvailable", Boolean.valueOf(z), obj);
    }

    @SimpleEvent(description = "Update failed")
    public void UpdateFailed(String str) {
        EventDispatcher.dispatchEvent(this, "UpdateFailed", str);
    }

    @SimpleEvent(description = "Update cancelled")
    public void UpdateCancelled() {
        EventDispatcher.dispatchEvent(this, "UpdateCancelled", new Object[0]);
    }
}
