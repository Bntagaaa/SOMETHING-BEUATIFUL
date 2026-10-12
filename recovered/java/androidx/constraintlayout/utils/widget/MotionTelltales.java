package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.R;
import com.google.appinventor.components.runtime.Component;

/* loaded from: classes.dex */
public class MotionTelltales extends MockView {
    public final Paint k;
    public MotionLayout l;
    public final float[] m;
    public final Matrix n;
    public int o;
    public int p;
    public float q;

    public MotionTelltales(Context context) {
        super(context);
        this.k = new Paint();
        this.m = new float[2];
        this.n = new Matrix();
        this.o = 0;
        this.p = Component.COLOR_MAGENTA;
        this.q = 0.25f;
        b(context, null);
    }

    public MotionTelltales(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = new Paint();
        this.m = new float[2];
        this.n = new Matrix();
        this.o = 0;
        this.p = Component.COLOR_MAGENTA;
        this.q = 0.25f;
        b(context, attributeSet);
    }

    public MotionTelltales(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = new Paint();
        this.m = new float[2];
        this.n = new Matrix();
        this.o = 0;
        this.p = Component.COLOR_MAGENTA;
        this.q = 0.25f;
        b(context, attributeSet);
    }

    public final void b(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MotionTelltales);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.MotionTelltales_telltales_tailColor) {
                    this.p = typedArrayObtainStyledAttributes.getColor(index, this.p);
                } else if (index == R.styleable.MotionTelltales_telltales_velocityMode) {
                    this.o = typedArrayObtainStyledAttributes.getInt(index, this.o);
                } else if (index == R.styleable.MotionTelltales_telltales_tailScale) {
                    this.q = typedArrayObtainStyledAttributes.getFloat(index, this.q);
                }
            }
        }
        int i2 = this.p;
        Paint paint = this.k;
        paint.setColor(i2);
        paint.setStrokeWidth(5.0f);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    public void setText(CharSequence charSequence) {
        this.mText = charSequence.toString();
        requestLayout();
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        postInvalidate();
    }

    @Override // androidx.constraintlayout.utils.widget.MockView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Matrix matrix = getMatrix();
        Matrix matrix2 = this.n;
        matrix.invert(matrix2);
        if (this.l == null) {
            ViewParent parent = getParent();
            if (parent instanceof MotionLayout) {
                this.l = (MotionLayout) parent;
                return;
            }
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float[] fArr = {0.1f, 0.25f, 0.5f, 0.75f, 0.9f};
        for (int i = 0; i < 5; i++) {
            float f = fArr[i];
            for (int i2 = 0; i2 < 5; i2++) {
                float f2 = fArr[i2];
                this.l.getViewVelocity(this, f2, f, this.m, this.o);
                float[] fArr2 = this.m;
                matrix2.mapVectors(fArr2);
                float f3 = width * f2;
                float f4 = height * f;
                float f5 = fArr2[0];
                float f6 = this.q;
                float f7 = f4 - (fArr2[1] * f6);
                matrix2.mapVectors(fArr2);
                canvas.drawLine(f3, f4, f3 - (f5 * f6), f7, this.k);
            }
        }
    }
}
