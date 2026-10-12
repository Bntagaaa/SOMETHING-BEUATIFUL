package com.google.appinventor.components.runtime.util;

import android.os.Handler;
import com.google.appinventor.components.runtime.AlarmHandler;

/* loaded from: classes.dex */
public final class TimerInternal implements Runnable {
    private AlarmHandler component;
    private boolean enabled;
    private Handler handler;
    private int interval;

    public TimerInternal(AlarmHandler alarmHandler, boolean z, int i) {
        this(alarmHandler, z, i, new Handler());
    }

    public TimerInternal(AlarmHandler alarmHandler, boolean z, int i, Handler handler) {
        this.handler = handler;
        this.component = alarmHandler;
        this.enabled = z;
        this.interval = i;
        if (z) {
            handler.postDelayed(this, i);
        }
    }

    public int Interval() {
        return this.interval;
    }

    public void Interval(int i) {
        this.interval = i;
        if (this.enabled) {
            this.handler.removeCallbacks(this);
            this.handler.postDelayed(this, i);
        }
    }

    public boolean Enabled() {
        return this.enabled;
    }

    public void Enabled(boolean z) {
        if (this.enabled) {
            this.handler.removeCallbacks(this);
        }
        this.enabled = z;
        if (z) {
            this.handler.postDelayed(this, this.interval);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.enabled) {
            this.component.alarm();
            if (this.enabled) {
                this.handler.postDelayed(this, this.interval);
            }
        }
    }
}
