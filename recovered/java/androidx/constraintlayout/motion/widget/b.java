package androidx.constraintlayout.motion.widget;

import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.motion.widget.SplineSet;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.HashMap;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
class b implements Comparable<b> {
    public int c;

    /* renamed from: a, reason: collision with root package name */
    public float f673a = 1.0f;

    /* renamed from: b, reason: collision with root package name */
    public int f674b = 0;
    public float d = 0.0f;
    public float e = 0.0f;
    public float f = 0.0f;

    /* renamed from: g, reason: collision with root package name */
    public float f675g = 0.0f;
    public float h = 1.0f;
    public float i = 1.0f;
    public float j = Float.NaN;
    public float k = Float.NaN;
    public float l = 0.0f;
    public float m = 0.0f;
    public float n = 0.0f;
    public float o = Float.NaN;
    public float p = Float.NaN;
    public final LinkedHashMap q = new LinkedHashMap();

    public static boolean a(float f, float f2) {
        return (Float.isNaN(f) || Float.isNaN(f2)) ? Float.isNaN(f) != Float.isNaN(f2) : Math.abs(f - f2) > 1.0E-6f;
    }

    @Override // java.lang.Comparable
    public int compareTo(b bVar) {
        bVar.getClass();
        return Float.compare(0.0f, 0.0f);
    }

    public void applyParameters(View view) {
        this.c = view.getVisibility();
        this.f673a = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        this.d = view.getElevation();
        this.e = view.getRotation();
        this.f = view.getRotationX();
        this.f675g = view.getRotationY();
        this.h = view.getScaleX();
        this.i = view.getScaleY();
        this.j = view.getPivotX();
        this.k = view.getPivotY();
        this.l = view.getTranslationX();
        this.m = view.getTranslationY();
        this.n = view.getTranslationZ();
    }

    public void applyParameters(ConstraintSet.Constraint constraint) {
        ConstraintSet.PropertySet propertySet = constraint.propertySet;
        int i = propertySet.mVisibilityMode;
        this.f674b = i;
        int i2 = propertySet.visibility;
        this.c = i2;
        this.f673a = (i2 == 0 || i != 0) ? propertySet.alpha : 0.0f;
        ConstraintSet.Transform transform = constraint.transform;
        boolean z = transform.applyElevation;
        this.d = transform.elevation;
        this.e = transform.rotation;
        this.f = transform.rotationX;
        this.f675g = transform.rotationY;
        this.h = transform.scaleX;
        this.i = transform.scaleY;
        this.j = transform.transformPivotX;
        this.k = transform.transformPivotY;
        this.l = transform.translationX;
        this.m = transform.translationY;
        this.n = transform.translationZ;
        Easing.getInterpolator(constraint.motion.mTransitionEasing);
        ConstraintSet.Motion motion = constraint.motion;
        this.o = motion.mPathRotate;
        int i3 = motion.mDrawPath;
        this.p = constraint.propertySet.mProgress;
        for (String str : constraint.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = constraint.mCustomConstraints.get(str);
            if (constraintAttribute.getType() != ConstraintAttribute.AttributeType.STRING_TYPE) {
                this.q.put(str, constraintAttribute);
            }
        }
    }

    public void addValues(HashMap<String, SplineSet> map, int i) {
        SplineSet splineSet;
        for (String str : map.keySet()) {
            splineSet = map.get(str);
            str.getClass();
            switch (str) {
                case "rotationX":
                    splineSet.setPoint(i, Float.isNaN(this.f) ? 0.0f : this.f);
                    break;
                case "rotationY":
                    splineSet.setPoint(i, Float.isNaN(this.f675g) ? 0.0f : this.f675g);
                    break;
                case "translationX":
                    splineSet.setPoint(i, Float.isNaN(this.l) ? 0.0f : this.l);
                    break;
                case "translationY":
                    splineSet.setPoint(i, Float.isNaN(this.m) ? 0.0f : this.m);
                    break;
                case "translationZ":
                    splineSet.setPoint(i, Float.isNaN(this.n) ? 0.0f : this.n);
                    break;
                case "progress":
                    splineSet.setPoint(i, Float.isNaN(this.p) ? 0.0f : this.p);
                    break;
                case "scaleX":
                    splineSet.setPoint(i, Float.isNaN(this.h) ? 1.0f : this.h);
                    break;
                case "scaleY":
                    splineSet.setPoint(i, Float.isNaN(this.i) ? 1.0f : this.i);
                    break;
                case "transformPivotX":
                    splineSet.setPoint(i, Float.isNaN(this.j) ? 0.0f : this.j);
                    break;
                case "transformPivotY":
                    splineSet.setPoint(i, Float.isNaN(this.k) ? 0.0f : this.k);
                    break;
                case "rotation":
                    splineSet.setPoint(i, Float.isNaN(this.e) ? 0.0f : this.e);
                    break;
                case "elevation":
                    splineSet.setPoint(i, Float.isNaN(this.d) ? 0.0f : this.d);
                    break;
                case "transitionPathRotate":
                    splineSet.setPoint(i, Float.isNaN(this.o) ? 0.0f : this.o);
                    break;
                case "alpha":
                    splineSet.setPoint(i, Float.isNaN(this.f673a) ? 1.0f : this.f673a);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        LinkedHashMap linkedHashMap = this.q;
                        if (linkedHashMap.containsKey(str2)) {
                            ConstraintAttribute constraintAttribute = (ConstraintAttribute) linkedHashMap.get(str2);
                            if (splineSet instanceof SplineSet.b) {
                                ((SplineSet.b) splineSet).setPoint(i, constraintAttribute);
                                break;
                            } else {
                                Log.e("MotionPaths", str + " splineSet not a CustomSet frame = " + i + ", value" + constraintAttribute.getValueToInterpolate() + splineSet);
                                break;
                            }
                        } else {
                            _COROUTINE.a.w("UNKNOWN customName ", str2, "MotionPaths");
                            break;
                        }
                    } else {
                        Log.e("MotionPaths", "UNKNOWN spline ".concat(str));
                        break;
                    }
            }
        }
    }

    public void setState(View view) {
        view.getX();
        view.getY();
        view.getWidth();
        view.getHeight();
        applyParameters(view);
    }

    public void setState(ConstraintWidget constraintWidget, ConstraintSet constraintSet, int i) {
        constraintWidget.getX();
        constraintWidget.getY();
        constraintWidget.getWidth();
        constraintWidget.getHeight();
        applyParameters(constraintSet.getParameters(i));
    }
}
