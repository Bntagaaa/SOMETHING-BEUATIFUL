package com.google.android.material.datepicker;

/* loaded from: classes.dex */
class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f2965a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f2966b;

    @Override // java.lang.Runnable
    public void run() {
        e eVar = this.f2966b;
        eVar.f2967a.setError(String.format(eVar.d, f.a(this.f2965a)));
        eVar.a();
    }

    public d(e eVar, long j) {
        this.f2966b = eVar;
        this.f2965a = j;
    }
}
