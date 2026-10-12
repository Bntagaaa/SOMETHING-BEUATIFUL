package androidx.dynamicanimation.animation;

import android.util.FloatProperty;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public abstract class FloatPropertyCompat<T> {
    public abstract float getValue(T t);

    public abstract void setValue(T t, float f);

    public FloatPropertyCompat(String str) {
    }

    public static class a extends FloatPropertyCompat<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ FloatProperty f1484a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, FloatProperty floatProperty) {
            super(str);
            this.f1484a = floatProperty;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(T t) {
            return ((Float) this.f1484a.get(t)).floatValue();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(T t, float f) {
            this.f1484a.setValue(t, f);
        }
    }

    @RequiresApi(24)
    public static <T> FloatPropertyCompat<T> createFloatPropertyCompat(FloatProperty<T> floatProperty) {
        return new a(floatProperty.getName(), floatProperty);
    }
}
