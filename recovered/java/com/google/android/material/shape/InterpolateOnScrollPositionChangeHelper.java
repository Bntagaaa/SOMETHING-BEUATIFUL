package com.google.android.material.shape;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ScrollView;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class InterpolateOnScrollPositionChangeHelper {

    /* renamed from: a, reason: collision with root package name */
    public final View f3176a;

    /* renamed from: b, reason: collision with root package name */
    public MaterialShapeDrawable f3177b;
    public ScrollView c;
    public final int[] d = new int[2];
    public final int[] e = new int[2];
    public final ViewTreeObserver.OnScrollChangedListener f = new a();

    public class a implements ViewTreeObserver.OnScrollChangedListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            InterpolateOnScrollPositionChangeHelper.this.updateInterpolationForScreenPosition();
        }
    }

    public InterpolateOnScrollPositionChangeHelper(View view, MaterialShapeDrawable materialShapeDrawable, ScrollView scrollView) {
        this.f3176a = view;
        this.f3177b = materialShapeDrawable;
        this.c = scrollView;
    }

    public void setMaterialShapeDrawable(MaterialShapeDrawable materialShapeDrawable) {
        this.f3177b = materialShapeDrawable;
    }

    public void setContainingScrollView(ScrollView scrollView) {
        this.c = scrollView;
    }

    public void startListeningForScrollChanges(@NonNull ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this.f);
    }

    public void stopListeningForScrollChanges(@NonNull ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this.f);
    }

    public void updateInterpolationForScreenPosition() {
        ScrollView scrollView = this.c;
        if (scrollView == null) {
            return;
        }
        if (scrollView.getChildCount() == 0) {
            throw new IllegalStateException("Scroll bar must contain a child to calculate interpolation.");
        }
        ScrollView scrollView2 = this.c;
        int[] iArr = this.d;
        scrollView2.getLocationInWindow(iArr);
        View childAt = this.c.getChildAt(0);
        int[] iArr2 = this.e;
        childAt.getLocationInWindow(iArr2);
        View view = this.f3176a;
        int top = (view.getTop() - iArr[1]) + iArr2[1];
        int height = view.getHeight();
        int height2 = this.c.getHeight();
        if (top < 0) {
            this.f3177b.setInterpolation(Math.max(0.0f, Math.min(1.0f, (top / height) + 1.0f)));
            view.invalidate();
            return;
        }
        if (top + height > height2) {
            this.f3177b.setInterpolation(Math.max(0.0f, Math.min(1.0f, 1.0f - ((r3 - height2) / height))));
            view.invalidate();
        } else if (this.f3177b.getInterpolation() != 1.0f) {
            this.f3177b.setInterpolation(1.0f);
            view.invalidate();
        }
    }
}
