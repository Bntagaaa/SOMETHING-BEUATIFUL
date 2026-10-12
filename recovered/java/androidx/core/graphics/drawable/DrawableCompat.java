package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class DrawableCompat {

    /* renamed from: a, reason: collision with root package name */
    public static Method f1044a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f1045b;
    public static Method c;
    public static boolean d;

    @Deprecated
    public static void jumpToCurrentState(@NonNull Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    public static void setAutoMirrored(@NonNull Drawable drawable, boolean z) {
        a.e(drawable, z);
    }

    public static boolean isAutoMirrored(@NonNull Drawable drawable) {
        return a.d(drawable);
    }

    public static void setHotspot(@NonNull Drawable drawable, float f, float f2) {
        b.e(drawable, f, f2);
    }

    public static void setHotspotBounds(@NonNull Drawable drawable, int i, int i2, int i3, int i4) {
        b.f(drawable, i, i2, i3, i4);
    }

    public static void setTint(@NonNull Drawable drawable, @ColorInt int i) {
        b.g(drawable, i);
    }

    public static void setTintList(@NonNull Drawable drawable, @Nullable ColorStateList colorStateList) {
        b.h(drawable, colorStateList);
    }

    public static void setTintMode(@NonNull Drawable drawable, @Nullable PorterDuff.Mode mode) {
        b.i(drawable, mode);
    }

    public static int getAlpha(@NonNull Drawable drawable) {
        return a.a(drawable);
    }

    public static void applyTheme(@NonNull Drawable drawable, @NonNull Resources.Theme theme) {
        b.a(drawable, theme);
    }

    public static boolean canApplyTheme(@NonNull Drawable drawable) {
        return b.b(drawable);
    }

    @Nullable
    public static ColorFilter getColorFilter(@NonNull Drawable drawable) {
        return b.c(drawable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void clearColorFilter(@NonNull Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        if (Build.VERSION.SDK_INT >= 23) {
            drawable.clearColorFilter();
            return;
        }
        drawable.clearColorFilter();
        if (drawable instanceof InsetDrawable) {
            clearColorFilter(a.c((InsetDrawable) drawable));
            return;
        }
        if (drawable instanceof WrappedDrawable) {
            clearColorFilter(((WrappedDrawable) drawable).getWrappedDrawable());
            return;
        }
        if (!(drawable instanceof DrawableContainer) || (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) == null) {
            return;
        }
        int childCount = drawableContainerState.getChildCount();
        for (int i = 0; i < childCount; i++) {
            Drawable drawableB = a.b(drawableContainerState, i);
            if (drawableB != null) {
                clearColorFilter(drawableB);
            }
        }
    }

    public static void inflate(@NonNull Drawable drawable, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        b.d(drawable, resources, xmlPullParser, attributeSet, theme);
    }

    @NonNull
    public static Drawable wrap(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23 || (drawable instanceof TintAwareDrawable)) {
            return drawable;
        }
        androidx.core.graphics.drawable.c cVar = new androidx.core.graphics.drawable.c();
        cVar.d = cVar.a();
        cVar.setWrappedDrawable(drawable);
        androidx.core.graphics.drawable.c.c();
        return cVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Drawable> T unwrap(@NonNull Drawable drawable) {
        return drawable instanceof WrappedDrawable ? (T) ((WrappedDrawable) drawable).getWrappedDrawable() : drawable;
    }

    public static boolean setLayoutDirection(@NonNull Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return c.b(drawable, i);
        }
        if (!f1045b) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                f1044a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("DrawableCompat", "Failed to retrieve setLayoutDirection(int) method", e);
            }
            f1045b = true;
        }
        Method method = f1044a;
        if (method != null) {
            try {
                method.invoke(drawable, Integer.valueOf(i));
                return true;
            } catch (Exception e2) {
                Log.i("DrawableCompat", "Failed to invoke setLayoutDirection(int) via reflection", e2);
                f1044a = null;
            }
        }
        return false;
    }

    public static int getLayoutDirection(@NonNull Drawable drawable) throws NoSuchMethodException, SecurityException {
        if (Build.VERSION.SDK_INT >= 23) {
            return c.a(drawable);
        }
        if (!d) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                c = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("DrawableCompat", "Failed to retrieve getLayoutDirection() method", e);
            }
            d = true;
        }
        Method method = c;
        if (method != null) {
            try {
                return ((Integer) method.invoke(drawable, new Object[0])).intValue();
            } catch (Exception e2) {
                Log.i("DrawableCompat", "Failed to invoke getLayoutDirection() via reflection", e2);
                c = null;
            }
        }
        return 0;
    }

    private DrawableCompat() {
    }

    @RequiresApi(19)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static void e(Drawable drawable, boolean z) {
            drawable.setAutoMirrored(z);
        }

        @DoNotInline
        public static boolean d(Drawable drawable) {
            return drawable.isAutoMirrored();
        }

        @DoNotInline
        public static int a(Drawable drawable) {
            return drawable.getAlpha();
        }

        @DoNotInline
        public static Drawable b(DrawableContainer.DrawableContainerState drawableContainerState, int i) {
            return drawableContainerState.getChild(i);
        }

        @DoNotInline
        public static Drawable c(InsetDrawable insetDrawable) {
            return insetDrawable.getDrawable();
        }
    }

    @RequiresApi(21)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static void e(Drawable drawable, float f, float f2) {
            drawable.setHotspot(f, f2);
        }

        @DoNotInline
        public static void g(Drawable drawable, int i) {
            drawable.setTint(i);
        }

        @DoNotInline
        public static void h(Drawable drawable, ColorStateList colorStateList) {
            drawable.setTintList(colorStateList);
        }

        @DoNotInline
        public static void i(Drawable drawable, PorterDuff.Mode mode) {
            drawable.setTintMode(mode);
        }

        @DoNotInline
        public static void a(Drawable drawable, Resources.Theme theme) {
            drawable.applyTheme(theme);
        }

        @DoNotInline
        public static boolean b(Drawable drawable) {
            return drawable.canApplyTheme();
        }

        @DoNotInline
        public static ColorFilter c(Drawable drawable) {
            return drawable.getColorFilter();
        }

        @DoNotInline
        public static void d(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        }

        @DoNotInline
        public static void f(Drawable drawable, int i, int i2, int i3, int i4) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    @RequiresApi(23)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static boolean b(Drawable drawable, int i) {
            return drawable.setLayoutDirection(i);
        }

        @DoNotInline
        public static int a(Drawable drawable) {
            return drawable.getLayoutDirection();
        }
    }
}
