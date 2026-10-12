package com.google.appinventor.components.runtime;

import android.content.Context;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.background.BackgroundService;

@SimpleObject
@Deprecated
@UsesPermissions(permissionNames = "android.permission.WAKE_LOCK, android.permission.ACCESS_NETWORK_STATE, android.permission.RECEIVE_BOOT_COMPLETED, android.permission.FOREGROUND_SERVICE")
@DesignerComponent(category = ComponentCategory.INTERNAL, description = "Background Functions Component. Work in Progress", iconName = "images/backgroundFunctions.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "work-runtime.aar, work-runtime.jar, room-runtime.aar, room-runtime.jar, sqlite.aar, sqlite.jar, sqlite-framework.aar, sqlite-framework.jar")
/* loaded from: classes.dex */
public class BackgroundFunctions extends AndroidNonvisibleComponent {
    public static Form form;
    private Context context;

    public BackgroundFunctions(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        form = componentContainer.$form();
        this.context = componentContainer.$context();
    }

    @SimpleFunction(description = "Runs a function in background")
    @Deprecated
    public void RunInBackground(String str) {
        Data.Builder builder = new Data.Builder();
        builder.putString("PROCEDURE_NAME", str);
        WorkManager.getInstance(this.context).enqueue(new OneTimeWorkRequest.Builder(BackgroundService.class).setInputData(builder.build()).build());
    }
}
