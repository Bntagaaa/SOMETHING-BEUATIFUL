package androidx.core.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.annotation.AnyRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.FontRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class ResourcesCompat {

    @AnyRes
    public static final int ID_NULL = 0;

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f1007a = new ThreadLocal();

    /* renamed from: b, reason: collision with root package name */
    public static final WeakHashMap f1008b = new WeakHashMap(0);
    public static final Object c = new Object();

    public static void clearCachesForTheme(@NonNull Resources.Theme theme) {
        synchronized (c) {
            try {
                Iterator it = f1008b.keySet().iterator();
                while (it.hasNext()) {
                    f fVar = (f) it.next();
                    if (fVar != null && theme.equals(fVar.f1014b)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public static Drawable getDrawable(@NonNull Resources resources, @DrawableRes int i, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        return b.a(resources, i, theme);
    }

    @Nullable
    public static Drawable getDrawableForDensity(@NonNull Resources resources, @DrawableRes int i, int i2, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        return b.b(resources, i, i2, theme);
    }

    @ColorInt
    public static int getColor(@NonNull Resources resources, @ColorRes int i, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        if (Build.VERSION.SDK_INT >= 23) {
            return c.a(resources, i, theme);
        }
        return resources.getColor(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003e, code lost:
    
        if (r4.c == r9.hashCode()) goto L21;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.ColorStateList getColorStateList(@androidx.annotation.NonNull android.content.res.Resources r7, @androidx.annotation.ColorRes int r8, @androidx.annotation.Nullable android.content.res.Resources.Theme r9) throws android.content.res.Resources.NotFoundException {
        /*
            androidx.core.content.res.ResourcesCompat$f r0 = new androidx.core.content.res.ResourcesCompat$f
            r0.<init>(r7, r9)
            java.lang.Object r1 = androidx.core.content.res.ResourcesCompat.c
            monitor-enter(r1)
            java.util.WeakHashMap r2 = androidx.core.content.res.ResourcesCompat.f1008b     // Catch: java.lang.Throwable -> L34
            java.lang.Object r2 = r2.get(r0)     // Catch: java.lang.Throwable -> L34
            android.util.SparseArray r2 = (android.util.SparseArray) r2     // Catch: java.lang.Throwable -> L34
            r3 = 0
            if (r2 == 0) goto L47
            int r4 = r2.size()     // Catch: java.lang.Throwable -> L34
            if (r4 <= 0) goto L47
            java.lang.Object r4 = r2.get(r8)     // Catch: java.lang.Throwable -> L34
            androidx.core.content.res.ResourcesCompat$e r4 = (androidx.core.content.res.ResourcesCompat.e) r4     // Catch: java.lang.Throwable -> L34
            if (r4 == 0) goto L47
            android.content.res.Configuration r5 = r4.f1012b     // Catch: java.lang.Throwable -> L34
            android.content.res.Configuration r6 = r7.getConfiguration()     // Catch: java.lang.Throwable -> L34
            boolean r5 = r5.equals(r6)     // Catch: java.lang.Throwable -> L34
            if (r5 == 0) goto L44
            if (r9 != 0) goto L36
            int r5 = r4.c     // Catch: java.lang.Throwable -> L34
            if (r5 == 0) goto L40
            goto L36
        L34:
            r7 = move-exception
            goto L94
        L36:
            if (r9 == 0) goto L44
            int r5 = r4.c     // Catch: java.lang.Throwable -> L34
            int r6 = r9.hashCode()     // Catch: java.lang.Throwable -> L34
            if (r5 != r6) goto L44
        L40:
            android.content.res.ColorStateList r2 = r4.f1011a     // Catch: java.lang.Throwable -> L34
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L34
            goto L49
        L44:
            r2.remove(r8)     // Catch: java.lang.Throwable -> L34
        L47:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L34
            r2 = r3
        L49:
            if (r2 == 0) goto L4c
            return r2
        L4c:
            java.lang.ThreadLocal r1 = androidx.core.content.res.ResourcesCompat.f1007a
            java.lang.Object r2 = r1.get()
            android.util.TypedValue r2 = (android.util.TypedValue) r2
            if (r2 != 0) goto L5e
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            r1.set(r2)
        L5e:
            r1 = 1
            r7.getValue(r8, r2, r1)
            int r1 = r2.type
            r2 = 28
            if (r1 < r2) goto L6d
            r2 = 31
            if (r1 > r2) goto L6d
            goto L7e
        L6d:
            android.content.res.XmlResourceParser r1 = r7.getXml(r8)
            android.content.res.ColorStateList r3 = androidx.core.content.res.ColorStateListInflaterCompat.createFromXml(r7, r1, r9)     // Catch: java.lang.Exception -> L76
            goto L7e
        L76:
            r1 = move-exception
            java.lang.String r2 = "ResourcesCompat"
            java.lang.String r4 = "Failed to inflate ColorStateList, leaving it to the framework"
            android.util.Log.w(r2, r4, r1)
        L7e:
            if (r3 == 0) goto L84
            a(r0, r8, r3, r9)
            return r3
        L84:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 23
            if (r0 < r1) goto L8f
            android.content.res.ColorStateList r7 = androidx.core.content.res.ResourcesCompat.c.b(r7, r8, r9)
            return r7
        L8f:
            android.content.res.ColorStateList r7 = r7.getColorStateList(r8)
            return r7
        L94:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L34
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.ResourcesCompat.getColorStateList(android.content.res.Resources, int, android.content.res.Resources$Theme):android.content.res.ColorStateList");
    }

    public static void a(f fVar, int i, ColorStateList colorStateList, Resources.Theme theme) {
        synchronized (c) {
            try {
                WeakHashMap weakHashMap = f1008b;
                SparseArray sparseArray = (SparseArray) weakHashMap.get(fVar);
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                    weakHashMap.put(fVar, sparseArray);
                }
                sparseArray.append(i, new e(colorStateList, fVar.f1013a.getConfiguration(), theme));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final class f {

        /* renamed from: a, reason: collision with root package name */
        public final Resources f1013a;

        /* renamed from: b, reason: collision with root package name */
        public final Resources.Theme f1014b;

        public f(Resources resources, Resources.Theme theme) {
            this.f1013a = resources;
            this.f1014b = theme;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && f.class == obj.getClass()) {
                f fVar = (f) obj;
                if (this.f1013a.equals(fVar.f1013a) && ObjectsCompat.equals(this.f1014b, fVar.f1014b)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return ObjectsCompat.hash(this.f1013a, this.f1014b);
        }
    }

    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public final ColorStateList f1011a;

        /* renamed from: b, reason: collision with root package name */
        public final Configuration f1012b;
        public final int c;

        public e(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
            this.f1011a = colorStateList;
            this.f1012b = configuration;
            this.c = theme == null ? 0 : theme.hashCode();
        }
    }

    public static float getFloat(@NonNull Resources resources, @DimenRes int i) throws Resources.NotFoundException {
        if (Build.VERSION.SDK_INT < 29) {
            ThreadLocal threadLocal = f1007a;
            TypedValue typedValue = (TypedValue) threadLocal.get();
            if (typedValue == null) {
                typedValue = new TypedValue();
                threadLocal.set(typedValue);
            }
            resources.getValue(i, typedValue, true);
            if (typedValue.type == 4) {
                return typedValue.getFloat();
            }
            throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
        }
        return d.a(resources, i);
    }

    @Nullable
    public static Typeface getFont(@NonNull Context context, @FontRes int i) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return b(context, i, new TypedValue(), 0, null, null, false, false);
    }

    @Nullable
    public static Typeface getCachedFont(@NonNull Context context, @FontRes int i) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return b(context, i, new TypedValue(), 0, null, null, false, true);
    }

    public static abstract class FontCallback {
        public abstract void onFontRetrievalFailed(int i);

        public abstract void onFontRetrieved(@NonNull Typeface typeface);

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public final void callbackSuccessAsync(@NonNull Typeface typeface, @Nullable Handler handler) {
            getHandler(handler).post(new androidx.core.content.res.e(this, typeface, 0));
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public final void callbackFailAsync(final int i, @Nullable Handler handler) {
            getHandler(handler).post(new Runnable() { // from class: androidx.core.content.res.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1023a.onFontRetrievalFailed(i);
                }
            });
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public static Handler getHandler(@Nullable Handler handler) {
            return handler == null ? new Handler(Looper.getMainLooper()) : handler;
        }
    }

    public static void getFont(@NonNull Context context, @FontRes int i, @NonNull FontCallback fontCallback, @Nullable Handler handler) throws Resources.NotFoundException {
        Preconditions.checkNotNull(fontCallback);
        if (context.isRestricted()) {
            fontCallback.callbackFailAsync(-4, handler);
        } else {
            b(context, i, new TypedValue(), 0, fontCallback, handler, false, false);
        }
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Typeface getFont(@NonNull Context context, @FontRes int i, @NonNull TypedValue typedValue, int i2, @Nullable FontCallback fontCallback) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return b(context, i, typedValue, i2, fontCallback, null, true, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ab A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface b(android.content.Context r13, int r14, android.util.TypedValue r15, int r16, androidx.core.content.res.ResourcesCompat.FontCallback r17, android.os.Handler r18, boolean r19, boolean r20) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.ResourcesCompat.b(android.content.Context, int, android.util.TypedValue, int, androidx.core.content.res.ResourcesCompat$FontCallback, android.os.Handler, boolean, boolean):android.graphics.Typeface");
    }

    @RequiresApi(29)
    public static class d {
        private d() {
        }

        @DoNotInline
        public static float a(@NonNull Resources resources, @DimenRes int i) {
            return resources.getFloat(i);
        }
    }

    @RequiresApi(23)
    public static class c {
        private c() {
        }

        @NonNull
        @DoNotInline
        public static ColorStateList b(@NonNull Resources resources, @ColorRes int i, @Nullable Resources.Theme theme) {
            return resources.getColorStateList(i, theme);
        }

        @DoNotInline
        public static int a(Resources resources, int i, Resources.Theme theme) {
            return resources.getColor(i, theme);
        }
    }

    @RequiresApi(21)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static Drawable a(Resources resources, int i, Resources.Theme theme) {
            return resources.getDrawable(i, theme);
        }

        @DoNotInline
        public static Drawable b(Resources resources, int i, int i2, Resources.Theme theme) {
            return resources.getDrawableForDensity(i, i2, theme);
        }
    }

    @RequiresApi(15)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static Drawable a(Resources resources, int i, int i2) {
            return resources.getDrawableForDensity(i, i2);
        }
    }

    private ResourcesCompat() {
    }

    public static final class ThemeCompat {
        private ThemeCompat() {
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x0037 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void rebase(@androidx.annotation.NonNull android.content.res.Resources.Theme r6) {
            /*
                int r0 = android.os.Build.VERSION.SDK_INT
                r1 = 29
                if (r0 < r1) goto La
                androidx.core.content.res.ResourcesCompat.ThemeCompat.b.a(r6)
                return
            La:
                r1 = 23
                if (r0 < r1) goto L4e
                java.lang.Object r0 = androidx.core.content.res.ResourcesCompat.ThemeCompat.a.f1009a
                monitor-enter(r0)
                boolean r1 = androidx.core.content.res.ResourcesCompat.ThemeCompat.a.c     // Catch: java.lang.Throwable -> L27
                r2 = 0
                if (r1 != 0) goto L33
                r1 = 1
                java.lang.Class<android.content.res.Resources$Theme> r3 = android.content.res.Resources.Theme.class
                java.lang.String r4 = "rebase"
                java.lang.Class[] r5 = new java.lang.Class[r2]     // Catch: java.lang.Throwable -> L27 java.lang.NoSuchMethodException -> L29
                java.lang.reflect.Method r3 = r3.getDeclaredMethod(r4, r5)     // Catch: java.lang.Throwable -> L27 java.lang.NoSuchMethodException -> L29
                androidx.core.content.res.ResourcesCompat.ThemeCompat.a.f1010b = r3     // Catch: java.lang.Throwable -> L27 java.lang.NoSuchMethodException -> L29
                r3.setAccessible(r1)     // Catch: java.lang.Throwable -> L27 java.lang.NoSuchMethodException -> L29
                goto L31
            L27:
                r6 = move-exception
                goto L4c
            L29:
                r3 = move-exception
                java.lang.String r4 = "ResourcesCompat"
                java.lang.String r5 = "Failed to retrieve rebase() method"
                android.util.Log.i(r4, r5, r3)     // Catch: java.lang.Throwable -> L27
            L31:
                androidx.core.content.res.ResourcesCompat.ThemeCompat.a.c = r1     // Catch: java.lang.Throwable -> L27
            L33:
                java.lang.reflect.Method r1 = androidx.core.content.res.ResourcesCompat.ThemeCompat.a.f1010b     // Catch: java.lang.Throwable -> L27
                if (r1 == 0) goto L4a
                java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L27 java.lang.reflect.InvocationTargetException -> L3d java.lang.IllegalAccessException -> L3f
                r1.invoke(r6, r2)     // Catch: java.lang.Throwable -> L27 java.lang.reflect.InvocationTargetException -> L3d java.lang.IllegalAccessException -> L3f
                goto L4a
            L3d:
                r6 = move-exception
                goto L40
            L3f:
                r6 = move-exception
            L40:
                java.lang.String r1 = "ResourcesCompat"
                java.lang.String r2 = "Failed to invoke rebase() method via reflection"
                android.util.Log.i(r1, r2, r6)     // Catch: java.lang.Throwable -> L27
                r6 = 0
                androidx.core.content.res.ResourcesCompat.ThemeCompat.a.f1010b = r6     // Catch: java.lang.Throwable -> L27
            L4a:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L27
                goto L4e
            L4c:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L27
                throw r6
            L4e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.ResourcesCompat.ThemeCompat.rebase(android.content.res.Resources$Theme):void");
        }

        @RequiresApi(29)
        public static class b {
            private b() {
            }

            @DoNotInline
            public static void a(@NonNull Resources.Theme theme) {
                theme.rebase();
            }
        }

        @RequiresApi(23)
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            public static final Object f1009a = new Object();

            /* renamed from: b, reason: collision with root package name */
            public static Method f1010b;
            public static boolean c;

            private a() {
            }
        }
    }
}
