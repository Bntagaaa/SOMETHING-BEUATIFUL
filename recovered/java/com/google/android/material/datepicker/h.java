package com.google.android.material.datepicker;

/* loaded from: classes.dex */
class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2971a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f2972b;

    @Override // java.lang.Runnable
    public void run() {
        this.f2972b.i0.smoothScrollToPosition(this.f2971a);
    }

    public h(MaterialCalendar materialCalendar, int i) {
        this.f2972b = materialCalendar;
        this.f2971a = i;
    }
}
