package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public abstract class AutoScrollHelper implements View.OnTouchListener {
    public static final int EDGE_TYPE_INSIDE = 0;
    public static final int EDGE_TYPE_INSIDE_EXTEND = 1;
    public static final int EDGE_TYPE_OUTSIDE = 2;
    public static final float NO_MAX = Float.MAX_VALUE;
    public static final float NO_MIN = 0.0f;
    public static final float RELATIVE_UNSPECIFIED = 0.0f;
    public static final int r = ViewConfiguration.getTapTimeout();
    public final View c;
    public Runnable d;

    /* renamed from: g, reason: collision with root package name */
    public int f1419g;
    public int h;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;

    /* renamed from: a, reason: collision with root package name */
    public final a f1417a = new a();

    /* renamed from: b, reason: collision with root package name */
    public final AccelerateInterpolator f1418b = new AccelerateInterpolator();
    public final float[] e = {0.0f, 0.0f};
    public final float[] f = {Float.MAX_VALUE, Float.MAX_VALUE};
    public final float[] i = {0.0f, 0.0f};
    public final float[] j = {0.0f, 0.0f};
    public final float[] k = {Float.MAX_VALUE, Float.MAX_VALUE};

    public static float b(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    public abstract boolean canTargetScrollHorizontally(int i);

    public abstract boolean canTargetScrollVertically(int i);

    public abstract void scrollTargetBy(int i, int i2);

    public AutoScrollHelper(@NonNull View view) {
        this.c = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f2 = (int) ((1575.0f * f) + 0.5f);
        setMaximumVelocity(f2, f2);
        float f3 = (int) ((f * 315.0f) + 0.5f);
        setMinimumVelocity(f3, f3);
        setEdgeType(1);
        setMaximumEdges(Float.MAX_VALUE, Float.MAX_VALUE);
        setRelativeEdges(0.2f, 0.2f);
        setRelativeVelocity(1.0f, 1.0f);
        setActivationDelay(r);
        setRampUpDuration(500);
        setRampDownDuration(500);
    }

    public AutoScrollHelper setEnabled(boolean z) {
        if (this.p && !z) {
            if (this.m) {
                this.o = false;
            } else {
                this.f1417a.requestStop();
            }
        }
        this.p = z;
        return this;
    }

    public boolean isEnabled() {
        return this.p;
    }

    public AutoScrollHelper setExclusive(boolean z) {
        this.q = z;
        return this;
    }

    public boolean isExclusive() {
        return this.q;
    }

    @NonNull
    public AutoScrollHelper setMaximumVelocity(float f, float f2) {
        float[] fArr = this.k;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMinimumVelocity(float f, float f2) {
        float[] fArr = this.j;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    @NonNull
    public AutoScrollHelper setRelativeVelocity(float f, float f2) {
        float[] fArr = this.i;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    @NonNull
    public AutoScrollHelper setEdgeType(int i) {
        this.f1419g = i;
        return this;
    }

    @NonNull
    public AutoScrollHelper setRelativeEdges(float f, float f2) {
        float[] fArr = this.e;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMaximumEdges(float f, float f2) {
        float[] fArr = this.f;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    @NonNull
    public AutoScrollHelper setActivationDelay(int i) {
        this.h = i;
        return this;
    }

    @NonNull
    public AutoScrollHelper setRampUpDuration(int i) {
        this.f1417a.setRampUpDuration(i);
        return this;
    }

    @NonNull
    public AutoScrollHelper setRampDownDuration(int i) {
        this.f1417a.setRampDownDuration(i);
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0084  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r9, android.view.MotionEvent r10) {
        /*
            r8 = this;
            boolean r0 = r8.p
            r1 = 0
            if (r0 != 0) goto L7
            goto L89
        L7:
            int r0 = r10.getActionMasked()
            androidx.core.widget.AutoScrollHelper$a r2 = r8.f1417a
            r3 = 1
            if (r0 == 0) goto L24
            if (r0 == r3) goto L19
            r4 = 2
            if (r0 == r4) goto L28
            r9 = 3
            if (r0 == r9) goto L19
            goto L80
        L19:
            boolean r9 = r8.m
            if (r9 == 0) goto L20
            r8.o = r1
            goto L80
        L20:
            r2.requestStop()
            goto L80
        L24:
            r8.n = r3
            r8.l = r1
        L28:
            float r0 = r10.getX()
            int r4 = r9.getWidth()
            float r4 = (float) r4
            android.view.View r5 = r8.c
            int r6 = r5.getWidth()
            float r6 = (float) r6
            float r0 = r8.a(r0, r4, r6, r1)
            float r10 = r10.getY()
            int r9 = r9.getHeight()
            float r9 = (float) r9
            int r4 = r5.getHeight()
            float r4 = (float) r4
            float r9 = r8.a(r10, r9, r4, r3)
            r2.setTargetVelocity(r0, r9)
            boolean r9 = r8.o
            if (r9 != 0) goto L80
            boolean r9 = r8.d()
            if (r9 == 0) goto L80
            java.lang.Runnable r9 = r8.d
            if (r9 != 0) goto L66
            androidx.core.widget.AutoScrollHelper$b r9 = new androidx.core.widget.AutoScrollHelper$b
            r9.<init>()
            r8.d = r9
        L66:
            r8.o = r3
            r8.m = r3
            boolean r9 = r8.l
            if (r9 != 0) goto L79
            int r9 = r8.h
            if (r9 <= 0) goto L79
            java.lang.Runnable r10 = r8.d
            long r6 = (long) r9
            androidx.core.view.ViewCompat.postOnAnimationDelayed(r5, r10, r6)
            goto L7e
        L79:
            java.lang.Runnable r9 = r8.d
            r9.run()
        L7e:
            r8.l = r3
        L80:
            boolean r9 = r8.q
            if (r9 == 0) goto L89
            boolean r9 = r8.o
            if (r9 == 0) goto L89
            return r3
        L89:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AutoScrollHelper.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public final boolean d() {
        a aVar = this.f1417a;
        int verticalDirection = aVar.getVerticalDirection();
        int horizontalDirection = aVar.getHorizontalDirection();
        if (verticalDirection == 0 || !canTargetScrollVertically(verticalDirection)) {
            return horizontalDirection != 0 && canTargetScrollHorizontally(horizontalDirection);
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float a(float r4, float r5, float r6, int r7) {
        /*
            r3 = this;
            float[] r0 = r3.e
            r0 = r0[r7]
            float[] r1 = r3.f
            r1 = r1[r7]
            float r0 = r0 * r5
            r2 = 0
            float r0 = b(r0, r2, r1)
            float r1 = r3.c(r4, r0)
            float r5 = r5 - r4
            float r4 = r3.c(r5, r0)
            float r4 = r4 - r1
            android.view.animation.AccelerateInterpolator r5 = r3.f1418b
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 >= 0) goto L26
            float r4 = -r4
            float r4 = r5.getInterpolation(r4)
            float r4 = -r4
            goto L2e
        L26:
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 <= 0) goto L37
            float r4 = r5.getInterpolation(r4)
        L2e:
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r4 = b(r4, r5, r0)
            goto L38
        L37:
            r4 = 0
        L38:
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r5 != 0) goto L3d
            return r2
        L3d:
            float[] r0 = r3.i
            r0 = r0[r7]
            float[] r1 = r3.j
            r1 = r1[r7]
            float[] r2 = r3.k
            r7 = r2[r7]
            float r0 = r0 * r6
            if (r5 <= 0) goto L54
            float r4 = r4 * r0
            float r4 = b(r4, r1, r7)
            return r4
        L54:
            float r4 = -r4
            float r4 = r4 * r0
            float r4 = b(r4, r1, r7)
            float r4 = -r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AutoScrollHelper.a(float, float, float, int):float");
    }

    public final float c(float f, float f2) {
        if (f2 != 0.0f) {
            int i = this.f1419g;
            if (i == 0 || i == 1) {
                if (f < f2) {
                    if (f >= 0.0f) {
                        return 1.0f - (f / f2);
                    }
                    if (this.o && i == 1) {
                        return 1.0f;
                    }
                }
            } else if (i == 2 && f < 0.0f) {
                return f / (-f2);
            }
        }
        return 0.0f;
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
            if (autoScrollHelper.o) {
                boolean z = autoScrollHelper.m;
                a aVar = autoScrollHelper.f1417a;
                if (z) {
                    autoScrollHelper.m = false;
                    aVar.start();
                }
                if (aVar.isFinished() || !autoScrollHelper.d()) {
                    autoScrollHelper.o = false;
                    return;
                }
                boolean z2 = autoScrollHelper.n;
                View view = autoScrollHelper.c;
                if (z2) {
                    autoScrollHelper.n = false;
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                }
                aVar.computeScrollDelta();
                autoScrollHelper.scrollTargetBy(aVar.getDeltaX(), aVar.getDeltaY());
                ViewCompat.postOnAnimation(view, this);
            }
        }
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public int f1420a;

        /* renamed from: b, reason: collision with root package name */
        public int f1421b;
        public float c;
        public float d;
        public float j;
        public int k;
        public long e = Long.MIN_VALUE;
        public long i = -1;
        public long f = 0;

        /* renamed from: g, reason: collision with root package name */
        public int f1422g = 0;
        public int h = 0;

        public void setRampUpDuration(int i) {
            this.f1420a = i;
        }

        public void setRampDownDuration(int i) {
            this.f1421b = i;
        }

        public void start() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.e = jCurrentAnimationTimeMillis;
            this.i = -1L;
            this.f = jCurrentAnimationTimeMillis;
            this.j = 0.5f;
            this.f1422g = 0;
            this.h = 0;
        }

        public void requestStop() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            int i = (int) (jCurrentAnimationTimeMillis - this.e);
            int i2 = this.f1421b;
            float f = AutoScrollHelper.RELATIVE_UNSPECIFIED;
            if (i > i2) {
                i = i2;
            } else if (i < 0) {
                i = 0;
            }
            this.k = i;
            this.j = a(jCurrentAnimationTimeMillis);
            this.i = jCurrentAnimationTimeMillis;
        }

        public boolean isFinished() {
            return this.i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.i + ((long) this.k);
        }

        public final float a(long j) {
            if (j < this.e) {
                return 0.0f;
            }
            long j2 = this.i;
            if (j2 < 0 || j < j2) {
                return AutoScrollHelper.b((j - r0) / this.f1420a, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.j;
            return (AutoScrollHelper.b((j - j2) / this.k, 0.0f, 1.0f) * f) + (1.0f - f);
        }

        public void computeScrollDelta() {
            if (this.f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fA = a(jCurrentAnimationTimeMillis);
            long j = jCurrentAnimationTimeMillis - this.f;
            this.f = jCurrentAnimationTimeMillis;
            float f = j * ((fA * 4.0f) + ((-4.0f) * fA * fA));
            this.f1422g = (int) (this.c * f);
            this.h = (int) (f * this.d);
        }

        public void setTargetVelocity(float f, float f2) {
            this.c = f;
            this.d = f2;
        }

        public int getHorizontalDirection() {
            float f = this.c;
            return (int) (f / Math.abs(f));
        }

        public int getVerticalDirection() {
            float f = this.d;
            return (int) (f / Math.abs(f));
        }

        public int getDeltaX() {
            return this.f1422g;
        }

        public int getDeltaY() {
            return this.h;
        }
    }
}
