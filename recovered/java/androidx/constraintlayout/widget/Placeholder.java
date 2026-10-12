package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes.dex */
public class Placeholder extends View {

    /* renamed from: a, reason: collision with root package name */
    public int f812a;

    /* renamed from: b, reason: collision with root package name */
    public View f813b;
    public int c;

    public Placeholder(Context context) {
        super(context);
        this.f812a = -1;
        this.f813b = null;
        this.c = 4;
        a(null);
    }

    public Placeholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f812a = -1;
        this.f813b = null;
        this.c = 4;
        a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f812a = -1;
        this.f813b = null;
        this.c = 4;
        a(attributeSet);
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.f812a = -1;
        this.f813b = null;
        this.c = 4;
        a(attributeSet);
    }

    public final void a(AttributeSet attributeSet) {
        super.setVisibility(this.c);
        this.f812a = -1;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_placeholder);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.ConstraintLayout_placeholder_content) {
                    this.f812a = typedArrayObtainStyledAttributes.getResourceId(index, this.f812a);
                } else if (index == R.styleable.ConstraintLayout_placeholder_placeholder_emptyVisibility) {
                    this.c = typedArrayObtainStyledAttributes.getInt(index, this.c);
                }
            }
        }
    }

    public void setEmptyVisibility(int i) {
        this.c = i;
    }

    public int getEmptyVisibility() {
        return this.c;
    }

    public View getContent() {
        return this.f813b;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int iHeight = rect.height();
            int iWidth = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((iWidth / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((rect.height() / 2.0f) + (iHeight / 2.0f)) - rect.bottom, paint);
        }
    }

    public void updatePreLayout(ConstraintLayout constraintLayout) {
        if (this.f812a == -1 && !isInEditMode()) {
            setVisibility(this.c);
        }
        View viewFindViewById = constraintLayout.findViewById(this.f812a);
        this.f813b = viewFindViewById;
        if (viewFindViewById != null) {
            ((ConstraintLayout.LayoutParams) viewFindViewById.getLayoutParams()).f791g = true;
            this.f813b.setVisibility(0);
            setVisibility(0);
        }
    }

    public void setContentId(int i) {
        View viewFindViewById;
        if (this.f812a == i) {
            return;
        }
        View view = this.f813b;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.LayoutParams) this.f813b.getLayoutParams()).f791g = false;
            this.f813b = null;
        }
        this.f812a = i;
        if (i == -1 || (viewFindViewById = ((View) getParent()).findViewById(i)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    public void updatePostMeasure(ConstraintLayout constraintLayout) {
        if (this.f813b == null) {
            return;
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.f813b.getLayoutParams();
        layoutParams2.r.setVisibility(0);
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = layoutParams.r.getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
        if (horizontalDimensionBehaviour != dimensionBehaviour) {
            layoutParams.r.setWidth(layoutParams2.r.getWidth());
        }
        if (layoutParams.r.getVerticalDimensionBehaviour() != dimensionBehaviour) {
            layoutParams.r.setHeight(layoutParams2.r.getHeight());
        }
        layoutParams2.r.setVisibility(8);
    }
}
