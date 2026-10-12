package androidx.appcompat.app;

import android.view.View;

/* loaded from: classes.dex */
class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f159a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f160b;
    public final /* synthetic */ AlertController c;

    public f(AlertController alertController, View view, View view2) {
        this.c = alertController;
        this.f159a = view;
        this.f160b = view2;
    }

    @Override // java.lang.Runnable
    public void run() {
        AlertController.b(this.c.f92g, this.f159a, this.f160b);
    }
}
