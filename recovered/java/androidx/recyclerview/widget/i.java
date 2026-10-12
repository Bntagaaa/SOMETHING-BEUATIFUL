package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;

@VisibleForTesting
/* loaded from: classes.dex */
class i extends RecyclerView.ItemDecoration implements RecyclerView.OnItemTouchListener {
    public static final int[] D = {R.attr.state_pressed};
    public static final int[] E = new int[0];
    public int A;
    public final Runnable B;
    public final RecyclerView.OnScrollListener C;

    /* renamed from: a, reason: collision with root package name */
    public final int f2160a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2161b;
    public final StateListDrawable c;
    public final Drawable d;
    public final int e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final StateListDrawable f2162g;
    public final Drawable h;
    public final int i;
    public final int j;
    public int k;
    public int l;
    public float m;
    public int n;
    public int o;
    public float p;
    public RecyclerView s;
    public final ValueAnimator z;
    public int q = 0;
    public int r = 0;
    public boolean t = false;
    public boolean u = false;
    public int v = 0;
    public int w = 0;
    public final int[] x = new int[2];
    public final int[] y = new int[2];

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i iVar = i.this;
            int i = iVar.A;
            ValueAnimator valueAnimator = iVar.z;
            if (i == 1) {
                valueAnimator.cancel();
            } else if (i != 2) {
                return;
            }
            iVar.A = 3;
            valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
            valueAnimator.setDuration(500);
            valueAnimator.start();
        }
    }

    public class b extends RecyclerView.OnScrollListener {
        public b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            int iComputeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
            int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
            i iVar = i.this;
            int iComputeVerticalScrollRange = iVar.s.computeVerticalScrollRange();
            int i3 = iVar.r;
            int i4 = iComputeVerticalScrollRange - i3;
            int i5 = iVar.f2160a;
            iVar.t = i4 > 0 && i3 >= i5;
            int iComputeHorizontalScrollRange = iVar.s.computeHorizontalScrollRange();
            int i6 = iVar.q;
            boolean z = iComputeHorizontalScrollRange - i6 > 0 && i6 >= i5;
            iVar.u = z;
            boolean z2 = iVar.t;
            if (!z2 && !z) {
                if (iVar.v != 0) {
                    iVar.d(0);
                    return;
                }
                return;
            }
            if (z2) {
                float f = i3;
                iVar.l = (int) ((((f / 2.0f) + iComputeVerticalScrollOffset) * f) / iComputeVerticalScrollRange);
                iVar.k = Math.min(i3, (i3 * i3) / iComputeVerticalScrollRange);
            }
            if (iVar.u) {
                float f2 = iComputeHorizontalScrollOffset;
                float f3 = i6;
                iVar.o = (int) ((((f3 / 2.0f) + f2) * f3) / iComputeHorizontalScrollRange);
                iVar.n = Math.min(i6, (i6 * i6) / iComputeHorizontalScrollRange);
            }
            int i7 = iVar.v;
            if (i7 == 0 || i7 == 1) {
                iVar.d(1);
            }
        }
    }

    public i(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.z = valueAnimatorOfFloat;
        this.A = 0;
        this.B = new a();
        this.C = new b();
        this.c = stateListDrawable;
        this.d = drawable;
        this.f2162g = stateListDrawable2;
        this.h = drawable2;
        this.e = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f = Math.max(i, drawable.getIntrinsicWidth());
        this.i = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.j = Math.max(i, drawable2.getIntrinsicWidth());
        this.f2160a = i2;
        this.f2161b = i3;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new c());
        valueAnimatorOfFloat.addUpdateListener(new d());
        attachToRecyclerView(recyclerView);
    }

    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        RecyclerView.OnScrollListener onScrollListener = this.C;
        if (recyclerView2 != null) {
            recyclerView2.removeItemDecoration(this);
            this.s.removeOnItemTouchListener(this);
            this.s.removeOnScrollListener(onScrollListener);
            this.s.removeCallbacks(this.B);
        }
        this.s = recyclerView;
        if (recyclerView != null) {
            recyclerView.addItemDecoration(this);
            this.s.addOnItemTouchListener(this);
            this.s.addOnScrollListener(onScrollListener);
        }
    }

    public final void d(int i) {
        Runnable runnable = this.B;
        StateListDrawable stateListDrawable = this.c;
        if (i == 2 && this.v != 2) {
            stateListDrawable.setState(D);
            this.s.removeCallbacks(runnable);
        }
        if (i == 0) {
            this.s.invalidate();
        } else {
            show();
        }
        if (this.v == 2 && i != 2) {
            stateListDrawable.setState(E);
            this.s.removeCallbacks(runnable);
            this.s.postDelayed(runnable, 1200);
        } else if (i == 1) {
            this.s.removeCallbacks(runnable);
            this.s.postDelayed(runnable, 1500);
        }
        this.v = i;
    }

    public final boolean b(float f, float f2) {
        boolean z = ViewCompat.getLayoutDirection(this.s) == 1;
        int i = this.e;
        if (!z ? f >= this.q - i : f <= i) {
            int i2 = this.l;
            int i3 = this.k / 2;
            if (f2 >= i2 - i3 && f2 <= i3 + i2) {
                return true;
            }
        }
        return false;
    }

    public void show() {
        int i = this.A;
        ValueAnimator valueAnimator = this.z;
        if (i != 0) {
            if (i != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.A = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (this.q != this.s.getWidth() || this.r != this.s.getHeight()) {
            this.q = this.s.getWidth();
            this.r = this.s.getHeight();
            d(0);
            return;
        }
        if (this.A != 0) {
            if (this.t) {
                int i = this.q;
                int i2 = this.e;
                int i3 = i - i2;
                int i4 = this.l;
                int i5 = this.k;
                int i6 = i4 - (i5 / 2);
                StateListDrawable stateListDrawable = this.c;
                stateListDrawable.setBounds(0, 0, i2, i5);
                int i7 = this.r;
                int i8 = this.f;
                Drawable drawable = this.d;
                drawable.setBounds(0, 0, i8, i7);
                if (ViewCompat.getLayoutDirection(this.s) == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i2, i6);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-i2, -i6);
                } else {
                    canvas.translate(i3, 0.0f);
                    drawable.draw(canvas);
                    canvas.translate(0.0f, i6);
                    stateListDrawable.draw(canvas);
                    canvas.translate(-i3, -i6);
                }
            }
            if (this.u) {
                int i9 = this.r;
                int i10 = this.i;
                int i11 = i9 - i10;
                int i12 = this.o;
                int i13 = this.n;
                int i14 = i12 - (i13 / 2);
                StateListDrawable stateListDrawable2 = this.f2162g;
                stateListDrawable2.setBounds(0, 0, i13, i10);
                int i15 = this.q;
                int i16 = this.j;
                Drawable drawable2 = this.h;
                drawable2.setBounds(0, 0, i15, i16);
                canvas.translate(0.0f, i11);
                drawable2.draw(canvas);
                canvas.translate(i14, 0.0f);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i14, -i11);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        int i = this.v;
        if (i != 1) {
            return i == 2;
        }
        boolean zB = b(motionEvent.getX(), motionEvent.getY());
        boolean zA = a(motionEvent.getX(), motionEvent.getY());
        if (motionEvent.getAction() != 0) {
            return false;
        }
        if (!zB && !zA) {
            return false;
        }
        if (zA) {
            this.w = 1;
            this.p = (int) motionEvent.getX();
        } else if (zB) {
            this.w = 2;
            this.m = (int) motionEvent.getY();
        }
        d(2);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        if (this.v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zB = b(motionEvent.getX(), motionEvent.getY());
            boolean zA = a(motionEvent.getX(), motionEvent.getY());
            if (zB || zA) {
                if (zA) {
                    this.w = 1;
                    this.p = (int) motionEvent.getX();
                } else if (zB) {
                    this.w = 2;
                    this.m = (int) motionEvent.getY();
                }
                d(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.v == 2) {
            this.m = 0.0f;
            this.p = 0.0f;
            d(1);
            this.w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.v == 2) {
            show();
            int i = this.w;
            int i2 = this.f2161b;
            if (i == 1) {
                float x = motionEvent.getX();
                int[] iArr = this.y;
                iArr[0] = i2;
                int i3 = this.q - i2;
                iArr[1] = i3;
                float fMax = Math.max(i2, Math.min(i3, x));
                if (Math.abs(this.o - fMax) >= 2.0f) {
                    int iC = c(this.p, fMax, iArr, this.s.computeHorizontalScrollRange(), this.s.computeHorizontalScrollOffset(), this.q);
                    if (iC != 0) {
                        this.s.scrollBy(iC, 0);
                    }
                    this.p = fMax;
                }
            }
            if (this.w == 2) {
                float y = motionEvent.getY();
                int[] iArr2 = this.x;
                iArr2[0] = i2;
                int i4 = this.r - i2;
                iArr2[1] = i4;
                float fMax2 = Math.max(i2, Math.min(i4, y));
                if (Math.abs(this.l - fMax2) < 2.0f) {
                    return;
                }
                int iC2 = c(this.m, fMax2, iArr2, this.s.computeVerticalScrollRange(), this.s.computeVerticalScrollOffset(), this.r);
                if (iC2 != 0) {
                    this.s.scrollBy(0, iC2);
                }
                this.m = fMax2;
            }
        }
    }

    public static int c(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 != 0) {
            int i5 = i - i3;
            int i6 = (int) (((f2 - f) / i4) * i5);
            int i7 = i2 + i6;
            if (i7 < i5 && i7 >= 0) {
                return i6;
            }
        }
        return 0;
    }

    public final boolean a(float f, float f2) {
        if (f2 < this.r - this.i) {
            return false;
        }
        int i = this.o;
        int i2 = this.n;
        return f >= ((float) (i - (i2 / 2))) && f <= ((float) ((i2 / 2) + i));
    }

    public class c extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public boolean f2165a = false;

        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f2165a) {
                this.f2165a = false;
                return;
            }
            i iVar = i.this;
            if (((Float) iVar.z.getAnimatedValue()).floatValue() == 0.0f) {
                iVar.A = 0;
                iVar.d(0);
            } else {
                iVar.A = 2;
                iVar.s.invalidate();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2165a = true;
        }
    }

    public class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            i iVar = i.this;
            iVar.c.setAlpha(iFloatValue);
            iVar.d.setAlpha(iFloatValue);
            iVar.s.invalidate();
        }
    }
}
