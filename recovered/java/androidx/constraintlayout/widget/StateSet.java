package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class StateSet {
    public static final String TAG = "ConstraintLayoutStates";

    /* renamed from: a, reason: collision with root package name */
    public final int f814a;

    /* renamed from: b, reason: collision with root package name */
    public final SparseArray f815b = new SparseArray();

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public StateSet(android.content.Context r10, org.xmlpull.v1.XmlPullParser r11) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r9 = this;
            r9.<init>()
            r0 = -1
            r9.f814a = r0
            android.util.SparseArray r1 = new android.util.SparseArray
            r1.<init>()
            r9.f815b = r1
            android.util.SparseArray r1 = new android.util.SparseArray
            r1.<init>()
            android.util.AttributeSet r1 = android.util.Xml.asAttributeSet(r11)
            int[] r2 = androidx.constraintlayout.widget.R.styleable.StateSet
            android.content.res.TypedArray r1 = r10.obtainStyledAttributes(r1, r2)
            int r2 = r1.getIndexCount()
            r3 = 0
            r4 = 0
        L22:
            if (r4 >= r2) goto L37
            int r5 = r1.getIndex(r4)
            int r6 = androidx.constraintlayout.widget.R.styleable.StateSet_defaultState
            if (r5 != r6) goto L34
            int r6 = r9.f814a
            int r5 = r1.getResourceId(r5, r6)
            r9.f814a = r5
        L34:
            int r4 = r4 + 1
            goto L22
        L37:
            int r1 = r11.getEventType()     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            r2 = 0
        L3c:
            r4 = 1
            if (r1 == r4) goto Ld9
            if (r1 == 0) goto Lc9
            java.lang.String r5 = "StateSet"
            r6 = 3
            r7 = 2
            if (r1 == r7) goto L5d
            if (r1 == r6) goto L4b
            goto Lcc
        L4b:
            java.lang.String r1 = r11.getName()     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            boolean r1 = r5.equals(r1)     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            if (r1 == 0) goto Lcc
            goto Ld9
        L57:
            r10 = move-exception
            goto Ld2
        L5a:
            r10 = move-exception
            goto Ld6
        L5d:
            java.lang.String r1 = r11.getName()     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            int r8 = r1.hashCode()     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            switch(r8) {
                case 80204913: goto L85;
                case 1301459538: goto L7b;
                case 1382829617: goto L73;
                case 1901439077: goto L69;
                default: goto L68;
            }     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
        L68:
            goto L8f
        L69:
            java.lang.String r5 = "Variant"
            boolean r5 = r1.equals(r5)     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            if (r5 == 0) goto L8f
            r5 = 3
            goto L90
        L73:
            boolean r5 = r1.equals(r5)     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            if (r5 == 0) goto L8f
            r5 = 1
            goto L90
        L7b:
            java.lang.String r5 = "LayoutDescription"
            boolean r5 = r1.equals(r5)     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            if (r5 == 0) goto L8f
            r5 = 0
            goto L90
        L85:
            java.lang.String r5 = "State"
            boolean r5 = r1.equals(r5)     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            if (r5 == 0) goto L8f
            r5 = 2
            goto L90
        L8f:
            r5 = -1
        L90:
            if (r5 == 0) goto Lcc
            if (r5 == r4) goto Lcc
            if (r5 == r7) goto Lbc
            if (r5 == r6) goto Laf
            java.lang.String r4 = "ConstraintLayoutStates"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            r5.<init>()     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            java.lang.String r6 = "unknown tag "
            r5.append(r6)     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            r5.append(r1)     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            java.lang.String r1 = r5.toString()     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            android.util.Log.v(r4, r1)     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            goto Lcc
        Laf:
            androidx.constraintlayout.widget.StateSet$b r1 = new androidx.constraintlayout.widget.StateSet$b     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            r1.<init>(r10, r11)     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            if (r2 == 0) goto Lcc
            java.util.ArrayList r4 = r2.f817b     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            r4.add(r1)     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            goto Lcc
        Lbc:
            androidx.constraintlayout.widget.StateSet$a r2 = new androidx.constraintlayout.widget.StateSet$a     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            r2.<init>(r10, r11)     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            android.util.SparseArray r1 = r9.f815b     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            int r4 = r2.f816a     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            r1.put(r4, r2)     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            goto Lcc
        Lc9:
            r11.getName()     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
        Lcc:
            int r1 = r11.next()     // Catch: java.io.IOException -> L57 org.xmlpull.v1.XmlPullParserException -> L5a
            goto L3c
        Ld2:
            r10.printStackTrace()
            goto Ld9
        Ld6:
            r10.printStackTrace()
        Ld9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.StateSet.<init>(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }

    public boolean needsToChange(int i, float f, float f2) {
        if (-1 != i) {
            return true;
        }
        SparseArray sparseArray = this.f815b;
        return -1 != ((a) (i == -1 ? sparseArray.valueAt(0) : sparseArray.get(-1))).findMatch(f, f2);
    }

    public int stateGetConstraintID(int i, int i2, int i3) {
        return updateConstraints(-1, i, i2, i3);
    }

    public int convertToConstraintSet(int i, int i2, float f, float f2) {
        a aVar = (a) this.f815b.get(i2);
        if (aVar == null) {
            return i2;
        }
        ArrayList arrayList = aVar.f817b;
        int i3 = aVar.c;
        if (f != -1.0f && f2 != -1.0f) {
            Iterator it = arrayList.iterator();
            b bVar = null;
            while (it.hasNext()) {
                b bVar2 = (b) it.next();
                if (bVar2.a(f, f2)) {
                    if (i != bVar2.e) {
                        bVar = bVar2;
                    }
                }
            }
            return bVar != null ? bVar.e : i3;
        }
        if (i3 != i) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                if (i == ((b) it2.next()).e) {
                }
            }
            return i3;
        }
        return i;
    }

    public int updateConstraints(int i, int i2, float f, float f2) {
        a aVar;
        SparseArray sparseArray = this.f815b;
        if (i == i2) {
            if (i2 == -1) {
                aVar = (a) sparseArray.valueAt(0);
            } else {
                aVar = (a) sparseArray.get(-1);
            }
            if (aVar != null) {
                ArrayList arrayList = aVar.f817b;
                int iFindMatch = aVar.findMatch(f, f2);
                return i == iFindMatch ? i : iFindMatch == -1 ? aVar.c : ((b) arrayList.get(iFindMatch)).e;
            }
        } else {
            a aVar2 = (a) sparseArray.get(i2);
            if (aVar2 != null) {
                int iFindMatch2 = aVar2.findMatch(f, f2);
                return iFindMatch2 == -1 ? aVar2.c : ((b) aVar2.f817b.get(iFindMatch2)).e;
            }
        }
        return -1;
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f816a;

        /* renamed from: b, reason: collision with root package name */
        public final ArrayList f817b = new ArrayList();
        public final int c;

        public a(Context context, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
            this.c = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.State_android_id) {
                    this.f816a = typedArrayObtainStyledAttributes.getResourceId(index, this.f816a);
                } else if (index == R.styleable.State_constraints) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.c);
                    this.c = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    "layout".equals(resourceTypeName);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public int findMatch(float f, float f2) {
            int i = 0;
            while (true) {
                ArrayList arrayList = this.f817b;
                if (i >= arrayList.size()) {
                    return -1;
                }
                if (((b) arrayList.get(i)).a(f, f2)) {
                    return i;
                }
                i++;
            }
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final float f818a;

        /* renamed from: b, reason: collision with root package name */
        public final float f819b;
        public final float c;
        public final float d;
        public final int e;

        public b(Context context, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
            this.f818a = Float.NaN;
            this.f819b = Float.NaN;
            this.c = Float.NaN;
            this.d = Float.NaN;
            this.e = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.Variant_constraints) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.e);
                    this.e = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    "layout".equals(resourceTypeName);
                } else if (index == R.styleable.Variant_region_heightLessThan) {
                    this.d = typedArrayObtainStyledAttributes.getDimension(index, this.d);
                } else if (index == R.styleable.Variant_region_heightMoreThan) {
                    this.f819b = typedArrayObtainStyledAttributes.getDimension(index, this.f819b);
                } else if (index == R.styleable.Variant_region_widthLessThan) {
                    this.c = typedArrayObtainStyledAttributes.getDimension(index, this.c);
                } else if (index == R.styleable.Variant_region_widthMoreThan) {
                    this.f818a = typedArrayObtainStyledAttributes.getDimension(index, this.f818a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public final boolean a(float f, float f2) {
            float f3 = this.f818a;
            if (!Float.isNaN(f3) && f < f3) {
                return false;
            }
            float f4 = this.f819b;
            if (!Float.isNaN(f4) && f2 < f4) {
                return false;
            }
            float f5 = this.c;
            if (!Float.isNaN(f5) && f > f5) {
                return false;
            }
            float f6 = this.d;
            return Float.isNaN(f6) || f2 <= f6;
        }
    }
}
