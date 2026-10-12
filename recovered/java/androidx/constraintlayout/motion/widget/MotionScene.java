package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.StateSet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class MotionScene {
    public static final int LAYOUT_HONOR_REQUEST = 1;
    public static final int LAYOUT_IGNORE_REQUEST = 0;
    public static final String TAG = "MotionScene";
    public static final int UNSET = -1;

    /* renamed from: a, reason: collision with root package name */
    public final MotionLayout f659a;

    /* renamed from: b, reason: collision with root package name */
    public final StateSet f660b;
    public Transition c;
    public boolean d;
    public final ArrayList e;
    public final Transition f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f661g;
    public final SparseArray h;
    public final HashMap i;
    public final SparseIntArray j;
    public int k;
    public int l;
    public MotionEvent m;
    public boolean n;
    public MotionLayout.MotionTracker o;
    public boolean p;
    public float q;
    public float r;

    public float getPathPercent(View view, int i) {
        return 0.0f;
    }

    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(int r9, int r10) {
        /*
            r8 = this;
            androidx.constraintlayout.widget.StateSet r0 = r8.f660b
            r1 = -1
            if (r0 == 0) goto L18
            int r0 = r0.stateGetConstraintID(r9, r1, r1)
            if (r0 == r1) goto Lc
            goto Ld
        Lc:
            r0 = r9
        Ld:
            androidx.constraintlayout.widget.StateSet r2 = r8.f660b
            int r2 = r2.stateGetConstraintID(r10, r1, r1)
            if (r2 == r1) goto L16
            goto L1a
        L16:
            r2 = r10
            goto L1a
        L18:
            r0 = r9
            goto L16
        L1a:
            java.util.ArrayList r3 = r8.e
            java.util.Iterator r4 = r3.iterator()
        L20:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L46
            java.lang.Object r5 = r4.next()
            androidx.constraintlayout.motion.widget.MotionScene$Transition r5 = (androidx.constraintlayout.motion.widget.MotionScene.Transition) r5
            int r6 = r5.c
            if (r6 != r2) goto L34
            int r7 = r5.d
            if (r7 == r0) goto L3a
        L34:
            if (r6 != r10) goto L20
            int r6 = r5.d
            if (r6 != r9) goto L20
        L3a:
            r8.c = r5
            androidx.constraintlayout.motion.widget.g r9 = r5.l
            if (r9 == 0) goto L45
            boolean r10 = r8.p
            r9.setRTL(r10)
        L45:
            return
        L46:
            androidx.constraintlayout.motion.widget.MotionScene$Transition r9 = r8.f
            java.util.ArrayList r4 = r8.f661g
            java.util.Iterator r4 = r4.iterator()
        L4e:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L60
            java.lang.Object r5 = r4.next()
            androidx.constraintlayout.motion.widget.MotionScene$Transition r5 = (androidx.constraintlayout.motion.widget.MotionScene.Transition) r5
            int r6 = r5.c
            if (r6 != r10) goto L4e
            r9 = r5
            goto L4e
        L60:
            androidx.constraintlayout.motion.widget.MotionScene$Transition r10 = new androidx.constraintlayout.motion.widget.MotionScene$Transition
            r10.<init>(r8, r9)
            r10.d = r0
            r10.c = r2
            if (r0 == r1) goto L6e
            r3.add(r10)
        L6e:
            r8.c = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionScene.l(int, int):void");
    }

    public void addTransition(Transition transition) {
        int iD = d(transition);
        ArrayList arrayList = this.e;
        if (iD == -1) {
            arrayList.add(transition);
        } else {
            arrayList.set(iD, transition);
        }
    }

    public void removeTransition(Transition transition) {
        int iD = d(transition);
        if (iD != -1) {
            this.e.remove(iD);
        }
    }

    public boolean validateLayout(MotionLayout motionLayout) {
        return motionLayout == this.f659a && motionLayout.o == this;
    }

    public void setTransition(Transition transition) {
        g gVar;
        this.c = transition;
        if (transition == null || (gVar = transition.l) == null) {
            return;
        }
        gVar.setRTL(this.p);
    }

    public List<Transition> getTransitionsWithState(int i) {
        int iStateGetConstraintID;
        StateSet stateSet = this.f660b;
        if (stateSet != null && (iStateGetConstraintID = stateSet.stateGetConstraintID(i, -1, -1)) != -1) {
            i = iStateGetConstraintID;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            Transition transition = (Transition) it.next();
            if (transition.d == i || transition.c == i) {
                arrayList.add(transition);
            }
        }
        return arrayList;
    }

    public void addOnClickListeners(MotionLayout motionLayout, int i) {
        ArrayList arrayList = this.e;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Transition transition = (Transition) it.next();
            if (transition.m.size() > 0) {
                Iterator it2 = transition.m.iterator();
                while (it2.hasNext()) {
                    ((Transition.a) it2.next()).removeOnClickListeners(motionLayout);
                }
            }
        }
        ArrayList arrayList2 = this.f661g;
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            Transition transition2 = (Transition) it3.next();
            if (transition2.m.size() > 0) {
                Iterator it4 = transition2.m.iterator();
                while (it4.hasNext()) {
                    ((Transition.a) it4.next()).removeOnClickListeners(motionLayout);
                }
            }
        }
        Iterator it5 = arrayList.iterator();
        while (it5.hasNext()) {
            Transition transition3 = (Transition) it5.next();
            if (transition3.m.size() > 0) {
                Iterator it6 = transition3.m.iterator();
                while (it6.hasNext()) {
                    ((Transition.a) it6.next()).addOnClickListeners(motionLayout, i, transition3);
                }
            }
        }
        Iterator it7 = arrayList2.iterator();
        while (it7.hasNext()) {
            Transition transition4 = (Transition) it7.next();
            if (transition4.m.size() > 0) {
                Iterator it8 = transition4.m.iterator();
                while (it8.hasNext()) {
                    ((Transition.a) it8.next()).addOnClickListeners(motionLayout, i, transition4);
                }
            }
        }
    }

    public Transition bestTransitionFor(int i, float f, float f2, MotionEvent motionEvent) {
        g gVar;
        if (i == -1) {
            return this.c;
        }
        List<Transition> transitionsWithState = getTransitionsWithState(i);
        RectF rectF = new RectF();
        float f3 = 0.0f;
        Transition transition = null;
        for (Transition transition2 : transitionsWithState) {
            if (!transition2.o && (gVar = transition2.l) != null) {
                gVar.setRTL(this.p);
                g gVar2 = transition2.l;
                MotionLayout motionLayout = this.f659a;
                RectF rectFA = gVar2.a(motionLayout, rectF);
                if (rectFA == null || motionEvent == null || rectFA.contains(motionEvent.getX(), motionEvent.getY())) {
                    RectF rectFA2 = transition2.l.a(motionLayout, rectF);
                    if (rectFA2 == null || motionEvent == null || rectFA2.contains(motionEvent.getX(), motionEvent.getY())) {
                        g gVar3 = transition2.l;
                        float f4 = ((gVar3.j * f2) + (gVar3.i * f)) * (transition2.c == i ? -1.0f : 1.1f);
                        if (f4 > f3) {
                            transition = transition2;
                            f3 = f4;
                        }
                    }
                }
            }
        }
        return transition;
    }

    public ArrayList<Transition> getDefinedTransitions() {
        return this.e;
    }

    public Transition getTransitionById(int i) {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            Transition transition = (Transition) it.next();
            if (transition.f662a == i) {
                return transition;
            }
        }
        return null;
    }

    public int[] getConstraintSetIds() {
        SparseArray sparseArray = this.h;
        int size = sparseArray.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = sparseArray.keyAt(i);
        }
        return iArr;
    }

    public final boolean a(MotionLayout motionLayout, int i) {
        if (this.o != null || this.d) {
            return false;
        }
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            Transition transition = (Transition) it.next();
            int i2 = transition.n;
            if (i2 != 0) {
                int i3 = transition.d;
                MotionLayout.h hVar = MotionLayout.h.d;
                MotionLayout.h hVar2 = MotionLayout.h.c;
                MotionLayout.h hVar3 = MotionLayout.h.f658b;
                if (i == i3 && (i2 == 4 || i2 == 2)) {
                    motionLayout.n(hVar);
                    motionLayout.setTransition(transition);
                    if (transition.n == 4) {
                        motionLayout.transitionToEnd();
                        motionLayout.n(hVar3);
                        motionLayout.n(hVar2);
                    } else {
                        motionLayout.setProgress(1.0f);
                        motionLayout.g(true);
                        motionLayout.n(hVar3);
                        motionLayout.n(hVar2);
                        motionLayout.n(hVar);
                    }
                    return true;
                }
                if (i == transition.c && (i2 == 3 || i2 == 1)) {
                    motionLayout.n(hVar);
                    motionLayout.setTransition(transition);
                    if (transition.n == 3) {
                        motionLayout.transitionToStart();
                        motionLayout.n(hVar3);
                        motionLayout.n(hVar2);
                    } else {
                        motionLayout.setProgress(0.0f);
                        motionLayout.g(true);
                        motionLayout.n(hVar3);
                        motionLayout.n(hVar2);
                        motionLayout.n(hVar);
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public void setRtl(boolean z) {
        g gVar;
        this.p = z;
        Transition transition = this.c;
        if (transition == null || (gVar = transition.l) == null) {
            return;
        }
        gVar.setRTL(z);
    }

    public static class Transition {
        public static final int AUTO_ANIMATE_TO_END = 4;
        public static final int AUTO_ANIMATE_TO_START = 3;
        public static final int AUTO_JUMP_TO_END = 2;
        public static final int AUTO_JUMP_TO_START = 1;
        public static final int AUTO_NONE = 0;

        /* renamed from: a, reason: collision with root package name */
        public final int f662a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f663b;
        public int c;
        public int d;
        public final int e;
        public final String f;

        /* renamed from: g, reason: collision with root package name */
        public final int f664g;
        public int h;
        public float i;
        public final MotionScene j;
        public final ArrayList k;
        public g l;
        public final ArrayList m;
        public final int n;
        public boolean o;
        public int p;
        public final int q;
        public final int r;

        public static class a implements View.OnClickListener {

            /* renamed from: a, reason: collision with root package name */
            public final Transition f665a;

            /* renamed from: b, reason: collision with root package name */
            public final int f666b;
            public final int c;

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Transition transition = this.f665a;
                MotionLayout motionLayout = transition.j.f659a;
                if (motionLayout.isInteractionEnabled()) {
                    if (transition.d == -1) {
                        int currentState = motionLayout.getCurrentState();
                        if (currentState == -1) {
                            motionLayout.transitionToState(transition.c);
                            return;
                        }
                        Transition transition2 = new Transition(transition.j, transition);
                        transition2.d = currentState;
                        transition2.c = transition.c;
                        motionLayout.setTransition(transition2);
                        motionLayout.transitionToEnd();
                        return;
                    }
                    Transition transition3 = transition.j.c;
                    int i = this.c;
                    boolean z = false;
                    boolean z2 = true;
                    boolean z3 = ((i & 1) == 0 && (i & 256) == 0) ? false : true;
                    if ((i & 16) == 0 && (i & 4096) == 0) {
                        z2 = false;
                    }
                    if (z3 && z2) {
                        if (transition3 != transition) {
                            motionLayout.setTransition(transition);
                        }
                        if (motionLayout.getCurrentState() != motionLayout.getEndState() && motionLayout.getProgress() <= 0.5f) {
                            z = z3;
                            z2 = false;
                        }
                    } else {
                        z = z3;
                    }
                    if (transition != transition3) {
                        int i2 = transition.c;
                        int i3 = transition.d;
                        if (i3 != -1) {
                            int i4 = motionLayout.s;
                            if (i4 != i3 && i4 != i2) {
                                return;
                            }
                        } else if (motionLayout.s == i2) {
                            return;
                        }
                    }
                    if (z && (i & 1) != 0) {
                        motionLayout.setTransition(transition);
                        motionLayout.transitionToEnd();
                        return;
                    }
                    if (z2 && (i & 16) != 0) {
                        motionLayout.setTransition(transition);
                        motionLayout.transitionToStart();
                    } else if (z && (i & 256) != 0) {
                        motionLayout.setTransition(transition);
                        motionLayout.setProgress(1.0f);
                    } else {
                        if (!z2 || (i & 4096) == 0) {
                            return;
                        }
                        motionLayout.setTransition(transition);
                        motionLayout.setProgress(0.0f);
                    }
                }
            }

            public a(Context context, Transition transition, XmlPullParser xmlPullParser) {
                this.f666b = -1;
                this.c = 17;
                this.f665a = transition;
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.OnClick);
                int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
                for (int i = 0; i < indexCount; i++) {
                    int index = typedArrayObtainStyledAttributes.getIndex(i);
                    if (index == R.styleable.OnClick_targetId) {
                        this.f666b = typedArrayObtainStyledAttributes.getResourceId(index, this.f666b);
                    } else if (index == R.styleable.OnClick_clickAction) {
                        this.c = typedArrayObtainStyledAttributes.getInt(index, this.c);
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r7v4, types: [android.view.View] */
            public void addOnClickListeners(MotionLayout motionLayout, int i, Transition transition) {
                int i2 = this.f666b;
                MotionLayout motionLayoutFindViewById = motionLayout;
                if (i2 != -1) {
                    motionLayoutFindViewById = motionLayout.findViewById(i2);
                }
                if (motionLayoutFindViewById != null) {
                    int i3 = transition.d;
                    int i4 = transition.c;
                    if (i3 == -1) {
                        motionLayoutFindViewById.setOnClickListener(this);
                        return;
                    }
                    int i5 = this.c;
                    boolean z = false;
                    boolean z2 = ((i5 & 1) != 0 && i == i3) | ((i5 & 1) != 0 && i == i3) | ((i5 & 256) != 0 && i == i3) | ((i5 & 16) != 0 && i == i4);
                    if ((i5 & 4096) != 0 && i == i4) {
                        z = true;
                    }
                    if (z2 || z) {
                        motionLayoutFindViewById.setOnClickListener(this);
                        return;
                    }
                    return;
                }
                Log.e(MotionScene.TAG, "OnClick could not find id " + i2);
            }

            public void removeOnClickListeners(MotionLayout motionLayout) {
                int i = this.f666b;
                if (i == -1) {
                    return;
                }
                View viewFindViewById = motionLayout.findViewById(i);
                if (viewFindViewById == null) {
                    Log.e(MotionScene.TAG, " (*)  could not find id " + i);
                    return;
                }
                viewFindViewById.setOnClickListener(null);
            }
        }

        public int getLayoutDuringTransition() {
            return this.q;
        }

        public void addOnClick(Context context, XmlPullParser xmlPullParser) {
            this.m.add(new a(context, this, xmlPullParser));
        }

        public int getId() {
            return this.f662a;
        }

        public int getEndConstraintSetId() {
            return this.c;
        }

        public int getStartConstraintSetId() {
            return this.d;
        }

        public void setDuration(int i) {
            this.h = i;
        }

        public int getDuration() {
            return this.h;
        }

        public float getStagger() {
            return this.i;
        }

        public List<KeyFrames> getKeyFrameList() {
            return this.k;
        }

        public List<a> getOnClickList() {
            return this.m;
        }

        public g getTouchResponse() {
            return this.l;
        }

        public void setStagger(float f) {
            this.i = f;
        }

        public void setPathMotionArc(int i) {
            this.p = i;
        }

        public int getPathMotionArc() {
            return this.p;
        }

        public boolean isEnabled() {
            return !this.o;
        }

        public void setEnable(boolean z) {
            this.o = !z;
        }

        public String debugString(Context context) {
            String resourceEntryName = this.d == -1 ? "null" : context.getResources().getResourceEntryName(this.d);
            if (this.c == -1) {
                return _COROUTINE.a.z(resourceEntryName, " -> null");
            }
            StringBuilder sbQ = _COROUTINE.a.q(resourceEntryName, " -> ");
            sbQ.append(context.getResources().getResourceEntryName(this.c));
            return sbQ.toString();
        }

        public boolean isTransitionFlag(int i) {
            return (i & this.r) != 0;
        }

        public Transition(MotionScene motionScene, Transition transition) {
            this.f662a = -1;
            this.f663b = false;
            this.c = -1;
            this.d = -1;
            this.e = 0;
            this.f = null;
            this.f664g = -1;
            this.h = 400;
            this.i = 0.0f;
            this.k = new ArrayList();
            this.l = null;
            this.m = new ArrayList();
            this.n = 0;
            this.o = false;
            this.p = -1;
            this.q = 0;
            this.r = 0;
            this.j = motionScene;
            if (transition != null) {
                this.p = transition.p;
                this.e = transition.e;
                this.f = transition.f;
                this.f664g = transition.f664g;
                this.h = transition.h;
                this.k = transition.k;
                this.i = transition.i;
                this.q = transition.q;
            }
        }

        public Transition(int i, MotionScene motionScene, int i2, int i3) {
            this.f662a = -1;
            this.f663b = false;
            this.c = -1;
            this.d = -1;
            this.e = 0;
            this.f = null;
            this.f664g = -1;
            this.h = 400;
            this.i = 0.0f;
            this.k = new ArrayList();
            this.l = null;
            this.m = new ArrayList();
            this.n = 0;
            this.o = false;
            this.p = -1;
            this.q = 0;
            this.r = 0;
            this.f662a = i;
            this.j = motionScene;
            this.d = i2;
            this.c = i3;
            this.h = motionScene.k;
            this.q = motionScene.l;
        }

        public Transition(MotionScene motionScene, Context context, XmlResourceParser xmlResourceParser) throws XmlPullParserException, Resources.NotFoundException, IOException {
            this.f662a = -1;
            this.f663b = false;
            this.c = -1;
            this.d = -1;
            this.e = 0;
            this.f = null;
            this.f664g = -1;
            this.h = 400;
            this.i = 0.0f;
            this.k = new ArrayList();
            this.l = null;
            this.m = new ArrayList();
            this.n = 0;
            this.o = false;
            this.p = -1;
            this.q = 0;
            this.r = 0;
            this.h = motionScene.k;
            this.q = motionScene.l;
            this.j = motionScene;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.Transition);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                int i2 = R.styleable.Transition_constraintSetEnd;
                SparseArray sparseArray = motionScene.h;
                if (index == i2) {
                    this.c = typedArrayObtainStyledAttributes.getResourceId(index, this.c);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.c))) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        constraintSet.load(context, this.c);
                        sparseArray.append(this.c, constraintSet);
                    }
                } else if (index == R.styleable.Transition_constraintSetStart) {
                    this.d = typedArrayObtainStyledAttributes.getResourceId(index, this.d);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.d))) {
                        ConstraintSet constraintSet2 = new ConstraintSet();
                        constraintSet2.load(context, this.d);
                        sparseArray.append(this.d, constraintSet2);
                    }
                } else if (index == R.styleable.Transition_motionInterpolator) {
                    int i3 = typedArrayObtainStyledAttributes.peekValue(index).type;
                    if (i3 == 1) {
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                        this.f664g = resourceId;
                        if (resourceId != -1) {
                            this.e = -2;
                        }
                    } else if (i3 == 3) {
                        String string = typedArrayObtainStyledAttributes.getString(index);
                        this.f = string;
                        if (string.indexOf("/") > 0) {
                            this.f664g = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            this.e = -2;
                        } else {
                            this.e = -1;
                        }
                    } else {
                        this.e = typedArrayObtainStyledAttributes.getInteger(index, this.e);
                    }
                } else if (index == R.styleable.Transition_duration) {
                    this.h = typedArrayObtainStyledAttributes.getInt(index, this.h);
                } else if (index == R.styleable.Transition_staggered) {
                    this.i = typedArrayObtainStyledAttributes.getFloat(index, this.i);
                } else if (index == R.styleable.Transition_autoTransition) {
                    this.n = typedArrayObtainStyledAttributes.getInteger(index, this.n);
                } else if (index == R.styleable.Transition_android_id) {
                    this.f662a = typedArrayObtainStyledAttributes.getResourceId(index, this.f662a);
                } else if (index == R.styleable.Transition_transitionDisable) {
                    this.o = typedArrayObtainStyledAttributes.getBoolean(index, this.o);
                } else if (index == R.styleable.Transition_pathMotionArc) {
                    this.p = typedArrayObtainStyledAttributes.getInteger(index, -1);
                } else if (index == R.styleable.Transition_layoutDuringTransition) {
                    this.q = typedArrayObtainStyledAttributes.getInteger(index, 0);
                } else if (index == R.styleable.Transition_transitionFlags) {
                    this.r = typedArrayObtainStyledAttributes.getInteger(index, 0);
                }
            }
            if (this.d == -1) {
                this.f663b = true;
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final int d(Transition transition) {
        int i = transition.f662a;
        if (i == -1) {
            throw new IllegalArgumentException("The transition must have an id");
        }
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.e;
            if (i2 >= arrayList.size()) {
                return -1;
            }
            if (((Transition) arrayList.get(i2)).f662a == i) {
                return i2;
            }
            i2++;
        }
    }

    public MotionScene(MotionLayout motionLayout) {
        this.f660b = null;
        this.c = null;
        this.d = false;
        this.e = new ArrayList();
        this.f = null;
        this.f661g = new ArrayList();
        this.h = new SparseArray();
        this.i = new HashMap();
        this.j = new SparseIntArray();
        this.k = 400;
        this.l = 0;
        this.n = false;
        this.f659a = motionLayout;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MotionScene(android.content.Context r10, androidx.constraintlayout.motion.widget.MotionLayout r11, int r12) throws org.xmlpull.v1.XmlPullParserException, android.content.res.Resources.NotFoundException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionScene.<init>(android.content.Context, androidx.constraintlayout.motion.widget.MotionLayout, int):void");
    }

    public final void i(Context context, XmlResourceParser xmlResourceParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.MotionScene);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == R.styleable.MotionScene_defaultDuration) {
                this.k = typedArrayObtainStyledAttributes.getInt(index, this.k);
            } else if (index == R.styleable.MotionScene_layoutDuringTransition) {
                this.l = typedArrayObtainStyledAttributes.getInteger(index, 0);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final int c(Context context, String str) {
        int identifier;
        if (str.contains("/")) {
            identifier = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), "id", context.getPackageName());
        } else {
            identifier = -1;
        }
        if (identifier == -1) {
            if (str.length() > 1) {
                return Integer.parseInt(str.substring(1));
            }
            Log.e(TAG, "error in parsing id");
        }
        return identifier;
    }

    public final void h(Context context, XmlResourceParser xmlResourceParser) {
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.setForceId(false);
        int attributeCount = xmlResourceParser.getAttributeCount();
        int iC = -1;
        int iC2 = -1;
        for (int i = 0; i < attributeCount; i++) {
            String attributeName = xmlResourceParser.getAttributeName(i);
            String attributeValue = xmlResourceParser.getAttributeValue(i);
            attributeName.getClass();
            if (attributeName.equals("deriveConstraintsFrom")) {
                iC2 = c(context, attributeValue);
            } else if (attributeName.equals("id")) {
                iC = c(context, attributeValue);
                this.i.put(stripID(attributeValue), Integer.valueOf(iC));
            }
        }
        if (iC != -1) {
            if (this.f659a.H != 0) {
                constraintSet.setValidateOnParse(true);
            }
            constraintSet.load(context, xmlResourceParser);
            if (iC2 != -1) {
                this.j.put(iC, iC2);
            }
            this.h.put(iC, constraintSet);
        }
    }

    public ConstraintSet getConstraintSet(Context context, String str) {
        SparseArray sparseArray = this.h;
        for (int i = 0; i < sparseArray.size(); i++) {
            int iKeyAt = sparseArray.keyAt(i);
            if (str.equals(context.getResources().getResourceName(iKeyAt))) {
                return (ConstraintSet) sparseArray.get(iKeyAt);
            }
        }
        return null;
    }

    public final ConstraintSet b(int i) {
        int iStateGetConstraintID;
        SparseArray sparseArray = this.h;
        StateSet stateSet = this.f660b;
        if (stateSet != null && (iStateGetConstraintID = stateSet.stateGetConstraintID(i, -1, -1)) != -1) {
            i = iStateGetConstraintID;
        }
        if (sparseArray.get(i) == null) {
            Log.e(TAG, "Warning could not find ConstraintSet id/" + Debug.getName(this.f659a.getContext(), i) + " In MotionScene");
            return (ConstraintSet) sparseArray.get(sparseArray.keyAt(0));
        }
        return (ConstraintSet) sparseArray.get(i);
    }

    public void setConstraintSet(int i, ConstraintSet constraintSet) {
        this.h.put(i, constraintSet);
    }

    public void getKeyFrames(MotionController motionController) {
        Transition transition = this.c;
        if (transition == null) {
            Transition transition2 = this.f;
            if (transition2 != null) {
                Iterator it = transition2.k.iterator();
                while (it.hasNext()) {
                    ((KeyFrames) it.next()).addFrames(motionController);
                }
                return;
            }
            return;
        }
        Iterator it2 = transition.k.iterator();
        while (it2.hasNext()) {
            ((KeyFrames) it2.next()).addFrames(motionController);
        }
    }

    public final Key e(int i, int i2, int i3) {
        Transition transition = this.c;
        if (transition == null) {
            return null;
        }
        Iterator it = transition.k.iterator();
        while (it.hasNext()) {
            KeyFrames keyFrames = (KeyFrames) it.next();
            for (Integer num : keyFrames.getKeys()) {
                if (i2 == num.intValue()) {
                    Iterator<Key> it2 = keyFrames.getKeyFramesForView(num.intValue()).iterator();
                    while (it2.hasNext()) {
                        Key next = it2.next();
                        if (next.f618a == i3 && next.mType == i) {
                            return next;
                        }
                    }
                }
            }
        }
        return null;
    }

    public void setKeyframe(View view, int i, String str, Object obj) {
        Transition transition = this.c;
        if (transition == null) {
            return;
        }
        Iterator it = transition.k.iterator();
        while (it.hasNext()) {
            Iterator<Key> it2 = ((KeyFrames) it.next()).getKeyFramesForView(view.getId()).iterator();
            while (it2.hasNext()) {
                if (it2.next().f618a == i) {
                    if (obj != null) {
                    }
                    str.equalsIgnoreCase("app:PerpendicularPath_percent");
                }
            }
        }
    }

    public final boolean m() {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            if (((Transition) it.next()).l != null) {
                return true;
            }
        }
        Transition transition = this.c;
        return (transition == null || transition.l == null) ? false : true;
    }

    public final int g() {
        Transition transition = this.c;
        if (transition == null) {
            return -1;
        }
        return transition.d;
    }

    public Interpolator getInterpolator() {
        Transition transition = this.c;
        int i = transition.e;
        if (i == -2) {
            return AnimationUtils.loadInterpolator(this.f659a.getContext(), this.c.f664g);
        }
        if (i == -1) {
            return new a(Easing.getInterpolator(transition.f));
        }
        if (i == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i == 1) {
            return new AccelerateInterpolator();
        }
        if (i == 2) {
            return new DecelerateInterpolator();
        }
        if (i == 4) {
            return new AnticipateInterpolator();
        }
        if (i != 5) {
            return null;
        }
        return new BounceInterpolator();
    }

    public class a implements Interpolator {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Easing f667a;

        public a(Easing easing) {
            this.f667a = easing;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return (float) this.f667a.get(f);
        }
    }

    public int getDuration() {
        Transition transition = this.c;
        if (transition != null) {
            return transition.h;
        }
        return this.k;
    }

    public void setDuration(int i) {
        Transition transition = this.c;
        if (transition != null) {
            transition.setDuration(i);
        } else {
            this.k = i;
        }
    }

    public int gatPathMotionArc() {
        Transition transition = this.c;
        if (transition != null) {
            return transition.p;
        }
        return -1;
    }

    public float getStaggered() {
        Transition transition = this.c;
        if (transition != null) {
            return transition.i;
        }
        return 0.0f;
    }

    public final float f() {
        g gVar;
        Transition transition = this.c;
        if (transition == null || (gVar = transition.l) == null) {
            return 0.0f;
        }
        return gVar.q;
    }

    public final void k(MotionLayout motionLayout) {
        int i = 0;
        loop0: while (true) {
            SparseArray sparseArray = this.h;
            if (i < sparseArray.size()) {
                int iKeyAt = sparseArray.keyAt(i);
                SparseIntArray sparseIntArray = this.j;
                int i2 = sparseIntArray.get(iKeyAt);
                int size = sparseIntArray.size();
                while (i2 > 0) {
                    if (i2 == iKeyAt) {
                        break loop0;
                    }
                    int i3 = size - 1;
                    if (size < 0) {
                        break loop0;
                    }
                    i2 = sparseIntArray.get(i2);
                    size = i3;
                }
                j(iKeyAt);
                i++;
            } else {
                for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                    ((ConstraintSet) sparseArray.valueAt(i4)).readFallback(motionLayout);
                }
                return;
            }
        }
        Log.e(TAG, "Cannot be derived from yourself");
    }

    public final void j(int i) {
        SparseIntArray sparseIntArray = this.j;
        int i2 = sparseIntArray.get(i);
        if (i2 > 0) {
            j(sparseIntArray.get(i));
            SparseArray sparseArray = this.h;
            ConstraintSet constraintSet = (ConstraintSet) sparseArray.get(i);
            ConstraintSet constraintSet2 = (ConstraintSet) sparseArray.get(i2);
            if (constraintSet2 == null) {
                Log.e(TAG, "ERROR! invalid deriveConstraintsFrom: @id/" + Debug.getName(this.f659a.getContext(), i2));
            } else {
                constraintSet.readFallback(constraintSet2);
                sparseIntArray.put(i, -1);
            }
        }
    }

    public static String stripID(String str) {
        if (str == null) {
            return "";
        }
        int iIndexOf = str.indexOf(47);
        return iIndexOf < 0 ? str : str.substring(iIndexOf + 1);
    }

    public int lookUpConstraintId(String str) {
        return ((Integer) this.i.get(str)).intValue();
    }

    public String lookUpConstraintName(int i) {
        for (Map.Entry entry : this.i.entrySet()) {
            if (((Integer) entry.getValue()).intValue() == i) {
                return (String) entry.getKey();
            }
        }
        return null;
    }

    public void disableAutoTransition(boolean z) {
        this.d = z;
    }
}
