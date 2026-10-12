package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.widget.TimeCycleSplineSet;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import androidx.core.app.NotificationCompat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class KeyTimeCycle extends Key {
    public static final int KEY_TYPE = 3;
    public int e = -1;
    public float f = Float.NaN;

    /* renamed from: g, reason: collision with root package name */
    public float f636g = Float.NaN;
    public float h = Float.NaN;
    public float i = Float.NaN;
    public float j = Float.NaN;
    public float k = Float.NaN;
    public float l = Float.NaN;
    public float m = Float.NaN;
    public float n = Float.NaN;
    public float o = Float.NaN;
    public float p = Float.NaN;
    public float q = Float.NaN;
    public int r = 0;
    public float s = Float.NaN;
    public float t = 0.0f;

    public KeyTimeCycle() {
        this.mType = 3;
        this.d = new HashMap();
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        a.read(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyTimeCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f636g)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.h)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.i)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.j)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.n)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.o)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.p)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.k)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.l)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.m)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.q)) {
            hashSet.add(NotificationCompat.CATEGORY_PROGRESS);
        }
        if (this.d.size() > 0) {
            Iterator it = this.d.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + ((String) it.next()));
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setInterpolation(HashMap<String, Integer> map) {
        if (this.e == -1) {
            return;
        }
        if (!Float.isNaN(this.f)) {
            map.put("alpha", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.f636g)) {
            map.put("elevation", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.h)) {
            map.put("rotation", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.i)) {
            map.put("rotationX", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.j)) {
            map.put("rotationY", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.n)) {
            map.put("translationX", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.o)) {
            map.put("translationY", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.p)) {
            map.put("translationZ", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.k)) {
            map.put("transitionPathRotate", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.l)) {
            map.put("scaleX", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.l)) {
            map.put("scaleY", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.q)) {
            map.put(NotificationCompat.CATEGORY_PROGRESS, Integer.valueOf(this.e));
        }
        if (this.d.size() > 0) {
            Iterator it = this.d.keySet().iterator();
            while (it.hasNext()) {
                map.put(_COROUTINE.a.i("CUSTOM,", (String) it.next()), Integer.valueOf(this.e));
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, SplineSet> map) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    public void addTimeValues(HashMap<String, TimeCycleSplineSet> map) {
        for (String str : map.keySet()) {
            TimeCycleSplineSet timeCycleSplineSet = map.get(str);
            if (str.startsWith("CUSTOM")) {
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.d.get(str.substring(7));
                if (constraintAttribute != null) {
                    ((TimeCycleSplineSet.b) timeCycleSplineSet).setPoint(this.f618a, constraintAttribute, this.s, this.r, this.t);
                }
            } else {
                switch (str) {
                    case "rotationX":
                        if (Float.isNaN(this.i)) {
                            break;
                        } else {
                            timeCycleSplineSet.setPoint(this.f618a, this.i, this.s, this.r, this.t);
                            break;
                        }
                    case "rotationY":
                        if (Float.isNaN(this.j)) {
                            break;
                        } else {
                            timeCycleSplineSet.setPoint(this.f618a, this.j, this.s, this.r, this.t);
                            break;
                        }
                    case "translationX":
                        if (Float.isNaN(this.n)) {
                            break;
                        } else {
                            timeCycleSplineSet.setPoint(this.f618a, this.n, this.s, this.r, this.t);
                            break;
                        }
                    case "translationY":
                        if (Float.isNaN(this.o)) {
                            break;
                        } else {
                            timeCycleSplineSet.setPoint(this.f618a, this.o, this.s, this.r, this.t);
                            break;
                        }
                    case "translationZ":
                        if (Float.isNaN(this.p)) {
                            break;
                        } else {
                            timeCycleSplineSet.setPoint(this.f618a, this.p, this.s, this.r, this.t);
                            break;
                        }
                    case "progress":
                        if (Float.isNaN(this.q)) {
                            break;
                        } else {
                            timeCycleSplineSet.setPoint(this.f618a, this.q, this.s, this.r, this.t);
                            break;
                        }
                    case "scaleX":
                        if (Float.isNaN(this.l)) {
                            break;
                        } else {
                            timeCycleSplineSet.setPoint(this.f618a, this.l, this.s, this.r, this.t);
                            break;
                        }
                    case "scaleY":
                        if (Float.isNaN(this.m)) {
                            break;
                        } else {
                            timeCycleSplineSet.setPoint(this.f618a, this.m, this.s, this.r, this.t);
                            break;
                        }
                    case "rotation":
                        if (Float.isNaN(this.h)) {
                            break;
                        } else {
                            timeCycleSplineSet.setPoint(this.f618a, this.h, this.s, this.r, this.t);
                            break;
                        }
                    case "elevation":
                        if (Float.isNaN(this.f636g)) {
                            break;
                        } else {
                            timeCycleSplineSet.setPoint(this.f618a, this.f636g, this.s, this.r, this.t);
                            break;
                        }
                    case "transitionPathRotate":
                        if (Float.isNaN(this.k)) {
                            break;
                        } else {
                            timeCycleSplineSet.setPoint(this.f618a, this.k, this.s, this.r, this.t);
                            break;
                        }
                    case "alpha":
                        if (Float.isNaN(this.f)) {
                            break;
                        } else {
                            timeCycleSplineSet.setPoint(this.f618a, this.f, this.s, this.r, this.t);
                            break;
                        }
                    default:
                        Log.e("KeyTimeCycles", "UNKNOWN addValues \"" + str + "\"");
                        break;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String str, Object obj) {
        str.getClass();
        switch (str) {
            case "transitionEasing":
                obj.toString();
                break;
            case "rotationX":
                this.i = Key.a(obj);
                break;
            case "rotationY":
                this.j = Key.a(obj);
                break;
            case "translationX":
                this.n = Key.a(obj);
                break;
            case "translationY":
                this.o = Key.a(obj);
                break;
            case "progress":
                this.q = Key.a(obj);
                break;
            case "scaleX":
                this.l = Key.a(obj);
                break;
            case "scaleY":
                this.m = Key.a(obj);
                break;
            case "rotation":
                this.h = Key.a(obj);
                break;
            case "elevation":
                this.f636g = Key.a(obj);
                break;
            case "transitionPathRotate":
                this.k = Key.a(obj);
                break;
            case "alpha":
                this.f = Key.a(obj);
                break;
            case "curveFit":
                this.e = Key.b(obj);
                break;
            case "mTranslationZ":
                this.p = Key.a(obj);
                break;
        }
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final SparseIntArray f637a;

        private a() {
        }

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f637a = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_alpha, 1);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_elevation, 2);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_rotation, 4);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_rotationX, 5);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_rotationY, 6);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_scaleX, 7);
            sparseIntArray.append(R.styleable.KeyTimeCycle_transitionPathRotate, 8);
            sparseIntArray.append(R.styleable.KeyTimeCycle_transitionEasing, 9);
            sparseIntArray.append(R.styleable.KeyTimeCycle_motionTarget, 10);
            sparseIntArray.append(R.styleable.KeyTimeCycle_framePosition, 12);
            sparseIntArray.append(R.styleable.KeyTimeCycle_curveFit, 13);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_scaleY, 14);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_translationX, 15);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_translationY, 16);
            sparseIntArray.append(R.styleable.KeyTimeCycle_android_translationZ, 17);
            sparseIntArray.append(R.styleable.KeyTimeCycle_motionProgress, 18);
            sparseIntArray.append(R.styleable.KeyTimeCycle_wavePeriod, 20);
            sparseIntArray.append(R.styleable.KeyTimeCycle_waveOffset, 21);
            sparseIntArray.append(R.styleable.KeyTimeCycle_waveShape, 19);
        }

        public static void read(KeyTimeCycle keyTimeCycle, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                SparseIntArray sparseIntArray = f637a;
                switch (sparseIntArray.get(index)) {
                    case 1:
                        keyTimeCycle.f = typedArray.getFloat(index, keyTimeCycle.f);
                        break;
                    case 2:
                        keyTimeCycle.f636g = typedArray.getDimension(index, keyTimeCycle.f636g);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                        break;
                    case 4:
                        keyTimeCycle.h = typedArray.getFloat(index, keyTimeCycle.h);
                        break;
                    case 5:
                        keyTimeCycle.i = typedArray.getFloat(index, keyTimeCycle.i);
                        break;
                    case 6:
                        keyTimeCycle.j = typedArray.getFloat(index, keyTimeCycle.j);
                        break;
                    case 7:
                        keyTimeCycle.l = typedArray.getFloat(index, keyTimeCycle.l);
                        break;
                    case 8:
                        keyTimeCycle.k = typedArray.getFloat(index, keyTimeCycle.k);
                        break;
                    case 9:
                        typedArray.getString(index);
                        keyTimeCycle.getClass();
                        break;
                    case 10:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, keyTimeCycle.f619b);
                            keyTimeCycle.f619b = resourceId;
                            if (resourceId == -1) {
                                keyTimeCycle.c = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            keyTimeCycle.c = typedArray.getString(index);
                            break;
                        } else {
                            keyTimeCycle.f619b = typedArray.getResourceId(index, keyTimeCycle.f619b);
                            break;
                        }
                    case 12:
                        keyTimeCycle.f618a = typedArray.getInt(index, keyTimeCycle.f618a);
                        break;
                    case 13:
                        keyTimeCycle.e = typedArray.getInteger(index, keyTimeCycle.e);
                        break;
                    case 14:
                        keyTimeCycle.m = typedArray.getFloat(index, keyTimeCycle.m);
                        break;
                    case 15:
                        keyTimeCycle.n = typedArray.getDimension(index, keyTimeCycle.n);
                        break;
                    case 16:
                        keyTimeCycle.o = typedArray.getDimension(index, keyTimeCycle.o);
                        break;
                    case 17:
                        keyTimeCycle.p = typedArray.getDimension(index, keyTimeCycle.p);
                        break;
                    case 18:
                        keyTimeCycle.q = typedArray.getFloat(index, keyTimeCycle.q);
                        break;
                    case 19:
                        keyTimeCycle.r = typedArray.getInt(index, keyTimeCycle.r);
                        break;
                    case 20:
                        keyTimeCycle.s = typedArray.getFloat(index, keyTimeCycle.s);
                        break;
                    case 21:
                        if (typedArray.peekValue(index).type == 5) {
                            keyTimeCycle.t = typedArray.getDimension(index, keyTimeCycle.t);
                            break;
                        } else {
                            keyTimeCycle.t = typedArray.getFloat(index, keyTimeCycle.t);
                            break;
                        }
                }
            }
        }
    }
}
