package com.google.android.material.timepicker;

import android.view.accessibility.AccessibilityManager;
import androidx.core.content.ContextCompat;
import com.google.android.material.R;
import com.google.android.material.timepicker.ClockHandView;
import com.google.android.material.timepicker.q;
import com.google.appinventor.components.runtime.Component;

/* loaded from: classes.dex */
class l implements ClockHandView.OnRotateListener, q.d, q.c, ClockHandView.OnActionUpListener, m {
    public static final String[] f = {"12", "1", "2", "3", Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, Component.TYPEFACE_FONT_AWESOME, "6", "7", "8", "9", "10", "11"};

    /* renamed from: g, reason: collision with root package name */
    public static final String[] f3371g = {"00", "2", Component.TYPEFACE_GOOGLE_MATERIAL_DESIGN, "6", "8", "10", "12", "14", "16", "18", "20", "22"};
    public static final String[] h = {"00", Component.TYPEFACE_FONT_AWESOME, "10", "15", "20", "25", "30", "35", "40", "45", "50", "55"};

    /* renamed from: a, reason: collision with root package name */
    public final q f3372a;

    /* renamed from: b, reason: collision with root package name */
    public final i f3373b;
    public float c;
    public float d;
    public boolean e = false;

    public l(q qVar, i iVar) {
        this.f3372a = qVar;
        this.f3373b = iVar;
        initialize();
    }

    public void initialize() {
        int i = this.f3373b.c;
        q qVar = this.f3372a;
        if (i == 0) {
            qVar.showToggle();
        }
        qVar.addOnRotateListener(this);
        qVar.setOnActionUpListener(this);
        c("%d", f);
        c("%d", f3371g);
        c("%02d", h);
        invalidate();
    }

    @Override // com.google.android.material.timepicker.m
    public void invalidate() {
        i iVar = this.f3373b;
        this.d = iVar.getHourForDisplay() * a();
        this.c = iVar.e * 6;
        b(iVar.f, false);
        this.f3372a.updateTime(iVar.f3370g, iVar.getHourForDisplay(), iVar.e);
    }

    @Override // com.google.android.material.timepicker.m
    public void show() {
        this.f3372a.setVisibility(0);
    }

    @Override // com.google.android.material.timepicker.m
    public void hide() {
        this.f3372a.setVisibility(8);
    }

    public final int a() {
        return this.f3373b.c == 1 ? 15 : 30;
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnRotateListener
    public void onRotate(float f2, boolean z) {
        if (this.e) {
            return;
        }
        i iVar = this.f3373b;
        int i = iVar.d;
        int i2 = iVar.e;
        int iRound = Math.round(f2);
        if (iVar.f == 12) {
            iVar.setMinute((iRound + 3) / 6);
            this.c = (float) Math.floor(iVar.e * 6);
        } else {
            iVar.setHour(((a() / 2) + iRound) / a());
            this.d = iVar.getHourForDisplay() * a();
        }
        if (z) {
            return;
        }
        int i3 = iVar.f3370g;
        int hourForDisplay = iVar.getHourForDisplay();
        int i4 = iVar.e;
        q qVar = this.f3372a;
        qVar.updateTime(i3, hourForDisplay, i4);
        if (iVar.e == i2 && iVar.d == i) {
            return;
        }
        qVar.performHapticFeedback(4);
    }

    public final void b(int i, boolean z) {
        String[] strArr;
        boolean z2 = i == 12;
        q qVar = this.f3372a;
        qVar.setAnimateOnTouchUp(z2);
        i iVar = this.f3373b;
        iVar.f = i;
        if (!z2) {
            strArr = iVar.c == 1 ? f3371g : f;
        } else {
            strArr = h;
        }
        qVar.setValues(strArr, z2 ? R.string.material_minute_suffix : R.string.material_hour_suffix);
        qVar.setHandRotation(z2 ? this.c : this.d, z);
        qVar.setActiveSelection(i);
        qVar.setMinuteHourDelegate(new j(this, qVar.getContext(), R.string.material_hour_selection));
        qVar.setHourClickDelegate(new k(this, qVar.getContext(), R.string.material_minute_selection));
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnActionUpListener
    public void onActionUp(float f2, boolean z) {
        this.e = true;
        i iVar = this.f3373b;
        int i = iVar.e;
        int i2 = iVar.d;
        int i3 = iVar.f;
        q qVar = this.f3372a;
        if (i3 == 10) {
            qVar.setHandRotation(this.d, false);
            AccessibilityManager accessibilityManager = (AccessibilityManager) ContextCompat.getSystemService(qVar.getContext(), AccessibilityManager.class);
            if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
                b(12, true);
            }
        } else {
            int iRound = Math.round(f2);
            if (!z) {
                iVar.setMinute(((iRound + 15) / 30) * 5);
                this.c = iVar.e * 6;
            }
            qVar.setHandRotation(this.c, z);
        }
        this.e = false;
        qVar.updateTime(iVar.f3370g, iVar.getHourForDisplay(), iVar.e);
        if (iVar.e == i && iVar.d == i2) {
            return;
        }
        qVar.performHapticFeedback(4);
    }

    public final void c(String str, String[] strArr) {
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = i.formatText(this.f3372a.getResources(), strArr[i], str);
        }
    }
}
