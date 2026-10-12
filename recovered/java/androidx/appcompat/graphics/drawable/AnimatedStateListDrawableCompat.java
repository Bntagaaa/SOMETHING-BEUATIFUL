package androidx.appcompat.graphics.drawable;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.graphics.drawable.DrawableContainerCompat;
import androidx.appcompat.graphics.drawable.StateListDrawableCompat;
import androidx.appcompat.resources.Compatibility;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.util.ObjectsCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import gnu.expr.Declaration;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class AnimatedStateListDrawableCompat extends StateListDrawableCompat implements TintAwareDrawable {
    public c p;
    public g q;
    public int r;
    public int s;
    public boolean t;

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    public AnimatedStateListDrawableCompat() {
        this(null, null);
    }

    @Nullable
    public static AnimatedStateListDrawableCompat create(@NonNull Context context, @DrawableRes int i, @Nullable Resources.Theme theme) throws XmlPullParserException, Resources.NotFoundException, IOException {
        int next;
        try {
            Resources resources = context.getResources();
            XmlResourceParser xml = resources.getXml(i);
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
            return createFromXmlInner(context, resources, xml, attributeSetAsAttributeSet, theme);
        } catch (IOException e2) {
            Log.e("AnimatedStateListDrawableCompat", "parser error", e2);
            return null;
        } catch (XmlPullParserException e3) {
            Log.e("AnimatedStateListDrawableCompat", "parser error", e3);
            return null;
        }
    }

    @NonNull
    public static AnimatedStateListDrawableCompat createFromXmlInner(@NonNull Context context, @NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (!name.equals("animated-selector")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
        }
        AnimatedStateListDrawableCompat animatedStateListDrawableCompat = new AnimatedStateListDrawableCompat();
        animatedStateListDrawableCompat.inflate(context, resources, xmlPullParser, attributeSet, theme);
        return animatedStateListDrawableCompat;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x01eb, code lost:
    
        onStateChange(getState());
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01f2, code lost:
    
        return;
     */
    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void inflate(@androidx.annotation.NonNull android.content.Context r17, @androidx.annotation.NonNull android.content.res.Resources r18, @androidx.annotation.NonNull org.xmlpull.v1.XmlPullParser r19, @androidx.annotation.NonNull android.util.AttributeSet r20, @androidx.annotation.Nullable android.content.res.Resources.Theme r21) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.inflate(android.content.Context, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):void");
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        g gVar = this.q;
        if (gVar != null && (visible || z2)) {
            if (z) {
                gVar.start();
                return visible;
            }
            jumpToCurrentState();
        }
        return visible;
    }

    public void addState(@NonNull int[] iArr, @NonNull Drawable drawable, int i) {
        ObjectsCompat.requireNonNull(drawable);
        c cVar = this.p;
        int iAddChild = cVar.addChild(drawable);
        cVar.I[iAddChild] = iArr;
        cVar.K.put(iAddChild, Integer.valueOf(i));
        onStateChange(getState());
    }

    public <T extends Drawable & Animatable> void addTransition(int i, int i2, @NonNull T t, boolean z) {
        ObjectsCompat.requireNonNull(t);
        this.p.d(i, i2, t, z);
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        g gVar = this.q;
        if (gVar != null) {
            gVar.stop();
            this.q = null;
            d(this.r);
            this.r = -1;
            this.s = -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0108  */
    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onStateChange(@androidx.annotation.NonNull int[] r18) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.onStateChange(int[]):boolean");
    }

    public static abstract class g {
        public boolean canReverse() {
            return false;
        }

        public void reverse() {
        }

        public abstract void start();

        public abstract void stop();

        private g() {
        }

        public /* synthetic */ g(int i) {
            this();
        }
    }

    public static class b extends g {

        /* renamed from: a, reason: collision with root package name */
        public final Animatable f184a;

        public b(Animatable animatable) {
            super(0);
            this.f184a = animatable;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.g
        public void start() {
            this.f184a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.g
        public void stop() {
            this.f184a.stop();
        }
    }

    public static class e extends g {

        /* renamed from: a, reason: collision with root package name */
        public final ObjectAnimator f186a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f187b;

        /* JADX WARN: Illegal instructions before constructor call */
        public e(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            int i = 0;
            super(i);
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i2 = z ? numberOfFrames - 1 : 0;
            int i3 = z ? 0 : numberOfFrames - 1;
            f fVar = new f();
            int numberOfFrames2 = animationDrawable.getNumberOfFrames();
            fVar.f189b = numberOfFrames2;
            int[] iArr = fVar.f188a;
            if (iArr == null || iArr.length < numberOfFrames2) {
                fVar.f188a = new int[numberOfFrames2];
            }
            int[] iArr2 = fVar.f188a;
            int i4 = 0;
            while (i < numberOfFrames2) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames2 - i) - 1 : i);
                iArr2[i] = duration;
                i4 += duration;
                i++;
            }
            fVar.c = i4;
            ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i2, i3);
            Compatibility.Api18Impl.setAutoCancel(objectAnimatorOfInt, true);
            objectAnimatorOfInt.setDuration(fVar.c);
            objectAnimatorOfInt.setInterpolator(fVar);
            this.f187b = z2;
            this.f186a = objectAnimatorOfInt;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.g
        public boolean canReverse() {
            return this.f187b;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.g
        public void start() {
            this.f186a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.g
        public void reverse() {
            this.f186a.reverse();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.g
        public void stop() {
            this.f186a.cancel();
        }
    }

    public AnimatedStateListDrawableCompat(c cVar, Resources resources) {
        this.r = -1;
        this.s = -1;
        e(new c(cVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    public static class d extends g {

        /* renamed from: a, reason: collision with root package name */
        public final AnimatedVectorDrawableCompat f185a;

        public d(AnimatedVectorDrawableCompat animatedVectorDrawableCompat) {
            super(0);
            this.f185a = animatedVectorDrawableCompat;
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.g
        public void start() {
            this.f185a.start();
        }

        @Override // androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.g
        public void stop() {
            this.f185a.stop();
        }
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat, android.graphics.drawable.Drawable
    @NonNull
    public Drawable mutate() {
        if (!this.t && super.mutate() == this) {
            this.p.b();
            this.t = true;
        }
        return this;
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat
    public final DrawableContainerCompat.c b() {
        return new c(this.p, this, null);
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat
    /* renamed from: f */
    public final StateListDrawableCompat.a b() {
        return new c(this.p, this, null);
    }

    public static class c extends StateListDrawableCompat.a {
        public LongSparseArray J;
        public SparseArrayCompat K;

        public c(c cVar, AnimatedStateListDrawableCompat animatedStateListDrawableCompat, Resources resources) {
            super(cVar, animatedStateListDrawableCompat, resources);
            if (cVar != null) {
                this.J = cVar.J;
                this.K = cVar.K;
            } else {
                this.J = new LongSparseArray();
                this.K = new SparseArrayCompat();
            }
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat.a, androidx.appcompat.graphics.drawable.DrawableContainerCompat.c
        public final void b() {
            this.J = this.J.m0clone();
            this.K = this.K.m1clone();
        }

        public final int d(int i, int i2, Drawable drawable, boolean z) {
            int iAddChild = addChild(drawable);
            long j = i;
            long j2 = i2;
            long j3 = (j << 32) | j2;
            long j4 = z ? Declaration.ENUM_ACCESS : 0L;
            long j5 = iAddChild;
            this.J.append(j3, Long.valueOf(j5 | j4));
            if (z) {
                this.J.append(j | (j2 << 32), Long.valueOf(Declaration.TRANSIENT_ACCESS | j5 | j4));
            }
            return iAddChild;
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat.a, android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new AnimatedStateListDrawableCompat(this, null);
        }

        @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat.a, android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return new AnimatedStateListDrawableCompat(this, resources);
        }
    }

    @Override // androidx.appcompat.graphics.drawable.StateListDrawableCompat, androidx.appcompat.graphics.drawable.DrawableContainerCompat
    public final void e(DrawableContainerCompat.c cVar) {
        super.e(cVar);
        if (cVar instanceof c) {
            this.p = (c) cVar;
        }
    }

    public static class f implements TimeInterpolator {

        /* renamed from: a, reason: collision with root package name */
        public int[] f188a;

        /* renamed from: b, reason: collision with root package name */
        public int f189b;
        public int c;

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            int i = (int) ((f * this.c) + 0.5f);
            int i2 = this.f189b;
            int[] iArr = this.f188a;
            int i3 = 0;
            while (i3 < i2) {
                int i4 = iArr[i3];
                if (i < i4) {
                    break;
                }
                i -= i4;
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.c : 0.0f);
        }
    }
}
