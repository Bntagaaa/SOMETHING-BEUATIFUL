package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.collection.ArrayMap;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class AnimatedVectorDrawableCompat extends androidx.vectordrawable.graphics.drawable.d implements Animatable2Compat {

    /* renamed from: b, reason: collision with root package name */
    public final c f2317b;
    public final Context c;
    public Animator.AnimatorListener d;
    public ArrayList e;
    public final Drawable.Callback f;

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int[] getState() {
        return super.getState();
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setChangingConfigurations(int i) {
        super.setChangingConfigurations(i);
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(int i, PorterDuff.Mode mode) {
        super.setColorFilter(i, mode);
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setFilterBitmap(boolean z) {
        super.setFilterBitmap(z);
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspot(float f, float f2) {
        super.setHotspot(f, f2);
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setHotspotBounds(int i, int i2, int i3, int i4) {
        super.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    public AnimatedVectorDrawableCompat() {
        this(null);
    }

    public AnimatedVectorDrawableCompat(Context context) {
        this.d = null;
        this.e = null;
        a aVar = new a();
        this.f = aVar;
        this.c = context;
        this.f2317b = new c(context, null, aVar, null);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Nullable
    public static AnimatedVectorDrawableCompat create(@NonNull Context context, @DrawableRes int i) throws XmlPullParserException, Resources.NotFoundException, IOException {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(context);
            Drawable drawable = ResourcesCompat.getDrawable(context.getResources(), i, context.getTheme());
            animatedVectorDrawableCompat.f2346a = drawable;
            drawable.setCallback(animatedVectorDrawableCompat.f);
            new d(animatedVectorDrawableCompat.f2346a.getConstantState());
            return animatedVectorDrawableCompat;
        }
        try {
            XmlResourceParser xml = context.getResources().getXml(i);
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
            return createFromXmlInner(context, context.getResources(), xml, attributeSetAsAttributeSet, context.getTheme());
        } catch (IOException e) {
            Log.e("AnimatedVDCompat", "parser error", e);
            return null;
        } catch (XmlPullParserException e2) {
            Log.e("AnimatedVDCompat", "parser error", e2);
            return null;
        }
    }

    public static AnimatedVectorDrawableCompat createFromXmlInner(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(context);
        animatedVectorDrawableCompat.inflate(resources, xmlPullParser, attributeSet, theme);
        return animatedVectorDrawableCompat;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        if (this.f2346a == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new d(this.f2346a.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        int changingConfigurations = super.getChangingConfigurations();
        this.f2317b.getClass();
        return changingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        c cVar = this.f2317b;
        cVar.f2320a.draw(canvas);
        if (cVar.f2321b.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f2317b.f2320a.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        return this.f2317b.f2320a.setState(iArr);
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        return this.f2317b.f2320a.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return DrawableCompat.getAlpha(drawable);
        }
        return this.f2317b.f2320a.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else {
            this.f2317b.f2320a.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f2317b.f2320a.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return DrawableCompat.getColorFilter(drawable);
        }
        return this.f2317b.f2320a.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(int i) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            DrawableCompat.setTint(drawable, i);
        } else {
            this.f2317b.f2320a.setTint(i);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
        } else {
            this.f2317b.f2320a.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            DrawableCompat.setTintMode(drawable, mode);
        } else {
            this.f2317b.f2320a.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return drawable.setVisible(z, z2);
        }
        this.f2317b.f2320a.setVisible(z, z2);
        return super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        return this.f2317b.f2320a.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return this.f2317b.f2320a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return this.f2317b.f2320a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return this.f2317b.f2320a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return DrawableCompat.isAutoMirrored(drawable);
        }
        return this.f2317b.f2320a.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            DrawableCompat.setAutoMirrored(drawable, z);
        } else {
            this.f2317b.f2320a.setAutoMirrored(z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b4, code lost:
    
        r3.setupAnimatorSet();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b7, code lost:
    
        return;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void inflate(android.content.res.Resources r8, org.xmlpull.v1.XmlPullParser r9, android.util.AttributeSet r10, android.content.res.Resources.Theme r11) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException {
        /*
            r7 = this;
            android.graphics.drawable.Drawable r0 = r7.f2346a
            if (r0 == 0) goto L8
            androidx.core.graphics.drawable.DrawableCompat.inflate(r0, r8, r9, r10, r11)
            return
        L8:
            int r0 = r9.getEventType()
            int r1 = r9.getDepth()
            r2 = 1
            int r1 = r1 + r2
        L12:
            androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat$c r3 = r7.f2317b
            if (r0 == r2) goto Lb4
            int r4 = r9.getDepth()
            if (r4 >= r1) goto L1f
            r4 = 3
            if (r0 == r4) goto Lb4
        L1f:
            r4 = 2
            if (r0 != r4) goto Lae
            java.lang.String r0 = r9.getName()
            java.lang.String r4 = "animated-vector"
            boolean r4 = r4.equals(r0)
            r5 = 0
            if (r4 == 0) goto L54
            int[] r0 = androidx.vectordrawable.graphics.drawable.a.e
            android.content.res.TypedArray r0 = androidx.core.content.res.TypedArrayUtils.obtainAttributes(r8, r11, r10, r0)
            int r4 = r0.getResourceId(r5, r5)
            if (r4 == 0) goto L50
            androidx.vectordrawable.graphics.drawable.VectorDrawableCompat r4 = androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.create(r8, r4, r11)
            r4.f = r5
            android.graphics.drawable.Drawable$Callback r5 = r7.f
            r4.setCallback(r5)
            androidx.vectordrawable.graphics.drawable.VectorDrawableCompat r5 = r3.f2320a
            if (r5 == 0) goto L4e
            r6 = 0
            r5.setCallback(r6)
        L4e:
            r3.f2320a = r4
        L50:
            r0.recycle()
            goto Lae
        L54:
            java.lang.String r4 = "target"
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto Lae
            int[] r0 = androidx.vectordrawable.graphics.drawable.a.f
            android.content.res.TypedArray r0 = r8.obtainAttributes(r10, r0)
            java.lang.String r4 = r0.getString(r5)
            int r5 = r0.getResourceId(r2, r5)
            if (r5 == 0) goto Lab
            android.content.Context r6 = r7.c
            if (r6 == 0) goto La0
            android.animation.Animator r5 = androidx.vectordrawable.graphics.drawable.AnimatorInflaterCompat.loadAnimator(r6, r5)
            androidx.vectordrawable.graphics.drawable.VectorDrawableCompat r6 = r3.f2320a
            androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$h r6 = r6.f2327b
            androidx.vectordrawable.graphics.drawable.VectorDrawableCompat$g r6 = r6.f2339b
            androidx.collection.ArrayMap r6 = r6.o
            java.lang.Object r6 = r6.get(r4)
            r5.setTarget(r6)
            java.util.ArrayList r6 = r3.c
            if (r6 != 0) goto L95
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            r3.c = r6
            androidx.collection.ArrayMap r6 = new androidx.collection.ArrayMap
            r6.<init>()
            r3.d = r6
        L95:
            java.util.ArrayList r6 = r3.c
            r6.add(r5)
            androidx.collection.ArrayMap r3 = r3.d
            r3.put(r5, r4)
            goto Lab
        La0:
            r0.recycle()
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "Context can't be null when inflating animators"
            r8.<init>(r9)
            throw r8
        Lab:
            r0.recycle()
        Lae:
            int r0 = r9.next()
            goto L12
        Lb4:
            r3.setupAnimatorSet()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    @Override // android.graphics.drawable.Drawable
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, Resources.NotFoundException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // androidx.vectordrawable.graphics.drawable.d, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            DrawableCompat.applyTheme(drawable, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean canApplyTheme() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return DrawableCompat.canApplyTheme(drawable);
        }
        return false;
    }

    @RequiresApi(24)
    public static class d extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public final Drawable.ConstantState f2322a;

        public d(Drawable.ConstantState constantState) {
            this.f2322a = constantState;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            Drawable drawableNewDrawable = this.f2322a.newDrawable();
            animatedVectorDrawableCompat.f2346a = drawableNewDrawable;
            drawableNewDrawable.setCallback(animatedVectorDrawableCompat.f);
            return animatedVectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            Drawable drawableNewDrawable = this.f2322a.newDrawable(resources);
            animatedVectorDrawableCompat.f2346a = drawableNewDrawable;
            drawableNewDrawable.setCallback(animatedVectorDrawableCompat.f);
            return animatedVectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat();
            Drawable drawableNewDrawable = this.f2322a.newDrawable(resources, theme);
            animatedVectorDrawableCompat.f2346a = drawableNewDrawable;
            drawableNewDrawable.setCallback(animatedVectorDrawableCompat.f);
            return animatedVectorDrawableCompat;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public boolean canApplyTheme() {
            return this.f2322a.canApplyTheme();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f2322a.getChangingConfigurations();
        }
    }

    public static class c extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public VectorDrawableCompat f2320a;

        /* renamed from: b, reason: collision with root package name */
        public AnimatorSet f2321b;
        public ArrayList c;
        public ArrayMap d;

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public c(Context context, c cVar, Drawable.Callback callback, Resources resources) {
            if (cVar != null) {
                VectorDrawableCompat vectorDrawableCompat = cVar.f2320a;
                if (vectorDrawableCompat != null) {
                    Drawable.ConstantState constantState = vectorDrawableCompat.getConstantState();
                    if (resources != null) {
                        this.f2320a = (VectorDrawableCompat) constantState.newDrawable(resources);
                    } else {
                        this.f2320a = (VectorDrawableCompat) constantState.newDrawable();
                    }
                    VectorDrawableCompat vectorDrawableCompat2 = (VectorDrawableCompat) this.f2320a.mutate();
                    this.f2320a = vectorDrawableCompat2;
                    vectorDrawableCompat2.setCallback(callback);
                    this.f2320a.setBounds(cVar.f2320a.getBounds());
                    this.f2320a.f = false;
                }
                ArrayList arrayList = cVar.c;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.c = new ArrayList(size);
                    this.d = new ArrayMap(size);
                    for (int i = 0; i < size; i++) {
                        Animator animator = (Animator) cVar.c.get(i);
                        Animator animatorClone = animator.clone();
                        String str = (String) cVar.d.get(animator);
                        animatorClone.setTarget(this.f2320a.f2327b.f2339b.o.get(str));
                        this.c.add(animatorClone);
                        this.d.put(animatorClone, str);
                    }
                    setupAnimatorSet();
                }
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        public void setupAnimatorSet() {
            if (this.f2321b == null) {
                this.f2321b = new AnimatorSet();
            }
            this.f2321b.playTogether(this.c);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            return ((AnimatedVectorDrawable) drawable).isRunning();
        }
        return this.f2317b.f2321b.isRunning();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
            return;
        }
        c cVar = this.f2317b;
        if (cVar.f2321b.isStarted()) {
            return;
        }
        cVar.f2321b.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f2317b.f2321b.end();
        }
    }

    public class a implements Drawable.Callback {
        public a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            AnimatedVectorDrawableCompat.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            AnimatedVectorDrawableCompat.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            AnimatedVectorDrawableCompat.this.unscheduleSelf(runnable);
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).registerAnimationCallback(animationCallback.a());
            return;
        }
        if (animationCallback == null) {
            return;
        }
        if (this.e == null) {
            this.e = new ArrayList();
        }
        if (this.e.contains(animationCallback)) {
            return;
        }
        this.e.add(animationCallback);
        if (this.d == null) {
            this.d = new b();
        }
        this.f2317b.f2321b.addListener(this.d);
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = AnimatedVectorDrawableCompat.this;
            ArrayList arrayList = new ArrayList(animatedVectorDrawableCompat.e);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Animatable2Compat.AnimationCallback) arrayList.get(i)).onAnimationStart(animatedVectorDrawableCompat);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = AnimatedVectorDrawableCompat.this;
            ArrayList arrayList = new ArrayList(animatedVectorDrawableCompat.e);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Animatable2Compat.AnimationCallback) arrayList.get(i)).onAnimationEnd(animatedVectorDrawableCompat);
            }
        }
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        Animator.AnimatorListener animatorListener;
        Drawable drawable = this.f2346a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).unregisterAnimationCallback(animationCallback.a());
        }
        ArrayList arrayList = this.e;
        if (arrayList == null || animationCallback == null) {
            return false;
        }
        boolean zRemove = arrayList.remove(animationCallback);
        if (this.e.size() == 0 && (animatorListener = this.d) != null) {
            this.f2317b.f2321b.removeListener(animatorListener);
            this.d = null;
        }
        return zRemove;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void clearAnimationCallbacks() {
        Drawable drawable = this.f2346a;
        if (drawable == null) {
            Animator.AnimatorListener animatorListener = this.d;
            if (animatorListener != null) {
                this.f2317b.f2321b.removeListener(animatorListener);
                this.d = null;
            }
            ArrayList arrayList = this.e;
            if (arrayList == null) {
                return;
            }
            arrayList.clear();
            return;
        }
        ((AnimatedVectorDrawable) drawable).clearAnimationCallbacks();
    }

    public static void registerAnimationCallback(Drawable drawable, Animatable2Compat.AnimationCallback animationCallback) {
        if (drawable == null || animationCallback == null || !(drawable instanceof Animatable)) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            ((AnimatedVectorDrawable) drawable).registerAnimationCallback(animationCallback.a());
        } else {
            ((AnimatedVectorDrawableCompat) drawable).registerAnimationCallback(animationCallback);
        }
    }

    public static boolean unregisterAnimationCallback(Drawable drawable, Animatable2Compat.AnimationCallback animationCallback) {
        if (drawable == null || animationCallback == null || !(drawable instanceof Animatable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            return ((AnimatedVectorDrawable) drawable).unregisterAnimationCallback(animationCallback.a());
        }
        return ((AnimatedVectorDrawableCompat) drawable).unregisterAnimationCallback(animationCallback);
    }

    public static void clearAnimationCallbacks(Drawable drawable) {
        if (drawable instanceof Animatable) {
            if (Build.VERSION.SDK_INT >= 24) {
                ((AnimatedVectorDrawable) drawable).clearAnimationCallbacks();
            } else {
                ((AnimatedVectorDrawableCompat) drawable).clearAnimationCallbacks();
            }
        }
    }
}
