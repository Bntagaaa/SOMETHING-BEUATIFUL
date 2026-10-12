package androidx.recyclerview.widget;

import android.util.SparseArray;
import java.lang.reflect.Array;

/* loaded from: classes.dex */
class TileList<T> {

    /* renamed from: a, reason: collision with root package name */
    public final int f2123a;

    /* renamed from: b, reason: collision with root package name */
    public final SparseArray f2124b = new SparseArray(10);
    public Tile c;

    public TileList(int i) {
        this.f2123a = i;
    }

    public T getItemAt(int i) {
        int i2;
        Tile tile = this.c;
        if (tile == null || (i2 = tile.mStartPosition) > i || i >= i2 + tile.mItemCount) {
            int i3 = i - (i % this.f2123a);
            SparseArray sparseArray = this.f2124b;
            int iIndexOfKey = sparseArray.indexOfKey(i3);
            if (iIndexOfKey < 0) {
                return null;
            }
            this.c = (Tile) sparseArray.valueAt(iIndexOfKey);
        }
        Tile tile2 = this.c;
        return tile2.mItems[i - tile2.mStartPosition];
    }

    public int size() {
        return this.f2124b.size();
    }

    public void clear() {
        this.f2124b.clear();
    }

    public Tile<T> getAtIndex(int i) {
        if (i < 0) {
            return null;
        }
        SparseArray sparseArray = this.f2124b;
        if (i >= sparseArray.size()) {
            return null;
        }
        return (Tile) sparseArray.valueAt(i);
    }

    public Tile<T> addOrReplace(Tile<T> tile) {
        SparseArray sparseArray = this.f2124b;
        int iIndexOfKey = sparseArray.indexOfKey(tile.mStartPosition);
        if (iIndexOfKey < 0) {
            sparseArray.put(tile.mStartPosition, tile);
            return null;
        }
        Tile<T> tile2 = (Tile) sparseArray.valueAt(iIndexOfKey);
        sparseArray.setValueAt(iIndexOfKey, tile);
        if (this.c == tile2) {
            this.c = tile;
        }
        return tile2;
    }

    public Tile<T> removeAtPos(int i) {
        SparseArray sparseArray = this.f2124b;
        Tile<T> tile = (Tile) sparseArray.get(i);
        if (this.c == tile) {
            this.c = null;
        }
        sparseArray.delete(i);
        return tile;
    }

    public static class Tile<T> {

        /* renamed from: a, reason: collision with root package name */
        public Tile f2125a;
        public int mItemCount;
        public final T[] mItems;
        public int mStartPosition;

        public Tile(Class cls, int i) {
            this.mItems = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i));
        }
    }
}
