package com.puravidaapps;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.util.Log;
import androidx.core.os.EnvironmentCompat;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.OnDestroyListener;
import com.google.appinventor.components.runtime.OnResumeListener;
import com.google.appinventor.components.runtime.OnStopListener;

@UsesPermissions(permissionNames = "android.permission.MODIFY_AUDIO_SETTINGS")
@DesignerComponent(category = ComponentCategory.EXTENSION, description = "Headset extension. Version 1 as of 2018-02-15 for App Inventor version version nb166 and Companion version 2.66.", helpUrl = "https://puravidaapps.com/headset.php", iconName = "https://puravidaapps.com/images/taifun16.png", nonVisible = true, version = 1)
@SimpleObject(external = true)
/* loaded from: classes2.dex */
public class TaifunHeadset extends AndroidNonvisibleComponent implements Component, OnResumeListener, OnStopListener, OnDestroyListener {
    public static final int VERSION = 1;

    /* renamed from: a, reason: collision with root package name */
    public final ComponentContainer f5441a;

    /* renamed from: b, reason: collision with root package name */
    public final Activity f5442b;
    public final Activity c;
    public boolean d;
    public String e;
    public final BroadcastReceiver f;

    public TaifunHeadset(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.d = false;
        this.e = EnvironmentCompat.MEDIA_UNKNOWN;
        a aVar = new a();
        this.f = aVar;
        this.f5441a = componentContainer;
        this.f5442b = componentContainer.$context();
        Activity activity$context = componentContainer.$context();
        this.c = activity$context;
        if (!this.d) {
            activity$context.registerReceiver(aVar, new IntentFilter("android.intent.action.HEADSET_PLUG"));
            this.d = true;
        }
        Log.d("TaifunHeadset", "TaifunHeadset Created");
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        if (this.d) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter("android.intent.action.HEADSET_PLUG");
        this.c.registerReceiver(this.f, intentFilter);
        this.d = true;
    }

    @Override // com.google.appinventor.components.runtime.OnStopListener
    public void onStop() {
        if (this.d) {
            this.c.unregisterReceiver(this.f);
            this.d = false;
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Returns the headset plug status. Possible values are: unplugged, plugged or unknown.")
    public String Status() {
        Log.d("TaifunHeadset", "Status: " + this.e);
        if (this.e.equals(EnvironmentCompat.MEDIA_UNKNOWN)) {
            return ((AudioManager) this.f5442b.getSystemService("audio")).isWiredHeadsetOn() ? "plugged" : "unplugged";
        }
        return this.e;
    }

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.HEADSET_PLUG")) {
                int intExtra = intent.getIntExtra("state", -1);
                TaifunHeadset taifunHeadset = TaifunHeadset.this;
                if (intExtra == 0) {
                    taifunHeadset.e = "unplugged";
                } else if (intExtra != 1) {
                    taifunHeadset.e = EnvironmentCompat.MEDIA_UNKNOWN;
                } else {
                    taifunHeadset.e = "plugged";
                }
                taifunHeadset.Changed(taifunHeadset.e);
            }
        }
    }

    @SimpleEvent(description = "Event indicating that headset plug changed.")
    public void Changed(String str) {
        _COROUTINE.a.B("Changed: ", str, "TaifunHeadset");
        EventDispatcher.dispatchEvent(this, "Changed", str);
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        Log.i("TaifunHeadset", "onDestroy");
        if (this.d) {
            this.c.unregisterReceiver(this.f);
            this.d = false;
        }
    }
}
