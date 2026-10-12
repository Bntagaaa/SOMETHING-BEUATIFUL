package me.aemo.buttonwatcher.addons;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Log;

/* loaded from: classes2.dex */
public class HomeWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6727a;
    public OnHomePressedListener c;

    /* renamed from: b, reason: collision with root package name */
    public final IntentFilter f6728b = new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS");
    public final b d = new b();

    public HomeWatcher(Context context) {
        this.f6727a = context;
    }

    public void setOnHomePressedListener(OnHomePressedListener onHomePressedListener) {
        this.c = onHomePressedListener;
    }

    public void startWatching() {
        try {
            int i = Build.VERSION.SDK_INT;
            IntentFilter intentFilter = this.f6728b;
            b bVar = this.d;
            Context context = this.f6727a;
            if (i >= 33) {
                context.registerReceiver(bVar, intentFilter, 2);
            } else {
                context.registerReceiver(bVar, intentFilter);
            }
        } catch (Exception e) {
            OnHomePressedListener onHomePressedListener = this.c;
            if (onHomePressedListener != null) {
                onHomePressedListener.onErrorOccurred("Failed to register receiver.\nError: " + e.getMessage(), "Exception ~ startWatching");
            }
            Log.e("HomeWatcher", "Failed to register receiver", e);
        }
    }

    public void stopWatching() {
        try {
            this.f6727a.unregisterReceiver(this.d);
        } catch (IllegalArgumentException e) {
            OnHomePressedListener onHomePressedListener = this.c;
            if (onHomePressedListener != null) {
                onHomePressedListener.onErrorOccurred("Receiver not registered.\nError: " + e.getMessage(), "IllegalArgumentException ~ stopWatching");
            }
            Log.e("HomeWatcher", "Receiver not registered", e);
        }
    }

    public class b extends BroadcastReceiver {
        public b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra;
            if (!"android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(intent.getAction()) || (stringExtra = intent.getStringExtra("reason")) == null) {
                return;
            }
            Log.d("HomeWatcher", "Action: " + intent.getAction() + ", Reason: " + stringExtra);
            HomeWatcher homeWatcher = HomeWatcher.this;
            if (homeWatcher.c != null) {
                if ("homekey".equals(stringExtra)) {
                    homeWatcher.c.onHomePressed();
                } else if ("recentapps".equals(stringExtra)) {
                    homeWatcher.c.onRecentAppPressed();
                }
            }
        }
    }
}
