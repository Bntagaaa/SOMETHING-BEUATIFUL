package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.transition.t;

/* loaded from: classes.dex */
public class ChangeImageTransform extends Transition {
    public static final String[] I = {"android:changeImageTransform:matrix", "android:changeImageTransform:bounds"};
    public static final TypeEvaluator J = new a();
    public static final Property K = new b(Matrix.class, "animatedTransform");

    public static class a implements TypeEvaluator<Matrix> {
        @Override // android.animation.TypeEvaluator
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            return null;
        }
    }

    public static class b extends Property<ImageView, Matrix> {
        @Override // android.util.Property
        public Matrix get(ImageView imageView) {
            return null;
        }

        @Override // android.util.Property
        public void set(ImageView imageView, Matrix matrix) {
            if (Build.VERSION.SDK_INT >= 29) {
                imageView.animateTransform(matrix);
                return;
            }
            if (matrix == null) {
                Drawable drawable = imageView.getDrawable();
                if (drawable != null) {
                    drawable.setBounds(0, 0, (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight(), (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom());
                    imageView.invalidate();
                    return;
                }
                return;
            }
            if (k.f2292a) {
                try {
                    imageView.animateTransform(matrix);
                } catch (NoSuchMethodError unused) {
                    k.f2292a = false;
                }
            }
        }
    }

    public ChangeImageTransform() {
    }

    public ChangeImageTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m(androidx.transition.TransitionValues r6) {
        /*
            android.view.View r0 = r6.view
            boolean r1 = r0 instanceof android.widget.ImageView
            if (r1 == 0) goto Lcb
            int r1 = r0.getVisibility()
            if (r1 == 0) goto Le
            goto Lcb
        Le:
            r1 = r0
            android.widget.ImageView r1 = (android.widget.ImageView) r1
            android.graphics.drawable.Drawable r2 = r1.getDrawable()
            if (r2 != 0) goto L19
            goto Lcb
        L19:
            java.util.Map<java.lang.String, java.lang.Object> r6 = r6.values
            int r2 = r0.getLeft()
            int r3 = r0.getTop()
            int r4 = r0.getRight()
            int r0 = r0.getBottom()
            android.graphics.Rect r5 = new android.graphics.Rect
            r5.<init>(r2, r3, r4, r0)
            java.lang.String r0 = "android:changeImageTransform:bounds"
            r6.put(r0, r5)
            android.graphics.drawable.Drawable r0 = r1.getDrawable()
            int r2 = r0.getIntrinsicWidth()
            if (r2 <= 0) goto Lbc
            int r0 = r0.getIntrinsicHeight()
            if (r0 <= 0) goto Lbc
            int[] r0 = androidx.transition.ChangeImageTransform.c.f2226a
            android.widget.ImageView$ScaleType r2 = r1.getScaleType()
            int r2 = r2.ordinal()
            r0 = r0[r2]
            r2 = 1
            if (r0 == r2) goto L98
            r2 = 2
            if (r0 == r2) goto L58
            goto Lbc
        L58:
            android.graphics.drawable.Drawable r0 = r1.getDrawable()
            int r2 = r0.getIntrinsicWidth()
            int r3 = r1.getWidth()
            float r3 = (float) r3
            float r2 = (float) r2
            float r4 = r3 / r2
            int r0 = r0.getIntrinsicHeight()
            int r1 = r1.getHeight()
            float r1 = (float) r1
            float r0 = (float) r0
            float r5 = r1 / r0
            float r4 = java.lang.Math.max(r4, r5)
            float r2 = r2 * r4
            float r0 = r0 * r4
            float r3 = r3 - r2
            r2 = 1073741824(0x40000000, float:2.0)
            float r3 = r3 / r2
            int r3 = java.lang.Math.round(r3)
            float r1 = r1 - r0
            float r1 = r1 / r2
            int r0 = java.lang.Math.round(r1)
            android.graphics.Matrix r1 = new android.graphics.Matrix
            r1.<init>()
            r1.postScale(r4, r4)
            float r2 = (float) r3
            float r0 = (float) r0
            r1.postTranslate(r2, r0)
            goto Lc6
        L98:
            android.graphics.drawable.Drawable r0 = r1.getDrawable()
            android.graphics.Matrix r2 = new android.graphics.Matrix
            r2.<init>()
            int r3 = r1.getWidth()
            float r3 = (float) r3
            int r4 = r0.getIntrinsicWidth()
            float r4 = (float) r4
            float r3 = r3 / r4
            int r1 = r1.getHeight()
            float r1 = (float) r1
            int r0 = r0.getIntrinsicHeight()
            float r0 = (float) r0
            float r1 = r1 / r0
            r2.postScale(r3, r1)
            r1 = r2
            goto Lc6
        Lbc:
            android.graphics.Matrix r0 = new android.graphics.Matrix
            android.graphics.Matrix r1 = r1.getImageMatrix()
            r0.<init>(r1)
            r1 = r0
        Lc6:
            java.lang.String r0 = "android:changeImageTransform:matrix"
            r6.put(r0, r1)
        Lcb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeImageTransform.m(androidx.transition.TransitionValues):void");
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        m(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        m(transitionValues);
    }

    @Override // androidx.transition.Transition
    public String[] getTransitionProperties() {
        return I;
    }

    @Override // androidx.transition.Transition
    public Animator createAnimator(@NonNull ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues != null && transitionValues2 != null) {
            Rect rect = (Rect) transitionValues.values.get("android:changeImageTransform:bounds");
            Rect rect2 = (Rect) transitionValues2.values.get("android:changeImageTransform:bounds");
            if (rect != null && rect2 != null) {
                Matrix matrix = (Matrix) transitionValues.values.get("android:changeImageTransform:matrix");
                Matrix matrix2 = (Matrix) transitionValues2.values.get("android:changeImageTransform:matrix");
                boolean z = (matrix == null && matrix2 == null) || (matrix != null && matrix.equals(matrix2));
                if (rect.equals(rect2) && z) {
                    return null;
                }
                ImageView imageView = (ImageView) transitionValues2.view;
                Drawable drawable = imageView.getDrawable();
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                Property property = K;
                if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                    if (matrix == null) {
                        matrix = l.f2293a;
                    }
                    if (matrix2 == null) {
                        matrix2 = l.f2293a;
                    }
                    property.set(imageView, matrix);
                    return ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) property, new t.a(), matrix, matrix2);
                }
                TypeEvaluator typeEvaluator = J;
                Matrix matrix3 = l.f2293a;
                return ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) property, typeEvaluator, matrix3, matrix3);
            }
        }
        return null;
    }

    public static /* synthetic */ class c {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2226a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f2226a = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2226a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
