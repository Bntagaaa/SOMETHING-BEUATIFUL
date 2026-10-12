package me.aemo.floatingview;

import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;

/* loaded from: classes2.dex */
class d implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FloatingView f6743a;

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        FloatingView floatingView = this.f6743a;
        int i = floatingView.e - floatingView.f6732g;
        int i2 = floatingView.f - floatingView.h;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            floatingView.e = (int) motionEvent.getRawX();
            floatingView.f = (int) motionEvent.getRawY();
            floatingView.f6732g = floatingView.e;
            floatingView.h = floatingView.f;
            floatingView.c = !floatingView.d;
        } else if (actionMasked == 1) {
            floatingView.c = !floatingView.d;
        } else if (actionMasked == 2) {
            int rawX = ((int) motionEvent.getRawX()) - floatingView.e;
            int rawY = ((int) motionEvent.getRawY()) - floatingView.f;
            floatingView.e = (int) motionEvent.getRawX();
            floatingView.f = (int) motionEvent.getRawY();
            if ((Math.abs(i) >= 5 || Math.abs(i2) >= 5) && motionEvent.getPointerCount() == 1) {
                WindowManager.LayoutParams layoutParams = floatingView.k;
                int i3 = layoutParams.x + rawX;
                layoutParams.x = i3;
                int i4 = layoutParams.y + rawY;
                layoutParams.y = i4;
                floatingView.c = true;
                if (floatingView.j != null) {
                    floatingView.PositionMoved(i3, i4);
                    floatingView.j.updateViewLayout(floatingView.l, floatingView.k);
                }
            } else {
                floatingView.c = false;
            }
        }
        return floatingView.c;
    }

    public d(FloatingView floatingView) {
        this.f6743a = floatingView;
    }
}
