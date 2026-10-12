package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;

/* loaded from: classes.dex */
public class KeyPosition extends androidx.constraintlayout.motion.widget.a {
    public static final int TYPE_CARTESIAN = 0;
    public static final int TYPE_PATH = 1;
    public static final int TYPE_SCREEN = 2;
    public String f = null;

    /* renamed from: g, reason: collision with root package name */
    public int f634g = Key.UNSET;
    public int h = 0;
    public float i = Float.NaN;
    public float j = Float.NaN;
    public float k = Float.NaN;
    public float l = Float.NaN;
    public final float m = Float.NaN;
    public final float n = Float.NaN;
    public int o = 0;
    public float p = Float.NaN;
    public float q = Float.NaN;

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, SplineSet> map) {
    }

    public KeyPosition() {
        this.mType = 2;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.KeyPosition);
        SparseIntArray sparseIntArray = a.f635a;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            SparseIntArray sparseIntArray2 = a.f635a;
            switch (sparseIntArray2.get(index)) {
                case 1:
                    if (MotionLayout.IS_IN_EDIT_MODE) {
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f619b);
                        this.f619b = resourceId;
                        if (resourceId == -1) {
                            this.c = typedArrayObtainStyledAttributes.getString(index);
                            break;
                        } else {
                            break;
                        }
                    } else if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        this.c = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    } else {
                        this.f619b = typedArrayObtainStyledAttributes.getResourceId(index, this.f619b);
                        break;
                    }
                case 2:
                    this.f618a = typedArrayObtainStyledAttributes.getInt(index, this.f618a);
                    break;
                case 3:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        this.f = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    } else {
                        this.f = Easing.NAMED_EASING[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        break;
                    }
                case 4:
                    this.e = typedArrayObtainStyledAttributes.getInteger(index, this.e);
                    break;
                case 5:
                    this.h = typedArrayObtainStyledAttributes.getInt(index, this.h);
                    break;
                case 6:
                    this.k = typedArrayObtainStyledAttributes.getFloat(index, this.k);
                    break;
                case 7:
                    this.l = typedArrayObtainStyledAttributes.getFloat(index, this.l);
                    break;
                case 8:
                    float f = typedArrayObtainStyledAttributes.getFloat(index, this.j);
                    this.i = f;
                    this.j = f;
                    break;
                case 9:
                    this.o = typedArrayObtainStyledAttributes.getInt(index, this.o);
                    break;
                case 10:
                    this.f634g = typedArrayObtainStyledAttributes.getInt(index, this.f634g);
                    break;
                case 11:
                    this.i = typedArrayObtainStyledAttributes.getFloat(index, this.i);
                    break;
                case 12:
                    this.j = typedArrayObtainStyledAttributes.getFloat(index, this.j);
                    break;
                default:
                    Log.e("KeyPosition", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray2.get(index));
                    break;
            }
        }
        if (this.f618a == -1) {
            Log.e("KeyPosition", "no frame position");
        }
    }

    @Override // androidx.constraintlayout.motion.widget.a
    public void positionAttributes(View view, RectF rectF, RectF rectF2, float f, float f2, String[] strArr, float[] fArr) {
        int i = this.o;
        if (i == 1) {
            float fCenterX = rectF.centerX();
            float fCenterY = rectF.centerY();
            float fCenterX2 = rectF2.centerX() - fCenterX;
            float fCenterY2 = rectF2.centerY() - fCenterY;
            float fHypot = (float) Math.hypot(fCenterX2, fCenterY2);
            if (fHypot < 1.0E-4d) {
                System.out.println("distance ~ 0");
                fArr[0] = 0.0f;
                fArr[1] = 0.0f;
                return;
            }
            float f3 = fCenterX2 / fHypot;
            float f4 = fCenterY2 / fHypot;
            float f5 = f2 - fCenterY;
            float f6 = f - fCenterX;
            float f7 = ((f3 * f5) - (f6 * f4)) / fHypot;
            float f8 = ((f4 * f5) + (f3 * f6)) / fHypot;
            String str = strArr[0];
            if (str != null) {
                if ("percentX".equals(str)) {
                    fArr[0] = f8;
                    fArr[1] = f7;
                    return;
                }
                return;
            }
            strArr[0] = "percentX";
            strArr[1] = "percentY";
            fArr[0] = f8;
            fArr[1] = f7;
            return;
        }
        if (i == 2) {
            rectF.centerX();
            rectF.centerY();
            rectF2.centerX();
            rectF2.centerY();
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            int width = viewGroup.getWidth();
            int height = viewGroup.getHeight();
            String str2 = strArr[0];
            if (str2 != null) {
                if ("percentX".equals(str2)) {
                    fArr[0] = f / width;
                    fArr[1] = f2 / height;
                    return;
                } else {
                    fArr[1] = f / width;
                    fArr[0] = f2 / height;
                    return;
                }
            }
            strArr[0] = "percentX";
            fArr[0] = f / width;
            strArr[1] = "percentY";
            fArr[1] = f2 / height;
            return;
        }
        float fCenterX3 = rectF.centerX();
        float fCenterY3 = rectF.centerY();
        float fCenterX4 = rectF2.centerX() - fCenterX3;
        float fCenterY4 = rectF2.centerY() - fCenterY3;
        String str3 = strArr[0];
        if (str3 != null) {
            if ("percentX".equals(str3)) {
                fArr[0] = (f - fCenterX3) / fCenterX4;
                fArr[1] = (f2 - fCenterY3) / fCenterY4;
                return;
            } else {
                fArr[1] = (f - fCenterX3) / fCenterX4;
                fArr[0] = (f2 - fCenterY3) / fCenterY4;
                return;
            }
        }
        strArr[0] = "percentX";
        fArr[0] = (f - fCenterX3) / fCenterX4;
        strArr[1] = "percentY";
        fArr[1] = (f2 - fCenterY3) / fCenterY4;
    }

    @Override // androidx.constraintlayout.motion.widget.a
    public boolean intersects(int i, int i2, RectF rectF, RectF rectF2, float f, float f2) {
        float fCenterX = rectF.centerX();
        float fCenterY = rectF.centerY();
        float fCenterX2 = rectF2.centerX();
        float fCenterY2 = rectF2.centerY();
        int i3 = this.o;
        if (i3 == 1) {
            float f3 = fCenterX2 - fCenterX;
            float f4 = fCenterY2 - fCenterY;
            float f5 = this.k;
            float f6 = (f3 * f5) + fCenterX;
            float f7 = this.l;
            this.p = ((-f4) * f7) + f6;
            this.q = (f3 * f7) + (f4 * f5) + fCenterY;
        } else if (i3 == 2) {
            float f8 = this.k;
            float f9 = 0;
            this.p = (i * f8) + f9;
            this.q = (i2 * f8) + f9;
        } else {
            float f10 = fCenterX2 - fCenterX;
            float f11 = fCenterY2 - fCenterY;
            float f12 = Float.isNaN(this.k) ? 0.0f : this.k;
            float f13 = this.n;
            if (Float.isNaN(f13)) {
                f13 = 0.0f;
            }
            float f14 = Float.isNaN(this.l) ? 0.0f : this.l;
            this.p = (int) (((Float.isNaN(this.m) ? 0.0f : r6) * f11) + (f12 * f10) + fCenterX);
            this.q = (int) ((f11 * f14) + (f10 * f13) + fCenterY);
        }
        return Math.abs(f - this.p) < 20.0f && Math.abs(f2 - this.q) < 20.0f;
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final SparseIntArray f635a;

        private a() {
        }

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f635a = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyPosition_motionTarget, 1);
            sparseIntArray.append(R.styleable.KeyPosition_framePosition, 2);
            sparseIntArray.append(R.styleable.KeyPosition_transitionEasing, 3);
            sparseIntArray.append(R.styleable.KeyPosition_curveFit, 4);
            sparseIntArray.append(R.styleable.KeyPosition_drawPath, 5);
            sparseIntArray.append(R.styleable.KeyPosition_percentX, 6);
            sparseIntArray.append(R.styleable.KeyPosition_percentY, 7);
            sparseIntArray.append(R.styleable.KeyPosition_keyPositionType, 9);
            sparseIntArray.append(R.styleable.KeyPosition_sizePercent, 8);
            sparseIntArray.append(R.styleable.KeyPosition_percentWidth, 11);
            sparseIntArray.append(R.styleable.KeyPosition_percentHeight, 12);
            sparseIntArray.append(R.styleable.KeyPosition_pathMotionArc, 10);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String str, Object obj) {
        str.getClass();
        switch (str) {
            case "transitionEasing":
                this.f = obj.toString();
                break;
            case "percentWidth":
                this.i = Key.a(obj);
                break;
            case "percentHeight":
                this.j = Key.a(obj);
                break;
            case "drawPath":
                this.h = Key.b(obj);
                break;
            case "sizePercent":
                float fA = Key.a(obj);
                this.i = fA;
                this.j = fA;
                break;
            case "percentX":
                this.k = Key.a(obj);
                break;
            case "percentY":
                this.l = Key.a(obj);
                break;
        }
    }
}
