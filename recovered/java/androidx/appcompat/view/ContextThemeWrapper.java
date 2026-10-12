package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;

/* loaded from: classes.dex */
public class ContextThemeWrapper extends ContextWrapper {
    public static Configuration f;

    /* renamed from: a, reason: collision with root package name */
    public int f206a;

    /* renamed from: b, reason: collision with root package name */
    public Resources.Theme f207b;
    public LayoutInflater c;
    public Configuration d;
    public Resources e;

    public ContextThemeWrapper() {
        super(null);
    }

    public ContextThemeWrapper(Context context, @StyleRes int i) {
        super(context);
        this.f206a = i;
    }

    public ContextThemeWrapper(Context context, Resources.Theme theme) {
        super(context);
        this.f207b = theme;
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public void applyOverrideConfiguration(Configuration configuration) {
        if (this.e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.d = new Configuration(configuration);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    @Override // android.content.ContextWrapper, android.content.Context
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.content.res.Resources getResources() {
        /*
            r3 = this;
            android.content.res.Resources r0 = r3.e
            if (r0 != 0) goto L38
            android.content.res.Configuration r0 = r3.d
            if (r0 == 0) goto L32
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 26
            if (r1 < r2) goto L25
            android.content.res.Configuration r1 = androidx.appcompat.view.ContextThemeWrapper.f
            if (r1 != 0) goto L1c
            android.content.res.Configuration r1 = new android.content.res.Configuration
            r1.<init>()
            r2 = 0
            r1.fontScale = r2
            androidx.appcompat.view.ContextThemeWrapper.f = r1
        L1c:
            android.content.res.Configuration r1 = androidx.appcompat.view.ContextThemeWrapper.f
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L25
            goto L32
        L25:
            android.content.res.Configuration r0 = r3.d
            android.content.Context r0 = androidx.appcompat.view.ContextThemeWrapper.a.a(r3, r0)
            android.content.res.Resources r0 = r0.getResources()
            r3.e = r0
            goto L38
        L32:
            android.content.res.Resources r0 = super.getResources()
            r3.e = r0
        L38:
            android.content.res.Resources r0 = r3.e
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.ContextThemeWrapper.getResources():android.content.res.Resources");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f206a != i) {
            this.f206a = i;
            a();
        }
    }

    public int getThemeResId() {
        return this.f206a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f207b;
        if (theme != null) {
            return theme;
        }
        if (this.f206a == 0) {
            this.f206a = R.style.Theme_AppCompat_Light;
        }
        a();
        return this.f207b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.c == null) {
                this.c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.c;
        }
        return getBaseContext().getSystemService(str);
    }

    public void onApplyThemeResource(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    public final void a() {
        boolean z = this.f207b == null;
        if (z) {
            this.f207b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f207b.setTo(theme);
            }
        }
        onApplyThemeResource(this.f207b, this.f206a, z);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @RequiresApi(17)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static Context a(ContextThemeWrapper contextThemeWrapper, Configuration configuration) {
            return contextThemeWrapper.createConfigurationContext(configuration);
        }
    }
}
