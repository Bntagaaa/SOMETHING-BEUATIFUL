package androidx.fragment.app;

import android.content.Context;
import android.graphics.Rect;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import androidx.core.app.SharedElementCallback;
import androidx.core.os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.transition.FragmentTransitionSupport;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes.dex */
class s0 {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f1738a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b, reason: collision with root package name */
    public static final FragmentTransitionImpl f1739b = new t0();
    public static final FragmentTransitionImpl c;

    public interface a {
        void onComplete(@NonNull Fragment fragment, @NonNull CancellationSignal cancellationSignal);

        void onStart(@NonNull Fragment fragment, @NonNull CancellationSignal cancellationSignal);
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public Fragment f1740a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f1741b;
        public androidx.fragment.app.a c;
        public Fragment d;
        public boolean e;
        public androidx.fragment.app.a f;
    }

    static {
        FragmentTransitionImpl fragmentTransitionImpl;
        try {
            fragmentTransitionImpl = (FragmentTransitionImpl) FragmentTransitionSupport.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            fragmentTransitionImpl = null;
        }
        c = fragmentTransitionImpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void l(Context context, FragmentContainer fragmentContainer, ArrayList arrayList, ArrayList arrayList2, int i, int i2, boolean z, FragmentManager.b bVar) {
        SparseArray sparseArray;
        int i3;
        int i4;
        ViewGroup viewGroup;
        FragmentManager.b bVar2;
        int i5;
        Object enterTransition;
        Object objCloneTransition;
        Object exitTransition;
        Object objCloneTransition2;
        b bVar3;
        Fragment fragment;
        Object obj;
        ArrayList<View> arrayList3;
        FragmentManager.b bVar4;
        Object obj2;
        boolean allowEnterTransitionOverlap;
        ArrayList<View> arrayList4;
        Object obj3;
        Object objMergeTransitionsInSequence;
        Object sharedElementEnterTransition;
        Object objWrapTransitionInSet;
        Object obj4;
        Rect rect;
        Object enterTransition2;
        Object objCloneTransition3;
        Object exitTransition2;
        Object objCloneTransition4;
        boolean z2;
        ArrayMap arrayMap;
        FragmentTransitionImpl fragmentTransitionImpl;
        Object obj5;
        Object obj6;
        boolean allowEnterTransitionOverlap2;
        Object objMergeTransitionsInSequence2;
        Object sharedElementEnterTransition2;
        Object objWrapTransitionInSet2;
        Object obj7;
        Fragment fragment2;
        View view;
        Rect rect2;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7 = arrayList;
        ArrayList arrayList8 = arrayList2;
        int i6 = i2;
        boolean z3 = z;
        SparseArray sparseArray2 = new SparseArray();
        for (int i7 = i; i7 < i6; i7++) {
            androidx.fragment.app.a aVar = (androidx.fragment.app.a) arrayList7.get(i7);
            if (((Boolean) arrayList8.get(i7)).booleanValue()) {
                calculatePopFragments(aVar, sparseArray2, z3);
            } else {
                calculateFragments(aVar, sparseArray2, z3);
            }
        }
        if (sparseArray2.size() != 0) {
            View view2 = new View(context);
            int i8 = 0;
            for (int size = sparseArray2.size(); i8 < size; size = i3) {
                int iKeyAt = sparseArray2.keyAt(i8);
                ArrayMap arrayMap2 = new ArrayMap();
                int i9 = i6 - 1;
                while (i9 >= i) {
                    androidx.fragment.app.a aVar2 = (androidx.fragment.app.a) arrayList7.get(i9);
                    if (aVar2.h(iKeyAt)) {
                        boolean zBooleanValue = ((Boolean) arrayList8.get(i9)).booleanValue();
                        ArrayList arrayList9 = aVar2.p;
                        if (arrayList9 != null) {
                            int size2 = arrayList9.size();
                            if (zBooleanValue) {
                                arrayList6 = aVar2.p;
                                arrayList5 = aVar2.q;
                            } else {
                                ArrayList arrayList10 = aVar2.p;
                                ArrayList arrayList11 = aVar2.q;
                                arrayList5 = arrayList10;
                                arrayList6 = arrayList11;
                            }
                            int i10 = 0;
                            while (i10 < size2) {
                                String str = (String) arrayList5.get(i10);
                                int i11 = i10;
                                String str2 = (String) arrayList6.get(i10);
                                String str3 = (String) arrayMap2.remove(str2);
                                if (str3 != null) {
                                    arrayMap2.put(str, str3);
                                } else {
                                    arrayMap2.put(str, str2);
                                }
                                i10 = i11 + 1;
                            }
                        }
                    }
                    i9--;
                    arrayList7 = arrayList;
                    arrayList8 = arrayList2;
                }
                b bVar5 = (b) sparseArray2.valueAt(i8);
                if (!fragmentContainer.onHasView() || (viewGroup = (ViewGroup) fragmentContainer.onFindViewById(iKeyAt)) == null) {
                    sparseArray = sparseArray2;
                    i3 = size;
                    i4 = i8;
                } else {
                    if (z3) {
                        Fragment fragment3 = bVar5.f1740a;
                        Fragment fragment4 = bVar5.d;
                        FragmentTransitionImpl fragmentTransitionImplF = f(fragment4, fragment3);
                        if (fragmentTransitionImplF == null) {
                            bVar2 = bVar;
                            sparseArray = sparseArray2;
                            i3 = size;
                            i5 = i8;
                        } else {
                            boolean z4 = bVar5.f1741b;
                            boolean z5 = bVar5.e;
                            ArrayList<View> arrayList12 = new ArrayList<>();
                            ArrayList<View> arrayList13 = new ArrayList<>();
                            if (fragment3 == null) {
                                sparseArray = sparseArray2;
                                objCloneTransition3 = null;
                            } else {
                                if (z4) {
                                    enterTransition2 = fragment3.getReenterTransition();
                                } else {
                                    enterTransition2 = fragment3.getEnterTransition();
                                }
                                sparseArray = sparseArray2;
                                objCloneTransition3 = fragmentTransitionImplF.cloneTransition(enterTransition2);
                            }
                            if (fragment4 == null) {
                                objCloneTransition4 = null;
                            } else {
                                if (z5) {
                                    exitTransition2 = fragment4.getReturnTransition();
                                } else {
                                    exitTransition2 = fragment4.getExitTransition();
                                }
                                objCloneTransition4 = fragmentTransitionImplF.cloneTransition(exitTransition2);
                            }
                            Fragment fragment5 = bVar5.f1740a;
                            i3 = size;
                            Fragment fragment6 = bVar5.d;
                            i5 = i8;
                            if (fragment5 != null) {
                                z2 = z4;
                                fragment5.requireView().setVisibility(0);
                            } else {
                                z2 = z4;
                            }
                            if (fragment5 == null || fragment6 == null) {
                                arrayMap = arrayMap2;
                                fragmentTransitionImpl = fragmentTransitionImplF;
                                obj5 = objCloneTransition4;
                                obj6 = null;
                            } else {
                                boolean z6 = bVar5.f1741b;
                                if (arrayMap2.isEmpty()) {
                                    objWrapTransitionInSet2 = null;
                                } else {
                                    if (z6) {
                                        sharedElementEnterTransition2 = fragment6.getSharedElementReturnTransition();
                                    } else {
                                        sharedElementEnterTransition2 = fragment5.getSharedElementEnterTransition();
                                    }
                                    objWrapTransitionInSet2 = fragmentTransitionImplF.wrapTransitionInSet(fragmentTransitionImplF.cloneTransition(sharedElementEnterTransition2));
                                }
                                ArrayMap arrayMapE = e(arrayMap2, objWrapTransitionInSet2, bVar5);
                                ArrayMap arrayMapD = d(arrayMap2, objWrapTransitionInSet2, bVar5);
                                if (arrayMap2.isEmpty()) {
                                    if (arrayMapE != null) {
                                        arrayMapE.clear();
                                    }
                                    if (arrayMapD != null) {
                                        arrayMapD.clear();
                                    }
                                    obj7 = null;
                                } else {
                                    a(arrayList13, arrayMapE, arrayMap2.keySet());
                                    a(arrayList12, arrayMapD, arrayMap2.values());
                                    obj7 = objWrapTransitionInSet2;
                                }
                                if (objCloneTransition3 == null && objCloneTransition4 == null && obj7 == null) {
                                    arrayMap = arrayMap2;
                                    fragmentTransitionImpl = fragmentTransitionImplF;
                                    obj6 = null;
                                    obj5 = objCloneTransition4;
                                } else {
                                    arrayMap = arrayMap2;
                                    c(fragment5, fragment6, z6, arrayMapE, true);
                                    if (obj7 != null) {
                                        arrayList12.add(view2);
                                        fragmentTransitionImplF.setSharedElementTargets(obj7, view2, arrayList13);
                                        fragment2 = fragment6;
                                        Object obj8 = obj7;
                                        Object obj9 = objCloneTransition4;
                                        j(fragmentTransitionImplF, obj8, obj9, arrayMapE, bVar5.e, bVar5.f);
                                        fragmentTransitionImpl = fragmentTransitionImplF;
                                        obj6 = obj8;
                                        obj5 = obj9;
                                        Rect rect3 = new Rect();
                                        View viewI = i(arrayMapD, bVar5, objCloneTransition3, z6);
                                        if (viewI != null) {
                                            fragmentTransitionImpl.setEpicenter(objCloneTransition3, rect3);
                                        }
                                        rect2 = rect3;
                                        view = viewI;
                                    } else {
                                        fragment2 = fragment6;
                                        fragmentTransitionImpl = fragmentTransitionImplF;
                                        obj6 = obj7;
                                        obj5 = objCloneTransition4;
                                        view = null;
                                        rect2 = null;
                                    }
                                    OneShotPreDrawListener.add(viewGroup, new q0(fragment5, fragment2, z6, arrayMapD, view, fragmentTransitionImpl, rect2));
                                }
                            }
                            if (objCloneTransition3 == null && obj6 == null && obj5 == null) {
                                bVar2 = bVar;
                            } else {
                                ArrayList<View> arrayListG = g(fragmentTransitionImpl, obj5, fragment4, arrayList13, view2);
                                ArrayList<View> arrayListG2 = g(fragmentTransitionImpl, objCloneTransition3, fragment3, arrayList12, view2);
                                k(arrayListG2, 4);
                                if (objCloneTransition3 == null || obj5 == null || fragment3 == null) {
                                    allowEnterTransitionOverlap2 = true;
                                } else if (z2) {
                                    allowEnterTransitionOverlap2 = fragment3.getAllowReturnTransitionOverlap();
                                } else {
                                    allowEnterTransitionOverlap2 = fragment3.getAllowEnterTransitionOverlap();
                                }
                                if (allowEnterTransitionOverlap2) {
                                    objMergeTransitionsInSequence2 = fragmentTransitionImpl.mergeTransitionsTogether(obj5, objCloneTransition3, obj6);
                                } else {
                                    objMergeTransitionsInSequence2 = fragmentTransitionImpl.mergeTransitionsInSequence(obj5, objCloneTransition3, obj6);
                                }
                                if (fragment4 == null || arrayListG == null || (arrayListG.size() <= 0 && arrayList13.size() <= 0)) {
                                    bVar2 = bVar;
                                } else {
                                    CancellationSignal cancellationSignal = new CancellationSignal();
                                    bVar2 = bVar;
                                    bVar2.onStart(fragment4, cancellationSignal);
                                    fragmentTransitionImpl.setListenerForTransitionEnd(fragment4, objMergeTransitionsInSequence2, cancellationSignal, new m0(bVar2, fragment4, cancellationSignal));
                                }
                                if (objMergeTransitionsInSequence2 != null) {
                                    if (fragment4 != null && obj5 != null && fragment4.l && fragment4.z && fragment4.N) {
                                        fragment4.c().y = true;
                                        fragmentTransitionImpl.scheduleHideFragmentView(obj5, fragment4.getView(), arrayListG);
                                        OneShotPreDrawListener.add(fragment4.G, new n0(arrayListG));
                                    }
                                    ArrayList arrayListC = FragmentTransitionImpl.c(arrayList12);
                                    fragmentTransitionImpl.scheduleRemoveTargets(objMergeTransitionsInSequence2, objCloneTransition3, arrayListG2, obj5, arrayListG, obj6, arrayList12);
                                    fragmentTransitionImpl.beginDelayedTransition(viewGroup, objMergeTransitionsInSequence2);
                                    FragmentTransitionImpl.d(viewGroup, arrayList13, arrayList12, arrayListC, arrayMap);
                                    k(arrayListG2, 0);
                                    fragmentTransitionImpl.swapSharedElementTargets(obj6, arrayList13, arrayList12);
                                }
                            }
                        }
                    } else {
                        bVar2 = bVar;
                        sparseArray = sparseArray2;
                        i3 = size;
                        i5 = i8;
                        Fragment fragment7 = bVar5.f1740a;
                        Fragment fragment8 = bVar5.d;
                        FragmentTransitionImpl fragmentTransitionImplF2 = f(fragment8, fragment7);
                        if (fragmentTransitionImplF2 != null) {
                            boolean z7 = bVar5.f1741b;
                            boolean z8 = bVar5.e;
                            if (fragment7 == null) {
                                objCloneTransition = null;
                            } else {
                                if (z7) {
                                    enterTransition = fragment7.getReenterTransition();
                                } else {
                                    enterTransition = fragment7.getEnterTransition();
                                }
                                objCloneTransition = fragmentTransitionImplF2.cloneTransition(enterTransition);
                            }
                            if (fragment8 == null) {
                                objCloneTransition2 = null;
                            } else {
                                if (z8) {
                                    exitTransition = fragment8.getReturnTransition();
                                } else {
                                    exitTransition = fragment8.getExitTransition();
                                }
                                objCloneTransition2 = fragmentTransitionImplF2.cloneTransition(exitTransition);
                            }
                            ArrayList<View> arrayList14 = new ArrayList<>();
                            ArrayList<View> arrayList15 = new ArrayList<>();
                            Fragment fragment9 = bVar5.f1740a;
                            Fragment fragment10 = bVar5.d;
                            if (fragment9 == null || fragment10 == null) {
                                bVar3 = bVar5;
                                fragment = fragment7;
                                obj = objCloneTransition;
                                arrayList3 = arrayList15;
                                bVar4 = bVar2;
                                obj2 = objCloneTransition2;
                                allowEnterTransitionOverlap = true;
                                arrayList4 = arrayList14;
                                i4 = i5;
                                obj3 = null;
                            } else {
                                boolean z9 = bVar5.f1741b;
                                if (arrayMap2.isEmpty()) {
                                    objWrapTransitionInSet = null;
                                } else {
                                    if (z9) {
                                        sharedElementEnterTransition = fragment10.getSharedElementReturnTransition();
                                    } else {
                                        sharedElementEnterTransition = fragment9.getSharedElementEnterTransition();
                                    }
                                    objWrapTransitionInSet = fragmentTransitionImplF2.wrapTransitionInSet(fragmentTransitionImplF2.cloneTransition(sharedElementEnterTransition));
                                }
                                ArrayMap arrayMapE2 = e(arrayMap2, objWrapTransitionInSet, bVar5);
                                if (arrayMap2.isEmpty()) {
                                    fragment = fragment7;
                                    objWrapTransitionInSet = null;
                                } else {
                                    fragment = fragment7;
                                    arrayList14.addAll(arrayMapE2.values());
                                }
                                if (objCloneTransition == null && objCloneTransition2 == null && objWrapTransitionInSet == null) {
                                    bVar3 = bVar5;
                                    obj = objCloneTransition;
                                    arrayList3 = arrayList15;
                                    bVar4 = bVar2;
                                    obj3 = null;
                                    obj2 = objCloneTransition2;
                                    allowEnterTransitionOverlap = true;
                                    arrayList4 = arrayList14;
                                    i4 = i5;
                                } else {
                                    c(fragment9, fragment10, z9, arrayMapE2, true);
                                    if (objWrapTransitionInSet != null) {
                                        Rect rect4 = new Rect();
                                        fragmentTransitionImplF2.setSharedElementTargets(objWrapTransitionInSet, view2, arrayList14);
                                        obj4 = objWrapTransitionInSet;
                                        j(fragmentTransitionImplF2, obj4, objCloneTransition2, arrayMapE2, bVar5.e, bVar5.f);
                                        obj2 = objCloneTransition2;
                                        if (objCloneTransition != null) {
                                            fragmentTransitionImplF2.setEpicenter(objCloneTransition, rect4);
                                        }
                                        rect = rect4;
                                    } else {
                                        obj4 = objWrapTransitionInSet;
                                        obj2 = objCloneTransition2;
                                        rect = null;
                                    }
                                    i4 = i5;
                                    bVar3 = bVar5;
                                    Object obj10 = objCloneTransition;
                                    bVar4 = bVar2;
                                    allowEnterTransitionOverlap = true;
                                    View view3 = view2;
                                    r0 r0Var = new r0(fragmentTransitionImplF2, arrayMap2, obj4, bVar3, arrayList15, view3, fragment9, fragment10, z9, arrayList14, obj10, rect);
                                    arrayList3 = arrayList15;
                                    view2 = view3;
                                    arrayList4 = arrayList14;
                                    obj = obj10;
                                    OneShotPreDrawListener.add(viewGroup, r0Var);
                                    obj3 = obj4;
                                }
                            }
                            if (obj != null || obj3 != null || obj2 != null) {
                                ArrayList<View> arrayListG3 = g(fragmentTransitionImplF2, obj2, fragment8, arrayList4, view2);
                                Object obj11 = (arrayListG3 == null || arrayListG3.isEmpty()) ? null : obj2;
                                fragmentTransitionImplF2.addTarget(obj, view2);
                                boolean z10 = bVar3.f1741b;
                                if (obj != null && obj11 != null && fragment != null) {
                                    if (z10) {
                                        allowEnterTransitionOverlap = fragment.getAllowReturnTransitionOverlap();
                                    } else {
                                        allowEnterTransitionOverlap = fragment.getAllowEnterTransitionOverlap();
                                    }
                                }
                                if (allowEnterTransitionOverlap) {
                                    objMergeTransitionsInSequence = fragmentTransitionImplF2.mergeTransitionsTogether(obj11, obj, obj3);
                                } else {
                                    objMergeTransitionsInSequence = fragmentTransitionImplF2.mergeTransitionsInSequence(obj11, obj, obj3);
                                }
                                if (fragment8 != null && arrayListG3 != null && (arrayListG3.size() > 0 || arrayList4.size() > 0)) {
                                    CancellationSignal cancellationSignal2 = new CancellationSignal();
                                    bVar4.onStart(fragment8, cancellationSignal2);
                                    fragmentTransitionImplF2.setListenerForTransitionEnd(fragment8, objMergeTransitionsInSequence, cancellationSignal2, new o0(bVar4, fragment8, cancellationSignal2));
                                }
                                if (objMergeTransitionsInSequence != null) {
                                    ArrayList<View> arrayList16 = new ArrayList<>();
                                    Object obj12 = obj;
                                    Object obj13 = obj11;
                                    fragmentTransitionImplF2.scheduleRemoveTargets(objMergeTransitionsInSequence, obj12, arrayList16, obj13, arrayListG3, obj3, arrayList3);
                                    ArrayList<View> arrayList17 = arrayList3;
                                    OneShotPreDrawListener.add(viewGroup, new p0(obj12, fragmentTransitionImplF2, view2, fragment, arrayList17, arrayList16, arrayListG3, obj13));
                                    OneShotPreDrawListener.add(viewGroup, new v0(arrayList17, arrayMap2));
                                    fragmentTransitionImplF2.beginDelayedTransition(viewGroup, objMergeTransitionsInSequence);
                                    OneShotPreDrawListener.add(viewGroup, new w0(arrayList17, arrayMap2));
                                }
                            }
                            i8 = i4 + 1;
                            arrayList7 = arrayList;
                            arrayList8 = arrayList2;
                            i6 = i2;
                            z3 = z;
                            sparseArray2 = sparseArray;
                        }
                    }
                    i4 = i5;
                }
                i8 = i4 + 1;
                arrayList7 = arrayList;
                arrayList8 = arrayList2;
                i6 = i2;
                z3 = z;
                sparseArray2 = sparseArray;
            }
        }
    }

    public static FragmentTransitionImpl f(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = fragment.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = fragment.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (fragment2 != null) {
            Object enterTransition = fragment2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = fragment2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = fragment2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        FragmentTransitionImpl fragmentTransitionImpl = f1739b;
        if (fragmentTransitionImpl != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (fragmentTransitionImpl.canHandle(arrayList.get(i))) {
                }
            }
            return fragmentTransitionImpl;
        }
        FragmentTransitionImpl fragmentTransitionImpl2 = c;
        if (fragmentTransitionImpl2 != null) {
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                if (fragmentTransitionImpl2.canHandle(arrayList.get(i2))) {
                }
            }
            return fragmentTransitionImpl2;
        }
        if (fragmentTransitionImpl == null && fragmentTransitionImpl2 == null) {
            return null;
        }
        throw new IllegalArgumentException("Invalid Transition types");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(ArrayList arrayList, ArrayMap arrayMap, Collection collection) {
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            View view = (View) arrayMap.valueAt(size);
            if (collection.contains(ViewCompat.getTransitionName(view))) {
                arrayList.add(view);
            }
        }
    }

    public static ArrayMap e(ArrayMap arrayMap, Object obj, b bVar) {
        ArrayList arrayList;
        SharedElementCallback sharedElementCallbackD;
        if (arrayMap.isEmpty() || obj == null) {
            arrayMap.clear();
            return null;
        }
        Fragment fragment = bVar.d;
        ArrayMap arrayMap2 = new ArrayMap();
        FragmentTransitionImpl.b(arrayMap2, fragment.requireView());
        androidx.fragment.app.a aVar = bVar.f;
        if (bVar.e) {
            sharedElementCallbackD = fragment.d();
            arrayList = aVar.q;
        } else {
            Fragment.e eVar = fragment.K;
            SharedElementCallback sharedElementCallback = eVar != null ? eVar.t : null;
            arrayList = aVar.p;
            sharedElementCallbackD = sharedElementCallback;
        }
        if (arrayList != null) {
            arrayMap2.retainAll(arrayList);
        }
        if (sharedElementCallbackD != null) {
            sharedElementCallbackD.onMapSharedElements(arrayList, arrayMap2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = (String) arrayList.get(size);
                View view = (View) arrayMap2.get(str);
                if (view == null) {
                    arrayMap.remove(str);
                } else if (!str.equals(ViewCompat.getTransitionName(view))) {
                    arrayMap.put(ViewCompat.getTransitionName(view), (String) arrayMap.remove(str));
                }
            }
            return arrayMap2;
        }
        arrayMap.retainAll(arrayMap2.keySet());
        return arrayMap2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ArrayMap d(ArrayMap arrayMap, Object obj, b bVar) {
        SharedElementCallback sharedElementCallbackD;
        ArrayList arrayList;
        String strH;
        Fragment fragment = bVar.f1740a;
        View view = fragment.getView();
        if (arrayMap.isEmpty() || obj == null || view == null) {
            arrayMap.clear();
            return null;
        }
        ArrayMap arrayMap2 = new ArrayMap();
        FragmentTransitionImpl.b(arrayMap2, view);
        androidx.fragment.app.a aVar = bVar.c;
        if (!bVar.f1741b) {
            sharedElementCallbackD = fragment.d();
            arrayList = aVar.q;
        } else {
            Fragment.e eVar = fragment.K;
            sharedElementCallbackD = eVar != null ? eVar.t : null;
            arrayList = aVar.p;
        }
        if (arrayList != null) {
            arrayMap2.retainAll(arrayList);
            arrayMap2.retainAll(arrayMap.values());
        }
        if (sharedElementCallbackD != null) {
            sharedElementCallbackD.onMapSharedElements(arrayList, arrayMap2);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = (String) arrayList.get(size);
                View view2 = (View) arrayMap2.get(str);
                if (view2 == null) {
                    String strH2 = h(arrayMap, str);
                    if (strH2 != null) {
                        arrayMap.remove(strH2);
                    }
                } else if (!str.equals(ViewCompat.getTransitionName(view2)) && (strH = h(arrayMap, str)) != null) {
                    arrayMap.put(strH, ViewCompat.getTransitionName(view2));
                }
            }
        } else {
            for (int size2 = arrayMap.size() - 1; size2 >= 0; size2--) {
                if (!arrayMap2.containsKey((String) arrayMap.valueAt(size2))) {
                    arrayMap.removeAt(size2);
                }
            }
        }
        return arrayMap2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String h(ArrayMap arrayMap, String str) {
        int size = arrayMap.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(arrayMap.valueAt(i))) {
                return (String) arrayMap.keyAt(i);
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static View i(ArrayMap arrayMap, b bVar, Object obj, boolean z) {
        ArrayList arrayList;
        String str;
        androidx.fragment.app.a aVar = bVar.c;
        if (obj == null || arrayMap == null || (arrayList = aVar.p) == null || arrayList.isEmpty()) {
            return null;
        }
        if (z) {
            str = (String) aVar.p.get(0);
        } else {
            str = (String) aVar.q.get(0);
        }
        return (View) arrayMap.get(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void j(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Object obj2, ArrayMap arrayMap, boolean z, androidx.fragment.app.a aVar) {
        String str;
        ArrayList arrayList = aVar.p;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (z) {
            str = (String) aVar.q.get(0);
        } else {
            str = (String) aVar.p.get(0);
        }
        View view = (View) arrayMap.get(str);
        fragmentTransitionImpl.setEpicenter(obj, view);
        if (obj2 != null) {
            fragmentTransitionImpl.setEpicenter(obj2, view);
        }
    }

    public static void c(Fragment fragment, Fragment fragment2, boolean z, ArrayMap arrayMap, boolean z2) {
        SharedElementCallback sharedElementCallbackD;
        if (z) {
            sharedElementCallbackD = fragment2.d();
        } else {
            sharedElementCallbackD = fragment.d();
        }
        if (sharedElementCallbackD != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = arrayMap == null ? 0 : arrayMap.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(arrayMap.keyAt(i));
                arrayList.add(arrayMap.valueAt(i));
            }
            if (z2) {
                sharedElementCallbackD.onSharedElementStart(arrayList2, arrayList, null);
            } else {
                sharedElementCallbackD.onSharedElementEnd(arrayList2, arrayList, null);
            }
        }
    }

    public static ArrayList g(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Fragment fragment, ArrayList arrayList, View view) {
        if (obj == null) {
            return null;
        }
        ArrayList<View> arrayList2 = new ArrayList<>();
        View view2 = fragment.getView();
        if (view2 != null) {
            FragmentTransitionImpl.a(view2, arrayList2);
        }
        arrayList2.removeAll(arrayList);
        if (!arrayList2.isEmpty()) {
            arrayList2.add(view);
            fragmentTransitionImpl.addTargets(obj, arrayList2);
        }
        return arrayList2;
    }

    public static void k(ArrayList arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((View) arrayList.get(size)).setVisibility(i);
        }
    }

    public static void calculateFragments(androidx.fragment.app.a aVar, SparseArray<b> sparseArray, boolean z) {
        int size = aVar.c.size();
        for (int i = 0; i < size; i++) {
            b(aVar, (FragmentTransaction.a) aVar.c.get(i), sparseArray, false, z);
        }
    }

    public static void calculatePopFragments(androidx.fragment.app.a aVar, SparseArray<b> sparseArray, boolean z) {
        if (aVar.t.s.onHasView()) {
            ArrayList arrayList = aVar.c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                b(aVar, (FragmentTransaction.a) arrayList.get(size), sparseArray, true, z);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(androidx.fragment.app.a r8, androidx.fragment.app.FragmentTransaction.a r9, android.util.SparseArray r10, boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.s0.b(androidx.fragment.app.a, androidx.fragment.app.FragmentTransaction$a, android.util.SparseArray, boolean, boolean):void");
    }

    private s0() {
    }
}
