package com.google.android.material.tabs;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class TabLayoutMediator {

    /* renamed from: a, reason: collision with root package name */
    public final TabLayout f3281a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewPager2 f3282b;
    public final boolean c;
    public final boolean d;
    public final TabConfigurationStrategy e;
    public RecyclerView.Adapter f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3283g;
    public b h;
    public TabLayout.OnTabSelectedListener i;
    public RecyclerView.AdapterDataObserver j;

    public interface TabConfigurationStrategy {
        void onConfigureTab(@NonNull TabLayout.Tab tab, int i);
    }

    public TabLayoutMediator(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, @NonNull TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, viewPager2, true, tabConfigurationStrategy);
    }

    public TabLayoutMediator(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z, @NonNull TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, viewPager2, z, true, tabConfigurationStrategy);
    }

    public TabLayoutMediator(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z, boolean z2, @NonNull TabConfigurationStrategy tabConfigurationStrategy) {
        this.f3281a = tabLayout;
        this.f3282b = viewPager2;
        this.c = z;
        this.d = z2;
        this.e = tabConfigurationStrategy;
    }

    public void attach() {
        if (this.f3283g) {
            throw new IllegalStateException("TabLayoutMediator is already attached");
        }
        ViewPager2 viewPager2 = this.f3282b;
        RecyclerView.Adapter adapter = viewPager2.getAdapter();
        this.f = adapter;
        if (adapter == null) {
            throw new IllegalStateException("TabLayoutMediator attached before ViewPager2 has an adapter");
        }
        this.f3283g = true;
        TabLayout tabLayout = this.f3281a;
        b bVar = new b(tabLayout);
        this.h = bVar;
        viewPager2.registerOnPageChangeCallback(bVar);
        c cVar = new c(viewPager2, this.d);
        this.i = cVar;
        tabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) cVar);
        if (this.c) {
            a aVar = new a();
            this.j = aVar;
            this.f.registerAdapterDataObserver(aVar);
        }
        a();
        tabLayout.setScrollPosition(viewPager2.getCurrentItem(), 0.0f, true);
    }

    public void detach() {
        RecyclerView.Adapter adapter;
        if (this.c && (adapter = this.f) != null) {
            adapter.unregisterAdapterDataObserver(this.j);
            this.j = null;
        }
        this.f3281a.removeOnTabSelectedListener(this.i);
        this.f3282b.unregisterOnPageChangeCallback(this.h);
        this.i = null;
        this.h = null;
        this.f = null;
        this.f3283g = false;
    }

    public boolean isAttached() {
        return this.f3283g;
    }

    public final void a() {
        TabLayout tabLayout = this.f3281a;
        tabLayout.removeAllTabs();
        RecyclerView.Adapter adapter = this.f;
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            for (int i = 0; i < itemCount; i++) {
                TabLayout.Tab tabNewTab = tabLayout.newTab();
                this.e.onConfigureTab(tabNewTab, i);
                tabLayout.addTab(tabNewTab, false);
            }
            if (itemCount > 0) {
                int iMin = Math.min(this.f3282b.getCurrentItem(), tabLayout.getTabCount() - 1);
                if (iMin != tabLayout.getSelectedTabPosition()) {
                    tabLayout.selectTab(tabLayout.getTabAt(iMin));
                }
            }
        }
    }

    public static class b extends ViewPager2.OnPageChangeCallback {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f3285a;
        public int c = 0;

        /* renamed from: b, reason: collision with root package name */
        public int f3286b = 0;

        public b(TabLayout tabLayout) {
            this.f3285a = new WeakReference(tabLayout);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i) {
            this.f3286b = this.c;
            this.c = i;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i, float f, int i2) {
            TabLayout tabLayout = (TabLayout) this.f3285a.get();
            if (tabLayout != null) {
                int i3 = this.c;
                tabLayout.setScrollPosition(i, f, i3 != 2 || this.f3286b == 1, (i3 == 2 && this.f3286b == 0) ? false : true);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i) {
            TabLayout tabLayout = (TabLayout) this.f3285a.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i || i >= tabLayout.getTabCount()) {
                return;
            }
            int i2 = this.c;
            tabLayout.selectTab(tabLayout.getTabAt(i), i2 == 0 || (i2 == 2 && this.f3286b == 0));
        }
    }

    public static class c implements TabLayout.OnTabSelectedListener {

        /* renamed from: a, reason: collision with root package name */
        public final ViewPager2 f3287a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f3288b;

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }

        public c(ViewPager2 viewPager2, boolean z) {
            this.f3287a = viewPager2;
            this.f3288b = z;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(@NonNull TabLayout.Tab tab) {
            this.f3287a.setCurrentItem(tab.getPosition(), this.f3288b);
        }
    }

    public class a extends RecyclerView.AdapterDataObserver {
        public a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            TabLayoutMediator.this.a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2) {
            TabLayoutMediator.this.a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2, @Nullable Object obj) {
            TabLayoutMediator.this.a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i, int i2) {
            TabLayoutMediator.this.a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i, int i2) {
            TabLayoutMediator.this.a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i, int i2, int i3) {
            TabLayoutMediator.this.a();
        }
    }
}
