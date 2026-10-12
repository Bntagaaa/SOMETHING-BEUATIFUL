package com.google.appinventor.components.runtime;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.google.appinventor.common.version.GitBuildId;
import com.google.appinventor.components.runtime.multidex.MultiDex;
import org.acra.ACRA;
import org.acra.ACRAConfiguration;
import org.acra.annotation.ReportsCrashes;

@ReportsCrashes(formKey = "")
/* loaded from: classes.dex */
public class ReplApplication extends Application {
    public static boolean installed = true;
    private static ReplApplication thisInstance;
    private boolean active = false;

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        installed = MultiDex.install(this, false);
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        thisInstance = this;
        String acraUri = GitBuildId.getAcraUri();
        if (acraUri.equals("")) {
            Log.i("ReplApplication", "ACRA Not Active");
            return;
        }
        Log.i("ReplApplication", "ACRA Active, URI = ".concat(acraUri));
        ACRAConfiguration newDefaultConfig = ACRA.getNewDefaultConfig(this);
        newDefaultConfig.setFormUri(acraUri);
        newDefaultConfig.setDisableSSLCertValidation(true);
        ACRA.setConfig(newDefaultConfig);
        ACRA.init(this);
        this.active = true;
    }

    public static void reportError(Throwable th, String str) {
        ACRA.getErrorReporter().putCustomData("reportid", str);
        reportError(th);
    }

    public static void reportError(Throwable th) {
        ReplApplication replApplication = thisInstance;
        if (replApplication == null || !replApplication.active) {
            return;
        }
        ACRA.getErrorReporter().handleException(th);
    }

    public static boolean isAcraActive() {
        ReplApplication replApplication = thisInstance;
        return replApplication != null && replApplication.active;
    }
}
