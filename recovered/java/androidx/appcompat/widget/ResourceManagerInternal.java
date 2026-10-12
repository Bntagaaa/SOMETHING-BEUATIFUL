package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.appcompat.resources.Compatibility;
import androidx.appcompat.resources.R;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.collection.SparseArrayCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class ResourceManagerInternal {
    public static ResourceManagerInternal i;

    /* renamed from: a, reason: collision with root package name */
    public WeakHashMap f388a;

    /* renamed from: b, reason: collision with root package name */
    public SimpleArrayMap f389b;
    public SparseArrayCompat c;
    public final WeakHashMap d = new WeakHashMap(0);
    public TypedValue e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public ResourceManagerHooks f390g;
    public static final PorterDuff.Mode h = PorterDuff.Mode.SRC_IN;
    public static final c j = new c(6);

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public interface ResourceManagerHooks {
        @Nullable
        Drawable createDrawableFor(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, @DrawableRes int i);

        @Nullable
        ColorStateList getTintListForDrawableRes(@NonNull Context context, @DrawableRes int i);

        @Nullable
        PorterDuff.Mode getTintModeForDrawableRes(int i);

        boolean tintDrawable(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable);

        boolean tintDrawableUsingColorFilter(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable);
    }

    public interface e {
        Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme);
    }

    public static synchronized ResourceManagerInternal get() {
        try {
            if (i == null) {
                ResourceManagerInternal resourceManagerInternal = new ResourceManagerInternal();
                i = resourceManagerInternal;
                f(resourceManagerInternal);
            }
        } catch (Throwable th) {
            throw th;
        }
        return i;
    }

    public static void f(ResourceManagerInternal resourceManagerInternal) {
        if (Build.VERSION.SDK_INT < 24) {
            resourceManagerInternal.a("vector", new f());
            resourceManagerInternal.a("animated-vector", new b());
            resourceManagerInternal.a("animated-selector", new a());
            resourceManagerInternal.a("drawable", new d());
        }
    }

    public synchronized void setHooks(ResourceManagerHooks resourceManagerHooks) {
        this.f390g = resourceManagerHooks;
    }

    public synchronized Drawable getDrawable(@NonNull Context context, @DrawableRes int i2) {
        return d(context, i2, false);
    }

    public synchronized void onConfigurationChanged(@NonNull Context context) {
        LongSparseArray longSparseArray = (LongSparseArray) this.d.get(context);
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    public final Drawable h(Context context, int i2, boolean z, Drawable drawable) {
        ResourceManagerHooks resourceManagerHooks;
        ColorStateList colorStateListE = e(context, i2);
        if (colorStateListE != null) {
            if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable drawableWrap = DrawableCompat.wrap(drawable);
            DrawableCompat.setTintList(drawableWrap, colorStateListE);
            ResourceManagerHooks resourceManagerHooks2 = this.f390g;
            PorterDuff.Mode tintModeForDrawableRes = resourceManagerHooks2 != null ? resourceManagerHooks2.getTintModeForDrawableRes(i2) : null;
            if (tintModeForDrawableRes != null) {
                DrawableCompat.setTintMode(drawableWrap, tintModeForDrawableRes);
            }
            return drawableWrap;
        }
        ResourceManagerHooks resourceManagerHooks3 = this.f390g;
        if ((resourceManagerHooks3 == null || !resourceManagerHooks3.tintDrawable(context, i2, drawable)) && (((resourceManagerHooks = this.f390g) == null || !resourceManagerHooks.tintDrawableUsingColorFilter(context, i2, drawable)) && z)) {
            return null;
        }
        return drawable;
    }

    public final Drawable g(Context context, int i2) throws XmlPullParserException, Resources.NotFoundException, IOException {
        int next;
        SimpleArrayMap simpleArrayMap = this.f389b;
        if (simpleArrayMap == null || simpleArrayMap.isEmpty()) {
            return null;
        }
        SparseArrayCompat sparseArrayCompat = this.c;
        if (sparseArrayCompat != null) {
            String str = (String) sparseArrayCompat.get(i2);
            if ("appcompat_skip_skip".equals(str)) {
                return null;
            }
            if (str != null && this.f389b.get(str) == null) {
                return null;
            }
        } else {
            this.c = new SparseArrayCompat();
        }
        if (this.e == null) {
            this.e = new TypedValue();
        }
        TypedValue typedValue = this.e;
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        long j2 = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable drawableC = c(context, j2);
        if (drawableC != null) {
            return drawableC;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i2);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.c.append(i2, name);
                e eVar = (e) this.f389b.get(name);
                if (eVar != null) {
                    drawableC = eVar.createFromXmlInner(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableC != null) {
                    drawableC.setChangingConfigurations(typedValue.changingConfigurations);
                    b(context, j2, drawableC);
                }
            } catch (Exception e2) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e2);
            }
        }
        if (drawableC == null) {
            this.c.append(i2, "appcompat_skip_skip");
        }
        return drawableC;
    }

    public final synchronized Drawable c(Context context, long j2) {
        LongSparseArray longSparseArray = (LongSparseArray) this.d.get(context);
        if (longSparseArray == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) longSparseArray.get(j2);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            longSparseArray.remove(j2);
        }
        return null;
    }

    public final synchronized void b(Context context, long j2, Drawable drawable) {
        try {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                LongSparseArray longSparseArray = (LongSparseArray) this.d.get(context);
                if (longSparseArray == null) {
                    longSparseArray = new LongSparseArray();
                    this.d.put(context, longSparseArray);
                }
                longSparseArray.put(j2, new WeakReference(constantState));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void a(String str, e eVar) {
        if (this.f389b == null) {
            this.f389b = new SimpleArrayMap();
        }
        this.f389b.put(str, eVar);
    }

    public final synchronized ColorStateList e(Context context, int i2) {
        ColorStateList colorStateList;
        SparseArrayCompat sparseArrayCompat;
        WeakHashMap weakHashMap = this.f388a;
        ColorStateList tintListForDrawableRes = null;
        colorStateList = (weakHashMap == null || (sparseArrayCompat = (SparseArrayCompat) weakHashMap.get(context)) == null) ? null : (ColorStateList) sparseArrayCompat.get(i2);
        if (colorStateList == null) {
            ResourceManagerHooks resourceManagerHooks = this.f390g;
            if (resourceManagerHooks != null) {
                tintListForDrawableRes = resourceManagerHooks.getTintListForDrawableRes(context, i2);
            }
            if (tintListForDrawableRes != null) {
                if (this.f388a == null) {
                    this.f388a = new WeakHashMap();
                }
                SparseArrayCompat sparseArrayCompat2 = (SparseArrayCompat) this.f388a.get(context);
                if (sparseArrayCompat2 == null) {
                    sparseArrayCompat2 = new SparseArrayCompat();
                    this.f388a.put(context, sparseArrayCompat2);
                }
                sparseArrayCompat2.append(i2, tintListForDrawableRes);
            }
            colorStateList = tintListForDrawableRes;
        }
        return colorStateList;
    }

    public static class c extends LruCache<Integer, PorterDuffColorFilter> {
        public c(int i) {
            super(i);
        }
    }

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        c cVar = j;
        cVar.getClass();
        int i3 = (31 + i2) * 31;
        porterDuffColorFilter = cVar.get(Integer.valueOf(mode.hashCode() + i3));
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i2, mode);
            cVar.put(Integer.valueOf(mode.hashCode() + i3), porterDuffColorFilter);
        }
        return porterDuffColorFilter;
    }

    public final synchronized Drawable d(Context context, int i2, boolean z) {
        Drawable drawableG;
        try {
            if (!this.f) {
                this.f = true;
                Drawable drawable = getDrawable(context, R.drawable.abc_vector_test);
                if (drawable == null || (!(drawable instanceof VectorDrawableCompat) && !"android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName()))) {
                    this.f = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            drawableG = g(context, i2);
            if (drawableG == null) {
                if (this.e == null) {
                    this.e = new TypedValue();
                }
                TypedValue typedValue = this.e;
                context.getResources().getValue(i2, typedValue, true);
                long j2 = (typedValue.assetCookie << 32) | typedValue.data;
                Drawable drawableC = c(context, j2);
                if (drawableC == null) {
                    ResourceManagerHooks resourceManagerHooks = this.f390g;
                    drawableC = resourceManagerHooks == null ? null : resourceManagerHooks.createDrawableFor(this, context, i2);
                    if (drawableC != null) {
                        drawableC.setChangingConfigurations(typedValue.changingConfigurations);
                        b(context, j2, drawableC);
                    }
                }
                drawableG = drawableC;
            }
            if (drawableG == null) {
                drawableG = ContextCompat.getDrawable(context, i2);
            }
            if (drawableG != null) {
                drawableG = h(context, i2, z, drawableG);
            }
            if (drawableG != null) {
                DrawableUtils.a(drawableG);
            }
        } finally {
        }
        return drawableG;
    }

    public static class f implements e {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.e
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return VectorDrawableCompat.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    public static class b implements e {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.e
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedVectorDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    public static class a implements e {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.e
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedStateListDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    public static class d implements e {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.e
        public Drawable createFromXmlInner(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute != null) {
                try {
                    Drawable drawable = (Drawable) d.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    Compatibility.Api21Impl.inflate(drawable, context.getResources(), xmlPullParser, attributeSet, theme);
                    return drawable;
                } catch (Exception e) {
                    Log.e("DrawableDelegate", "Exception while inflating <drawable>", e);
                }
            }
            return null;
        }
    }
}
