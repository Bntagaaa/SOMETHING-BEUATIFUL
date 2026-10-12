package androidx.appcompat.app;

import android.view.View;
import androidx.core.widget.NestedScrollView;

/* loaded from: classes.dex */
class c implements NestedScrollView.OnScrollChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f147a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f148b;

    public c(View view, View view2) {
        this.f147a = view;
        this.f148b = view2;
    }

    @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
    public void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        AlertController.b(nestedScrollView, this.f147a, this.f148b);
    }
}
