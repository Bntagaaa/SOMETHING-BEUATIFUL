package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class ConstraintLayoutStates {
    public static final String TAG = "ConstraintLayoutStates";

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f797a;

    /* renamed from: b, reason: collision with root package name */
    public int f798b = -1;
    public int c = -1;
    public final SparseArray d = new SparseArray();
    public final SparseArray e = new SparseArray();
    public ConstraintsChangedListener f = null;

    /* JADX WARN: Removed duplicated region for block: B:32:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ConstraintLayoutStates(android.content.Context r8, androidx.constraintlayout.widget.ConstraintLayout r9, int r10) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException, java.lang.NumberFormatException {
        /*
            r7 = this;
            r7.<init>()
            r0 = -1
            r7.f798b = r0
            r7.c = r0
            android.util.SparseArray r1 = new android.util.SparseArray
            r1.<init>()
            r7.d = r1
            android.util.SparseArray r1 = new android.util.SparseArray
            r1.<init>()
            r7.e = r1
            r1 = 0
            r7.f = r1
            r7.f797a = r9
            android.content.res.Resources r9 = r8.getResources()
            android.content.res.XmlResourceParser r9 = r9.getXml(r10)
            int r10 = r9.getEventType()     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
        L27:
            r2 = 1
            if (r10 == r2) goto Lc7
            if (r10 == 0) goto Lb7
            r3 = 2
            if (r10 == r3) goto L31
            goto Lba
        L31:
            java.lang.String r10 = r9.getName()     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            int r4 = r10.hashCode()     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            r5 = 4
            r6 = 3
            switch(r4) {
                case -1349929691: goto L6d;
                case 80204913: goto L63;
                case 1382829617: goto L59;
                case 1657696882: goto L4f;
                case 1901439077: goto L3f;
                default: goto L3e;
            }     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
        L3e:
            goto L77
        L3f:
            java.lang.String r4 = "Variant"
            boolean r4 = r10.equals(r4)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            if (r4 == 0) goto L77
            r4 = 3
            goto L78
        L49:
            r8 = move-exception
            goto Lc0
        L4c:
            r8 = move-exception
            goto Lc4
        L4f:
            java.lang.String r4 = "layoutDescription"
            boolean r4 = r10.equals(r4)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            if (r4 == 0) goto L77
            r4 = 0
            goto L78
        L59:
            java.lang.String r4 = "StateSet"
            boolean r4 = r10.equals(r4)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            if (r4 == 0) goto L77
            r4 = 1
            goto L78
        L63:
            java.lang.String r4 = "State"
            boolean r4 = r10.equals(r4)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            if (r4 == 0) goto L77
            r4 = 2
            goto L78
        L6d:
            java.lang.String r4 = "ConstraintSet"
            boolean r4 = r10.equals(r4)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            if (r4 == 0) goto L77
            r4 = 4
            goto L78
        L77:
            r4 = -1
        L78:
            if (r4 == 0) goto Lba
            if (r4 == r2) goto Lba
            if (r4 == r3) goto Laa
            if (r4 == r6) goto L9d
            if (r4 == r5) goto L99
            java.lang.String r2 = "ConstraintLayoutStates"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            r3.<init>()     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            java.lang.String r4 = "unknown tag "
            r3.append(r4)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            r3.append(r10)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            java.lang.String r10 = r3.toString()     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            android.util.Log.v(r2, r10)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            goto Lba
        L99:
            r7.a(r8, r9)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            goto Lba
        L9d:
            androidx.constraintlayout.widget.ConstraintLayoutStates$b r10 = new androidx.constraintlayout.widget.ConstraintLayoutStates$b     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            r10.<init>(r8, r9)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            if (r1 == 0) goto Lba
            java.util.ArrayList r2 = r1.f800b     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            r2.add(r10)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            goto Lba
        Laa:
            androidx.constraintlayout.widget.ConstraintLayoutStates$a r1 = new androidx.constraintlayout.widget.ConstraintLayoutStates$a     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            r1.<init>(r8, r9)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            android.util.SparseArray r10 = r7.d     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            int r2 = r1.f799a     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            r10.put(r2, r1)     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            goto Lba
        Lb7:
            r9.getName()     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
        Lba:
            int r10 = r9.next()     // Catch: java.io.IOException -> L49 org.xmlpull.v1.XmlPullParserException -> L4c
            goto L27
        Lc0:
            r8.printStackTrace()
            goto Lc7
        Lc4:
            r8.printStackTrace()
        Lc7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayoutStates.<init>(android.content.Context, androidx.constraintlayout.widget.ConstraintLayout, int):void");
    }

    public boolean needsToChange(int i, float f, float f2) {
        int i2 = this.f798b;
        if (i2 != i) {
            return true;
        }
        SparseArray sparseArray = this.d;
        a aVar = (a) (i == -1 ? sparseArray.valueAt(0) : sparseArray.get(i2));
        int i3 = this.c;
        return (i3 == -1 || !((b) aVar.f800b.get(i3)).a(f, f2)) && this.c != aVar.findMatch(f, f2);
    }

    public void updateConstraints(int i, float f, float f2) {
        int i2;
        a aVar;
        int iFindMatch;
        int i3;
        int i4 = this.f798b;
        ConstraintLayout constraintLayout = this.f797a;
        SparseArray sparseArray = this.d;
        if (i4 == i) {
            if (i == -1) {
                aVar = (a) sparseArray.valueAt(0);
            } else {
                aVar = (a) sparseArray.get(i4);
            }
            int i5 = this.c;
            if ((i5 == -1 || !((b) aVar.f800b.get(i5)).a(f, f2)) && this.c != (iFindMatch = aVar.findMatch(f, f2))) {
                ArrayList arrayList = aVar.f800b;
                ConstraintSet constraintSet = iFindMatch == -1 ? null : ((b) arrayList.get(iFindMatch)).f;
                if (iFindMatch == -1) {
                    i3 = aVar.c;
                } else {
                    i3 = ((b) arrayList.get(iFindMatch)).e;
                }
                if (constraintSet == null) {
                    return;
                }
                this.c = iFindMatch;
                ConstraintsChangedListener constraintsChangedListener = this.f;
                if (constraintsChangedListener != null) {
                    constraintsChangedListener.preLayoutChange(-1, i3);
                }
                constraintSet.applyTo(constraintLayout);
                ConstraintsChangedListener constraintsChangedListener2 = this.f;
                if (constraintsChangedListener2 != null) {
                    constraintsChangedListener2.postLayoutChange(-1, i3);
                    return;
                }
                return;
            }
            return;
        }
        this.f798b = i;
        a aVar2 = (a) sparseArray.get(i);
        int iFindMatch2 = aVar2.findMatch(f, f2);
        ArrayList arrayList2 = aVar2.f800b;
        ConstraintSet constraintSet2 = iFindMatch2 == -1 ? aVar2.d : ((b) arrayList2.get(iFindMatch2)).f;
        if (iFindMatch2 == -1) {
            i2 = aVar2.c;
        } else {
            i2 = ((b) arrayList2.get(iFindMatch2)).e;
        }
        if (constraintSet2 == null) {
            Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i + ", dim =" + f + ", " + f2);
            return;
        }
        this.c = iFindMatch2;
        ConstraintsChangedListener constraintsChangedListener3 = this.f;
        if (constraintsChangedListener3 != null) {
            constraintsChangedListener3.preLayoutChange(i, i2);
        }
        constraintSet2.applyTo(constraintLayout);
        ConstraintsChangedListener constraintsChangedListener4 = this.f;
        if (constraintsChangedListener4 != null) {
            constraintsChangedListener4.postLayoutChange(i, i2);
        }
    }

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        this.f = constraintsChangedListener;
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final int f799a;

        /* renamed from: b, reason: collision with root package name */
        public final ArrayList f800b = new ArrayList();
        public final int c;
        public final ConstraintSet d;

        public a(Context context, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
            this.c = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.State_android_id) {
                    this.f799a = typedArrayObtainStyledAttributes.getResourceId(index, this.f799a);
                } else if (index == R.styleable.State_constraints) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.c);
                    this.c = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    if ("layout".equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.d = constraintSet;
                        constraintSet.clone(context, resourceId);
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public int findMatch(float f, float f2) {
            int i = 0;
            while (true) {
                ArrayList arrayList = this.f800b;
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
        public final float f801a;

        /* renamed from: b, reason: collision with root package name */
        public final float f802b;
        public final float c;
        public final float d;
        public final int e;
        public final ConstraintSet f;

        public b(Context context, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
            this.f801a = Float.NaN;
            this.f802b = Float.NaN;
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
                    if ("layout".equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.f = constraintSet;
                        constraintSet.clone(context, resourceId);
                    }
                } else if (index == R.styleable.Variant_region_heightLessThan) {
                    this.d = typedArrayObtainStyledAttributes.getDimension(index, this.d);
                } else if (index == R.styleable.Variant_region_heightMoreThan) {
                    this.f802b = typedArrayObtainStyledAttributes.getDimension(index, this.f802b);
                } else if (index == R.styleable.Variant_region_widthLessThan) {
                    this.c = typedArrayObtainStyledAttributes.getDimension(index, this.c);
                } else if (index == R.styleable.Variant_region_widthMoreThan) {
                    this.f801a = typedArrayObtainStyledAttributes.getDimension(index, this.f801a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public final boolean a(float f, float f2) {
            float f3 = this.f801a;
            if (!Float.isNaN(f3) && f < f3) {
                return false;
            }
            float f4 = this.f802b;
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

    public final void a(Context context, XmlResourceParser xmlResourceParser) throws NumberFormatException {
        ConstraintSet constraintSet = new ConstraintSet();
        int attributeCount = xmlResourceParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if ("id".equals(xmlResourceParser.getAttributeName(i))) {
                String attributeValue = xmlResourceParser.getAttributeValue(i);
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                constraintSet.load(context, xmlResourceParser);
                this.e.put(identifier, constraintSet);
                return;
            }
        }
    }
}
