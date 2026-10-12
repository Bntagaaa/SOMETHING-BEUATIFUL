package androidx.appcompat.app;

import android.view.View;

/* loaded from: classes.dex */
class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f151a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f152b;
    public final /* synthetic */ AlertController c;

    public d(AlertController alertController, View view, View view2) {
        this.c = alertController;
        this.f151a = view;
        this.f152b = view2;
    }

    @Override // java.lang.Runnable
    public void run() {
        AlertController.b(this.c.A, this.f151a, this.f152b);
    }
}
