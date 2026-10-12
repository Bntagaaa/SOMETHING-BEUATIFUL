package androidx.recyclerview.widget;

import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
interface ViewTypeStorage {

    public interface ViewTypeLookup {
        void dispose();

        int globalToLocal(int i);

        int localToGlobal(int i);
    }

    @NonNull
    ViewTypeLookup createViewTypeWrapper(@NonNull r rVar);

    @NonNull
    r getWrapperForGlobalType(int i);

    public static class SharedIdRangeViewTypeStorage implements ViewTypeStorage {

        /* renamed from: a, reason: collision with root package name */
        public final SparseArray f2134a = new SparseArray();

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public r getWrapperForGlobalType(int i) {
            List list = (List) this.f2134a.get(i);
            if (list == null || list.isEmpty()) {
                throw new IllegalArgumentException(_COROUTINE.a.d(i, "Cannot find the wrapper for global view type "));
            }
            return (r) list.get(0);
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public ViewTypeLookup createViewTypeWrapper(@NonNull r rVar) {
            return new a(rVar);
        }

        public class a implements ViewTypeLookup {

            /* renamed from: a, reason: collision with root package name */
            public final r f2135a;

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int globalToLocal(int i) {
                return i;
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public void dispose() {
                SparseArray sparseArray = SharedIdRangeViewTypeStorage.this.f2134a;
                for (int size = sparseArray.size() - 1; size >= 0; size--) {
                    List list = (List) sparseArray.valueAt(size);
                    if (list.remove(this.f2135a) && list.isEmpty()) {
                        sparseArray.removeAt(size);
                    }
                }
            }

            public a(r rVar) {
                this.f2135a = rVar;
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int localToGlobal(int i) {
                SharedIdRangeViewTypeStorage sharedIdRangeViewTypeStorage = SharedIdRangeViewTypeStorage.this;
                List arrayList = (List) sharedIdRangeViewTypeStorage.f2134a.get(i);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    sharedIdRangeViewTypeStorage.f2134a.put(i, arrayList);
                }
                r rVar = this.f2135a;
                if (!arrayList.contains(rVar)) {
                    arrayList.add(rVar);
                }
                return i;
            }
        }
    }

    public static class IsolatedViewTypeStorage implements ViewTypeStorage {

        /* renamed from: a, reason: collision with root package name */
        public final SparseArray f2130a = new SparseArray();

        /* renamed from: b, reason: collision with root package name */
        public int f2131b = 0;

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public r getWrapperForGlobalType(int i) {
            r rVar = (r) this.f2130a.get(i);
            if (rVar != null) {
                return rVar;
            }
            throw new IllegalArgumentException(_COROUTINE.a.d(i, "Cannot find the wrapper for global view type "));
        }

        @Override // androidx.recyclerview.widget.ViewTypeStorage
        @NonNull
        public ViewTypeLookup createViewTypeWrapper(@NonNull r rVar) {
            return new a(rVar);
        }

        public class a implements ViewTypeLookup {

            /* renamed from: a, reason: collision with root package name */
            public final SparseIntArray f2132a = new SparseIntArray(1);

            /* renamed from: b, reason: collision with root package name */
            public final SparseIntArray f2133b = new SparseIntArray(1);
            public final r c;

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public void dispose() {
                SparseArray sparseArray = IsolatedViewTypeStorage.this.f2130a;
                for (int size = sparseArray.size() - 1; size >= 0; size--) {
                    if (((r) sparseArray.valueAt(size)) == this.c) {
                        sparseArray.removeAt(size);
                    }
                }
            }

            public a(r rVar) {
                this.c = rVar;
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int localToGlobal(int i) {
                SparseIntArray sparseIntArray = this.f2132a;
                int iIndexOfKey = sparseIntArray.indexOfKey(i);
                if (iIndexOfKey <= -1) {
                    IsolatedViewTypeStorage isolatedViewTypeStorage = IsolatedViewTypeStorage.this;
                    int i2 = isolatedViewTypeStorage.f2131b;
                    isolatedViewTypeStorage.f2131b = i2 + 1;
                    isolatedViewTypeStorage.f2130a.put(i2, this.c);
                    sparseIntArray.put(i, i2);
                    this.f2133b.put(i2, i);
                    return i2;
                }
                return sparseIntArray.valueAt(iIndexOfKey);
            }

            @Override // androidx.recyclerview.widget.ViewTypeStorage.ViewTypeLookup
            public int globalToLocal(int i) {
                SparseIntArray sparseIntArray = this.f2133b;
                int iIndexOfKey = sparseIntArray.indexOfKey(i);
                if (iIndexOfKey >= 0) {
                    return sparseIntArray.valueAt(iIndexOfKey);
                }
                StringBuilder sbO = _COROUTINE.a.o(i, "requested global type ", " does not belong to the adapter:");
                sbO.append(this.c.c);
                throw new IllegalStateException(sbO.toString());
            }
        }
    }
}
