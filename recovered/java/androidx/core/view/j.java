package androidx.core.view;

import android.text.TextUtils;
import android.view.View;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
class j extends ViewCompat.b<CharSequence> {
    @Override // androidx.core.view.ViewCompat.b
    public final void b(View view, Object obj) {
        ViewCompat.m.h(view, (CharSequence) obj);
    }

    @Override // androidx.core.view.ViewCompat.b
    public final boolean e(Object obj, Object obj2) {
        return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
    }

    @Override // androidx.core.view.ViewCompat.b
    public final Object a(View view) {
        return ViewCompat.m.b(view);
    }
}
