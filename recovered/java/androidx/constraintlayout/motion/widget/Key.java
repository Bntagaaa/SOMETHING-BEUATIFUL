package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.AttributeSet;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes.dex */
public abstract class Key {
    public static int UNSET = -1;

    /* renamed from: a, reason: collision with root package name */
    public int f618a;

    /* renamed from: b, reason: collision with root package name */
    public int f619b;
    public String c;
    public HashMap d;
    protected int mType;

    public abstract void addValues(HashMap<String, SplineSet> map);

    public abstract void getAttributeNames(HashSet hashSet);

    public abstract void load(Context context, AttributeSet attributeSet);

    public void setInterpolation(HashMap<String, Integer> map) {
    }

    public abstract void setValue(String str, Object obj);

    public Key() {
        int i = UNSET;
        this.f618a = i;
        this.f619b = i;
        this.c = null;
    }

    public static float a(Object obj) {
        return obj instanceof Float ? ((Float) obj).floatValue() : Float.parseFloat(obj.toString());
    }

    public static int b(Object obj) {
        return obj instanceof Integer ? ((Integer) obj).intValue() : Integer.parseInt(obj.toString());
    }
}
