package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.collection.LongSparseArray;

/* loaded from: classes.dex */
interface StableIdStorage {

    public interface StableIdLookup {
        long localToGlobal(long j);
    }

    @NonNull
    StableIdLookup createStableIdLookup();

    public static class NoStableIdStorage implements StableIdStorage {

        /* renamed from: a, reason: collision with root package name */
        public final StableIdLookup f2108a = new a();

        public class a implements StableIdLookup {
            @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
            public long localToGlobal(long j) {
                return -1L;
            }
        }

        @Override // androidx.recyclerview.widget.StableIdStorage
        @NonNull
        public StableIdLookup createStableIdLookup() {
            return this.f2108a;
        }
    }

    public static class SharedPoolStableIdStorage implements StableIdStorage {

        /* renamed from: a, reason: collision with root package name */
        public final StableIdLookup f2109a = new a();

        public class a implements StableIdLookup {
            @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
            public long localToGlobal(long j) {
                return j;
            }
        }

        @Override // androidx.recyclerview.widget.StableIdStorage
        @NonNull
        public StableIdLookup createStableIdLookup() {
            return this.f2109a;
        }
    }

    public static class IsolatedStableIdStorage implements StableIdStorage {

        /* renamed from: a, reason: collision with root package name */
        public long f2105a = 0;

        @Override // androidx.recyclerview.widget.StableIdStorage
        @NonNull
        public StableIdLookup createStableIdLookup() {
            return new a();
        }

        public class a implements StableIdLookup {

            /* renamed from: a, reason: collision with root package name */
            public final LongSparseArray f2106a = new LongSparseArray();

            public a() {
            }

            @Override // androidx.recyclerview.widget.StableIdStorage.StableIdLookup
            public long localToGlobal(long j) {
                LongSparseArray longSparseArray = this.f2106a;
                Long lValueOf = (Long) longSparseArray.get(j);
                if (lValueOf == null) {
                    IsolatedStableIdStorage isolatedStableIdStorage = IsolatedStableIdStorage.this;
                    long j2 = isolatedStableIdStorage.f2105a;
                    isolatedStableIdStorage.f2105a = 1 + j2;
                    lValueOf = Long.valueOf(j2);
                    longSparseArray.put(j, lValueOf);
                }
                return lValueOf.longValue();
            }
        }
    }
}
