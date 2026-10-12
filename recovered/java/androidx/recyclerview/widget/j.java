package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.core.os.TraceCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class j implements Runnable {
    public static final ThreadLocal e = new ThreadLocal();
    public static final Comparator f = new a();

    /* renamed from: b, reason: collision with root package name */
    public long f2169b;
    public long c;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2168a = new ArrayList();
    public final ArrayList d = new ArrayList();

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public boolean f2172a;

        /* renamed from: b, reason: collision with root package name */
        public int f2173b;
        public int c;
        public RecyclerView d;
        public int e;

        public void clear() {
            this.f2172a = false;
            this.f2173b = 0;
            this.c = 0;
            this.d = null;
            this.e = 0;
        }
    }

    @SuppressLint({"VisibleForTests"})
    public static class b implements RecyclerView.LayoutManager.LayoutPrefetchRegistry {

        /* renamed from: a, reason: collision with root package name */
        public int f2170a;

        /* renamed from: b, reason: collision with root package name */
        public int f2171b;
        public int[] c;
        public int d;

        public final void a(RecyclerView recyclerView, boolean z) {
            this.d = 0;
            int[] iArr = this.c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
            if (recyclerView.mAdapter == null || layoutManager == null || !layoutManager.isItemPrefetchEnabled()) {
                return;
            }
            if (z) {
                if (!recyclerView.mAdapterHelper.g()) {
                    layoutManager.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                layoutManager.collectAdjacentPrefetchPositions(this.f2170a, this.f2171b, recyclerView.mState, this);
            }
            int i = this.d;
            if (i > layoutManager.k) {
                layoutManager.k = i;
                layoutManager.l = z;
                recyclerView.mRecycler.m();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager.LayoutPrefetchRegistry
        public void addPosition(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i3 = this.d;
            int i4 = i3 * 2;
            int[] iArr = this.c;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.c = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i4 >= iArr.length) {
                int[] iArr3 = new int[i3 * 4];
                this.c = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.c;
            iArr4[i4] = i;
            iArr4[i4 + 1] = i2;
            this.d++;
        }
    }

    public void add(RecyclerView recyclerView) {
        boolean z = RecyclerView.sDebugAssertionsEnabled;
        ArrayList arrayList = this.f2168a;
        if (z && arrayList.contains(recyclerView)) {
            throw new IllegalStateException("RecyclerView already present in worker list!");
        }
        arrayList.add(recyclerView);
    }

    public void remove(RecyclerView recyclerView) {
        boolean zRemove = this.f2168a.remove(recyclerView);
        if (RecyclerView.sDebugAssertionsEnabled && !zRemove) {
            throw new IllegalStateException("RecyclerView removal failed!");
        }
    }

    public final void a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow()) {
            if (RecyclerView.sDebugAssertionsEnabled && !this.f2168a.contains(recyclerView)) {
                throw new IllegalStateException("attempting to post unregistered view!");
            }
            if (this.f2169b == 0) {
                this.f2169b = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        b bVar = recyclerView.mPrefetchRegistry;
        bVar.f2170a = i;
        bVar.f2171b = i2;
    }

    public class a implements Comparator<c> {
        @Override // java.util.Comparator
        public int compare(c cVar, c cVar2) {
            RecyclerView recyclerView = cVar.d;
            if ((recyclerView == null) != (cVar2.d == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z = cVar.f2172a;
            if (z != cVar2.f2172a) {
                return z ? -1 : 1;
            }
            int i = cVar2.f2173b - cVar.f2173b;
            if (i != 0) {
                return i;
            }
            int i2 = cVar.c - cVar2.c;
            if (i2 != 0) {
                return i2;
            }
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(long r17) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.j.b(long):void");
    }

    public static RecyclerView.ViewHolder c(RecyclerView recyclerView, int i, long j) {
        int childCount = recyclerView.mChildHelper.f2141a.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.f2141a.getChildAt(i2));
            if (childViewHolderInt.mPosition == i && !childViewHolderInt.isInvalid()) {
                return null;
            }
        }
        RecyclerView.Recycler recycler = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.ViewHolder viewHolderK = recycler.k(i, j);
            if (viewHolderK != null) {
                if (viewHolderK.isBound() && !viewHolderK.isInvalid()) {
                    recycler.recycleView(viewHolderK.itemView);
                } else {
                    recycler.a(viewHolderK, false);
                }
            }
            recyclerView.onExitLayoutOrScroll(false);
            return viewHolderK;
        } catch (Throwable th) {
            recyclerView.onExitLayoutOrScroll(false);
            throw th;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            TraceCompat.beginSection("RV Prefetch");
            ArrayList arrayList = this.f2168a;
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                long jMax = 0;
                for (int i = 0; i < size; i++) {
                    RecyclerView recyclerView = (RecyclerView) arrayList.get(i);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    b(TimeUnit.MILLISECONDS.toNanos(jMax) + this.c);
                }
            }
        } finally {
            this.f2169b = 0L;
            TraceCompat.endSection();
        }
    }
}
