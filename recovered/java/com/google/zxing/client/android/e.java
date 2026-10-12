package com.google.zxing.client.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;

/* loaded from: classes.dex */
final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f5134a = 0;

    public final class b extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                if (intent.getIntExtra("plugged", -1) <= 0) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public final class a extends AsyncTask<Object, Object, Object> {
        @Override // android.os.AsyncTask
        public Object doInBackground(Object... objArr) throws InterruptedException {
            try {
                Thread.sleep(300000L);
                Log.i("e", "Finishing activity due to inactivity");
                throw null;
            } catch (InterruptedException unused) {
                return null;
            }
        }
    }
}
