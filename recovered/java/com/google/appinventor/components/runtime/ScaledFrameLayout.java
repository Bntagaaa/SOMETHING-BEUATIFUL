package com.google.appinventor.components.runtime;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.appinventor.components.runtime.util.HoneycombUtil;
import com.google.appinventor.components.runtime.util.SdkLevel;

/* loaded from: classes.dex */
public class ScaledFrameLayout extends ViewGroup {
    private static final int MATRIX_SAVE_FLAG = 1;
    private int mLeftWidth;
    private int mRightWidth;
    private float mScale;
    private final Rect mTmpChildRect;
    private final Rect mTmpContainerRect;

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ScaledFrameLayout(Context context) {
        super(context);
        this.mTmpContainerRect = new Rect();
        this.mTmpChildRect = new Rect();
        this.mScale = 1.0f;
    }

    public ScaledFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScaledFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTmpContainerRect = new Rect();
        this.mTmpChildRect = new Rect();
        this.mScale = 1.0f;
        setClipChildren(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(android.graphics.Canvas canvas) {
        canvas.save();
        float f = this.mScale;
        canvas.scale(f, f);
        super.dispatchDraw(canvas);
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        float f = iArr[0];
        float f2 = this.mScale;
        int[] iArr2 = {(int) (f * f2), (int) (iArr[1] * f2)};
        float f3 = rect.left;
        float f4 = this.mScale;
        Rect rect2 = new Rect((int) (f3 * f4), (int) (rect.top * f4), (int) (rect.right * f4), (int) (rect.bottom * f4));
        invalidate(rect2);
        return super.invalidateChildInParent(iArr2, rect2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        motionEvent.setLocation((1.0f / this.mScale) * motionEvent.getX(), (1.0f / this.mScale) * motionEvent.getY());
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    public void setScale(float f) {
        this.mScale = f;
        updatePadding(getWidth(), getHeight());
    }

    private void updatePadding(int i, int i2) {
        float f = this.mScale;
        setPadding(0, 0, (int) (((f - 1.0f) * i) / f), (int) (((f - 1.0f) * i2) / f));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        updatePadding(i, i2);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        this.mLeftWidth = 0;
        this.mRightWidth = 0;
        int iMax = 0;
        int iCombineMeasuredStates = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i, i2);
                this.mLeftWidth = Math.max(0, childAt.getMeasuredWidth()) + this.mLeftWidth;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (SdkLevel.getLevel() >= 11) {
                    iCombineMeasuredStates = HoneycombUtil.combineMeasuredStates(this, iCombineMeasuredStates, HoneycombUtil.getMeasuredState(childAt));
                }
            }
        }
        int i4 = this.mLeftWidth + this.mRightWidth;
        int iMax2 = Math.max(iMax, getSuggestedMinimumHeight());
        int iMax3 = Math.max(i4, getSuggestedMinimumWidth());
        if (SdkLevel.getLevel() >= 11) {
            setMeasuredDimension(HoneycombUtil.resolveSizeAndState(this, iMax3, i, iCombineMeasuredStates), HoneycombUtil.resolveSizeAndState(this, iMax2, i2, iCombineMeasuredStates << 16));
        } else {
            setMeasuredDimension(View.resolveSize(iMax3, i), View.resolveSize(iMax2, i2));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                Rect rect = this.mTmpContainerRect;
                rect.left = paddingLeft;
                rect.right = paddingLeft;
                rect.top = paddingTop;
                rect.bottom = paddingBottom;
                Gravity.apply(51, measuredWidth, measuredHeight, rect, this.mTmpChildRect);
                Rect rect2 = this.mTmpChildRect;
                childAt.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
            }
        }
    }
}
