package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.widget.SplineSet;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R;
import androidx.core.app.NotificationCompat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class KeyAttributes extends Key {
    public static final int KEY_TYPE = 1;
    public int e = -1;
    public float f = Float.NaN;

    /* renamed from: g, reason: collision with root package name */
    public float f620g = Float.NaN;
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
    public float r = Float.NaN;
    public float s = Float.NaN;

    public KeyAttributes() {
        this.mType = 1;
        this.d = new HashMap();
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        a.read(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyAttribute));
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f620g)) {
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
        if (!Float.isNaN(this.k)) {
            hashSet.add("transformPivotX");
        }
        if (!Float.isNaN(this.l)) {
            hashSet.add("transformPivotY");
        }
        if (!Float.isNaN(this.p)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.q)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.r)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.m)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.n)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.n)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.s)) {
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
        if (!Float.isNaN(this.f620g)) {
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
        if (!Float.isNaN(this.k)) {
            map.put("transformPivotX", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.l)) {
            map.put("transformPivotY", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.p)) {
            map.put("translationX", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.q)) {
            map.put("translationY", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.r)) {
            map.put("translationZ", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.m)) {
            map.put("transitionPathRotate", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.n)) {
            map.put("scaleX", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.o)) {
            map.put("scaleY", Integer.valueOf(this.e));
        }
        if (!Float.isNaN(this.s)) {
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
        for (String str : map.keySet()) {
            SplineSet splineSet = map.get(str);
            if (str.startsWith("CUSTOM")) {
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.d.get(str.substring(7));
                if (constraintAttribute != null) {
                    ((SplineSet.b) splineSet).setPoint(this.f618a, constraintAttribute);
                }
            } else {
                switch (str) {
                    case "rotationX":
                        if (Float.isNaN(this.i)) {
                            break;
                        } else {
                            splineSet.setPoint(this.f618a, this.i);
                            break;
                        }
                    case "rotationY":
                        if (Float.isNaN(this.j)) {
                            break;
                        } else {
                            splineSet.setPoint(this.f618a, this.j);
                            break;
                        }
                    case "translationX":
                        if (Float.isNaN(this.p)) {
                            break;
                        } else {
                            splineSet.setPoint(this.f618a, this.p);
                            break;
                        }
                    case "translationY":
                        if (Float.isNaN(this.q)) {
                            break;
                        } else {
                            splineSet.setPoint(this.f618a, this.q);
                            break;
                        }
                    case "translationZ":
                        if (Float.isNaN(this.r)) {
                            break;
                        } else {
                            splineSet.setPoint(this.f618a, this.r);
                            break;
                        }
                    case "progress":
                        if (Float.isNaN(this.s)) {
                            break;
                        } else {
                            splineSet.setPoint(this.f618a, this.s);
                            break;
                        }
                    case "scaleX":
                        if (Float.isNaN(this.n)) {
                            break;
                        } else {
                            splineSet.setPoint(this.f618a, this.n);
                            break;
                        }
                    case "scaleY":
                        if (Float.isNaN(this.o)) {
                            break;
                        } else {
                            splineSet.setPoint(this.f618a, this.o);
                            break;
                        }
                    case "transformPivotX":
                        if (Float.isNaN(this.i)) {
                            break;
                        } else {
                            splineSet.setPoint(this.f618a, this.k);
                            break;
                        }
                    case "transformPivotY":
                        if (Float.isNaN(this.j)) {
                            break;
                        } else {
                            splineSet.setPoint(this.f618a, this.l);
                            break;
                        }
                    case "rotation":
                        if (Float.isNaN(this.h)) {
                            break;
                        } else {
                            splineSet.setPoint(this.f618a, this.h);
                            break;
                        }
                    case "elevation":
                        if (Float.isNaN(this.f620g)) {
                            break;
                        } else {
                            splineSet.setPoint(this.f618a, this.f620g);
                            break;
                        }
                    case "transitionPathRotate":
                        if (Float.isNaN(this.m)) {
                            break;
                        } else {
                            splineSet.setPoint(this.f618a, this.m);
                            break;
                        }
                    case "alpha":
                        if (Float.isNaN(this.f)) {
                            break;
                        } else {
                            splineSet.setPoint(this.f618a, this.f);
                            break;
                        }
                    default:
                        Log.v("KeyAttributes", "UNKNOWN addValues \"" + str + "\"");
                        break;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String str, Object obj) {
        str.getClass();
        switch (str) {
            case "motionProgress":
                this.s = Key.a(obj);
                break;
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
                this.p = Key.a(obj);
                break;
            case "translationY":
                this.q = Key.a(obj);
                break;
            case "pivotX":
                this.k = Key.a(obj);
                break;
            case "pivotY":
                this.l = Key.a(obj);
                break;
            case "scaleX":
                this.n = Key.a(obj);
                break;
            case "scaleY":
                this.o = Key.a(obj);
                break;
            case "rotation":
                this.h = Key.a(obj);
                break;
            case "elevation":
                this.f620g = Key.a(obj);
                break;
            case "transitionPathRotate":
                this.m = Key.a(obj);
                break;
            case "alpha":
                this.f = Key.a(obj);
                break;
            case "curveFit":
                this.e = Key.b(obj);
                break;
            case "mTranslationZ":
                this.r = Key.a(obj);
                break;
            case "visibility":
                if (!(obj instanceof Boolean)) {
                    Boolean.parseBoolean(obj.toString());
                    break;
                } else {
                    ((Boolean) obj).getClass();
                    break;
                }
        }
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final SparseIntArray f621a;

        private a() {
        }

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f621a = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyAttribute_android_alpha, 1);
            sparseIntArray.append(R.styleable.KeyAttribute_android_elevation, 2);
            sparseIntArray.append(R.styleable.KeyAttribute_android_rotation, 4);
            sparseIntArray.append(R.styleable.KeyAttribute_android_rotationX, 5);
            sparseIntArray.append(R.styleable.KeyAttribute_android_rotationY, 6);
            sparseIntArray.append(R.styleable.KeyAttribute_android_transformPivotX, 19);
            sparseIntArray.append(R.styleable.KeyAttribute_android_transformPivotY, 20);
            sparseIntArray.append(R.styleable.KeyAttribute_android_scaleX, 7);
            sparseIntArray.append(R.styleable.KeyAttribute_transitionPathRotate, 8);
            sparseIntArray.append(R.styleable.KeyAttribute_transitionEasing, 9);
            sparseIntArray.append(R.styleable.KeyAttribute_motionTarget, 10);
            sparseIntArray.append(R.styleable.KeyAttribute_framePosition, 12);
            sparseIntArray.append(R.styleable.KeyAttribute_curveFit, 13);
            sparseIntArray.append(R.styleable.KeyAttribute_android_scaleY, 14);
            sparseIntArray.append(R.styleable.KeyAttribute_android_translationX, 15);
            sparseIntArray.append(R.styleable.KeyAttribute_android_translationY, 16);
            sparseIntArray.append(R.styleable.KeyAttribute_android_translationZ, 17);
            sparseIntArray.append(R.styleable.KeyAttribute_motionProgress, 18);
        }

        public static void read(KeyAttributes keyAttributes, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                SparseIntArray sparseIntArray = f621a;
                switch (sparseIntArray.get(index)) {
                    case 1:
                        keyAttributes.f = typedArray.getFloat(index, keyAttributes.f);
                        break;
                    case 2:
                        keyAttributes.f620g = typedArray.getDimension(index, keyAttributes.f620g);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyAttribute", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                        break;
                    case 4:
                        keyAttributes.h = typedArray.getFloat(index, keyAttributes.h);
                        break;
                    case 5:
                        keyAttributes.i = typedArray.getFloat(index, keyAttributes.i);
                        break;
                    case 6:
                        keyAttributes.j = typedArray.getFloat(index, keyAttributes.j);
                        break;
                    case 7:
                        keyAttributes.n = typedArray.getFloat(index, keyAttributes.n);
                        break;
                    case 8:
                        keyAttributes.m = typedArray.getFloat(index, keyAttributes.m);
                        break;
                    case 9:
                        typedArray.getString(index);
                        keyAttributes.getClass();
                        break;
                    case 10:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, keyAttributes.f619b);
                            keyAttributes.f619b = resourceId;
                            if (resourceId == -1) {
                                keyAttributes.c = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            keyAttributes.c = typedArray.getString(index);
                            break;
                        } else {
                            keyAttributes.f619b = typedArray.getResourceId(index, keyAttributes.f619b);
                            break;
                        }
                    case 12:
                        keyAttributes.f618a = typedArray.getInt(index, keyAttributes.f618a);
                        break;
                    case 13:
                        keyAttributes.e = typedArray.getInteger(index, keyAttributes.e);
                        break;
                    case 14:
                        keyAttributes.o = typedArray.getFloat(index, keyAttributes.o);
                        break;
                    case 15:
                        keyAttributes.p = typedArray.getDimension(index, keyAttributes.p);
                        break;
                    case 16:
                        keyAttributes.q = typedArray.getDimension(index, keyAttributes.q);
                        break;
                    case 17:
                        keyAttributes.r = typedArray.getDimension(index, keyAttributes.r);
                        break;
                    case 18:
                        keyAttributes.s = typedArray.getFloat(index, keyAttributes.s);
                        break;
                    case 19:
                        keyAttributes.k = typedArray.getDimension(index, keyAttributes.k);
                        break;
                    case 20:
                        keyAttributes.l = typedArray.getDimension(index, keyAttributes.l);
                        break;
                }
            }
        }
    }
}
