package androidx.core.view;

import android.view.View;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
class i extends ViewCompat.b<Boolean> {
    @Override // androidx.core.view.ViewCompat.b
    public final void b(View view, Object obj) {
        ViewCompat.m.i(view, ((Boolean) obj).booleanValue());
    }

    @Override // androidx.core.view.ViewCompat.b
    public final boolean e(Object obj, Object obj2) {
        Boolean bool = (Boolean) obj;
        Boolean bool2 = (Boolean) obj2;
        return !((bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue()));
    }

    @Override // androidx.core.view.ViewCompat.b
    public final Object a(View view) {
        return Boolean.valueOf(ViewCompat.m.d(view));
    }
}
