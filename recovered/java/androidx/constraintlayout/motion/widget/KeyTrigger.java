package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.R;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes.dex */
public class KeyTrigger extends Key {
    public static final int KEY_TYPE = 5;
    public String e = null;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public String f638g;
    public String h;
    public int i;
    public int j;
    public View k;
    public float l;
    public boolean m;
    public boolean n;
    public boolean o;
    public float p;
    public Method q;
    public Method r;
    public Method s;
    public float t;
    public boolean u;
    public final RectF v;
    public final RectF w;

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, SplineSet> map) {
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String str, Object obj) {
    }

    public KeyTrigger() {
        int i = Key.UNSET;
        this.f = i;
        this.f638g = null;
        this.h = null;
        this.i = i;
        this.j = i;
        this.k = null;
        this.l = 0.1f;
        this.m = true;
        this.n = true;
        this.o = true;
        this.p = Float.NaN;
        this.u = false;
        this.v = new RectF();
        this.w = new RectF();
        this.mType = 5;
        this.d = new HashMap();
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attributeSet) {
        a.read(this, context.obtainStyledAttributes(attributeSet, R.styleable.KeyTrigger), context);
    }

    public static void c(RectF rectF, View view, boolean z) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z) {
            view.getMatrix().mapRect(rectF);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void conditionallyFire(float r11, android.view.View r12) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyTrigger.conditionallyFire(float, android.view.View):void");
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final SparseIntArray f639a;

        private a() {
        }

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f639a = sparseIntArray;
            sparseIntArray.append(R.styleable.KeyTrigger_framePosition, 8);
            sparseIntArray.append(R.styleable.KeyTrigger_onCross, 4);
            sparseIntArray.append(R.styleable.KeyTrigger_onNegativeCross, 1);
            sparseIntArray.append(R.styleable.KeyTrigger_onPositiveCross, 2);
            sparseIntArray.append(R.styleable.KeyTrigger_motionTarget, 7);
            sparseIntArray.append(R.styleable.KeyTrigger_triggerId, 6);
            sparseIntArray.append(R.styleable.KeyTrigger_triggerSlack, 5);
            sparseIntArray.append(R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
            sparseIntArray.append(R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
            sparseIntArray.append(R.styleable.KeyTrigger_triggerReceiver, 11);
        }

        public static void read(KeyTrigger keyTrigger, TypedArray typedArray, Context context) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                SparseIntArray sparseIntArray = f639a;
                switch (sparseIntArray.get(index)) {
                    case 1:
                        keyTrigger.f638g = typedArray.getString(index);
                        continue;
                    case 2:
                        keyTrigger.h = typedArray.getString(index);
                        continue;
                    case 4:
                        keyTrigger.e = typedArray.getString(index);
                        continue;
                    case 5:
                        keyTrigger.l = typedArray.getFloat(index, keyTrigger.l);
                        continue;
                    case 6:
                        keyTrigger.i = typedArray.getResourceId(index, keyTrigger.i);
                        continue;
                    case 7:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, keyTrigger.f619b);
                            keyTrigger.f619b = resourceId;
                            if (resourceId == -1) {
                                keyTrigger.c = typedArray.getString(index);
                            } else {
                                continue;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            keyTrigger.c = typedArray.getString(index);
                        } else {
                            keyTrigger.f619b = typedArray.getResourceId(index, keyTrigger.f619b);
                        }
                    case 8:
                        int integer = typedArray.getInteger(index, keyTrigger.f618a);
                        keyTrigger.f618a = integer;
                        keyTrigger.p = (integer + 0.5f) / 100.0f;
                        continue;
                    case 9:
                        keyTrigger.j = typedArray.getResourceId(index, keyTrigger.j);
                        continue;
                    case 10:
                        keyTrigger.u = typedArray.getBoolean(index, keyTrigger.u);
                        continue;
                    case 11:
                        keyTrigger.f = typedArray.getResourceId(index, keyTrigger.f);
                        break;
                }
                Log.e("KeyTrigger", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
            }
        }
    }
}
