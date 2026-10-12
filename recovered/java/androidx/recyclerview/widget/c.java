package androidx.recyclerview.widget;

import android.util.Log;
import android.util.Pair;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StableIdStorage;
import androidx.recyclerview.widget.ViewTypeStorage;
import androidx.recyclerview.widget.r;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
class c implements r.b {

    /* renamed from: a, reason: collision with root package name */
    public final ConcatAdapter f2145a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewTypeStorage f2146b;
    public final ArrayList c = new ArrayList();
    public final IdentityHashMap d = new IdentityHashMap();
    public final ArrayList e = new ArrayList();
    public a f = new a();

    /* renamed from: g, reason: collision with root package name */
    public final ConcatAdapter.Config.StableIdMode f2147g;
    public final StableIdStorage h;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public r f2148a;

        /* renamed from: b, reason: collision with root package name */
        public int f2149b;
        public boolean c;
    }

    public c(ConcatAdapter concatAdapter, ConcatAdapter.Config config) {
        this.f2145a = concatAdapter;
        if (config.isolateViewTypes) {
            this.f2146b = new ViewTypeStorage.IsolatedViewTypeStorage();
        } else {
            this.f2146b = new ViewTypeStorage.SharedIdRangeViewTypeStorage();
        }
        ConcatAdapter.Config.StableIdMode stableIdMode = config.stableIdMode;
        this.f2147g = stableIdMode;
        if (stableIdMode == ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS) {
            this.h = new StableIdStorage.NoStableIdStorage();
        } else if (stableIdMode == ConcatAdapter.Config.StableIdMode.ISOLATED_STABLE_IDS) {
            this.h = new StableIdStorage.IsolatedStableIdStorage();
        } else {
            if (stableIdMode == ConcatAdapter.Config.StableIdMode.SHARED_STABLE_IDS) {
                this.h = new StableIdStorage.SharedPoolStableIdStorage();
                return;
            }
            throw new IllegalArgumentException("unknown stable id mode");
        }
    }

    public final int f(RecyclerView.Adapter adapter) {
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (((r) arrayList.get(i)).c == adapter) {
                return i;
            }
        }
        return -1;
    }

    public final boolean a(int i, RecyclerView.Adapter adapter) {
        ArrayList arrayList = this.e;
        if (i < 0 || i > arrayList.size()) {
            throw new IndexOutOfBoundsException("Index must be between 0 and " + arrayList.size() + ". Given:" + i);
        }
        if (hasStableIds()) {
            Preconditions.checkArgument(adapter.hasStableIds(), "All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS");
        } else if (adapter.hasStableIds()) {
            Log.w("ConcatAdapter", "Stable ids in the adapter will be ignored as the ConcatAdapter is configured not to have stable ids");
        }
        int iF = f(adapter);
        if ((iF == -1 ? null : (r) arrayList.get(iF)) != null) {
            return false;
        }
        r rVar = new r(adapter, this, this.f2146b, this.h.createStableIdLookup());
        arrayList.add(i, rVar);
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            RecyclerView recyclerView = (RecyclerView) ((WeakReference) it.next()).get();
            if (recyclerView != null) {
                adapter.onAttachedToRecyclerView(recyclerView);
            }
        }
        if (rVar.e > 0) {
            this.f2145a.notifyItemRangeInserted(c(rVar), rVar.e);
        }
        b();
        return true;
    }

    public final int c(r rVar) {
        r rVar2;
        Iterator it = this.e.iterator();
        int i = 0;
        while (it.hasNext() && (rVar2 = (r) it.next()) != rVar) {
            i += rVar2.e;
        }
        return i;
    }

    public long getItemId(int i) {
        a aVarD = d(i);
        long itemId = aVarD.f2148a.getItemId(aVarD.f2149b);
        aVarD.c = false;
        aVarD.f2148a = null;
        aVarD.f2149b = -1;
        this.f = aVarD;
        return itemId;
    }

    @Override // androidx.recyclerview.widget.r.b
    public void onChanged(@NonNull r rVar) {
        this.f2145a.notifyDataSetChanged();
        b();
    }

    @Override // androidx.recyclerview.widget.r.b
    public void onItemRangeChanged(@NonNull r rVar, int i, int i2, @Nullable Object obj) {
        this.f2145a.notifyItemRangeChanged(i + c(rVar), i2, obj);
    }

    @Override // androidx.recyclerview.widget.r.b
    public void onItemRangeInserted(@NonNull r rVar, int i, int i2) {
        this.f2145a.notifyItemRangeInserted(i + c(rVar), i2);
    }

    @Override // androidx.recyclerview.widget.r.b
    public void onItemRangeRemoved(@NonNull r rVar, int i, int i2) {
        this.f2145a.notifyItemRangeRemoved(i + c(rVar), i2);
    }

    @Override // androidx.recyclerview.widget.r.b
    public void onItemRangeMoved(@NonNull r rVar, int i, int i2) {
        int iC = c(rVar);
        this.f2145a.notifyItemMoved(i + iC, i2 + iC);
    }

    @Override // androidx.recyclerview.widget.r.b
    public void onStateRestorationPolicyChanged(r rVar) {
        b();
    }

    public final void b() {
        RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy;
        Iterator it = this.e.iterator();
        while (true) {
            if (it.hasNext()) {
                r rVar = (r) it.next();
                RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy2 = rVar.c.getStateRestorationPolicy();
                stateRestorationPolicy = RecyclerView.Adapter.StateRestorationPolicy.PREVENT;
                if (stateRestorationPolicy2 == stateRestorationPolicy || (stateRestorationPolicy2 == RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY && rVar.e == 0)) {
                    break;
                }
            } else {
                stateRestorationPolicy = RecyclerView.Adapter.StateRestorationPolicy.ALLOW;
                break;
            }
        }
        ConcatAdapter concatAdapter = this.f2145a;
        if (stateRestorationPolicy != concatAdapter.getStateRestorationPolicy()) {
            concatAdapter.a(stateRestorationPolicy);
        }
    }

    public int getTotalCount() {
        Iterator it = this.e.iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((r) it.next()).e;
        }
        return i;
    }

    public int getItemViewType(int i) {
        a aVarD = d(i);
        r rVar = aVarD.f2148a;
        int iLocalToGlobal = rVar.f2192a.localToGlobal(rVar.c.getItemViewType(aVarD.f2149b));
        aVarD.c = false;
        aVarD.f2148a = null;
        aVarD.f2149b = -1;
        this.f = aVarD;
        return iLocalToGlobal;
    }

    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        r wrapperForGlobalType = this.f2146b.getWrapperForGlobalType(i);
        return wrapperForGlobalType.c.onCreateViewHolder(viewGroup, wrapperForGlobalType.f2192a.globalToLocal(i));
    }

    public Pair<RecyclerView.Adapter<? extends RecyclerView.ViewHolder>, Integer> getWrappedAdapterAndPosition(int i) {
        a aVarD = d(i);
        Pair<RecyclerView.Adapter<? extends RecyclerView.ViewHolder>, Integer> pair = new Pair<>(aVarD.f2148a.c, Integer.valueOf(aVarD.f2149b));
        aVarD.c = false;
        aVarD.f2148a = null;
        aVarD.f2149b = -1;
        this.f = aVarD;
        return pair;
    }

    public final a d(int i) {
        a aVar = this.f;
        if (aVar.c) {
            aVar = new a();
        } else {
            aVar.c = true;
        }
        Iterator it = this.e.iterator();
        int i2 = i;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            r rVar = (r) it.next();
            int i3 = rVar.e;
            if (i3 > i2) {
                aVar.f2148a = rVar;
                aVar.f2149b = i2;
                break;
            }
            i2 -= i3;
        }
        if (aVar.f2148a != null) {
            return aVar;
        }
        throw new IllegalArgumentException(_COROUTINE.a.d(i, "Cannot find wrapper for "));
    }

    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        a aVarD = d(i);
        this.d.put(viewHolder, aVarD.f2148a);
        r rVar = aVarD.f2148a;
        rVar.c.bindViewHolder(viewHolder, aVarD.f2149b);
        aVarD.c = false;
        aVarD.f2148a = null;
        aVarD.f2149b = -1;
        this.f = aVarD;
    }

    public void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        e(viewHolder).c.onViewAttachedToWindow(viewHolder);
    }

    public void onViewDetachedFromWindow(RecyclerView.ViewHolder viewHolder) {
        e(viewHolder).c.onViewDetachedFromWindow(viewHolder);
    }

    public void onViewRecycled(RecyclerView.ViewHolder viewHolder) {
        IdentityHashMap identityHashMap = this.d;
        r rVar = (r) identityHashMap.get(viewHolder);
        if (rVar == null) {
            throw new IllegalStateException("Cannot find wrapper for " + viewHolder + ", seems like it is not bound by this adapter: " + this);
        }
        rVar.c.onViewRecycled(viewHolder);
        identityHashMap.remove(viewHolder);
    }

    public boolean onFailedToRecycleView(RecyclerView.ViewHolder viewHolder) {
        IdentityHashMap identityHashMap = this.d;
        r rVar = (r) identityHashMap.get(viewHolder);
        if (rVar == null) {
            throw new IllegalStateException("Cannot find wrapper for " + viewHolder + ", seems like it is not bound by this adapter: " + this);
        }
        boolean zOnFailedToRecycleView = rVar.c.onFailedToRecycleView(viewHolder);
        identityHashMap.remove(viewHolder);
        return zOnFailedToRecycleView;
    }

    public final r e(RecyclerView.ViewHolder viewHolder) {
        r rVar = (r) this.d.get(viewHolder);
        if (rVar != null) {
            return rVar;
        }
        throw new IllegalStateException("Cannot find wrapper for " + viewHolder + ", seems like it is not bound by this adapter: " + this);
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        ArrayList arrayList = this.c;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (((WeakReference) it.next()).get() == recyclerView) {
                return;
            }
        }
        arrayList.add(new WeakReference(recyclerView));
        Iterator it2 = this.e.iterator();
        while (it2.hasNext()) {
            ((r) it2.next()).c.onAttachedToRecyclerView(recyclerView);
        }
    }

    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        ArrayList arrayList = this.c;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            WeakReference weakReference = (WeakReference) arrayList.get(size);
            if (weakReference.get() == null) {
                arrayList.remove(size);
            } else if (weakReference.get() == recyclerView) {
                arrayList.remove(size);
                break;
            }
            size--;
        }
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((r) it.next()).c.onDetachedFromRecyclerView(recyclerView);
        }
    }

    public int getLocalAdapterPosition(RecyclerView.Adapter<? extends RecyclerView.ViewHolder> adapter, RecyclerView.ViewHolder viewHolder, int i) {
        r rVar = (r) this.d.get(viewHolder);
        if (rVar == null) {
            return -1;
        }
        int iC = i - c(rVar);
        RecyclerView.Adapter adapter2 = rVar.c;
        int itemCount = adapter2.getItemCount();
        if (iC >= 0 && iC < itemCount) {
            return adapter2.findRelativeAdapterPositionIn(adapter, viewHolder, iC);
        }
        StringBuilder sbN = _COROUTINE.a.n(iC, itemCount, "Detected inconsistent adapter updates. The local position of the view holder maps to ", " which is out of bounds for the adapter with size ", ".Make sure to immediately call notify methods in your adapter when you change the backing dataviewHolder:");
        sbN.append(viewHolder);
        sbN.append("adapter:");
        sbN.append(adapter);
        throw new IllegalStateException(sbN.toString());
    }

    public List<RecyclerView.Adapter<? extends RecyclerView.ViewHolder>> getCopyOfAdapters() {
        ArrayList arrayList = this.e;
        if (arrayList.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((r) it.next()).c);
        }
        return arrayList2;
    }

    public boolean hasStableIds() {
        return this.f2147g != ConcatAdapter.Config.StableIdMode.NO_STABLE_IDS;
    }
}
