package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class KeyCycle extends Key {
    public static final int KEY_TYPE = 4;
    public int e = 0;
    public int f = -1;

    /* renamed from: g, reason: collision with root package name */
    public float f623g = Float.NaN;
    public float h = 0.0f;
    public float i = Float.NaN;
    public int j = -1;
    public float k = Float.NaN;
    public float l = Float.NaN;
    public float m = Float.NaN;
    public float n = Float.NaN;
    public float o = Float.NaN;
    public float p = Float.NaN;
    public float q = Float.NaN;
    public float r = Float.NaN;
    public float s = Float.NaN;
    public float t = Float.NaN;
    public float u = Float.NaN;

    public KeyCycle() {
        this.mType = 4;
        this.d = new HashMap();
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.KeyCycle);
        SparseIntArray sparseIntArray = a.f624a;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            SparseIntArray sparseIntArray2 = a.f624a;
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
                    typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 4:
                    this.e = typedArrayObtainStyledAttributes.getInteger(index, this.e);
                    break;
                case 5:
                    this.f = typedArrayObtainStyledAttributes.getInt(index, this.f);
                    break;
                case 6:
                    this.f623g = typedArrayObtainStyledAttributes.getFloat(index, this.f623g);
                    break;
                case 7:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 5) {
                        this.h = typedArrayObtainStyledAttributes.getDimension(index, this.h);
                        break;
                    } else {
                        this.h = typedArrayObtainStyledAttributes.getFloat(index, this.h);
                        break;
                    }
                case 8:
                    this.j = typedArrayObtainStyledAttributes.getInt(index, this.j);
                    break;
                case 9:
                    this.k = typedArrayObtainStyledAttributes.getFloat(index, this.k);
                    break;
                case 10:
                    this.l = typedArrayObtainStyledAttributes.getDimension(index, this.l);
                    break;
                case 11:
                    this.m = typedArrayObtainStyledAttributes.getFloat(index, this.m);
                    break;
                case 12:
                    this.o = typedArrayObtainStyledAttributes.getFloat(index, this.o);
                    break;
                case 13:
                    this.p = typedArrayObtainStyledAttributes.getFloat(index, this.p);
                    break;
                case 14:
                    this.n = typedArrayObtainStyledAttributes.getFloat(index, this.n);
                    break;
                case 15:
                    this.q = typedArrayObtainStyledAttributes.getFloat(index, this.q);
                    break;
                case 16:
                    this.r = typedArrayObtainStyledAttributes.getFloat(index, this.r);
                    break;
                case 17:
                    this.s = typedArrayObtainStyledAttributes.getDimension(index, this.s);
                    break;
                case 18:
                    this.t = typedArrayObtainStyledAttributes.getDimension(index, this.t);
                    break;
                case 19:
                    this.u = typedArrayObtainStyledAttributes.getDimension(index, this.u);
                    break;
                case 20:
                    this.i = typedArrayObtainStyledAttributes.getFloat(index, this.i);
                    break;
                default:
                    Log.e("KeyCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray2.get(index));
                    break;
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.k)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.l)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.m)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.o)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.p)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.q)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.r)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.n)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.s)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.t)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.u)) {
            hashSet.add("translationZ");
        }
        if (this.d.size() > 0) {
            Iterator it = this.d.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + ((String) it.next()));
            }
        }
    }

    public void addCycleValues(HashMap<String, KeyCycleOscillator> map) {
        for (String str : map.keySet()) {
            if (str.startsWith("CUSTOM")) {
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.d.get(str.substring(7));
                if (constraintAttribute != null && constraintAttribute.getType() == ConstraintAttribute.AttributeType.FLOAT_TYPE) {
                    map.get(str).setPoint(this.f618a, this.f, this.j, this.f623g, this.h, constraintAttribute.getValueToInterpolate(), constraintAttribute);
                }
            }
            float value = getValue(str);
            if (!Float.isNaN(value)) {
                map.get(str).setPoint(this.f618a, this.f, this.j, this.f623g, this.h, value);
            }
        }
    }

    public float getValue(String str) {
        str.getClass();
        switch (str) {
            case "rotationX":
                return this.o;
            case "rotationY":
                return this.p;
            case "translationX":
                return this.s;
            case "translationY":
                return this.t;
            case "translationZ":
                return this.u;
            case "progress":
                return this.i;
            case "scaleX":
                return this.q;
            case "scaleY":
                return this.r;
            case "rotation":
                return this.m;
            case "elevation":
                return this.l;
            case "transitionPathRotate":
                return this.n;
            case "alpha":
                return this.k;
            case "waveOffset":
                return this.h;
            default:
                Log.v("WARNING! KeyCycle", "  UNKNOWN  ".concat(str));
                return Float.NaN;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, SplineSet> map) {
        SplineSet splineSet;
        Debug.logStack("KeyCycle", "add " + map.size() + " values", 2);
        for (String str : map.keySet()) {
            splineSet = map.get(str);
            str.getClass();
            switch (str) {
                case "rotationX":
                    splineSet.setPoint(this.f618a, this.o);
                    break;
                case "rotationY":
                    splineSet.setPoint(this.f618a, this.p);
                    break;
                case "translationX":
                    splineSet.setPoint(this.f618a, this.s);
                    break;
                case "translationY":
                    splineSet.setPoint(this.f618a, this.t);
                    break;
                case "translationZ":
                    splineSet.setPoint(this.f618a, this.u);
                    break;
                case "progress":
                    splineSet.setPoint(this.f618a, this.i);
                    break;
                case "scaleX":
                    splineSet.setPoint(this.f618a, this.q);
                    break;
                case "scaleY":
                    splineSet.setPoint(this.f618a, this.r);
                    break;
                case "rotation":
                    splineSet.setPoint(this.f618a, this.m);
                    break;
                case "elevation":
                    splineSet.setPoint(this.f618a, this.l);
                    break;
                case "transitionPathRotate":
                    splineSet.setPoint(this.f618a, this.n);
                    break;
                case "alpha":
                    splineSet.setPoint(this.f618a, this.k);
                    break;
                case "waveOffset":
                    splineSet.setPoint(this.f618a, this.h);
                    break;
                default:
                    Log.v("WARNING KeyCycle", "  UNKNOWN  ".concat(str));
                    break;
            }
        }
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final SparseIntArray f624a;

        private a() {
        }

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f624a = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyCycle_motionTarget, 1);
            sparseIntArray.append(R.styleable.KeyCycle_framePosition, 2);
            sparseIntArray.append(R.styleable.KeyCycle_transitionEasing, 3);
            sparseIntArray.append(R.styleable.KeyCycle_curveFit, 4);
            sparseIntArray.append(R.styleable.KeyCycle_waveShape, 5);
            sparseIntArray.append(R.styleable.KeyCycle_wavePeriod, 6);
            sparseIntArray.append(R.styleable.KeyCycle_waveOffset, 7);
            sparseIntArray.append(R.styleable.KeyCycle_waveVariesBy, 8);
            sparseIntArray.append(R.styleable.KeyCycle_android_alpha, 9);
            sparseIntArray.append(R.styleable.KeyCycle_android_elevation, 10);
            sparseIntArray.append(R.styleable.KeyCycle_android_rotation, 11);
            sparseIntArray.append(R.styleable.KeyCycle_android_rotationX, 12);
            sparseIntArray.append(R.styleable.KeyCycle_android_rotationY, 13);
            sparseIntArray.append(R.styleable.KeyCycle_transitionPathRotate, 14);
            sparseIntArray.append(R.styleable.KeyCycle_android_scaleX, 15);
            sparseIntArray.append(R.styleable.KeyCycle_android_scaleY, 16);
            sparseIntArray.append(R.styleable.KeyCycle_android_translationX, 17);
            sparseIntArray.append(R.styleable.KeyCycle_android_translationY, 18);
            sparseIntArray.append(R.styleable.KeyCycle_android_translationZ, 19);
            sparseIntArray.append(R.styleable.KeyCycle_motionProgress, 20);
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
                this.o = Key.a(obj);
                break;
            case "rotationY":
                this.p = Key.a(obj);
                break;
            case "translationX":
                this.s = Key.a(obj);
                break;
            case "translationY":
                this.t = Key.a(obj);
                break;
            case "progress":
                this.i = Key.a(obj);
                break;
            case "scaleX":
                this.q = Key.a(obj);
                break;
            case "scaleY":
                this.r = Key.a(obj);
                break;
            case "rotation":
                this.m = Key.a(obj);
                break;
            case "elevation":
                this.l = Key.a(obj);
                break;
            case "transitionPathRotate":
                this.n = Key.a(obj);
                break;
            case "alpha":
                this.k = Key.a(obj);
                break;
            case "waveOffset":
                this.h = Key.a(obj);
                break;
            case "wavePeriod":
                this.f623g = Key.a(obj);
                break;
            case "curveFit":
                this.e = Key.b(obj);
                break;
            case "mTranslationZ":
                this.u = Key.a(obj);
                break;
        }
    }
}
