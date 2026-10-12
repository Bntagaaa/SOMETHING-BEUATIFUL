package com.puravidaapps.TaifunLockTask;

import android.app.Activity;
import android.app.ActivityManager;
import android.os.Build;
import android.util.Log;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.ComponentContainer;

/* loaded from: classes2.dex */
public class TaifunLockTask extends AndroidNonvisibleComponent implements Component {
    public static final int VERSION = 1;

    /* renamed from: a, reason: collision with root package name */
    public final Activity f5444a;

    public TaifunLockTask(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        componentContainer.$context();
        this.f5444a = componentContainer.$context();
        Log.d("TaifunLockTask", "TaifunLockTask Created");
    }

    public String Mode() {
        Log.d("TaifunLockTask", "Mode");
        int lockTaskModeState = Build.VERSION.SDK_INT >= 23 ? ((ActivityManager) this.f5444a.getSystemService("activity")).getLockTaskModeState() : -1;
        return lockTaskModeState != 0 ? lockTaskModeState != 1 ? lockTaskModeState != 2 ? "Unknown" : "Pinned" : "Locked" : "None";
    }

    public void Start() {
        Log.d("TaifunLockTask", "Start");
        this.f5444a.startLockTask();
    }

    public void Stop() {
        Log.d("TaifunLockTask", "Stop");
        this.f5444a.stopLockTask();
    }
}
