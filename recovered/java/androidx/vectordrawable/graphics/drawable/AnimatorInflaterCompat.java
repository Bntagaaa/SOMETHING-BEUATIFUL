package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import androidx.annotation.AnimatorRes;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import java.io.IOException;
import java.util.ArrayList;
import me.aemo.specialkeyboard.addon.KeyboardChangeListener;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class AnimatorInflaterCompat {
    public static boolean c(int i) {
        return i >= 28 && i <= 31;
    }

    public static Animator loadAnimator(Context context, @AnimatorRes int i) throws Resources.NotFoundException {
        if (Build.VERSION.SDK_INT >= 24) {
            return AnimatorInflater.loadAnimator(context, i);
        }
        return loadAnimator(context, context.getResources(), context.getTheme(), i);
    }

    public static Animator loadAnimator(Context context, Resources resources, Resources.Theme theme, @AnimatorRes int i) throws Resources.NotFoundException {
        return loadAnimator(context, resources, theme, i, 1.0f);
    }

    public static Animator loadAnimator(Context context, Resources resources, Resources.Theme theme, @AnimatorRes int i, float f) throws Throwable {
        XmlPullParserException xmlPullParserException;
        IOException iOException;
        Throwable th;
        XmlResourceParser animation;
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                animation = resources.getAnimation(i);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e) {
            iOException = e;
        } catch (XmlPullParserException e2) {
            xmlPullParserException = e2;
        }
        try {
            Animator animatorA = a(context, resources, theme, animation, Xml.asAttributeSet(animation), null, 0, f);
            animation.close();
            return animatorA;
        } catch (IOException e3) {
            iOException = e3;
            Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
            notFoundException.initCause(iOException);
            throw notFoundException;
        } catch (XmlPullParserException e4) {
            xmlPullParserException = e4;
            Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
            notFoundException2.initCause(xmlPullParserException);
            throw notFoundException2;
        } catch (Throwable th3) {
            th = th3;
            xmlResourceParser = animation;
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
                throw th;
            }
            throw th;
        }
    }

    public static class a implements TypeEvaluator<PathParser.PathDataNode[]> {

        /* renamed from: a, reason: collision with root package name */
        public PathParser.PathDataNode[] f2323a;

        @Override // android.animation.TypeEvaluator
        public PathParser.PathDataNode[] evaluate(float f, PathParser.PathDataNode[] pathDataNodeArr, PathParser.PathDataNode[] pathDataNodeArr2) {
            if (!PathParser.canMorph(pathDataNodeArr, pathDataNodeArr2)) {
                throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
            }
            if (!PathParser.canMorph(this.f2323a, pathDataNodeArr)) {
                this.f2323a = PathParser.deepCopyNodes(pathDataNodeArr);
            }
            for (int i = 0; i < pathDataNodeArr.length; i++) {
                this.f2323a[i].interpolatePathDataNode(pathDataNodeArr[i], pathDataNodeArr2[i], f);
            }
            return this.f2323a;
        }
    }

    public static PropertyValuesHolder b(TypedArray typedArray, int i, int i2, int i3, String str) {
        int color;
        int color2;
        int color3;
        float dimension;
        PropertyValuesHolder propertyValuesHolderOfFloat;
        float dimension2;
        float dimension3;
        TypedValue typedValuePeekValue = typedArray.peekValue(i2);
        boolean z = typedValuePeekValue != null;
        int i4 = z ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i3);
        boolean z2 = typedValuePeekValue2 != null;
        int i5 = z2 ? typedValuePeekValue2.type : 0;
        if (i == 4) {
            i = ((z && c(i4)) || (z2 && c(i5))) ? 3 : 0;
        }
        boolean z3 = i == 0;
        PropertyValuesHolder propertyValuesHolderOfInt = null;
        if (i == 2) {
            String string = typedArray.getString(i2);
            String string2 = typedArray.getString(i3);
            PathParser.PathDataNode[] pathDataNodeArrCreateNodesFromPathData = PathParser.createNodesFromPathData(string);
            PathParser.PathDataNode[] pathDataNodeArrCreateNodesFromPathData2 = PathParser.createNodesFromPathData(string2);
            if (pathDataNodeArrCreateNodesFromPathData != null || pathDataNodeArrCreateNodesFromPathData2 != null) {
                if (pathDataNodeArrCreateNodesFromPathData != null) {
                    a aVar = new a();
                    if (pathDataNodeArrCreateNodesFromPathData2 == null) {
                        return PropertyValuesHolder.ofObject(str, aVar, pathDataNodeArrCreateNodesFromPathData);
                    }
                    if (PathParser.canMorph(pathDataNodeArrCreateNodesFromPathData, pathDataNodeArrCreateNodesFromPathData2)) {
                        return PropertyValuesHolder.ofObject(str, aVar, pathDataNodeArrCreateNodesFromPathData, pathDataNodeArrCreateNodesFromPathData2);
                    }
                    throw new InflateException(" Can't morph from " + string + " to " + string2);
                }
                if (pathDataNodeArrCreateNodesFromPathData2 != null) {
                    return PropertyValuesHolder.ofObject(str, new a(), pathDataNodeArrCreateNodesFromPathData2);
                }
            }
            return null;
        }
        ArgbEvaluator argbEvaluator = i == 3 ? ArgbEvaluator.getInstance() : null;
        if (z3) {
            if (z) {
                if (i4 == 5) {
                    dimension2 = typedArray.getDimension(i2, 0.0f);
                } else {
                    dimension2 = typedArray.getFloat(i2, 0.0f);
                }
                if (z2) {
                    if (i5 == 5) {
                        dimension3 = typedArray.getDimension(i3, 0.0f);
                    } else {
                        dimension3 = typedArray.getFloat(i3, 0.0f);
                    }
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension2, dimension3);
                } else {
                    propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension2);
                }
            } else {
                if (i5 == 5) {
                    dimension = typedArray.getDimension(i3, 0.0f);
                } else {
                    dimension = typedArray.getFloat(i3, 0.0f);
                }
                propertyValuesHolderOfFloat = PropertyValuesHolder.ofFloat(str, dimension);
            }
            propertyValuesHolderOfInt = propertyValuesHolderOfFloat;
        } else if (z) {
            if (i4 == 5) {
                color2 = (int) typedArray.getDimension(i2, 0.0f);
            } else if (c(i4)) {
                color2 = typedArray.getColor(i2, 0);
            } else {
                color2 = typedArray.getInt(i2, 0);
            }
            if (z2) {
                if (i5 == 5) {
                    color3 = (int) typedArray.getDimension(i3, 0.0f);
                } else if (c(i5)) {
                    color3 = typedArray.getColor(i3, 0);
                } else {
                    color3 = typedArray.getInt(i3, 0);
                }
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color2, color3);
            } else {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color2);
            }
        } else if (z2) {
            if (i5 == 5) {
                color = (int) typedArray.getDimension(i3, 0.0f);
            } else if (c(i5)) {
                color = typedArray.getColor(i3, 0);
            } else {
                color = typedArray.getInt(i3, 0);
            }
            propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, color);
        }
        if (propertyValuesHolderOfInt != null && argbEvaluator != null) {
            propertyValuesHolderOfInt.setEvaluator(argbEvaluator);
        }
        return propertyValuesHolderOfInt;
    }

    /* JADX WARN: Code restructure failed: missing block: B:177:0x0372, code lost:
    
        if (r30 == null) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0374, code lost:
    
        if (r21 == null) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0376, code lost:
    
        r1 = new android.animation.Animator[r21.size()];
        r2 = r21.iterator();
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0385, code lost:
    
        if (r2.hasNext() == false) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0387, code lost:
    
        r1[r12] = (android.animation.Animator) r2.next();
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0393, code lost:
    
        if (r31 != 0) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0395, code lost:
    
        r30.playTogether(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0398, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0399, code lost:
    
        r30.playSequentially(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x039c, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
    
        r21 = r11;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0344 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0354  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.animation.Animator a(android.content.Context r25, android.content.res.Resources r26, android.content.res.Resources.Theme r27, android.content.res.XmlResourceParser r28, android.util.AttributeSet r29, android.animation.AnimatorSet r30, int r31, float r32) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 925
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.AnimatorInflaterCompat.a(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, android.content.res.XmlResourceParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    public static ValueAnimator d(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ObjectAnimator objectAnimator, float f, XmlResourceParser xmlResourceParser) {
        int i = 0;
        boolean z = false;
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f2344g);
        TypedArray typedArrayObtainAttributes2 = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.k);
        ValueAnimator valueAnimator = objectAnimator == null ? new ValueAnimator() : objectAnimator;
        long namedInt = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlResourceParser, "duration", 1, KeyboardChangeListener.MIN_KEYBOARD_HEIGHT);
        long namedInt2 = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlResourceParser, "startOffset", 2, 0);
        int namedInt3 = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlResourceParser, "valueType", 7, 4);
        if (TypedArrayUtils.hasAttribute(xmlResourceParser, "valueFrom") && TypedArrayUtils.hasAttribute(xmlResourceParser, "valueTo")) {
            if (namedInt3 == 4) {
                TypedValue typedValuePeekValue = typedArrayObtainAttributes.peekValue(5);
                boolean z2 = typedValuePeekValue != null;
                int i2 = z2 ? typedValuePeekValue.type : 0;
                TypedValue typedValuePeekValue2 = typedArrayObtainAttributes.peekValue(6);
                boolean z3 = typedValuePeekValue2 != null;
                namedInt3 = ((z2 && c(i2)) || (z3 && c(z3 ? typedValuePeekValue2.type : 0))) ? 3 : 0;
            }
            PropertyValuesHolder propertyValuesHolderB = b(typedArrayObtainAttributes, namedInt3, 5, 6, "");
            if (propertyValuesHolderB != null) {
                valueAnimator.setValues(propertyValuesHolderB);
            }
        }
        valueAnimator.setDuration(namedInt);
        valueAnimator.setStartDelay(namedInt2);
        valueAnimator.setRepeatCount(TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlResourceParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlResourceParser, "repeatMode", 4, 1));
        if (typedArrayObtainAttributes2 != null) {
            ObjectAnimator objectAnimator2 = (ObjectAnimator) valueAnimator;
            String namedString = TypedArrayUtils.getNamedString(typedArrayObtainAttributes2, xmlResourceParser, "pathData", 1);
            if (namedString != null) {
                String namedString2 = TypedArrayUtils.getNamedString(typedArrayObtainAttributes2, xmlResourceParser, "propertyXName", 2);
                String namedString3 = TypedArrayUtils.getNamedString(typedArrayObtainAttributes2, xmlResourceParser, "propertyYName", 3);
                if (namedString2 == null && namedString3 == null) {
                    throw new InflateException(typedArrayObtainAttributes2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path pathCreatePathFromPathData = PathParser.createPathFromPathData(namedString);
                float f2 = 0.5f * f;
                PathMeasure pathMeasure = new PathMeasure(pathCreatePathFromPathData, false);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Float.valueOf(0.0f));
                float length = 0.0f;
                while (true) {
                    length += pathMeasure.getLength();
                    arrayList.add(Float.valueOf(length));
                    if (!pathMeasure.nextContour()) {
                        break;
                    }
                    z = false;
                }
                PathMeasure pathMeasure2 = new PathMeasure(pathCreatePathFromPathData, z);
                int iMin = Math.min(100, ((int) (length / f2)) + 1);
                float[] fArr = new float[iMin];
                float[] fArr2 = new float[iMin];
                float[] fArr3 = new float[2];
                float f3 = length / (iMin - 1);
                float f4 = 0.0f;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    if (i3 >= iMin) {
                        break;
                    }
                    int i5 = iMin;
                    pathMeasure2.getPosTan(f4 - ((Float) arrayList.get(i4)).floatValue(), fArr3, null);
                    fArr[i3] = fArr3[0];
                    fArr2[i3] = fArr3[1];
                    float f5 = f4 + f3;
                    int i6 = i4 + 1;
                    f4 = f5;
                    if (i6 < arrayList.size() && f4 > ((Float) arrayList.get(i6)).floatValue()) {
                        pathMeasure2.nextContour();
                        i4 = i6;
                    }
                    i3++;
                    iMin = i5;
                }
                PropertyValuesHolder propertyValuesHolderOfFloat = namedString2 != null ? PropertyValuesHolder.ofFloat(namedString2, fArr) : null;
                PropertyValuesHolder propertyValuesHolderOfFloat2 = namedString3 != null ? PropertyValuesHolder.ofFloat(namedString3, fArr2) : null;
                if (propertyValuesHolderOfFloat == null) {
                    objectAnimator2.setValues(propertyValuesHolderOfFloat2);
                } else if (propertyValuesHolderOfFloat2 == null) {
                    objectAnimator2.setValues(propertyValuesHolderOfFloat);
                } else {
                    objectAnimator2.setValues(propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2);
                }
                i = 0;
            } else {
                i = 0;
                objectAnimator2.setPropertyName(TypedArrayUtils.getNamedString(typedArrayObtainAttributes2, xmlResourceParser, "propertyName", 0));
            }
        }
        int namedResourceId = TypedArrayUtils.getNamedResourceId(typedArrayObtainAttributes, xmlResourceParser, "interpolator", i, i);
        if (namedResourceId > 0) {
            valueAnimator.setInterpolator(AnimationUtilsCompat.loadInterpolator(context, namedResourceId));
        }
        typedArrayObtainAttributes.recycle();
        if (typedArrayObtainAttributes2 != null) {
            typedArrayObtainAttributes2.recycle();
        }
        return valueAnimator;
    }

    private AnimatorInflaterCompat() {
    }
}
