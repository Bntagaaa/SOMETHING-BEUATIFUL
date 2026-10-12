package androidx.core.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public final class LayoutInflaterCompat {

    public static class a implements LayoutInflater.Factory2 {

        /* renamed from: a, reason: collision with root package name */
        public final LayoutInflaterFactory f1298a;

        public a(LayoutInflaterFactory layoutInflaterFactory) {
            this.f1298a = layoutInflaterFactory;
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return this.f1298a.onCreateView(null, str, context, attributeSet);
        }

        @Override // android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            return this.f1298a.onCreateView(view, str, context, attributeSet);
        }

        @NonNull
        public String toString() {
            return getClass().getName() + "{" + this.f1298a + "}";
        }
    }

    private LayoutInflaterCompat() {
    }

    @Deprecated
    public static void setFactory(@NonNull LayoutInflater layoutInflater, @NonNull LayoutInflaterFactory layoutInflaterFactory) {
        layoutInflater.setFactory2(new a(layoutInflaterFactory));
    }

    public static void setFactory2(@NonNull LayoutInflater layoutInflater, @NonNull LayoutInflater.Factory2 factory2) {
        layoutInflater.setFactory2(factory2);
    }

    @Deprecated
    public static LayoutInflaterFactory getFactory(LayoutInflater layoutInflater) {
        LayoutInflater.Factory factory = layoutInflater.getFactory();
        if (factory instanceof a) {
            return ((a) factory).f1298a;
        }
        return null;
    }
}
