package androidx.appcompat.widget;

import android.view.View;

/* loaded from: classes.dex */
class c0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Toolbar f468a;

    public c0(Toolbar toolbar) {
        this.f468a = toolbar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f468a.collapseActionView();
    }
}
