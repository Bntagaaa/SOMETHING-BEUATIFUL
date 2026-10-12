package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
class u {

    /* renamed from: a, reason: collision with root package name */
    public final SimpleArrayMap f2196a = new SimpleArrayMap();

    /* renamed from: b, reason: collision with root package name */
    public final LongSparseArray f2197b = new LongSparseArray();

    public interface b {
        void processAppeared(RecyclerView.ViewHolder viewHolder, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void processDisappeared(RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void processPersistent(RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void unused(RecyclerView.ViewHolder viewHolder);
    }

    public final RecyclerView.ItemAnimator.ItemHolderInfo b(RecyclerView.ViewHolder viewHolder, int i) {
        a aVar;
        RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo;
        SimpleArrayMap simpleArrayMap = this.f2196a;
        int iIndexOfKey = simpleArrayMap.indexOfKey(viewHolder);
        if (iIndexOfKey >= 0 && (aVar = (a) simpleArrayMap.valueAt(iIndexOfKey)) != null) {
            int i2 = aVar.f2198a;
            if ((i2 & i) != 0) {
                int i3 = i2 & (~i);
                aVar.f2198a = i3;
                if (i == 4) {
                    itemHolderInfo = aVar.f2199b;
                } else if (i == 8) {
                    itemHolderInfo = aVar.c;
                } else {
                    throw new IllegalArgumentException("Must provide flag PRE or POST");
                }
                if ((i3 & 12) == 0) {
                    simpleArrayMap.removeAt(iIndexOfKey);
                    aVar.f2198a = 0;
                    aVar.f2199b = null;
                    aVar.c = null;
                    a.d.release(aVar);
                }
                return itemHolderInfo;
            }
        }
        return null;
    }

    public final void a(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        SimpleArrayMap simpleArrayMap = this.f2196a;
        a aVarA = (a) simpleArrayMap.get(viewHolder);
        if (aVarA == null) {
            aVarA = a.a();
            simpleArrayMap.put(viewHolder, aVarA);
        }
        aVarA.c = itemHolderInfo;
        aVarA.f2198a |= 8;
    }

    public final void c(RecyclerView.ViewHolder viewHolder) {
        a aVar = (a) this.f2196a.get(viewHolder);
        if (aVar == null) {
            return;
        }
        aVar.f2198a &= -2;
    }

    public final void d(RecyclerView.ViewHolder viewHolder) {
        LongSparseArray longSparseArray = this.f2197b;
        int size = longSparseArray.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            }
            if (viewHolder == longSparseArray.valueAt(size)) {
                longSparseArray.removeAt(size);
                break;
            }
            size--;
        }
        a aVar = (a) this.f2196a.remove(viewHolder);
        if (aVar != null) {
            aVar.f2198a = 0;
            aVar.f2199b = null;
            aVar.c = null;
            a.d.release(aVar);
        }
    }

    public void onViewDetached(RecyclerView.ViewHolder viewHolder) {
        c(viewHolder);
    }

    public static class a {
        public static final Pools.SimplePool d = new Pools.SimplePool(20);

        /* renamed from: a, reason: collision with root package name */
        public int f2198a;

        /* renamed from: b, reason: collision with root package name */
        public RecyclerView.ItemAnimator.ItemHolderInfo f2199b;
        public RecyclerView.ItemAnimator.ItemHolderInfo c;

        private a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static a a() {
            a aVar = (a) d.acquire();
            return aVar == null ? new a() : aVar;
        }
    }
}
