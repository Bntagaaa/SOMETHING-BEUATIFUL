package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresOptIn;
import androidx.collection.ArraySet;
import androidx.collection.LongSparseArray;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public abstract class FragmentStateAdapter extends RecyclerView.Adapter<FragmentViewHolder> implements StatefulAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final Lifecycle f2377a;

    /* renamed from: b, reason: collision with root package name */
    public final FragmentManager f2378b;
    public final LongSparseArray c;
    public final LongSparseArray d;
    public final LongSparseArray e;
    public c f;

    /* renamed from: g, reason: collision with root package name */
    public final b f2379g;
    public boolean h;
    public boolean i;

    @RequiresOptIn(level = RequiresOptIn.Level.WARNING)
    public @interface ExperimentalFragmentStateAdapterApi {
    }

    @NonNull
    public abstract Fragment createFragment(int i);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final boolean onFailedToRecycleView(@NonNull FragmentViewHolder fragmentViewHolder) {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(@NonNull FragmentViewHolder fragmentViewHolder) {
        Long lC = c(((FrameLayout) fragmentViewHolder.itemView).getId());
        if (lC != null) {
            e(lC.longValue());
            this.e.remove(lC.longValue());
        }
    }

    public FragmentStateAdapter(@NonNull FragmentActivity fragmentActivity) {
        this(fragmentActivity.getSupportFragmentManager(), fragmentActivity.getLifecycle());
    }

    public FragmentStateAdapter(@NonNull Fragment fragment) {
        this(fragment.getChildFragmentManager(), fragment.getLifecycle());
    }

    public FragmentStateAdapter(@NonNull FragmentManager fragmentManager, @NonNull Lifecycle lifecycle) {
        this.c = new LongSparseArray();
        this.d = new LongSparseArray();
        this.e = new LongSparseArray();
        this.f2379g = new b();
        this.h = false;
        this.i = false;
        this.f2378b = fragmentManager;
        this.f2377a = lifecycle;
        super.setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        Preconditions.checkArgument(this.f == null);
        c cVar = new c();
        this.f = cVar;
        cVar.d = c.a(recyclerView);
        e eVar = new e(cVar);
        cVar.f2382a = eVar;
        cVar.d.registerOnPageChangeCallback(eVar);
        f fVar = new f(cVar);
        cVar.f2383b = fVar;
        registerAdapterDataObserver(fVar);
        g gVar = new g(cVar);
        cVar.c = gVar;
        this.f2377a.addObserver(gVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        c cVar = this.f;
        cVar.getClass();
        c.a(recyclerView).unregisterOnPageChangeCallback(cVar.f2382a);
        RecyclerView.AdapterDataObserver adapterDataObserver = cVar.f2383b;
        FragmentStateAdapter fragmentStateAdapter = FragmentStateAdapter.this;
        fragmentStateAdapter.unregisterAdapterDataObserver(adapterDataObserver);
        fragmentStateAdapter.f2377a.removeObserver(cVar.c);
        cVar.d = null;
        this.f = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public final FragmentViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        int i2 = FragmentViewHolder.f2384a;
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setId(ViewCompat.generateViewId());
        frameLayout.setSaveEnabled(false);
        return new FragmentViewHolder(frameLayout);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(@NonNull FragmentViewHolder fragmentViewHolder, int i) {
        long itemId = fragmentViewHolder.getItemId();
        int id = ((FrameLayout) fragmentViewHolder.itemView).getId();
        Long lC = c(id);
        LongSparseArray longSparseArray = this.e;
        if (lC != null && lC.longValue() != itemId) {
            e(lC.longValue());
            longSparseArray.remove(lC.longValue());
        }
        longSparseArray.put(itemId, Integer.valueOf(id));
        long itemId2 = getItemId(i);
        LongSparseArray longSparseArray2 = this.c;
        if (!longSparseArray2.containsKey(itemId2)) {
            Fragment fragmentCreateFragment = createFragment(i);
            fragmentCreateFragment.setInitialSavedState((Fragment.SavedState) this.d.get(itemId2));
            longSparseArray2.put(itemId2, fragmentCreateFragment);
        }
        if (ViewCompat.isAttachedToWindow((FrameLayout) fragmentViewHolder.itemView)) {
            d(fragmentViewHolder);
        }
        b();
    }

    public final void b() {
        LongSparseArray longSparseArray;
        LongSparseArray longSparseArray2;
        Fragment fragment;
        View view;
        if (!this.i || this.f2378b.isStateSaved()) {
            return;
        }
        ArraySet arraySet = new ArraySet();
        int i = 0;
        while (true) {
            longSparseArray = this.c;
            int size = longSparseArray.size();
            longSparseArray2 = this.e;
            if (i >= size) {
                break;
            }
            long jKeyAt = longSparseArray.keyAt(i);
            if (!containsItem(jKeyAt)) {
                arraySet.add(Long.valueOf(jKeyAt));
                longSparseArray2.remove(jKeyAt);
            }
            i++;
        }
        if (!this.h) {
            this.i = false;
            for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
                long jKeyAt2 = longSparseArray.keyAt(i2);
                if (!longSparseArray2.containsKey(jKeyAt2) && ((fragment = (Fragment) longSparseArray.get(jKeyAt2)) == null || (view = fragment.getView()) == null || view.getParent() == null)) {
                    arraySet.add(Long.valueOf(jKeyAt2));
                }
            }
        }
        Iterator<E> it = arraySet.iterator();
        while (it.hasNext()) {
            e(((Long) it.next()).longValue());
        }
    }

    public final Long c(int i) {
        Long lValueOf = null;
        int i2 = 0;
        while (true) {
            LongSparseArray longSparseArray = this.e;
            if (i2 >= longSparseArray.size()) {
                return lValueOf;
            }
            if (((Integer) longSparseArray.valueAt(i2)).intValue() == i) {
                if (lValueOf != null) {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
                lValueOf = Long.valueOf(longSparseArray.keyAt(i2));
            }
            i2++;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewAttachedToWindow(@NonNull FragmentViewHolder fragmentViewHolder) {
        d(fragmentViewHolder);
        b();
    }

    public final void d(FragmentViewHolder fragmentViewHolder) {
        Fragment fragment = (Fragment) this.c.get(fragmentViewHolder.getItemId());
        if (fragment != null) {
            FrameLayout frameLayout = (FrameLayout) fragmentViewHolder.itemView;
            View view = fragment.getView();
            if (!fragment.isAdded() && view != null) {
                throw new IllegalStateException("Design assumption violated.");
            }
            boolean zIsAdded = fragment.isAdded();
            FragmentManager fragmentManager = this.f2378b;
            if (!zIsAdded || view != null) {
                if (fragment.isAdded() && view.getParent() != null) {
                    if (view.getParent() != frameLayout) {
                        a(view, frameLayout);
                        return;
                    }
                    return;
                }
                if (fragment.isAdded()) {
                    a(view, frameLayout);
                    return;
                }
                if (fragmentManager.isStateSaved()) {
                    if (fragmentManager.isDestroyed()) {
                        return;
                    }
                    this.f2377a.addObserver(new androidx.viewpager2.adapter.a(this, fragmentViewHolder));
                    return;
                }
                fragmentManager.registerFragmentLifecycleCallbacks(new androidx.viewpager2.adapter.b(this, fragment, frameLayout), false);
                b bVar = this.f2379g;
                List<FragmentTransactionCallback.OnPostEventListener> listDispatchPreAdded = bVar.dispatchPreAdded(fragment);
                try {
                    fragment.setMenuVisibility(false);
                    fragmentManager.beginTransaction().add(fragment, "f" + fragmentViewHolder.getItemId()).setMaxLifecycle(fragment, Lifecycle.State.STARTED).commitNow();
                    this.f.b(false);
                    return;
                } finally {
                    bVar.dispatchPostEvents(listDispatchPreAdded);
                }
            }
            fragmentManager.registerFragmentLifecycleCallbacks(new androidx.viewpager2.adapter.b(this, fragment, frameLayout), false);
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    public static void a(View view, FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (view.getParent() == frameLayout) {
            return;
        }
        if (frameLayout.getChildCount() > 0) {
            frameLayout.removeAllViews();
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        frameLayout.addView(view);
    }

    public final void e(long j) {
        ViewParent parent;
        LongSparseArray longSparseArray = this.c;
        Fragment fragment = (Fragment) longSparseArray.get(j);
        if (fragment == null) {
            return;
        }
        if (fragment.getView() != null && (parent = fragment.getView().getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        boolean zContainsItem = containsItem(j);
        LongSparseArray longSparseArray2 = this.d;
        if (!zContainsItem) {
            longSparseArray2.remove(j);
        }
        if (!fragment.isAdded()) {
            longSparseArray.remove(j);
            return;
        }
        FragmentManager fragmentManager = this.f2378b;
        if (fragmentManager.isStateSaved()) {
            this.i = true;
            return;
        }
        boolean zIsAdded = fragment.isAdded();
        b bVar = this.f2379g;
        if (zIsAdded && containsItem(j)) {
            List<FragmentTransactionCallback.OnPostEventListener> listDispatchPreSavedInstanceState = bVar.dispatchPreSavedInstanceState(fragment);
            Fragment.SavedState savedStateSaveFragmentInstanceState = fragmentManager.saveFragmentInstanceState(fragment);
            bVar.dispatchPostEvents(listDispatchPreSavedInstanceState);
            longSparseArray2.put(j, savedStateSaveFragmentInstanceState);
        }
        List<FragmentTransactionCallback.OnPostEventListener> listDispatchPreRemoved = bVar.dispatchPreRemoved(fragment);
        try {
            fragmentManager.beginTransaction().remove(fragment).commitNow();
            longSparseArray.remove(j);
        } finally {
            bVar.dispatchPostEvents(listDispatchPreRemoved);
        }
    }

    public class c {

        /* renamed from: a, reason: collision with root package name */
        public ViewPager2.OnPageChangeCallback f2382a;

        /* renamed from: b, reason: collision with root package name */
        public RecyclerView.AdapterDataObserver f2383b;
        public LifecycleEventObserver c;
        public ViewPager2 d;
        public long e = -1;

        public final void b(boolean z) {
            int currentItem;
            Fragment fragment;
            FragmentStateAdapter fragmentStateAdapter = FragmentStateAdapter.this;
            FragmentManager fragmentManager = fragmentStateAdapter.f2378b;
            if (!fragmentManager.isStateSaved() && this.d.getScrollState() == 0) {
                LongSparseArray longSparseArray = fragmentStateAdapter.c;
                if (longSparseArray.isEmpty() || fragmentStateAdapter.getItemCount() == 0 || (currentItem = this.d.getCurrentItem()) >= fragmentStateAdapter.getItemCount()) {
                    return;
                }
                long itemId = fragmentStateAdapter.getItemId(currentItem);
                if ((itemId != this.e || z) && (fragment = (Fragment) longSparseArray.get(itemId)) != null && fragment.isAdded()) {
                    this.e = itemId;
                    FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
                    ArrayList arrayList = new ArrayList();
                    Fragment fragment2 = null;
                    for (int i = 0; i < longSparseArray.size(); i++) {
                        long jKeyAt = longSparseArray.keyAt(i);
                        Fragment fragment3 = (Fragment) longSparseArray.valueAt(i);
                        if (fragment3.isAdded()) {
                            if (jKeyAt != this.e) {
                                Lifecycle.State state = Lifecycle.State.STARTED;
                                fragmentTransactionBeginTransaction.setMaxLifecycle(fragment3, state);
                                arrayList.add(fragmentStateAdapter.f2379g.dispatchMaxLifecyclePreUpdated(fragment3, state));
                            } else {
                                fragment2 = fragment3;
                            }
                            fragment3.setMenuVisibility(jKeyAt == this.e);
                        }
                    }
                    if (fragment2 != null) {
                        Lifecycle.State state2 = Lifecycle.State.RESUMED;
                        fragmentTransactionBeginTransaction.setMaxLifecycle(fragment2, state2);
                        arrayList.add(fragmentStateAdapter.f2379g.dispatchMaxLifecyclePreUpdated(fragment2, state2));
                    }
                    if (fragmentTransactionBeginTransaction.isEmpty()) {
                        return;
                    }
                    fragmentTransactionBeginTransaction.commitNow();
                    Collections.reverse(arrayList);
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        fragmentStateAdapter.f2379g.dispatchPostEvents((List) it.next());
                    }
                }
            }
        }

        public c() {
        }

        public static ViewPager2 a(RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof ViewPager2) {
                return (ViewPager2) parent;
            }
            throw new IllegalStateException("Expected ViewPager2 instance. Got: " + parent);
        }
    }

    public boolean containsItem(long j) {
        return j >= 0 && j < ((long) getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void setHasStableIds(boolean z) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    @NonNull
    public final Parcelable saveState() {
        LongSparseArray longSparseArray = this.c;
        int size = longSparseArray.size();
        LongSparseArray longSparseArray2 = this.d;
        Bundle bundle = new Bundle(longSparseArray2.size() + size);
        for (int i = 0; i < longSparseArray.size(); i++) {
            long jKeyAt = longSparseArray.keyAt(i);
            Fragment fragment = (Fragment) longSparseArray.get(jKeyAt);
            if (fragment != null && fragment.isAdded()) {
                this.f2378b.putFragment(bundle, _COROUTINE.a.g("f#", jKeyAt), fragment);
            }
        }
        for (int i2 = 0; i2 < longSparseArray2.size(); i2++) {
            long jKeyAt2 = longSparseArray2.keyAt(i2);
            if (containsItem(jKeyAt2)) {
                bundle.putParcelable(_COROUTINE.a.g("s#", jKeyAt2), (Parcelable) longSparseArray2.get(jKeyAt2));
            }
        }
        return bundle;
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    public final void restoreState(@NonNull Parcelable parcelable) throws NumberFormatException {
        String next;
        LongSparseArray longSparseArray = this.d;
        if (longSparseArray.isEmpty()) {
            LongSparseArray longSparseArray2 = this.c;
            if (longSparseArray2.isEmpty()) {
                Bundle bundle = (Bundle) parcelable;
                if (bundle.getClassLoader() == null) {
                    bundle.setClassLoader(getClass().getClassLoader());
                }
                Iterator<String> it = bundle.keySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        if (longSparseArray2.isEmpty()) {
                            return;
                        }
                        this.i = true;
                        this.h = true;
                        b();
                        Handler handler = new Handler(Looper.getMainLooper());
                        androidx.viewpager2.adapter.c cVar = new androidx.viewpager2.adapter.c(this);
                        this.f2377a.addObserver(new d(handler, cVar));
                        handler.postDelayed(cVar, 10000L);
                        return;
                    }
                    next = it.next();
                    if (next.startsWith("f#") && next.length() > 2) {
                        longSparseArray2.put(Long.parseLong(next.substring(2)), this.f2378b.getFragment(bundle, next));
                    } else {
                        if (!next.startsWith("s#") || next.length() <= 2) {
                            break;
                        }
                        long j = Long.parseLong(next.substring(2));
                        Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(next);
                        if (containsItem(j)) {
                            longSparseArray.put(j, savedState);
                        }
                    }
                }
                throw new IllegalArgumentException("Unexpected key in savedState: ".concat(next));
            }
        }
        throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
    }

    public static abstract class a extends RecyclerView.AdapterDataObserver {
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public abstract void onChanged();

        private a() {
        }

        public /* synthetic */ a(int i) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i, int i2, @Nullable Object obj) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i, int i2, int i3) {
            onChanged();
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final CopyOnWriteArrayList f2381a = new CopyOnWriteArrayList();

        public void registerCallback(FragmentTransactionCallback fragmentTransactionCallback) {
            this.f2381a.add(fragmentTransactionCallback);
        }

        public void unregisterCallback(FragmentTransactionCallback fragmentTransactionCallback) {
            this.f2381a.remove(fragmentTransactionCallback);
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchMaxLifecyclePreUpdated(Fragment fragment, Lifecycle.State state) {
            ArrayList arrayList = new ArrayList();
            Iterator it = this.f2381a.iterator();
            while (it.hasNext()) {
                arrayList.add(((FragmentTransactionCallback) it.next()).onFragmentMaxLifecyclePreUpdated(fragment, state));
            }
            return arrayList;
        }

        public void dispatchPostEvents(List<FragmentTransactionCallback.OnPostEventListener> list) {
            Iterator<FragmentTransactionCallback.OnPostEventListener> it = list.iterator();
            while (it.hasNext()) {
                it.next().onPost();
            }
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchPreAdded(Fragment fragment) {
            ArrayList arrayList = new ArrayList();
            Iterator it = this.f2381a.iterator();
            while (it.hasNext()) {
                arrayList.add(((FragmentTransactionCallback) it.next()).onFragmentPreAdded(fragment));
            }
            return arrayList;
        }

        @OptIn(markerClass = {ExperimentalFragmentStateAdapterApi.class})
        public List<FragmentTransactionCallback.OnPostEventListener> dispatchPreSavedInstanceState(Fragment fragment) {
            ArrayList arrayList = new ArrayList();
            Iterator it = this.f2381a.iterator();
            while (it.hasNext()) {
                arrayList.add(((FragmentTransactionCallback) it.next()).onFragmentPreSavedInstanceState(fragment));
            }
            return arrayList;
        }

        public List<FragmentTransactionCallback.OnPostEventListener> dispatchPreRemoved(Fragment fragment) {
            ArrayList arrayList = new ArrayList();
            Iterator it = this.f2381a.iterator();
            while (it.hasNext()) {
                arrayList.add(((FragmentTransactionCallback) it.next()).onFragmentPreRemoved(fragment));
            }
            return arrayList;
        }
    }

    public static abstract class FragmentTransactionCallback {

        /* renamed from: a, reason: collision with root package name */
        public static final OnPostEventListener f2380a = new a();

        public interface OnPostEventListener {
            void onPost();
        }

        public class a implements OnPostEventListener {
            @Override // androidx.viewpager2.adapter.FragmentStateAdapter.FragmentTransactionCallback.OnPostEventListener
            public void onPost() {
            }
        }

        @NonNull
        public OnPostEventListener onFragmentPreAdded(@NonNull Fragment fragment) {
            return f2380a;
        }

        @NonNull
        @ExperimentalFragmentStateAdapterApi
        public OnPostEventListener onFragmentPreSavedInstanceState(@NonNull Fragment fragment) {
            return f2380a;
        }

        @NonNull
        public OnPostEventListener onFragmentPreRemoved(@NonNull Fragment fragment) {
            return f2380a;
        }

        @NonNull
        public OnPostEventListener onFragmentMaxLifecyclePreUpdated(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
            return f2380a;
        }
    }

    public void registerFragmentTransactionCallback(@NonNull FragmentTransactionCallback fragmentTransactionCallback) {
        this.f2379g.registerCallback(fragmentTransactionCallback);
    }

    public void unregisterFragmentTransactionCallback(@NonNull FragmentTransactionCallback fragmentTransactionCallback) {
        this.f2379g.unregisterCallback(fragmentTransactionCallback);
    }
}
