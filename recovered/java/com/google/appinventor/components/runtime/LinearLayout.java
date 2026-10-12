package com.google.appinventor.components.runtime;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.appinventor.components.annotations.SimpleObject;

@SimpleObject
/* loaded from: classes.dex */
public final class LinearLayout implements Layout {
    private boolean fullclickable;
    private final android.widget.LinearLayout layoutManager;

    public LinearLayout(Context context, int i) {
        this(context, i, null, null);
    }

    public LinearLayout(Context context, int i, final Integer num, final Integer num2) {
        this.fullclickable = false;
        if ((num == null && num2 != null) || (num != null && num2 == null)) {
            throw new IllegalArgumentException("LinearLayout - preferredEmptyWidth and preferredEmptyHeight must be either both null or both not null");
        }
        android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(context) { // from class: com.google.appinventor.components.runtime.LinearLayout.1
            @Override // android.widget.LinearLayout, android.view.View
            public void onMeasure(int i2, int i3) {
                if (num == null || num2 == null) {
                    super.onMeasure(i2, i3);
                } else if (getChildCount() != 0) {
                    super.onMeasure(i2, i3);
                } else {
                    setMeasuredDimension(getSize(i2, num.intValue()), getSize(i3, num2.intValue()));
                }
            }

            private int getSize(int i2, int i3) {
                int mode = View.MeasureSpec.getMode(i2);
                int size = View.MeasureSpec.getSize(i2);
                return mode == 1073741824 ? size : mode == Integer.MIN_VALUE ? Math.min(i3, size) : i3;
            }

            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                return LinearLayout.this.fullclickable;
            }
        };
        this.layoutManager = linearLayout;
        linearLayout.setOrientation(i != 1 ? 1 : 0);
    }

    @Override // com.google.appinventor.components.runtime.Layout
    public ViewGroup getLayoutManager() {
        return this.layoutManager;
    }

    public void setFullClickable(boolean z) {
        this.fullclickable = z;
    }

    @Override // com.google.appinventor.components.runtime.Layout
    public void add(AndroidViewComponent androidViewComponent) {
        this.layoutManager.addView(androidViewComponent.getView(), new LinearLayout.LayoutParams(-2, -2, 0.0f));
    }

    public void setHorizontalGravity(int i) {
        this.layoutManager.setHorizontalGravity(i);
    }

    public void setVerticalGravity(int i) {
        this.layoutManager.setVerticalGravity(i);
    }

    public void setBaselineAligned(boolean z) {
        this.layoutManager.setBaselineAligned(z);
    }
}
