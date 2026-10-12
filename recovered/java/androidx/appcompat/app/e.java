package androidx.appcompat.app;

import android.view.View;
import android.widget.AbsListView;

/* loaded from: classes.dex */
class e implements AbsListView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f157a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f158b;

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    public e(View view, View view2) {
        this.f157a = view;
        this.f158b = view2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        AlertController.b(absListView, this.f157a, this.f158b);
    }
}
