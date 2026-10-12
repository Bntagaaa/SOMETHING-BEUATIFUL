package androidx.core.widget;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

@Deprecated
/* loaded from: classes.dex */
public final class ScrollerCompat {

    /* renamed from: a, reason: collision with root package name */
    public OverScroller f1435a;

    @Deprecated
    public static ScrollerCompat create(Context context) {
        return create(context, null);
    }

    @Deprecated
    public static ScrollerCompat create(Context context, Interpolator interpolator) {
        ScrollerCompat scrollerCompat = new ScrollerCompat();
        scrollerCompat.f1435a = interpolator != null ? new OverScroller(context, interpolator) : new OverScroller(context);
        return scrollerCompat;
    }

    @Deprecated
    public boolean isFinished() {
        return this.f1435a.isFinished();
    }

    @Deprecated
    public int getCurrX() {
        return this.f1435a.getCurrX();
    }

    @Deprecated
    public int getCurrY() {
        return this.f1435a.getCurrY();
    }

    @Deprecated
    public int getFinalX() {
        return this.f1435a.getFinalX();
    }

    @Deprecated
    public int getFinalY() {
        return this.f1435a.getFinalY();
    }

    @Deprecated
    public float getCurrVelocity() {
        return this.f1435a.getCurrVelocity();
    }

    @Deprecated
    public boolean computeScrollOffset() {
        return this.f1435a.computeScrollOffset();
    }

    @Deprecated
    public void startScroll(int i, int i2, int i3, int i4) {
        this.f1435a.startScroll(i, i2, i3, i4);
    }

    @Deprecated
    public void startScroll(int i, int i2, int i3, int i4, int i5) {
        this.f1435a.startScroll(i, i2, i3, i4, i5);
    }

    @Deprecated
    public void fling(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.f1435a.fling(i, i2, i3, i4, i5, i6, i7, i8);
    }

    @Deprecated
    public void fling(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        this.f1435a.fling(i, i2, i3, i4, i5, i6, i7, i8, i9, i10);
    }

    @Deprecated
    public boolean springBack(int i, int i2, int i3, int i4, int i5, int i6) {
        return this.f1435a.springBack(i, i2, i3, i4, i5, i6);
    }

    @Deprecated
    public void abortAnimation() {
        this.f1435a.abortAnimation();
    }

    @Deprecated
    public void notifyHorizontalEdgeReached(int i, int i2, int i3) {
        this.f1435a.notifyHorizontalEdgeReached(i, i2, i3);
    }

    @Deprecated
    public void notifyVerticalEdgeReached(int i, int i2, int i3) {
        this.f1435a.notifyVerticalEdgeReached(i, i2, i3);
    }

    @Deprecated
    public boolean isOverScrolled() {
        return this.f1435a.isOverScrolled();
    }
}
