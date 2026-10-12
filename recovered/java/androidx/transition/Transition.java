package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import gnu.kawa.functions.GetNamedPart;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

/* loaded from: classes.dex */
public abstract class Transition implements Cloneable {
    public static final int[] F = {2, 1, 3, 4};
    public static final PathMotion G = new a();
    public static final ThreadLocal H = new ThreadLocal();
    public static final int MATCH_ID = 3;
    public static final int MATCH_INSTANCE = 1;
    public static final int MATCH_ITEM_ID = 4;
    public static final int MATCH_NAME = 2;
    public TransitionPropagation C;
    public EpicenterCallback D;
    public ArrayList t;
    public ArrayList u;

    /* renamed from: a, reason: collision with root package name */
    public final String f2249a = getClass().getName();

    /* renamed from: b, reason: collision with root package name */
    public long f2250b = -1;
    public long c = -1;
    public TimeInterpolator d = null;
    public final ArrayList e = new ArrayList();
    public final ArrayList f = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public ArrayList f2251g = null;
    public ArrayList h = null;
    public ArrayList i = null;
    public ArrayList j = null;
    public ArrayList k = null;
    public ArrayList l = null;
    public ArrayList m = null;
    public ArrayList n = null;
    public ArrayList o = null;
    public u p = new u();
    public u q = new u();
    public TransitionSet r = null;
    public int[] s = F;
    public boolean v = false;
    public final ArrayList w = new ArrayList();
    public int x = 0;
    public boolean y = false;
    public boolean z = false;
    public ArrayList A = null;
    public ArrayList B = new ArrayList();
    public PathMotion E = G;

    public static abstract class EpicenterCallback {
        public abstract Rect onGetEpicenter(@NonNull Transition transition);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface MatchOrder {
    }

    public interface TransitionListener {
        void onTransitionCancel(@NonNull Transition transition);

        void onTransitionEnd(@NonNull Transition transition);

        void onTransitionPause(@NonNull Transition transition);

        void onTransitionResume(@NonNull Transition transition);

        void onTransitionStart(@NonNull Transition transition);
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public View f2253a;

        /* renamed from: b, reason: collision with root package name */
        public String f2254b;
        public TransitionValues c;
        public n0 d;
        public Transition e;
    }

    public abstract void captureEndValues(@NonNull TransitionValues transitionValues);

    public abstract void captureStartValues(@NonNull TransitionValues transitionValues);

    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        return null;
    }

    @Nullable
    public String[] getTransitionProperties() {
        return null;
    }

    public static class a extends PathMotion {
        @Override // androidx.transition.PathMotion
        public Path getPath(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    }

    public Transition() {
    }

    @SuppressLint({"RestrictedApi"})
    public Transition(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.c);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long namedInt = TypedArrayUtils.getNamedInt(typedArrayObtainStyledAttributes, xmlResourceParser, "duration", 1, -1);
        if (namedInt >= 0) {
            setDuration(namedInt);
        }
        long namedInt2 = TypedArrayUtils.getNamedInt(typedArrayObtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (namedInt2 > 0) {
            setStartDelay(namedInt2);
        }
        int namedResourceId = TypedArrayUtils.getNamedResourceId(typedArrayObtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (namedResourceId > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, namedResourceId));
        }
        String namedString = TypedArrayUtils.getNamedString(typedArrayObtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (namedString != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(namedString, ",");
            int[] iArr = new int[stringTokenizer.countTokens()];
            int i = 0;
            while (stringTokenizer.hasMoreTokens()) {
                String strTrim = stringTokenizer.nextToken().trim();
                if ("id".equalsIgnoreCase(strTrim)) {
                    iArr[i] = 3;
                } else if ("instance".equalsIgnoreCase(strTrim)) {
                    iArr[i] = 1;
                } else if ("name".equalsIgnoreCase(strTrim)) {
                    iArr[i] = 2;
                } else if ("itemId".equalsIgnoreCase(strTrim)) {
                    iArr[i] = 4;
                } else {
                    if (!strTrim.isEmpty()) {
                        throw new InflateException(_COROUTINE.a.A("Unknown match type in matchOrder: '", strTrim, "'"));
                    }
                    int[] iArr2 = new int[iArr.length - 1];
                    System.arraycopy(iArr, 0, iArr2, 0, i);
                    i--;
                    iArr = iArr2;
                }
                i++;
            }
            setMatchOrder(iArr);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @NonNull
    public Transition setDuration(long j) {
        this.c = j;
        return this;
    }

    public long getDuration() {
        return this.c;
    }

    @NonNull
    public Transition setStartDelay(long j) {
        this.f2250b = j;
        return this;
    }

    public long getStartDelay() {
        return this.f2250b;
    }

    @NonNull
    public Transition setInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        this.d = timeInterpolator;
        return this;
    }

    @Nullable
    public TimeInterpolator getInterpolator() {
        return this.d;
    }

    public void setMatchOrder(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.s = F;
            return;
        }
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr[i];
            if (i2 < 1 || i2 > 4) {
                throw new IllegalArgumentException("matches contains invalid value");
            }
            for (int i3 = 0; i3 < i; i3++) {
                if (iArr[i3] == i2) {
                    throw new IllegalArgumentException("matches contains a duplicate value");
                }
            }
        }
        this.s = (int[]) iArr.clone();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void createAnimators(ViewGroup viewGroup, u uVar, u uVar2, ArrayList<TransitionValues> arrayList, ArrayList<TransitionValues> arrayList2) {
        Animator animatorCreateAnimator;
        int i;
        int i2;
        View view;
        TransitionValues transitionValues;
        Animator animator;
        TransitionValues transitionValues2;
        int i3;
        ArrayMap arrayMapH = h();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        long jMin = Long.MAX_VALUE;
        int i4 = 0;
        while (i4 < size) {
            TransitionValues transitionValues3 = arrayList.get(i4);
            TransitionValues transitionValues4 = arrayList2.get(i4);
            if (transitionValues3 != null && !transitionValues3.f2265a.contains(this)) {
                transitionValues3 = null;
            }
            if (transitionValues4 != null && !transitionValues4.f2265a.contains(this)) {
                transitionValues4 = null;
            }
            if (!(transitionValues3 == null && transitionValues4 == null) && ((transitionValues3 == null || transitionValues4 == null || isTransitionRequired(transitionValues3, transitionValues4)) && (animatorCreateAnimator = createAnimator(viewGroup, transitionValues3, transitionValues4)) != null)) {
                if (transitionValues4 != null) {
                    view = transitionValues4.view;
                    String[] transitionProperties = getTransitionProperties();
                    if (transitionProperties != null && transitionProperties.length > 0) {
                        TransitionValues transitionValues5 = new TransitionValues(view);
                        i = size;
                        i2 = i4;
                        TransitionValues transitionValues6 = (TransitionValues) uVar2.f2308a.get(view);
                        if (transitionValues6 != null) {
                            int i5 = 0;
                            while (i5 < transitionProperties.length) {
                                Map<String, Object> map = transitionValues5.values;
                                int i6 = i5;
                                String str = transitionProperties[i6];
                                map.put(str, transitionValues6.values.get(str));
                                i5 = i6 + 1;
                                transitionProperties = transitionProperties;
                            }
                        }
                        int size2 = arrayMapH.size();
                        int i7 = 0;
                        while (true) {
                            if (i7 >= size2) {
                                transitionValues2 = transitionValues5;
                                animator = animatorCreateAnimator;
                                break;
                            }
                            c cVar = (c) arrayMapH.get((Animator) arrayMapH.keyAt(i7));
                            if (cVar.c != null && cVar.f2253a == view) {
                                i3 = size2;
                                if (cVar.f2254b.equals(getName()) && cVar.c.equals(transitionValues5)) {
                                    transitionValues2 = transitionValues5;
                                    animator = null;
                                    break;
                                }
                            } else {
                                i3 = size2;
                            }
                            i7++;
                            size2 = i3;
                        }
                    } else {
                        i = size;
                        i2 = i4;
                        animator = animatorCreateAnimator;
                        transitionValues2 = null;
                    }
                    animatorCreateAnimator = animator;
                    transitionValues = transitionValues2;
                } else {
                    i = size;
                    i2 = i4;
                    view = transitionValues3.view;
                    transitionValues = null;
                }
                if (animatorCreateAnimator != null) {
                    TransitionPropagation transitionPropagation = this.C;
                    if (transitionPropagation != null) {
                        long startDelay = transitionPropagation.getStartDelay(viewGroup, this, transitionValues3, transitionValues4);
                        sparseIntArray.put(this.B.size(), (int) startDelay);
                        jMin = Math.min(startDelay, jMin);
                    }
                    String name = getName();
                    h0 h0Var = f0.f2280a;
                    n0 n0Var = new n0(viewGroup);
                    c cVar2 = new c();
                    cVar2.f2253a = view;
                    cVar2.f2254b = name;
                    cVar2.c = transitionValues;
                    cVar2.d = n0Var;
                    cVar2.e = this;
                    arrayMapH.put(animatorCreateAnimator, cVar2);
                    this.B.add(animatorCreateAnimator);
                }
            } else {
                i = size;
                i2 = i4;
            }
            i4 = i2 + 1;
            size = i;
        }
        if (sparseIntArray.size() != 0) {
            for (int i8 = 0; i8 < sparseIntArray.size(); i8++) {
                Animator animator2 = (Animator) this.B.get(sparseIntArray.keyAt(i8));
                animator2.setStartDelay(animator2.getStartDelay() + (sparseIntArray.valueAt(i8) - jMin));
            }
        }
    }

    public final boolean i(View view) {
        ArrayList arrayList;
        ArrayList arrayList2;
        int id = view.getId();
        ArrayList arrayList3 = this.i;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList arrayList4 = this.j;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList arrayList5 = this.k;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i = 0; i < size; i++) {
                if (((Class) this.k.get(i)).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.l != null && ViewCompat.getTransitionName(view) != null && this.l.contains(ViewCompat.getTransitionName(view))) {
            return false;
        }
        ArrayList arrayList6 = this.e;
        int size2 = arrayList6.size();
        ArrayList arrayList7 = this.f;
        if ((size2 == 0 && arrayList7.size() == 0 && (((arrayList = this.h) == null || arrayList.isEmpty()) && ((arrayList2 = this.f2251g) == null || arrayList2.isEmpty()))) || arrayList6.contains(Integer.valueOf(id)) || arrayList7.contains(view)) {
            return true;
        }
        ArrayList arrayList8 = this.f2251g;
        if (arrayList8 != null && arrayList8.contains(ViewCompat.getTransitionName(view))) {
            return true;
        }
        if (this.h != null) {
            for (int i2 = 0; i2 < this.h.size(); i2++) {
                if (((Class) this.h.get(i2)).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static ArrayMap h() {
        ThreadLocal threadLocal = H;
        ArrayMap arrayMap = (ArrayMap) threadLocal.get();
        if (arrayMap != null) {
            return arrayMap;
        }
        ArrayMap arrayMap2 = new ArrayMap();
        threadLocal.set(arrayMap2);
        return arrayMap2;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void runAnimators() {
        start();
        ArrayMap arrayMapH = h();
        Iterator it = this.B.iterator();
        while (it.hasNext()) {
            Animator animator = (Animator) it.next();
            if (arrayMapH.containsKey(animator)) {
                start();
                if (animator != null) {
                    animator.addListener(new s(this, arrayMapH));
                    animate(animator);
                }
            }
        }
        this.B.clear();
        end();
    }

    @NonNull
    public Transition addTarget(@NonNull View view) {
        this.f.add(view);
        return this;
    }

    @NonNull
    public Transition addTarget(@IdRes int i) {
        if (i != 0) {
            this.e.add(Integer.valueOf(i));
        }
        return this;
    }

    @NonNull
    public Transition addTarget(@NonNull String str) {
        if (this.f2251g == null) {
            this.f2251g = new ArrayList();
        }
        this.f2251g.add(str);
        return this;
    }

    @NonNull
    public Transition addTarget(@NonNull Class<?> cls) {
        if (this.h == null) {
            this.h = new ArrayList();
        }
        this.h.add(cls);
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull View view) {
        this.f.remove(view);
        return this;
    }

    @NonNull
    public Transition removeTarget(@IdRes int i) {
        if (i != 0) {
            this.e.remove(Integer.valueOf(i));
        }
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull String str) {
        ArrayList arrayList = this.f2251g;
        if (arrayList != null) {
            arrayList.remove(str);
        }
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull Class<?> cls) {
        ArrayList arrayList = this.h;
        if (arrayList != null) {
            arrayList.remove(cls);
        }
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull View view, boolean z) {
        ArrayList arrayListB = this.j;
        if (view != null) {
            if (z) {
                arrayListB = d.a(view, arrayListB);
            } else {
                arrayListB = d.b(view, arrayListB);
            }
        }
        this.j = arrayListB;
        return this;
    }

    @NonNull
    public Transition excludeTarget(@IdRes int i, boolean z) {
        ArrayList arrayListB = this.i;
        if (i > 0) {
            if (z) {
                arrayListB = d.a(Integer.valueOf(i), arrayListB);
            } else {
                arrayListB = d.b(Integer.valueOf(i), arrayListB);
            }
        }
        this.i = arrayListB;
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull String str, boolean z) {
        ArrayList arrayListB = this.l;
        if (str != null) {
            if (z) {
                arrayListB = d.a(str, arrayListB);
            } else {
                arrayListB = d.b(str, arrayListB);
            }
        }
        this.l = arrayListB;
        return this;
    }

    @NonNull
    public Transition excludeChildren(@NonNull View view, boolean z) {
        ArrayList arrayListB = this.n;
        if (view != null) {
            if (z) {
                arrayListB = d.a(view, arrayListB);
            } else {
                arrayListB = d.b(view, arrayListB);
            }
        }
        this.n = arrayListB;
        return this;
    }

    @NonNull
    public Transition excludeChildren(@IdRes int i, boolean z) {
        ArrayList arrayListB = this.m;
        if (i > 0) {
            if (z) {
                arrayListB = d.a(Integer.valueOf(i), arrayListB);
            } else {
                arrayListB = d.b(Integer.valueOf(i), arrayListB);
            }
        }
        this.m = arrayListB;
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull Class<?> cls, boolean z) {
        ArrayList arrayListB = this.k;
        if (cls != null) {
            if (z) {
                arrayListB = d.a(cls, arrayListB);
            } else {
                arrayListB = d.b(cls, arrayListB);
            }
        }
        this.k = arrayListB;
        return this;
    }

    @NonNull
    public Transition excludeChildren(@NonNull Class<?> cls, boolean z) {
        ArrayList arrayListB = this.o;
        if (cls != null) {
            if (z) {
                arrayListB = d.a(cls, arrayListB);
            } else {
                arrayListB = d.b(cls, arrayListB);
            }
        }
        this.o = arrayListB;
        return this;
    }

    @NonNull
    public List<Integer> getTargetIds() {
        return this.e;
    }

    @NonNull
    public List<View> getTargets() {
        return this.f;
    }

    @Nullable
    public List<String> getTargetNames() {
        return this.f2251g;
    }

    @Nullable
    public List<Class<?>> getTargetTypes() {
        return this.h;
    }

    public final void d(ViewGroup viewGroup, boolean z) {
        ArrayList arrayList;
        ArrayList arrayList2;
        e(z);
        ArrayList arrayList3 = this.e;
        int size = arrayList3.size();
        ArrayList arrayList4 = this.f;
        if ((size > 0 || arrayList4.size() > 0) && (((arrayList = this.f2251g) == null || arrayList.isEmpty()) && ((arrayList2 = this.h) == null || arrayList2.isEmpty()))) {
            for (int i = 0; i < arrayList3.size(); i++) {
                View viewFindViewById = viewGroup.findViewById(((Integer) arrayList3.get(i)).intValue());
                if (viewFindViewById != null) {
                    TransitionValues transitionValues = new TransitionValues(viewFindViewById);
                    if (z) {
                        captureStartValues(transitionValues);
                    } else {
                        captureEndValues(transitionValues);
                    }
                    transitionValues.f2265a.add(this);
                    c(transitionValues);
                    if (z) {
                        a(this.p, viewFindViewById, transitionValues);
                    } else {
                        a(this.q, viewFindViewById, transitionValues);
                    }
                }
            }
            for (int i2 = 0; i2 < arrayList4.size(); i2++) {
                View view = (View) arrayList4.get(i2);
                TransitionValues transitionValues2 = new TransitionValues(view);
                if (z) {
                    captureStartValues(transitionValues2);
                } else {
                    captureEndValues(transitionValues2);
                }
                transitionValues2.f2265a.add(this);
                c(transitionValues2);
                if (z) {
                    a(this.p, view, transitionValues2);
                } else {
                    a(this.q, view, transitionValues2);
                }
            }
            return;
        }
        b(viewGroup, z);
    }

    public static void a(u uVar, View view, TransitionValues transitionValues) {
        uVar.f2308a.put(view, transitionValues);
        int id = view.getId();
        if (id >= 0) {
            SparseArray sparseArray = uVar.f2309b;
            if (sparseArray.indexOfKey(id) >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            ArrayMap arrayMap = uVar.d;
            if (arrayMap.containsKey(transitionName)) {
                arrayMap.put(transitionName, null);
            } else {
                arrayMap.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                LongSparseArray longSparseArray = uVar.c;
                if (longSparseArray.indexOfKey(itemIdAtPosition) >= 0) {
                    View view2 = (View) longSparseArray.get(itemIdAtPosition);
                    if (view2 != null) {
                        ViewCompat.setHasTransientState(view2, false);
                        longSparseArray.put(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                ViewCompat.setHasTransientState(view, true);
                longSparseArray.put(itemIdAtPosition, view);
            }
        }
    }

    public final void e(boolean z) {
        if (z) {
            this.p.f2308a.clear();
            this.p.f2309b.clear();
            this.p.c.clear();
        } else {
            this.q.f2308a.clear();
            this.q.f2309b.clear();
            this.q.c.clear();
        }
    }

    public final void b(View view, boolean z) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList arrayList = this.i;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
            ArrayList arrayList2 = this.j;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList arrayList3 = this.k;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i = 0; i < size; i++) {
                        if (((Class) this.k.get(i)).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    TransitionValues transitionValues = new TransitionValues(view);
                    if (z) {
                        captureStartValues(transitionValues);
                    } else {
                        captureEndValues(transitionValues);
                    }
                    transitionValues.f2265a.add(this);
                    c(transitionValues);
                    if (z) {
                        a(this.p, view, transitionValues);
                    } else {
                        a(this.q, view, transitionValues);
                    }
                }
                if (view instanceof ViewGroup) {
                    ArrayList arrayList4 = this.m;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                        ArrayList arrayList5 = this.n;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList arrayList6 = this.o;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i2 = 0; i2 < size2; i2++) {
                                    if (((Class) this.o.get(i2)).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                                b(viewGroup.getChildAt(i3), z);
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public TransitionValues getTransitionValues(@NonNull View view, boolean z) {
        TransitionSet transitionSet = this.r;
        if (transitionSet != null) {
            return transitionSet.getTransitionValues(view, z);
        }
        return (TransitionValues) (z ? this.p : this.q).f2308a.get(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x002c, code lost:
    
        if (r2 < 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002e, code lost:
    
        if (r6 == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0030, code lost:
    
        r5 = r4.u;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0033, code lost:
    
        r5 = r4.t;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003b, code lost:
    
        return (androidx.transition.TransitionValues) r5.get(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003c, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.transition.TransitionValues g(android.view.View r5, boolean r6) {
        /*
            r4 = this;
            androidx.transition.TransitionSet r0 = r4.r
            if (r0 == 0) goto L9
            androidx.transition.TransitionValues r5 = r0.g(r5, r6)
            return r5
        L9:
            if (r6 == 0) goto Le
            java.util.ArrayList r0 = r4.t
            goto L10
        Le:
            java.util.ArrayList r0 = r4.u
        L10:
            if (r0 != 0) goto L13
            goto L3c
        L13:
            int r1 = r0.size()
            r2 = 0
        L18:
            if (r2 >= r1) goto L2b
            java.lang.Object r3 = r0.get(r2)
            androidx.transition.TransitionValues r3 = (androidx.transition.TransitionValues) r3
            if (r3 != 0) goto L23
            goto L3c
        L23:
            android.view.View r3 = r3.view
            if (r3 != r5) goto L28
            goto L2c
        L28:
            int r2 = r2 + 1
            goto L18
        L2b:
            r2 = -1
        L2c:
            if (r2 < 0) goto L3c
            if (r6 == 0) goto L33
            java.util.ArrayList r5 = r4.u
            goto L35
        L33:
            java.util.ArrayList r5 = r4.t
        L35:
            java.lang.Object r5 = r5.get(r2)
            androidx.transition.TransitionValues r5 = (androidx.transition.TransitionValues) r5
            return r5
        L3c:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.g(android.view.View, boolean):androidx.transition.TransitionValues");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void pause(View view) {
        if (this.z) {
            return;
        }
        ArrayMap arrayMapH = h();
        int size = arrayMapH.size();
        h0 h0Var = f0.f2280a;
        n0 n0Var = new n0(view);
        for (int i = size - 1; i >= 0; i--) {
            c cVar = (c) arrayMapH.valueAt(i);
            if (cVar.f2253a != null && n0Var.equals(cVar.d)) {
                ((Animator) arrayMapH.keyAt(i)).pause();
            }
        }
        ArrayList arrayList = this.A;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.A.clone();
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((TransitionListener) arrayList2.get(i2)).onTransitionPause(this);
            }
        }
        this.y = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void resume(View view) {
        if (this.y) {
            if (!this.z) {
                ArrayMap arrayMapH = h();
                int size = arrayMapH.size();
                h0 h0Var = f0.f2280a;
                n0 n0Var = new n0(view);
                for (int i = size - 1; i >= 0; i--) {
                    c cVar = (c) arrayMapH.valueAt(i);
                    if (cVar.f2253a != null && n0Var.equals(cVar.d)) {
                        ((Animator) arrayMapH.keyAt(i)).resume();
                    }
                }
                ArrayList arrayList = this.A;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.A.clone();
                    int size2 = arrayList2.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((TransitionListener) arrayList2.get(i2)).onTransitionResume(this);
                    }
                }
            }
            this.y = false;
        }
    }

    public boolean isTransitionRequired(@Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        boolean z;
        boolean z2;
        if (transitionValues != null && transitionValues2 != null) {
            String[] transitionProperties = getTransitionProperties();
            if (transitionProperties != null) {
                for (String str : transitionProperties) {
                    Object obj = transitionValues.values.get(str);
                    Object obj2 = transitionValues2.values.get(str);
                    if (obj == null && obj2 == null) {
                        z2 = false;
                    } else {
                        z2 = (obj == null || obj2 == null) ? true : !obj.equals(obj2);
                    }
                    if (z2) {
                        return true;
                    }
                }
            } else {
                for (String str2 : transitionValues.values.keySet()) {
                    Object obj3 = transitionValues.values.get(str2);
                    Object obj4 = transitionValues2.values.get(str2);
                    if (obj3 == null && obj4 == null) {
                        z = false;
                    } else {
                        z = (obj3 == null || obj4 == null) ? true : !obj3.equals(obj4);
                    }
                    if (z) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void animate(Animator animator) {
        if (animator == null) {
            end();
            return;
        }
        if (getDuration() >= 0) {
            animator.setDuration(getDuration());
        }
        if (getStartDelay() >= 0) {
            animator.setStartDelay(animator.getStartDelay() + getStartDelay());
        }
        if (getInterpolator() != null) {
            animator.setInterpolator(getInterpolator());
        }
        animator.addListener(new b());
        animator.start();
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Transition.this.end();
            animator.removeListener(this);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void start() {
        if (this.x == 0) {
            ArrayList arrayList = this.A;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.A.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((TransitionListener) arrayList2.get(i)).onTransitionStart(this);
                }
            }
            this.z = false;
        }
        this.x++;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void end() {
        int i = this.x - 1;
        this.x = i;
        if (i == 0) {
            ArrayList arrayList = this.A;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.A.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((TransitionListener) arrayList2.get(i2)).onTransitionEnd(this);
                }
            }
            for (int i3 = 0; i3 < this.p.c.size(); i3++) {
                View view = (View) this.p.c.valueAt(i3);
                if (view != null) {
                    ViewCompat.setHasTransientState(view, false);
                }
            }
            for (int i4 = 0; i4 < this.q.c.size(); i4++) {
                View view2 = (View) this.q.c.valueAt(i4);
                if (view2 != null) {
                    ViewCompat.setHasTransientState(view2, false);
                }
            }
            this.z = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void f(ViewGroup viewGroup) {
        ArrayMap arrayMapH = h();
        int size = arrayMapH.size();
        if (viewGroup == null || size == 0) {
            return;
        }
        h0 h0Var = f0.f2280a;
        n0 n0Var = new n0(viewGroup);
        ArrayMap arrayMap = new ArrayMap(arrayMapH);
        arrayMapH.clear();
        for (int i = size - 1; i >= 0; i--) {
            c cVar = (c) arrayMap.valueAt(i);
            if (cVar.f2253a != null && n0Var.equals(cVar.d)) {
                ((Animator) arrayMap.keyAt(i)).end();
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void cancel() {
        ArrayList arrayList = this.w;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((Animator) arrayList.get(size)).cancel();
        }
        ArrayList arrayList2 = this.A;
        if (arrayList2 == null || arrayList2.size() <= 0) {
            return;
        }
        ArrayList arrayList3 = (ArrayList) this.A.clone();
        int size2 = arrayList3.size();
        for (int i = 0; i < size2; i++) {
            ((TransitionListener) arrayList3.get(i)).onTransitionCancel(this);
        }
    }

    @NonNull
    public Transition addListener(@NonNull TransitionListener transitionListener) {
        if (this.A == null) {
            this.A = new ArrayList();
        }
        this.A.add(transitionListener);
        return this;
    }

    @NonNull
    public Transition removeListener(@NonNull TransitionListener transitionListener) {
        ArrayList arrayList = this.A;
        if (arrayList != null) {
            arrayList.remove(transitionListener);
            if (this.A.size() == 0) {
                this.A = null;
            }
        }
        return this;
    }

    public void setPathMotion(@Nullable PathMotion pathMotion) {
        if (pathMotion == null) {
            this.E = G;
        } else {
            this.E = pathMotion;
        }
    }

    @NonNull
    public PathMotion getPathMotion() {
        return this.E;
    }

    public void setEpicenterCallback(@Nullable EpicenterCallback epicenterCallback) {
        this.D = epicenterCallback;
    }

    @Nullable
    public EpicenterCallback getEpicenterCallback() {
        return this.D;
    }

    @Nullable
    public Rect getEpicenter() {
        EpicenterCallback epicenterCallback = this.D;
        if (epicenterCallback == null) {
            return null;
        }
        return epicenterCallback.onGetEpicenter(this);
    }

    public void setPropagation(@Nullable TransitionPropagation transitionPropagation) {
        this.C = transitionPropagation;
    }

    @Nullable
    public TransitionPropagation getPropagation() {
        return this.C;
    }

    public void c(TransitionValues transitionValues) {
        String[] propagationProperties;
        if (this.C == null || transitionValues.values.isEmpty() || (propagationProperties = this.C.getPropagationProperties()) == null) {
            return;
        }
        for (String str : propagationProperties) {
            if (!transitionValues.values.containsKey(str)) {
                this.C.captureValues(transitionValues);
                return;
            }
        }
    }

    public void k(ViewGroup viewGroup) {
    }

    public void j() {
        this.v = true;
    }

    public String toString() {
        return l("");
    }

    @Override // 
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Transition mo7clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.B = new ArrayList();
            transition.p = new u();
            transition.q = new u();
            transition.t = null;
            transition.u = null;
            return transition;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    @NonNull
    public String getName() {
        return this.f2249a;
    }

    public String l(String str) {
        StringBuilder sbP = _COROUTINE.a.p(str);
        sbP.append(getClass().getSimpleName());
        sbP.append(GetNamedPart.CAST_METHOD_NAME);
        sbP.append(Integer.toHexString(hashCode()));
        sbP.append(": ");
        String string = sbP.toString();
        if (this.c != -1) {
            StringBuilder sbQ = _COROUTINE.a.q(string, "dur(");
            sbQ.append(this.c);
            sbQ.append(") ");
            string = sbQ.toString();
        }
        if (this.f2250b != -1) {
            StringBuilder sbQ2 = _COROUTINE.a.q(string, "dly(");
            sbQ2.append(this.f2250b);
            sbQ2.append(") ");
            string = sbQ2.toString();
        }
        if (this.d != null) {
            StringBuilder sbQ3 = _COROUTINE.a.q(string, "interp(");
            sbQ3.append(this.d);
            sbQ3.append(") ");
            string = sbQ3.toString();
        }
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        ArrayList arrayList2 = this.f;
        if (size <= 0 && arrayList2.size() <= 0) {
            return string;
        }
        String strZ = _COROUTINE.a.z(string, "tgts(");
        if (arrayList.size() > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                if (i > 0) {
                    strZ = _COROUTINE.a.z(strZ, ", ");
                }
                StringBuilder sbP2 = _COROUTINE.a.p(strZ);
                sbP2.append(arrayList.get(i));
                strZ = sbP2.toString();
            }
        }
        if (arrayList2.size() > 0) {
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                if (i2 > 0) {
                    strZ = _COROUTINE.a.z(strZ, ", ");
                }
                StringBuilder sbP3 = _COROUTINE.a.p(strZ);
                sbP3.append(arrayList2.get(i2));
                strZ = sbP3.toString();
            }
        }
        return _COROUTINE.a.z(strZ, ")");
    }

    public static class d {
        private d() {
        }

        public static ArrayList a(Object obj, ArrayList arrayList) {
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            if (!arrayList.contains(obj)) {
                arrayList.add(obj);
            }
            return arrayList;
        }

        public static ArrayList b(Object obj, ArrayList arrayList) {
            if (arrayList != null) {
                arrayList.remove(obj);
                if (arrayList.isEmpty()) {
                    return null;
                }
            }
            return arrayList;
        }
    }
}
