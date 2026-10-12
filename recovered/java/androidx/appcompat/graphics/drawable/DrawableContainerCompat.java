package androidx.appcompat.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.appcompat.graphics.drawable.StateListDrawableCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.appinventor.components.common.ComponentConstants;

/* loaded from: classes.dex */
public class DrawableContainerCompat extends Drawable implements Drawable.Callback {
    public static final /* synthetic */ int m = 0;

    /* renamed from: a, reason: collision with root package name */
    public c f190a;

    /* renamed from: b, reason: collision with root package name */
    public Rect f191b;
    public Drawable c;
    public Drawable d;
    public boolean f;
    public boolean h;
    public Runnable i;
    public long j;
    public long k;
    public b l;
    public int e = 255;

    /* renamed from: g, reason: collision with root package name */
    public int f192g = -1;

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Drawable drawable = this.c;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.d;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f190a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        boolean padding;
        Rect constantPadding = this.f190a.getConstantPadding();
        if (constantPadding != null) {
            rect.set(constantPadding);
            padding = (constantPadding.right | ((constantPadding.left | constantPadding.top) | constantPadding.bottom)) != 0;
        } else {
            Drawable drawable = this.c;
            if (drawable != null) {
                padding = drawable.getPadding(rect);
            } else {
                padding = super.getPadding(rect);
            }
        }
        if (isAutoMirrored() && DrawableCompat.getLayoutDirection(this) == 1) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return padding;
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void getOutline(@NonNull Outline outline) {
        Drawable drawable = this.c;
        if (drawable != null) {
            a.getOutline(drawable, outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f && this.e == i) {
            return;
        }
        this.f = true;
        this.e = i;
        Drawable drawable = this.c;
        if (drawable != null) {
            if (this.j == 0) {
                drawable.setAlpha(i);
            } else {
                a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.e;
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        c cVar = this.f190a;
        if (cVar.x != z) {
            cVar.x = z;
            Drawable drawable = this.c;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        c cVar = this.f190a;
        cVar.D = true;
        if (cVar.C != colorFilter) {
            cVar.C = colorFilter;
            Drawable drawable = this.c;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(@ColorInt int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        c cVar = this.f190a;
        cVar.G = true;
        if (cVar.E != colorStateList) {
            cVar.E = colorStateList;
            DrawableCompat.setTintList(this.c, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        c cVar = this.f190a;
        cVar.H = true;
        if (cVar.F != mode) {
            cVar.F = mode;
            DrawableCompat.setTintMode(this.c, mode);
        }
    }

    public void setEnterFadeDuration(int i) {
        this.f190a.z = i;
    }

    public void setExitFadeDuration(int i) {
        this.f190a.A = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f190a.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        c cVar = this.f190a;
        if (cVar.B != z) {
            cVar.B = z;
            Drawable drawable = this.c;
            if (drawable != null) {
                DrawableCompat.setAutoMirrored(drawable, z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f190a.B;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.d;
        boolean z2 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.d = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f) {
                this.c.setAlpha(this.e);
            }
        }
        if (this.k != 0) {
            this.k = 0L;
            z = true;
        }
        if (this.j != 0) {
            this.j = 0L;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.c;
        if (drawable != null) {
            DrawableCompat.setHotspot(drawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f191b;
        if (rect == null) {
            this.f191b = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            DrawableCompat.setHotspotBounds(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(@NonNull Rect rect) {
        Rect rect2 = this.f191b;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(@NonNull int[] iArr) {
        Drawable drawable = this.d;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        Drawable drawable = this.d;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        c cVar = this.f190a;
        int i2 = this.f192g;
        int i3 = cVar.h;
        Drawable[] drawableArr = cVar.f196g;
        boolean z = false;
        for (int i4 = 0; i4 < i3; i4++) {
            Drawable drawable = drawableArr[i4];
            if (drawable != null) {
                boolean layoutDirection = Build.VERSION.SDK_INT >= 23 ? DrawableCompat.setLayoutDirection(drawable, i) : false;
                if (i4 == i2) {
                    z = layoutDirection;
                }
            }
        }
        cVar.y = i;
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f190a.isConstantSize()) {
            return this.f190a.getConstantWidth();
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f190a.isConstantSize()) {
            return this.f190a.getConstantHeight();
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f190a.isConstantSize()) {
            return this.f190a.getConstantMinimumWidth();
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f190a.isConstantSize()) {
            return this.f190a.getConstantMinimumHeight();
        }
        Drawable drawable = this.c;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        c cVar = this.f190a;
        if (cVar != null) {
            cVar.r = false;
            cVar.t = false;
        }
        if (drawable != this.c || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        if (drawable != this.c || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        if (drawable != this.c || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.d;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.c;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.c;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f190a.getOpacity();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(int r10) {
        /*
            r9 = this;
            int r0 = r9.f192g
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$c r0 = r9.f190a
            int r0 = r0.A
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.d
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.c
            if (r0 == 0) goto L29
            r9.d = r0
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$c r0 = r9.f190a
            int r0 = r0.A
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.k = r0
            goto L35
        L29:
            r9.d = r4
            r9.k = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.c
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$c r0 = r9.f190a
            int r1 = r0.h
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.getChild(r10)
            r9.c = r0
            r9.f192g = r10
            if (r0 == 0) goto L5a
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$c r10 = r9.f190a
            int r10 = r10.z
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.j = r2
        L51:
            r9.c(r0)
            goto L5a
        L55:
            r9.c = r4
            r10 = -1
            r9.f192g = r10
        L5a:
            long r0 = r9.j
            r10 = 1
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 != 0) goto L67
            long r0 = r9.k
            int r2 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r2 == 0) goto L7c
        L67:
            java.lang.Runnable r0 = r9.i
            if (r0 != 0) goto L76
            androidx.appcompat.graphics.drawable.a r0 = new androidx.appcompat.graphics.drawable.a
            r1 = r9
            androidx.appcompat.graphics.drawable.StateListDrawableCompat r1 = (androidx.appcompat.graphics.drawable.StateListDrawableCompat) r1
            r0.<init>(r1)
            r9.i = r0
            goto L79
        L76:
            r9.unscheduleSelf(r0)
        L79:
            r9.a(r10)
        L7c:
            r9.invalidateSelf()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.DrawableContainerCompat.d(int):boolean");
    }

    public final void c(Drawable drawable) {
        if (this.l == null) {
            this.l = new b();
        }
        drawable.setCallback(this.l.wrap(drawable.getCallback()));
        try {
            if (this.f190a.z <= 0 && this.f) {
                drawable.setAlpha(this.e);
            }
            c cVar = this.f190a;
            if (cVar.D) {
                drawable.setColorFilter(cVar.C);
            } else {
                if (cVar.G) {
                    DrawableCompat.setTintList(drawable, cVar.E);
                }
                c cVar2 = this.f190a;
                if (cVar2.H) {
                    DrawableCompat.setTintMode(drawable, cVar2.F);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f190a.x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            if (Build.VERSION.SDK_INT >= 23) {
                DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
            }
            DrawableCompat.setAutoMirrored(drawable, this.f190a.B);
            Rect rect = this.f191b;
            if (rect != null) {
                DrawableCompat.setHotspotBounds(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
            drawable.setCallback(this.l.unwrap());
        } catch (Throwable th) {
            drawable.setCallback(this.l.unwrap());
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.f = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.c
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r8 = 0
            if (r3 == 0) goto L38
            long r9 = r13.j
            int r11 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r11 == 0) goto L3a
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L22
            int r9 = r13.e
            r3.setAlpha(r9)
            r13.j = r6
            goto L3a
        L22:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r10 = (int) r9
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$c r9 = r13.f190a
            int r9 = r9.z
            int r10 = r10 / r9
            int r9 = 255 - r10
            int r10 = r13.e
            int r9 = r9 * r10
            int r9 = r9 / 255
            r3.setAlpha(r9)
            r3 = 1
            goto L3b
        L38:
            r13.j = r6
        L3a:
            r3 = 0
        L3b:
            android.graphics.drawable.Drawable r9 = r13.d
            if (r9 == 0) goto L65
            long r10 = r13.k
            int r12 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r12 == 0) goto L67
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L52
            r9.setVisible(r8, r8)
            r0 = 0
            r13.d = r0
            r13.k = r6
            goto L67
        L52:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$c r4 = r13.f190a
            int r4 = r4.A
            int r3 = r3 / r4
            int r4 = r13.e
            int r3 = r3 * r4
            int r3 = r3 / 255
            r9.setAlpha(r3)
            goto L68
        L65:
            r13.k = r6
        L67:
            r0 = r3
        L68:
            if (r14 == 0) goto L74
            if (r0 == 0) goto L74
            java.lang.Runnable r14 = r13.i
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.DrawableContainerCompat.a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.c;
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void applyTheme(@NonNull Resources.Theme theme) {
        c cVar = this.f190a;
        if (theme == null) {
            cVar.getClass();
            return;
        }
        cVar.a();
        int i = cVar.h;
        Drawable[] drawableArr = cVar.f196g;
        for (int i2 = 0; i2 < i; i2++) {
            Drawable drawable = drawableArr[i2];
            if (drawable != null && DrawableCompat.canApplyTheme(drawable)) {
                DrawableCompat.applyTheme(drawableArr[i2], theme);
                cVar.e |= drawableArr[i2].getChangingConfigurations();
            }
        }
        Resources resources = a.getResources(theme);
        if (resources != null) {
            cVar.f195b = resources;
            int i3 = resources.getDisplayMetrics().densityDpi;
            if (i3 == 0) {
                i3 = ComponentConstants.TEXTBOX_PREFERRED_WIDTH;
            }
            int i4 = cVar.c;
            cVar.c = i3;
            if (i4 != i3) {
                cVar.m = false;
                cVar.j = false;
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public boolean canApplyTheme() {
        return this.f190a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f190a.canConstantState()) {
            return null;
        }
        this.f190a.d = getChangingConfigurations();
        return this.f190a;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.h && super.mutate() == this) {
            c cVarB = b();
            cVarB.b();
            e(cVarB);
            this.h = true;
        }
        return this;
    }

    public c b() {
        return this.f190a;
    }

    public static abstract class c extends Drawable.ConstantState {
        public int A;
        public boolean B;
        public ColorFilter C;
        public boolean D;
        public ColorStateList E;
        public PorterDuff.Mode F;
        public boolean G;
        public boolean H;

        /* renamed from: a, reason: collision with root package name */
        public final StateListDrawableCompat f194a;

        /* renamed from: b, reason: collision with root package name */
        public Resources f195b;
        public int c;
        public int d;
        public int e;
        public SparseArray f;

        /* renamed from: g, reason: collision with root package name */
        public Drawable[] f196g;
        public int h;
        public boolean i;
        public boolean j;
        public Rect k;
        public boolean l;
        public boolean m;
        public int n;
        public int o;
        public int p;
        public int q;
        public boolean r;
        public int s;
        public boolean t;
        public boolean u;
        public boolean v;
        public boolean w;
        public boolean x;
        public int y;
        public int z;

        public c(StateListDrawableCompat.a aVar, StateListDrawableCompat stateListDrawableCompat, Resources resources) {
            Resources resources2;
            this.i = false;
            this.l = false;
            this.x = true;
            this.z = 0;
            this.A = 0;
            this.f194a = stateListDrawableCompat;
            if (resources != null) {
                resources2 = resources;
            } else {
                resources2 = aVar != null ? aVar.f195b : null;
            }
            this.f195b = resources2;
            int i = aVar != null ? aVar.c : 0;
            int i2 = DrawableContainerCompat.m;
            i = resources != null ? resources.getDisplayMetrics().densityDpi : i;
            i = i == 0 ? ComponentConstants.TEXTBOX_PREFERRED_WIDTH : i;
            this.c = i;
            if (aVar != null) {
                this.d = aVar.d;
                this.e = aVar.e;
                this.v = true;
                this.w = true;
                this.i = aVar.i;
                this.l = aVar.l;
                this.x = aVar.x;
                this.y = aVar.y;
                this.z = aVar.z;
                this.A = aVar.A;
                this.B = aVar.B;
                this.C = aVar.C;
                this.D = aVar.D;
                this.E = aVar.E;
                this.F = aVar.F;
                this.G = aVar.G;
                this.H = aVar.H;
                if (aVar.c == i) {
                    if (aVar.j) {
                        this.k = aVar.k != null ? new Rect(aVar.k) : null;
                        this.j = true;
                    }
                    if (aVar.m) {
                        this.n = aVar.n;
                        this.o = aVar.o;
                        this.p = aVar.p;
                        this.q = aVar.q;
                        this.m = true;
                    }
                }
                if (aVar.r) {
                    this.s = aVar.s;
                    this.r = true;
                }
                if (aVar.t) {
                    this.u = aVar.u;
                    this.t = true;
                }
                Drawable[] drawableArr = aVar.f196g;
                this.f196g = new Drawable[drawableArr.length];
                this.h = aVar.h;
                SparseArray sparseArray = aVar.f;
                if (sparseArray != null) {
                    this.f = sparseArray.clone();
                } else {
                    this.f = new SparseArray(this.h);
                }
                int i3 = this.h;
                for (int i4 = 0; i4 < i3; i4++) {
                    Drawable drawable = drawableArr[i4];
                    if (drawable != null) {
                        Drawable.ConstantState constantState = drawable.getConstantState();
                        if (constantState != null) {
                            this.f.put(i4, constantState);
                        } else {
                            this.f196g[i4] = drawableArr[i4];
                        }
                    }
                }
                return;
            }
            this.f196g = new Drawable[10];
            this.h = 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.d | this.e;
        }

        public final int addChild(Drawable drawable) {
            int i = this.h;
            if (i >= this.f196g.length) {
                growArray(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f194a);
            this.f196g[i] = drawable;
            this.h++;
            this.e = drawable.getChangingConfigurations() | this.e;
            this.r = false;
            this.t = false;
            this.k = null;
            this.j = false;
            this.m = false;
            this.v = false;
            return i;
        }

        public final void a() {
            SparseArray sparseArray = this.f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    int iKeyAt = this.f.keyAt(i);
                    Drawable.ConstantState constantState = (Drawable.ConstantState) this.f.valueAt(i);
                    Drawable[] drawableArr = this.f196g;
                    Drawable drawableNewDrawable = constantState.newDrawable(this.f195b);
                    if (Build.VERSION.SDK_INT >= 23) {
                        DrawableCompat.setLayoutDirection(drawableNewDrawable, this.y);
                    }
                    Drawable drawableMutate = drawableNewDrawable.mutate();
                    drawableMutate.setCallback(this.f194a);
                    drawableArr[iKeyAt] = drawableMutate;
                }
                this.f = null;
            }
        }

        public final int getChildCount() {
            return this.h;
        }

        public final Drawable getChild(int i) {
            int iIndexOfKey;
            Drawable drawable = this.f196g[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray sparseArray = this.f;
            if (sparseArray == null || (iIndexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable drawableNewDrawable = ((Drawable.ConstantState) this.f.valueAt(iIndexOfKey)).newDrawable(this.f195b);
            if (Build.VERSION.SDK_INT >= 23) {
                DrawableCompat.setLayoutDirection(drawableNewDrawable, this.y);
            }
            Drawable drawableMutate = drawableNewDrawable.mutate();
            drawableMutate.setCallback(this.f194a);
            this.f196g[i] = drawableMutate;
            this.f.removeAt(iIndexOfKey);
            if (this.f.size() == 0) {
                this.f = null;
            }
            return drawableMutate;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @RequiresApi(21)
        public boolean canApplyTheme() {
            int i = this.h;
            Drawable[] drawableArr = this.f196g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable != null) {
                    if (DrawableCompat.canApplyTheme(drawable)) {
                        return true;
                    }
                } else {
                    Drawable.ConstantState constantState = (Drawable.ConstantState) this.f.get(i2);
                    if (constantState != null && a.canApplyTheme(constantState)) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void b() {
            int i = this.h;
            Drawable[] drawableArr = this.f196g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable != null) {
                    drawable.mutate();
                }
            }
        }

        public final void setVariablePadding(boolean z) {
            this.i = z;
        }

        public final Rect getConstantPadding() {
            Rect rect = null;
            if (this.i) {
                return null;
            }
            Rect rect2 = this.k;
            if (rect2 != null || this.j) {
                return rect2;
            }
            a();
            Rect rect3 = new Rect();
            int i = this.h;
            Drawable[] drawableArr = this.f196g;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getPadding(rect3)) {
                    if (rect == null) {
                        rect = new Rect(0, 0, 0, 0);
                    }
                    int i3 = rect3.left;
                    if (i3 > rect.left) {
                        rect.left = i3;
                    }
                    int i4 = rect3.top;
                    if (i4 > rect.top) {
                        rect.top = i4;
                    }
                    int i5 = rect3.right;
                    if (i5 > rect.right) {
                        rect.right = i5;
                    }
                    int i6 = rect3.bottom;
                    if (i6 > rect.bottom) {
                        rect.bottom = i6;
                    }
                }
            }
            this.j = true;
            this.k = rect;
            return rect;
        }

        public final void setConstantSize(boolean z) {
            this.l = z;
        }

        public final boolean isConstantSize() {
            return this.l;
        }

        public final int getConstantWidth() {
            if (!this.m) {
                computeConstantSize();
            }
            return this.n;
        }

        public final int getConstantHeight() {
            if (!this.m) {
                computeConstantSize();
            }
            return this.o;
        }

        public final int getConstantMinimumWidth() {
            if (!this.m) {
                computeConstantSize();
            }
            return this.p;
        }

        public final int getConstantMinimumHeight() {
            if (!this.m) {
                computeConstantSize();
            }
            return this.q;
        }

        public void computeConstantSize() {
            this.m = true;
            a();
            int i = this.h;
            Drawable[] drawableArr = this.f196g;
            this.o = -1;
            this.n = -1;
            this.q = 0;
            this.p = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.n) {
                    this.n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.o) {
                    this.o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.p) {
                    this.p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.q) {
                    this.q = minimumHeight;
                }
            }
        }

        public final void setEnterFadeDuration(int i) {
            this.z = i;
        }

        public final void setExitFadeDuration(int i) {
            this.A = i;
        }

        public final int getOpacity() {
            if (this.r) {
                return this.s;
            }
            a();
            int i = this.h;
            Drawable[] drawableArr = this.f196g;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.s = opacity;
            this.r = true;
            return opacity;
        }

        public final boolean isStateful() {
            if (this.t) {
                return this.u;
            }
            a();
            int i = this.h;
            Drawable[] drawableArr = this.f196g;
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    break;
                }
                if (drawableArr[i2].isStateful()) {
                    z = true;
                    break;
                }
                i2++;
            }
            this.u = z;
            this.t = true;
            return z;
        }

        public void growArray(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            Drawable[] drawableArr2 = this.f196g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i);
            }
            this.f196g = drawableArr;
        }

        public boolean canConstantState() {
            if (this.v) {
                return this.w;
            }
            a();
            this.v = true;
            int i = this.h;
            Drawable[] drawableArr = this.f196g;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getConstantState() == null) {
                    this.w = false;
                    return false;
                }
            }
            this.w = true;
            return true;
        }
    }

    public void e(c cVar) {
        this.f190a = cVar;
        int i = this.f192g;
        if (i >= 0) {
            Drawable child = cVar.getChild(i);
            this.c = child;
            if (child != null) {
                c(child);
            }
        }
        this.d = null;
    }

    public static class b implements Drawable.Callback {

        /* renamed from: a, reason: collision with root package name */
        public Drawable.Callback f193a;

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@NonNull Drawable drawable) {
        }

        public b wrap(Drawable.Callback callback) {
            this.f193a = callback;
            return this;
        }

        public Drawable.Callback unwrap() {
            Drawable.Callback callback = this.f193a;
            this.f193a = null;
            return callback;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
            Drawable.Callback callback = this.f193a;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
            Drawable.Callback callback = this.f193a;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    @RequiresApi(21)
    public static class a {
        private a() {
        }

        public static boolean canApplyTheme(Drawable.ConstantState constantState) {
            return constantState.canApplyTheme();
        }

        public static Resources getResources(Resources.Theme theme) {
            return theme.getResources();
        }

        public static void getOutline(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }
    }
}
