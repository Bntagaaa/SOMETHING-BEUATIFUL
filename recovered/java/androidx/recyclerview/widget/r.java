package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StableIdStorage;
import androidx.recyclerview.widget.ViewTypeStorage;

/* loaded from: classes.dex */
class r {

    /* renamed from: a, reason: collision with root package name */
    public final ViewTypeStorage.ViewTypeLookup f2192a;

    /* renamed from: b, reason: collision with root package name */
    public final StableIdStorage.StableIdLookup f2193b;
    public final RecyclerView.Adapter c;
    public final c d;
    public int e;
    public final RecyclerView.AdapterDataObserver f;

    public interface b {
        void onChanged(@NonNull r rVar);

        void onItemRangeChanged(@NonNull r rVar, int i, int i2, @Nullable Object obj);

        void onItemRangeInserted(@NonNull r rVar, int i, int i2);

        void onItemRangeMoved(@NonNull r rVar, int i, int i2);

        void onItemRangeRemoved(@NonNull r rVar, int i, int i2);

        void onStateRestorationPolicyChanged(r rVar);
    }

    public class a extends RecyclerView.AdapterDataObserver {
        public a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            r rVar = r.this;
            rVar.e = rVar.c.getItemCount();
            rVar.d.onChanged(rVar);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2) {
            r rVar = r.this;
            rVar.d.onItemRangeChanged(rVar, i, i2, null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2, @Nullable Object obj) {
            r rVar = r.this;
            rVar.d.onItemRangeChanged(rVar, i, i2, obj);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i, int i2) {
            r rVar = r.this;
            rVar.e += i2;
            c cVar = rVar.d;
            cVar.onItemRangeInserted(rVar, i, i2);
            if (rVar.e <= 0 || rVar.c.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                return;
            }
            cVar.onStateRestorationPolicyChanged(rVar);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i, int i2) {
            r rVar = r.this;
            rVar.e -= i2;
            c cVar = rVar.d;
            cVar.onItemRangeRemoved(rVar, i, i2);
            if (rVar.e >= 1 || rVar.c.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY) {
                return;
            }
            cVar.onStateRestorationPolicyChanged(rVar);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i, int i2, int i3) {
            Preconditions.checkArgument(i3 == 1, "moving more than 1 item is not supported in RecyclerView");
            r rVar = r.this;
            rVar.d.onItemRangeMoved(rVar, i, i2);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onStateRestorationPolicyChanged() {
            r rVar = r.this;
            rVar.d.onStateRestorationPolicyChanged(rVar);
        }
    }

    public r(RecyclerView.Adapter adapter, c cVar, ViewTypeStorage viewTypeStorage, StableIdStorage.StableIdLookup stableIdLookup) {
        a aVar = new a();
        this.f = aVar;
        this.c = adapter;
        this.d = cVar;
        this.f2192a = viewTypeStorage.createViewTypeWrapper(this);
        this.f2193b = stableIdLookup;
        this.e = adapter.getItemCount();
        adapter.registerAdapterDataObserver(aVar);
    }

    public long getItemId(int i) {
        return this.f2193b.localToGlobal(this.c.getItemId(i));
    }
}
