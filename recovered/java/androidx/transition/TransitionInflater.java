package androidx.transition;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.ViewGroup;
import androidx.collection.ArrayMap;
import java.io.IOException;
import java.lang.reflect.Constructor;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class TransitionInflater {

    /* renamed from: b, reason: collision with root package name */
    public static final Class[] f2255b = {Context.class, AttributeSet.class};
    public static final ArrayMap c = new ArrayMap();

    /* renamed from: a, reason: collision with root package name */
    public final Context f2256a;

    public TransitionInflater(Context context) {
        this.f2256a = context;
    }

    public static TransitionInflater from(Context context) {
        return new TransitionInflater(context);
    }

    public Transition inflateTransition(int i) throws Resources.NotFoundException {
        XmlResourceParser xml = this.f2256a.getResources().getXml(i);
        try {
            try {
                return b(xml, Xml.asAttributeSet(xml), null);
            } catch (IOException e) {
                throw new InflateException(xml.getPositionDescription() + ": " + e.getMessage(), e);
            } catch (XmlPullParserException e2) {
                throw new InflateException(e2.getMessage(), e2);
            }
        } finally {
            xml.close();
        }
    }

    public TransitionManager inflateTransitionManager(int i, ViewGroup viewGroup) throws Resources.NotFoundException {
        XmlResourceParser xml = this.f2256a.getResources().getXml(i);
        try {
            try {
                return c(xml, Xml.asAttributeSet(xml), viewGroup);
            } catch (IOException e) {
                InflateException inflateException = new InflateException(xml.getPositionDescription() + ": " + e.getMessage());
                inflateException.initCause(e);
                throw inflateException;
            } catch (XmlPullParserException e2) {
                InflateException inflateException2 = new InflateException(e2.getMessage());
                inflateException2.initCause(e2);
                throw inflateException2;
            }
        } finally {
            xml.close();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:116:0x020e, code lost:
    
        return r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.transition.Transition b(android.content.res.XmlResourceParser r17, android.util.AttributeSet r18, androidx.transition.Transition r19) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 527
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.TransitionInflater.b(android.content.res.XmlResourceParser, android.util.AttributeSet, androidx.transition.Transition):androidx.transition.Transition");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object a(AttributeSet attributeSet, Class cls, String str) {
        Object objNewInstance;
        Class<? extends U> clsAsSubclass;
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        if (attributeValue == null) {
            throw new InflateException(str.concat(" tag must have a 'class' attribute"));
        }
        try {
            ArrayMap arrayMap = c;
            synchronized (arrayMap) {
                try {
                    Constructor constructor = (Constructor) arrayMap.get(attributeValue);
                    if (constructor == null && (clsAsSubclass = Class.forName(attributeValue, false, this.f2256a.getClassLoader()).asSubclass(cls)) != 0) {
                        constructor = clsAsSubclass.getConstructor(f2255b);
                        constructor.setAccessible(true);
                        arrayMap.put(attributeValue, constructor);
                    }
                    objNewInstance = constructor.newInstance(this.f2256a, attributeSet);
                } finally {
                }
            }
            return objNewInstance;
        } catch (Exception e) {
            throw new InflateException("Could not instantiate " + cls + " class " + attributeValue, e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x009b, code lost:
    
        throw new java.lang.RuntimeException("Unknown scene name: " + r11.getName());
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009c, code lost:
    
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.transition.TransitionManager c(android.content.res.XmlResourceParser r11, android.util.AttributeSet r12, android.view.ViewGroup r13) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r10 = this;
            int r0 = r11.getDepth()
            r1 = 0
            r2 = r1
        L6:
            int r3 = r11.next()
            r4 = 3
            if (r3 != r4) goto L13
            int r4 = r11.getDepth()
            if (r4 <= r0) goto L9c
        L13:
            r4 = 1
            if (r3 == r4) goto L9c
            r5 = 2
            if (r3 == r5) goto L1a
            goto L6
        L1a:
            java.lang.String r3 = r11.getName()
            java.lang.String r6 = "transitionManager"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L2c
            androidx.transition.TransitionManager r2 = new androidx.transition.TransitionManager
            r2.<init>()
            goto L6
        L2c:
            java.lang.String r6 = "transition"
            boolean r3 = r3.equals(r6)
            if (r3 == 0) goto L84
            if (r2 == 0) goto L84
            int[] r3 = androidx.transition.q.f2300b
            android.content.Context r7 = r10.f2256a
            android.content.res.TypedArray r3 = r7.obtainStyledAttributes(r12, r3)
            r8 = -1
            int r5 = androidx.core.content.res.TypedArrayUtils.getNamedResourceId(r3, r11, r6, r5, r8)
            java.lang.String r6 = "fromScene"
            r9 = 0
            int r6 = androidx.core.content.res.TypedArrayUtils.getNamedResourceId(r3, r11, r6, r9, r8)
            if (r6 >= 0) goto L4e
            r6 = r1
            goto L52
        L4e:
            androidx.transition.Scene r6 = androidx.transition.Scene.getSceneForLayout(r13, r6, r7)
        L52:
            java.lang.String r9 = "toScene"
            int r4 = androidx.core.content.res.TypedArrayUtils.getNamedResourceId(r3, r11, r9, r4, r8)
            if (r4 >= 0) goto L5c
            r4 = r1
            goto L60
        L5c:
            androidx.transition.Scene r4 = androidx.transition.Scene.getSceneForLayout(r13, r4, r7)
        L60:
            if (r5 < 0) goto L80
            androidx.transition.Transition r7 = r10.inflateTransition(r5)
            if (r7 == 0) goto L80
            if (r4 == 0) goto L74
            if (r6 != 0) goto L70
            r2.setTransition(r4, r7)
            goto L80
        L70:
            r2.setTransition(r6, r4, r7)
            goto L80
        L74:
            java.lang.RuntimeException r11 = new java.lang.RuntimeException
            java.lang.String r12 = "No toScene for transition ID "
            java.lang.String r12 = _COROUTINE.a.d(r5, r12)
            r11.<init>(r12)
            throw r11
        L80:
            r3.recycle()
            goto L6
        L84:
            java.lang.RuntimeException r12 = new java.lang.RuntimeException
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            java.lang.String r0 = "Unknown scene name: "
            r13.<init>(r0)
            java.lang.String r11 = r11.getName()
            r13.append(r11)
            java.lang.String r11 = r13.toString()
            r12.<init>(r11)
            throw r12
        L9c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.TransitionInflater.c(android.content.res.XmlResourceParser, android.util.AttributeSet, android.view.ViewGroup):androidx.transition.TransitionManager");
    }
}
