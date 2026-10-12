package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.R;
import java.util.Iterator;

/* loaded from: classes.dex */
class y implements LayoutInflater.Factory2 {

    /* renamed from: a, reason: collision with root package name */
    public final FragmentManager f1769a;

    public y(FragmentManager fragmentManager) {
        this.f1769a = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory
    @Nullable
    public View onCreateView(@NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    @Nullable
    public View onCreateView(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        boolean zIsAssignableFrom;
        k0 k0VarI;
        View view2;
        boolean zEquals = FragmentContainerView.class.getName().equals(str);
        FragmentManager fragmentManager = this.f1769a;
        if (zEquals) {
            FragmentContainerView fragmentContainerView = new FragmentContainerView(context, attributeSet);
            fragmentContainerView.d = true;
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FragmentContainerView);
            if (classAttribute == null) {
                classAttribute = typedArrayObtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_name);
            }
            String string = typedArrayObtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_tag);
            typedArrayObtainStyledAttributes.recycle();
            int id = fragmentContainerView.getId();
            Fragment fragmentFindFragmentById = fragmentManager.findFragmentById(id);
            if (classAttribute != null && fragmentFindFragmentById == null) {
                if (id <= 0) {
                    throw new IllegalStateException(_COROUTINE.a.A("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? " with tag ".concat(string) : ""));
                }
                Fragment fragmentInstantiate = fragmentManager.getFragmentFactory().instantiate(context.getClassLoader(), classAttribute);
                fragmentInstantiate.onInflate(context, attributeSet, (Bundle) null);
                FragmentTransaction reorderingAllowed = fragmentManager.beginTransaction().setReorderingAllowed(true);
                reorderingAllowed.getClass();
                fragmentInstantiate.G = fragmentContainerView;
                reorderingAllowed.add(fragmentContainerView.getId(), fragmentInstantiate, string).commitNowAllowingStateLoss();
            }
            Iterator it = fragmentManager.c.d().iterator();
            while (it.hasNext()) {
                k0 k0Var = (k0) it.next();
                Fragment fragment = k0Var.c;
                if (fragment.x == fragmentContainerView.getId() && (view2 = fragment.H) != null && view2.getParent() == null) {
                    fragment.G = fragmentContainerView;
                    k0Var.b();
                }
            }
            return fragmentContainerView;
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.Fragment);
            if (attributeValue == null) {
                attributeValue = typedArrayObtainStyledAttributes2.getString(R.styleable.Fragment_android_name);
            }
            int resourceId = typedArrayObtainStyledAttributes2.getResourceId(R.styleable.Fragment_android_id, -1);
            String string2 = typedArrayObtainStyledAttributes2.getString(R.styleable.Fragment_android_tag);
            typedArrayObtainStyledAttributes2.recycle();
            if (attributeValue != null) {
                try {
                    zIsAssignableFrom = Fragment.class.isAssignableFrom(FragmentFactory.a(context.getClassLoader(), attributeValue));
                } catch (ClassNotFoundException unused) {
                    zIsAssignableFrom = false;
                }
                if (zIsAssignableFrom) {
                    int id2 = view != null ? view.getId() : 0;
                    if (id2 == -1 && resourceId == -1 && string2 == null) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                    }
                    Fragment fragmentFindFragmentById2 = resourceId != -1 ? fragmentManager.findFragmentById(resourceId) : null;
                    if (fragmentFindFragmentById2 == null && string2 != null) {
                        fragmentFindFragmentById2 = fragmentManager.findFragmentByTag(string2);
                    }
                    if (fragmentFindFragmentById2 == null && id2 != -1) {
                        fragmentFindFragmentById2 = fragmentManager.findFragmentById(id2);
                    }
                    if (fragmentFindFragmentById2 == null) {
                        fragmentFindFragmentById2 = fragmentManager.getFragmentFactory().instantiate(context.getClassLoader(), attributeValue);
                        fragmentFindFragmentById2.n = true;
                        fragmentFindFragmentById2.w = resourceId != 0 ? resourceId : id2;
                        fragmentFindFragmentById2.x = id2;
                        fragmentFindFragmentById2.y = string2;
                        fragmentFindFragmentById2.o = true;
                        fragmentFindFragmentById2.s = fragmentManager;
                        FragmentHostCallback fragmentHostCallback = fragmentManager.r;
                        fragmentFindFragmentById2.t = fragmentHostCallback;
                        fragmentFindFragmentById2.onInflate(fragmentHostCallback.f1620b, attributeSet, fragmentFindFragmentById2.f1605b);
                        k0VarI = fragmentManager.b(fragmentFindFragmentById2);
                        if (FragmentManager.D(2)) {
                            Log.v("FragmentManager", "Fragment " + fragmentFindFragmentById2 + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    } else {
                        if (fragmentFindFragmentById2.o) {
                            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string2 + ", or parent id 0x" + Integer.toHexString(id2) + " with another fragment for " + attributeValue);
                        }
                        fragmentFindFragmentById2.o = true;
                        fragmentFindFragmentById2.s = fragmentManager;
                        FragmentHostCallback fragmentHostCallback2 = fragmentManager.r;
                        fragmentFindFragmentById2.t = fragmentHostCallback2;
                        fragmentFindFragmentById2.onInflate(fragmentHostCallback2.f1620b, attributeSet, fragmentFindFragmentById2.f1605b);
                        k0VarI = fragmentManager.i(fragmentFindFragmentById2);
                        if (FragmentManager.D(2)) {
                            Log.v("FragmentManager", "Retained Fragment " + fragmentFindFragmentById2 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    }
                    fragmentFindFragmentById2.G = (ViewGroup) view;
                    k0VarI.k();
                    k0VarI.j();
                    View view3 = fragmentFindFragmentById2.H;
                    if (view3 == null) {
                        throw new IllegalStateException(_COROUTINE.a.A("Fragment ", attributeValue, " did not create a view."));
                    }
                    if (resourceId != 0) {
                        view3.setId(resourceId);
                    }
                    if (fragmentFindFragmentById2.H.getTag() == null) {
                        fragmentFindFragmentById2.H.setTag(string2);
                    }
                    fragmentFindFragmentById2.H.addOnAttachStateChangeListener(new a(k0VarI));
                    return fragmentFindFragmentById2.H;
                }
            }
        }
        return null;
    }

    public class a implements View.OnAttachStateChangeListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ k0 f1770a;

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            k0 k0Var = this.f1770a;
            Fragment fragment = k0Var.c;
            k0Var.k();
            b1.f((ViewGroup) fragment.H.getParent(), y.this.f1769a).e();
        }

        public a(k0 k0Var) {
            this.f1770a = k0Var;
        }
    }
}
