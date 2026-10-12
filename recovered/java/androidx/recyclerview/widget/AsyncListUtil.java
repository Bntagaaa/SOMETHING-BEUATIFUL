package androidx.recyclerview.widget;

import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;
import androidx.recyclerview.widget.ThreadUtil;
import androidx.recyclerview.widget.TileList;

/* loaded from: classes.dex */
public class AsyncListUtil<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Class f1991a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1992b;
    public final DataCallback c;
    public final ViewCallback d;
    public final TileList e;
    public final ThreadUtil.MainThreadCallback f;

    /* renamed from: g, reason: collision with root package name */
    public final ThreadUtil.BackgroundCallback f1993g;
    public boolean k;
    public final ThreadUtil.MainThreadCallback q;
    public final ThreadUtil.BackgroundCallback r;
    public final int[] h = new int[2];
    public final int[] i = new int[2];
    public final int[] j = new int[2];
    public int l = 0;
    public int m = 0;
    public int n = 0;
    public int o = 0;
    public final SparseIntArray p = new SparseIntArray();

    public static abstract class DataCallback<T> {
        @WorkerThread
        public abstract void fillData(@NonNull T[] tArr, int i, int i2);

        @WorkerThread
        public int getMaxCachedTiles() {
            return 10;
        }

        @WorkerThread
        public void recycleData(@NonNull T[] tArr, int i) {
        }

        @WorkerThread
        public abstract int refreshData();
    }

    public AsyncListUtil(@NonNull Class<T> cls, int i, @NonNull DataCallback<T> dataCallback, @NonNull ViewCallback viewCallback) {
        a aVar = new a();
        this.q = aVar;
        b bVar = new b();
        this.r = bVar;
        this.f1991a = cls;
        this.f1992b = i;
        this.c = dataCallback;
        this.d = viewCallback;
        this.e = new TileList(i);
        q qVar = new q();
        this.f = qVar.getMainThreadProxy(aVar);
        this.f1993g = qVar.getBackgroundProxy(bVar);
        refresh();
    }

    public void onRangeChanged() {
        if (this.o != this.n) {
            return;
        }
        a();
        this.k = true;
    }

    public void refresh() {
        this.p.clear();
        int i = this.o + 1;
        this.o = i;
        this.f1993g.refresh(i);
    }

    @Nullable
    public T getItem(int i) {
        if (i < 0 || i >= this.m) {
            throw new IndexOutOfBoundsException(i + " is not within 0 and " + this.m);
        }
        T t = (T) this.e.getItemAt(i);
        if (t != null || this.o != this.n) {
            return t;
        }
        this.p.put(i, 0);
        return t;
    }

    public int getItemCount() {
        return this.m;
    }

    public final void a() {
        int i;
        int[] iArr = this.h;
        ViewCallback viewCallback = this.d;
        viewCallback.getItemRangeInto(iArr);
        int i2 = iArr[0];
        int i3 = iArr[1];
        if (i2 > i3 || i2 < 0 || i3 >= this.m) {
            return;
        }
        boolean z = this.k;
        int[] iArr2 = this.i;
        if (!z || i2 > iArr2[1] || (i = iArr2[0]) > i3) {
            this.l = 0;
        } else if (i2 < i) {
            this.l = 1;
        } else if (i2 > i) {
            this.l = 2;
        }
        iArr2[0] = i2;
        iArr2[1] = i3;
        int i4 = this.l;
        int[] iArr3 = this.j;
        viewCallback.extendRangeInto(iArr, iArr3, i4);
        iArr3[0] = Math.min(iArr[0], Math.max(iArr3[0], 0));
        int iMax = Math.max(iArr[1], Math.min(iArr3[1], this.m - 1));
        iArr3[1] = iMax;
        this.f1993g.updateRange(iArr[0], iArr[1], iArr3[0], iMax, this.l);
    }

    public class a implements ThreadUtil.MainThreadCallback<T> {
        public a() {
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void addTile(int i, TileList.Tile<T> tile) {
            AsyncListUtil asyncListUtil = AsyncListUtil.this;
            int i2 = 0;
            boolean z = i == asyncListUtil.o;
            ThreadUtil.BackgroundCallback backgroundCallback = asyncListUtil.f1993g;
            if (!z) {
                backgroundCallback.recycleTile(tile);
                return;
            }
            TileList.Tile<T> tileAddOrReplace = asyncListUtil.e.addOrReplace(tile);
            if (tileAddOrReplace != null) {
                Log.e("AsyncListUtil", "duplicate tile @" + tileAddOrReplace.mStartPosition);
                backgroundCallback.recycleTile(tileAddOrReplace);
            }
            int i3 = tile.mStartPosition + tile.mItemCount;
            while (true) {
                SparseIntArray sparseIntArray = asyncListUtil.p;
                if (i2 >= sparseIntArray.size()) {
                    return;
                }
                int iKeyAt = sparseIntArray.keyAt(i2);
                if (tile.mStartPosition > iKeyAt || iKeyAt >= i3) {
                    i2++;
                } else {
                    sparseIntArray.removeAt(i2);
                    asyncListUtil.d.onItemLoaded(iKeyAt);
                }
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void removeTile(int i, int i2) {
            AsyncListUtil asyncListUtil = AsyncListUtil.this;
            if (i == asyncListUtil.o) {
                TileList.Tile<T> tileRemoveAtPos = asyncListUtil.e.removeAtPos(i2);
                if (tileRemoveAtPos == null) {
                    Log.e("AsyncListUtil", "tile not found @" + i2);
                    return;
                }
                asyncListUtil.f1993g.recycleTile(tileRemoveAtPos);
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
        public void updateItemCount(int i, int i2) {
            AsyncListUtil asyncListUtil = AsyncListUtil.this;
            if (i != asyncListUtil.o) {
                return;
            }
            asyncListUtil.m = i2;
            asyncListUtil.d.onDataRefresh();
            asyncListUtil.n = asyncListUtil.o;
            int i3 = 0;
            while (true) {
                TileList tileList = asyncListUtil.e;
                if (i3 < tileList.size()) {
                    asyncListUtil.f1993g.recycleTile(tileList.getAtIndex(i3));
                    i3++;
                } else {
                    tileList.clear();
                    asyncListUtil.k = false;
                    asyncListUtil.a();
                    return;
                }
            }
        }
    }

    public class b implements ThreadUtil.BackgroundCallback<T> {

        /* renamed from: a, reason: collision with root package name */
        public TileList.Tile f1995a;

        /* renamed from: b, reason: collision with root package name */
        public final SparseBooleanArray f1996b = new SparseBooleanArray();
        public int c;
        public int d;
        public int e;
        public int f;

        public b() {
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void refresh(int i) {
            this.c = i;
            this.f1996b.clear();
            AsyncListUtil asyncListUtil = AsyncListUtil.this;
            int iRefreshData = asyncListUtil.c.refreshData();
            this.d = iRefreshData;
            asyncListUtil.f.updateItemCount(this.c, iRefreshData);
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void updateRange(int i, int i2, int i3, int i4, int i5) {
            if (i > i2) {
                return;
            }
            AsyncListUtil asyncListUtil = AsyncListUtil.this;
            int i6 = asyncListUtil.f1992b;
            int i7 = i - (i % i6);
            int i8 = i2 - (i2 % i6);
            int i9 = i3 - (i3 % i6);
            this.e = i9;
            int i10 = i4 - (i4 % i6);
            this.f = i10;
            int i11 = asyncListUtil.f1992b;
            if (i5 == 1) {
                a(i9, i8, i5, true);
                a(i8 + i11, this.f, i5, false);
            } else {
                a(i7, i10, i5, false);
                a(this.e, i7 - i11, i5, true);
            }
        }

        public final void a(int i, int i2, int i3, boolean z) {
            int i4 = i;
            while (i4 <= i2) {
                int i5 = z ? (i2 + i) - i4 : i4;
                AsyncListUtil asyncListUtil = AsyncListUtil.this;
                asyncListUtil.f1993g.loadTile(i5, i3);
                i4 += asyncListUtil.f1992b;
            }
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void recycleTile(TileList.Tile<T> tile) {
            AsyncListUtil.this.c.recycleData(tile.mItems, tile.mItemCount);
            tile.f2125a = this.f1995a;
            this.f1995a = tile;
        }

        @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
        public void loadTile(int i, int i2) {
            SparseBooleanArray sparseBooleanArray = this.f1996b;
            if (sparseBooleanArray.get(i)) {
                return;
            }
            TileList.Tile<T> tile = this.f1995a;
            AsyncListUtil asyncListUtil = AsyncListUtil.this;
            int i3 = asyncListUtil.f1992b;
            if (tile != null) {
                this.f1995a = tile.f2125a;
            } else {
                tile = new TileList.Tile<>(asyncListUtil.f1991a, i3);
            }
            tile.mStartPosition = i;
            int iMin = Math.min(i3, this.d - i);
            tile.mItemCount = iMin;
            T[] tArr = tile.mItems;
            int i4 = tile.mStartPosition;
            DataCallback dataCallback = asyncListUtil.c;
            dataCallback.fillData(tArr, i4, iMin);
            int maxCachedTiles = dataCallback.getMaxCachedTiles();
            while (sparseBooleanArray.size() >= maxCachedTiles) {
                int iKeyAt = sparseBooleanArray.keyAt(0);
                int iKeyAt2 = sparseBooleanArray.keyAt(sparseBooleanArray.size() - 1);
                int i5 = this.e - iKeyAt;
                int i6 = iKeyAt2 - this.f;
                if (i5 > 0 && (i5 >= i6 || i2 == 2)) {
                    sparseBooleanArray.delete(iKeyAt);
                    asyncListUtil.f.removeTile(this.c, iKeyAt);
                } else {
                    if (i6 <= 0 || (i5 >= i6 && i2 != 1)) {
                        break;
                    }
                    sparseBooleanArray.delete(iKeyAt2);
                    asyncListUtil.f.removeTile(this.c, iKeyAt2);
                }
            }
            sparseBooleanArray.put(tile.mStartPosition, true);
            asyncListUtil.f.addTile(this.c, tile);
        }
    }

    public static abstract class ViewCallback {
        public static final int HINT_SCROLL_ASC = 2;
        public static final int HINT_SCROLL_DESC = 1;
        public static final int HINT_SCROLL_NONE = 0;

        @UiThread
        public abstract void getItemRangeInto(@NonNull int[] iArr);

        @UiThread
        public abstract void onDataRefresh();

        @UiThread
        public abstract void onItemLoaded(int i);

        @UiThread
        public void extendRangeInto(@NonNull int[] iArr, @NonNull int[] iArr2, int i) {
            int i2 = iArr[1];
            int i3 = iArr[0];
            int i4 = (i2 - i3) + 1;
            int i5 = i4 / 2;
            iArr2[0] = i3 - (i == 1 ? i4 : i5);
            if (i != 2) {
                i4 = i5;
            }
            iArr2[1] = i2 + i4;
        }
    }
}
