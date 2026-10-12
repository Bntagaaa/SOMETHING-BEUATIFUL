package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import androidx.constraintlayout.motion.widget.Debug;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class ConstraintAttribute {

    /* renamed from: a, reason: collision with root package name */
    public final String f779a;

    /* renamed from: b, reason: collision with root package name */
    public final AttributeType f780b;
    public int c;
    public float d;
    public String e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public int f781g;

    public static int a(int i) {
        int i2 = (i & (~(i >> 31))) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class AttributeType {
        public static final AttributeType BOOLEAN_TYPE;
        public static final AttributeType COLOR_DRAWABLE_TYPE;
        public static final AttributeType COLOR_TYPE;
        public static final AttributeType DIMENSION_TYPE;
        public static final AttributeType FLOAT_TYPE;
        public static final AttributeType INT_TYPE;
        public static final AttributeType STRING_TYPE;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ AttributeType[] f782a;

        public static AttributeType valueOf(String str) {
            return (AttributeType) Enum.valueOf(AttributeType.class, str);
        }

        public static AttributeType[] values() {
            return (AttributeType[]) f782a.clone();
        }

        static {
            AttributeType attributeType = new AttributeType("INT_TYPE", 0);
            INT_TYPE = attributeType;
            AttributeType attributeType2 = new AttributeType("FLOAT_TYPE", 1);
            FLOAT_TYPE = attributeType2;
            AttributeType attributeType3 = new AttributeType("COLOR_TYPE", 2);
            COLOR_TYPE = attributeType3;
            AttributeType attributeType4 = new AttributeType("COLOR_DRAWABLE_TYPE", 3);
            COLOR_DRAWABLE_TYPE = attributeType4;
            AttributeType attributeType5 = new AttributeType("STRING_TYPE", 4);
            STRING_TYPE = attributeType5;
            AttributeType attributeType6 = new AttributeType("BOOLEAN_TYPE", 5);
            BOOLEAN_TYPE = attributeType6;
            AttributeType attributeType7 = new AttributeType("DIMENSION_TYPE", 6);
            DIMENSION_TYPE = attributeType7;
            f782a = new AttributeType[]{attributeType, attributeType2, attributeType3, attributeType4, attributeType5, attributeType6, attributeType7};
        }
    }

    public AttributeType getType() {
        return this.f780b;
    }

    public void setFloatValue(float f) {
        this.d = f;
    }

    public void setColorValue(int i) {
        this.f781g = i;
    }

    public void setIntValue(int i) {
        this.c = i;
    }

    public void setStringValue(String str) {
        this.e = str;
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f783a;

        static {
            int[] iArr = new int[AttributeType.values().length];
            f783a = iArr;
            try {
                iArr[AttributeType.COLOR_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f783a[AttributeType.COLOR_DRAWABLE_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f783a[AttributeType.INT_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f783a[AttributeType.FLOAT_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f783a[AttributeType.STRING_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f783a[AttributeType.BOOLEAN_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f783a[AttributeType.DIMENSION_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public int noOfInterpValues() {
        int i = a.f783a[this.f780b.ordinal()];
        return (i == 1 || i == 2) ? 4 : 1;
    }

    public float getValueToInterpolate() {
        switch (a.f783a[this.f780b.ordinal()]) {
            case 1:
            case 2:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 3:
                return this.c;
            case 4:
                return this.d;
            case 5:
                throw new RuntimeException("Cannot interpolate String");
            case 6:
                return this.f ? 0.0f : 1.0f;
            case 7:
                return this.d;
            default:
                return Float.NaN;
        }
    }

    public void getValuesToInterpolate(float[] fArr) {
        switch (a.f783a[this.f780b.ordinal()]) {
            case 1:
            case 2:
                int i = (this.f781g >> 24) & 255;
                float fPow = (float) Math.pow(((r0 >> 16) & 255) / 255.0f, 2.2d);
                float fPow2 = (float) Math.pow(((r0 >> 8) & 255) / 255.0f, 2.2d);
                float fPow3 = (float) Math.pow((r0 & 255) / 255.0f, 2.2d);
                fArr[0] = fPow;
                fArr[1] = fPow2;
                fArr[2] = fPow3;
                fArr[3] = i / 255.0f;
                return;
            case 3:
                fArr[0] = this.c;
                return;
            case 4:
                fArr[0] = this.d;
                return;
            case 5:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 6:
                fArr[0] = this.f ? 0.0f : 1.0f;
                return;
            case 7:
                fArr[0] = this.d;
                return;
            default:
                return;
        }
    }

    public void setValue(float[] fArr) {
        switch (a.f783a[this.f780b.ordinal()]) {
            case 1:
            case 2:
                int iHSVToColor = Color.HSVToColor(fArr);
                this.f781g = iHSVToColor;
                this.f781g = (a((int) (fArr[3] * 255.0f)) << 24) | (iHSVToColor & 16777215);
                return;
            case 3:
                this.c = (int) fArr[0];
                return;
            case 4:
                this.d = fArr[0];
                return;
            case 5:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 6:
                this.f = ((double) fArr[0]) > 0.5d;
                return;
            case 7:
                this.d = fArr[0];
                return;
            default:
                return;
        }
    }

    public boolean diff(ConstraintAttribute constraintAttribute) {
        if (constraintAttribute != null) {
            AttributeType attributeType = constraintAttribute.f780b;
            AttributeType attributeType2 = this.f780b;
            if (attributeType2 == attributeType) {
                switch (a.f783a[attributeType2.ordinal()]) {
                    case 1:
                    case 2:
                        if (this.f781g == constraintAttribute.f781g) {
                            return true;
                        }
                        break;
                    case 3:
                        return this.c == constraintAttribute.c;
                    case 4:
                        return this.d == constraintAttribute.d;
                    case 5:
                        return this.c == constraintAttribute.c;
                    case 6:
                        return this.f == constraintAttribute.f;
                    case 7:
                        return this.d == constraintAttribute.d;
                    default:
                        return false;
                }
            }
        }
        return false;
    }

    public ConstraintAttribute(String str, AttributeType attributeType) {
        this.f779a = str;
        this.f780b = attributeType;
    }

    public ConstraintAttribute(String str, AttributeType attributeType, Object obj) {
        this.f779a = str;
        this.f780b = attributeType;
        setValue(obj);
    }

    public ConstraintAttribute(ConstraintAttribute constraintAttribute, Object obj) {
        this.f779a = constraintAttribute.f779a;
        this.f780b = constraintAttribute.f780b;
        setValue(obj);
    }

    public void setValue(Object obj) {
        switch (a.f783a[this.f780b.ordinal()]) {
            case 1:
            case 2:
                this.f781g = ((Integer) obj).intValue();
                break;
            case 3:
                this.c = ((Integer) obj).intValue();
                break;
            case 4:
                this.d = ((Float) obj).floatValue();
                break;
            case 5:
                this.e = (String) obj;
                break;
            case 6:
                this.f = ((Boolean) obj).booleanValue();
                break;
            case 7:
                this.d = ((Float) obj).floatValue();
                break;
        }
    }

    public static HashMap<String, ConstraintAttribute> extractAttributes(HashMap<String, ConstraintAttribute> map, View view) {
        HashMap<String, ConstraintAttribute> map2 = new HashMap<>();
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            ConstraintAttribute constraintAttribute = map.get(str);
            try {
                if (str.equals("BackgroundColor")) {
                    map2.put(str, new ConstraintAttribute(constraintAttribute, Integer.valueOf(((ColorDrawable) view.getBackground()).getColor())));
                } else {
                    map2.put(str, new ConstraintAttribute(constraintAttribute, cls.getMethod("getMap" + str, new Class[0]).invoke(view, new Object[0])));
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }
        return map2;
    }

    public static void setAttributes(View view, HashMap<String, ConstraintAttribute> map) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            ConstraintAttribute constraintAttribute = map.get(str);
            String strI = _COROUTINE.a.i("set", str);
            try {
                int i = a.f783a[constraintAttribute.f780b.ordinal()];
                Class<?> cls2 = Integer.TYPE;
                Class<?> cls3 = Float.TYPE;
                switch (i) {
                    case 1:
                        cls.getMethod(strI, cls2).invoke(view, Integer.valueOf(constraintAttribute.f781g));
                        break;
                    case 2:
                        Method method = cls.getMethod(strI, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(constraintAttribute.f781g);
                        method.invoke(view, colorDrawable);
                        break;
                    case 3:
                        cls.getMethod(strI, cls2).invoke(view, Integer.valueOf(constraintAttribute.c));
                        break;
                    case 4:
                        cls.getMethod(strI, cls3).invoke(view, Float.valueOf(constraintAttribute.d));
                        break;
                    case 5:
                        cls.getMethod(strI, CharSequence.class).invoke(view, constraintAttribute.e);
                        break;
                    case 6:
                        cls.getMethod(strI, Boolean.TYPE).invoke(view, Boolean.valueOf(constraintAttribute.f));
                        break;
                    case 7:
                        cls.getMethod(strI, cls3).invoke(view, Float.valueOf(constraintAttribute.d));
                        break;
                }
            } catch (IllegalAccessException e) {
                StringBuilder sbR = _COROUTINE.a.r(" Custom Attribute \"", str, "\" not found on ");
                sbR.append(cls.getName());
                Log.e("TransitionLayout", sbR.toString());
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                Log.e("TransitionLayout", e2.getMessage());
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                Log.e("TransitionLayout", cls.getName() + " must have a method " + strI);
            } catch (InvocationTargetException e3) {
                StringBuilder sbR2 = _COROUTINE.a.r(" Custom Attribute \"", str, "\" not found on ");
                sbR2.append(cls.getName());
                Log.e("TransitionLayout", sbR2.toString());
                e3.printStackTrace();
            }
        }
    }

    public void setInterpolatedValue(View view, float[] fArr) {
        Class<?> cls = view.getClass();
        StringBuilder sb = new StringBuilder("set");
        String str = this.f779a;
        sb.append(str);
        String string = sb.toString();
        try {
            int i = a.f783a[this.f780b.ordinal()];
            Class<?> cls2 = Integer.TYPE;
            Class<?> cls3 = Float.TYPE;
            switch (i) {
                case 1:
                    cls.getMethod(string, cls2).invoke(view, Integer.valueOf(a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f)) | (a((int) (fArr[3] * 255.0f)) << 24) | (a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8)));
                    return;
                case 2:
                    Method method = cls.getMethod(string, Drawable.class);
                    int iA = a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f)) | (a((int) (fArr[3] * 255.0f)) << 24) | (a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8);
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor(iA);
                    method.invoke(view, colorDrawable);
                    return;
                case 3:
                    cls.getMethod(string, cls2).invoke(view, Integer.valueOf((int) fArr[0]));
                    return;
                case 4:
                    cls.getMethod(string, cls3).invoke(view, Float.valueOf(fArr[0]));
                    return;
                case 5:
                    throw new RuntimeException("unable to interpolate strings " + str);
                case 6:
                    cls.getMethod(string, Boolean.TYPE).invoke(view, Boolean.valueOf(fArr[0] > 0.5f));
                    return;
                case 7:
                    cls.getMethod(string, cls3).invoke(view, Float.valueOf(fArr[0]));
                    return;
                default:
                    return;
            }
        } catch (IllegalAccessException e) {
            StringBuilder sbR = _COROUTINE.a.r("cannot access method ", string, "on View \"");
            sbR.append(Debug.getName(view));
            sbR.append("\"");
            Log.e("TransitionLayout", sbR.toString());
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            StringBuilder sbR2 = _COROUTINE.a.r("no method ", string, "on View \"");
            sbR2.append(Debug.getName(view));
            sbR2.append("\"");
            Log.e("TransitionLayout", sbR2.toString());
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    public static void parse(Context context, XmlPullParser xmlPullParser, HashMap<String, ConstraintAttribute> map) {
        AttributeType attributeType;
        Object string;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.CustomAttribute);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        String string2 = null;
        Object objValueOf = null;
        AttributeType attributeType2 = null;
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == R.styleable.CustomAttribute_attributeName) {
                string2 = typedArrayObtainStyledAttributes.getString(index);
                if (string2 != null && string2.length() > 0) {
                    string2 = Character.toUpperCase(string2.charAt(0)) + string2.substring(1);
                }
            } else if (index == R.styleable.CustomAttribute_customBoolean) {
                objValueOf = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(index, false));
                attributeType2 = AttributeType.BOOLEAN_TYPE;
            } else {
                if (index == R.styleable.CustomAttribute_customColorValue) {
                    attributeType = AttributeType.COLOR_TYPE;
                    string = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else if (index == R.styleable.CustomAttribute_customColorDrawableValue) {
                    attributeType = AttributeType.COLOR_DRAWABLE_TYPE;
                    string = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else if (index == R.styleable.CustomAttribute_customPixelDimension) {
                    attributeType = AttributeType.DIMENSION_TYPE;
                    string = Float.valueOf(TypedValue.applyDimension(1, typedArrayObtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                } else if (index == R.styleable.CustomAttribute_customDimension) {
                    attributeType = AttributeType.DIMENSION_TYPE;
                    string = Float.valueOf(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R.styleable.CustomAttribute_customFloatValue) {
                    attributeType = AttributeType.FLOAT_TYPE;
                    string = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, Float.NaN));
                } else if (index == R.styleable.CustomAttribute_customIntegerValue) {
                    attributeType = AttributeType.INT_TYPE;
                    string = Integer.valueOf(typedArrayObtainStyledAttributes.getInteger(index, -1));
                } else if (index == R.styleable.CustomAttribute_customStringValue) {
                    attributeType = AttributeType.STRING_TYPE;
                    string = typedArrayObtainStyledAttributes.getString(index);
                }
                Object obj = string;
                attributeType2 = attributeType;
                objValueOf = obj;
            }
        }
        if (string2 != null && objValueOf != null) {
            map.put(string2, new ConstraintAttribute(string2, attributeType2, objValueOf));
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
