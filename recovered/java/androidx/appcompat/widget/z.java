package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.ResourceManagerInternal;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
class z extends w {

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f517b;

    public z(@NonNull Context context, @NonNull Resources resources) {
        super(resources);
        this.f517b = new WeakReference(context);
    }

    @Override // androidx.appcompat.widget.w, android.content.res.Resources
    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        ResourceManagerInternal.ResourceManagerHooks resourceManagerHooks;
        Drawable drawableA = a(i);
        Context context = (Context) this.f517b.get();
        if (drawableA != null && context != null && (resourceManagerHooks = ResourceManagerInternal.get().f390g) != null) {
            resourceManagerHooks.tintDrawableUsingColorFilter(context, i, drawableA);
        }
        return drawableA;
    }
}
