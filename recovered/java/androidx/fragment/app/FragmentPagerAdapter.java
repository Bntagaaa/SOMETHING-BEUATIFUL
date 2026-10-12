package androidx.fragment.app;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.viewpager.widget.PagerAdapter;

@Deprecated
/* loaded from: classes.dex */
public abstract class FragmentPagerAdapter extends PagerAdapter {
    public static final int BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT = 1;

    @Deprecated
    public static final int BEHAVIOR_SET_USER_VISIBLE_HINT = 0;

    /* renamed from: a, reason: collision with root package name */
    public final FragmentManager f1639a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1640b;
    public FragmentTransaction c;
    public Fragment d;
    public boolean e;

    @NonNull
    public abstract Fragment getItem(int i);

    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(@Nullable Parcelable parcelable, @Nullable ClassLoader classLoader) {
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @Nullable
    public Parcelable saveState() {
        return null;
    }

    @Deprecated
    public FragmentPagerAdapter(@NonNull FragmentManager fragmentManager) {
        this(fragmentManager, 0);
    }

    public FragmentPagerAdapter(@NonNull FragmentManager fragmentManager, int i) {
        this.c = null;
        this.d = null;
        this.f1639a = fragmentManager;
        this.f1640b = i;
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
        FragmentTransaction fragmentTransaction = this.c;
        FragmentManager fragmentManager = this.f1639a;
        if (fragmentTransaction == null) {
            this.c = fragmentManager.beginTransaction();
        }
        long itemId = getItemId(i);
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag("android:switcher:" + viewGroup.getId() + ":" + itemId);
        if (fragmentFindFragmentByTag != null) {
            this.c.attach(fragmentFindFragmentByTag);
        } else {
            fragmentFindFragmentByTag = getItem(i);
            this.c.add(viewGroup.getId(), fragmentFindFragmentByTag, "android:switcher:" + viewGroup.getId() + ":" + itemId);
        }
        if (fragmentFindFragmentByTag != this.d) {
            fragmentFindFragmentByTag.setMenuVisibility(false);
            if (this.f1640b == 1) {
                this.c.setMaxLifecycle(fragmentFindFragmentByTag, Lifecycle.State.STARTED);
                return fragmentFindFragmentByTag;
            }
            fragmentFindFragmentByTag.setUserVisibleHint(false);
        }
        return fragmentFindFragmentByTag;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.c == null) {
            this.c = this.f1639a.beginTransaction();
        }
        this.c.detach(fragment);
        if (fragment.equals(this.d)) {
            this.d = null;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.d;
        if (fragment != fragment2) {
            FragmentManager fragmentManager = this.f1639a;
            int i2 = this.f1640b;
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (i2 == 1) {
                    if (this.c == null) {
                        this.c = fragmentManager.beginTransaction();
                    }
                    this.c.setMaxLifecycle(this.d, Lifecycle.State.STARTED);
                } else {
                    this.d.setUserVisibleHint(false);
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
            this.d = fragment;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(@NonNull ViewGroup viewGroup) {
        FragmentTransaction fragmentTransaction = this.c;
        if (fragmentTransaction != null) {
            if (!this.e) {
                try {
                    this.e = true;
                    fragmentTransaction.commitNowAllowingStateLoss();
                } finally {
                    this.e = false;
                }
            }
            this.c = null;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
        return ((Fragment) obj).getView() == view;
    }
}
