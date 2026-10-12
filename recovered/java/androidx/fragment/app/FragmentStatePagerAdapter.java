package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.viewpager.widget.PagerAdapter;
import java.util.ArrayList;

@Deprecated
/* loaded from: classes.dex */
public abstract class FragmentStatePagerAdapter extends PagerAdapter {
    public static final int BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT = 1;

    @Deprecated
    public static final int BEHAVIOR_SET_USER_VISIBLE_HINT = 0;

    /* renamed from: a, reason: collision with root package name */
    public final FragmentManager f1641a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1642b;
    public FragmentTransaction c;
    public final ArrayList d;
    public final ArrayList e;
    public Fragment f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1643g;

    @NonNull
    public abstract Fragment getItem(int i);

    @Deprecated
    public FragmentStatePagerAdapter(@NonNull FragmentManager fragmentManager) {
        this(fragmentManager, 0);
    }

    public FragmentStatePagerAdapter(@NonNull FragmentManager fragmentManager, int i) {
        this.c = null;
        this.d = new ArrayList();
        this.e = new ArrayList();
        this.f = null;
        this.f1641a = fragmentManager;
        this.f1642b = i;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(@NonNull ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @NonNull
    public Object instantiateItem(@NonNull ViewGroup viewGroup, int i) {
        Fragment.SavedState savedState;
        Fragment fragment;
        ArrayList arrayList = this.e;
        if (arrayList.size() > i && (fragment = (Fragment) arrayList.get(i)) != null) {
            return fragment;
        }
        if (this.c == null) {
            this.c = this.f1641a.beginTransaction();
        }
        Fragment item = getItem(i);
        ArrayList arrayList2 = this.d;
        if (arrayList2.size() > i && (savedState = (Fragment.SavedState) arrayList2.get(i)) != null) {
            item.setInitialSavedState(savedState);
        }
        while (arrayList.size() <= i) {
            arrayList.add(null);
        }
        item.setMenuVisibility(false);
        int i2 = this.f1642b;
        if (i2 == 0) {
            item.setUserVisibleHint(false);
        }
        arrayList.set(i, item);
        this.c.add(viewGroup.getId(), item);
        if (i2 == 1) {
            this.c.setMaxLifecycle(item, Lifecycle.State.STARTED);
        }
        return item;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
        ArrayList arrayList;
        Fragment fragment = (Fragment) obj;
        FragmentTransaction fragmentTransaction = this.c;
        FragmentManager fragmentManager = this.f1641a;
        if (fragmentTransaction == null) {
            this.c = fragmentManager.beginTransaction();
        }
        while (true) {
            arrayList = this.d;
            if (arrayList.size() > i) {
                break;
            } else {
                arrayList.add(null);
            }
        }
        arrayList.set(i, fragment.isAdded() ? fragmentManager.saveFragmentInstanceState(fragment) : null);
        this.e.set(i, null);
        this.c.remove(fragment);
        if (fragment.equals(this.f)) {
            this.f = null;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f;
        if (fragment != fragment2) {
            FragmentManager fragmentManager = this.f1641a;
            int i2 = this.f1642b;
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (i2 == 1) {
                    if (this.c == null) {
                        this.c = fragmentManager.beginTransaction();
                    }
                    this.c.setMaxLifecycle(this.f, Lifecycle.State.STARTED);
                } else {
                    this.f.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (i2 == 1) {
                if (this.c == null) {
                    this.c = fragmentManager.beginTransaction();
                }
                this.c.setMaxLifecycle(fragment, Lifecycle.State.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f = fragment;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(@NonNull ViewGroup viewGroup) {
        FragmentTransaction fragmentTransaction = this.c;
        if (fragmentTransaction != null) {
            if (!this.f1643g) {
                try {
                    this.f1643g = true;
                    fragmentTransaction.commitNowAllowingStateLoss();
                } finally {
                    this.f1643g = false;
                }
            }
            this.c = null;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @Nullable
    public Parcelable saveState() {
        Bundle bundle;
        ArrayList arrayList = this.d;
        if (arrayList.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[arrayList.size()];
            arrayList.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        } else {
            bundle = null;
        }
        int i = 0;
        while (true) {
            ArrayList arrayList2 = this.e;
            if (i >= arrayList2.size()) {
                return bundle;
            }
            Fragment fragment = (Fragment) arrayList2.get(i);
            if (fragment != null && fragment.isAdded()) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                this.f1641a.putFragment(bundle, _COROUTINE.a.d(i, "f"), fragment);
            }
            i++;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(@Nullable Parcelable parcelable, @Nullable ClassLoader classLoader) throws NumberFormatException {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            ArrayList arrayList = this.d;
            arrayList.clear();
            ArrayList arrayList2 = this.e;
            arrayList2.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    arrayList.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int i = Integer.parseInt(str.substring(1));
                    Fragment fragment = this.f1641a.getFragment(bundle, str);
                    if (fragment != null) {
                        while (arrayList2.size() <= i) {
                            arrayList2.add(null);
                        }
                        fragment.setMenuVisibility(false);
                        arrayList2.set(i, fragment);
                    } else {
                        Log.w("FragmentStatePagerAdapt", "Bad fragment at key ".concat(str));
                    }
                }
            }
        }
    }
}
