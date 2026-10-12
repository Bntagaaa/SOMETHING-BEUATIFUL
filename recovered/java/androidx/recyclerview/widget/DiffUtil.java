package androidx.recyclerview.widget;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;

/* loaded from: classes.dex */
public class DiffUtil {

    /* renamed from: a, reason: collision with root package name */
    public static final Comparator f2014a = new a();

    public static abstract class Callback {
        public abstract boolean areContentsTheSame(int i, int i2);

        public abstract boolean areItemsTheSame(int i, int i2);

        @Nullable
        public Object getChangePayload(int i, int i2) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    public static abstract class ItemCallback<T> {
        public abstract boolean areContentsTheSame(@NonNull T t, @NonNull T t2);

        public abstract boolean areItemsTheSame(@NonNull T t, @NonNull T t2);

        @Nullable
        public Object getChangePayload(@NonNull T t, @NonNull T t2) {
            return null;
        }
    }

    private DiffUtil() {
    }

    public class a implements Comparator<c> {
        @Override // java.util.Comparator
        public int compare(c cVar, c cVar2) {
            return cVar.f2020a - cVar2.f2020a;
        }
    }

    @NonNull
    public static DiffResult calculateDiff(@NonNull Callback callback) {
        return calculateDiff(callback, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x012f  */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.recyclerview.widget.DiffUtil.DiffResult calculateDiff(@androidx.annotation.NonNull androidx.recyclerview.widget.DiffUtil.Callback r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 704
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.DiffUtil.calculateDiff(androidx.recyclerview.widget.DiffUtil$Callback, boolean):androidx.recyclerview.widget.DiffUtil$DiffResult");
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final int f2020a;

        /* renamed from: b, reason: collision with root package name */
        public final int f2021b;
        public final int c;

        public c(int i, int i2, int i3) {
            this.f2020a = i;
            this.f2021b = i2;
            this.c = i3;
        }
    }

    public static class f {

        /* renamed from: a, reason: collision with root package name */
        public int f2026a;

        /* renamed from: b, reason: collision with root package name */
        public int f2027b;
        public int c;
        public int d;
        public boolean e;

        public final int a() {
            return Math.min(this.c - this.f2026a, this.d - this.f2027b);
        }
    }

    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public int f2024a;

        /* renamed from: b, reason: collision with root package name */
        public int f2025b;
        public int c;
        public int d;

        public e() {
        }

        public e(int i, int i2, int i3, int i4) {
            this.f2024a = i;
            this.f2025b = i2;
            this.c = i3;
            this.d = i4;
        }

        public final int b() {
            return this.f2025b - this.f2024a;
        }

        public final int a() {
            return this.d - this.c;
        }
    }

    public static class DiffResult {
        public static final int NO_POSITION = -1;

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f2015a;

        /* renamed from: b, reason: collision with root package name */
        public final int[] f2016b;
        public final int[] c;
        public final Callback d;
        public final int e;
        public final int f;

        /* renamed from: g, reason: collision with root package name */
        public final boolean f2017g;

        public DiffResult(Callback callback, ArrayList arrayList, int[] iArr, int[] iArr2, boolean z) {
            int[] iArr3;
            int[] iArr4;
            Callback callback2;
            int i;
            c cVar;
            int i2;
            this.f2015a = arrayList;
            this.f2016b = iArr;
            this.c = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.d = callback;
            int oldListSize = callback.getOldListSize();
            this.e = oldListSize;
            int newListSize = callback.getNewListSize();
            this.f = newListSize;
            this.f2017g = z;
            c cVar2 = arrayList.isEmpty() ? null : (c) arrayList.get(0);
            if (cVar2 == null || cVar2.f2020a != 0 || cVar2.f2021b != 0) {
                arrayList.add(0, new c(0, 0, 0));
            }
            arrayList.add(new c(oldListSize, newListSize, 0));
            Iterator it = arrayList.iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                iArr3 = this.c;
                iArr4 = this.f2016b;
                callback2 = this.d;
                if (!zHasNext) {
                    break;
                }
                c cVar3 = (c) it.next();
                for (int i3 = 0; i3 < cVar3.c; i3++) {
                    int i4 = cVar3.f2020a + i3;
                    int i5 = cVar3.f2021b + i3;
                    int i6 = callback2.areContentsTheSame(i4, i5) ? 1 : 2;
                    iArr4[i4] = (i5 << 4) | i6;
                    iArr3[i5] = (i4 << 4) | i6;
                }
            }
            if (this.f2017g) {
                Iterator it2 = arrayList.iterator();
                int i7 = 0;
                while (it2.hasNext()) {
                    c cVar4 = (c) it2.next();
                    while (true) {
                        i = cVar4.f2020a;
                        if (i7 < i) {
                            if (iArr4[i7] == 0) {
                                int size = arrayList.size();
                                int i8 = 0;
                                int i9 = 0;
                                while (true) {
                                    if (i8 < size) {
                                        cVar = (c) arrayList.get(i8);
                                        while (true) {
                                            i2 = cVar.f2021b;
                                            if (i9 < i2) {
                                                if (iArr3[i9] == 0 && callback2.areItemsTheSame(i7, i9)) {
                                                    int i10 = callback2.areContentsTheSame(i7, i9) ? 8 : 4;
                                                    iArr4[i7] = (i9 << 4) | i10;
                                                    iArr3[i9] = i10 | (i7 << 4);
                                                } else {
                                                    i9++;
                                                }
                                            }
                                        }
                                    }
                                    i9 = cVar.c + i2;
                                    i8++;
                                }
                            }
                            i7++;
                        }
                    }
                    i7 = cVar4.c + i;
                }
            }
        }

        public int convertOldPositionToNew(@IntRange(from = 0) int i) {
            int i2 = this.e;
            if (i < 0 || i >= i2) {
                throw new IndexOutOfBoundsException(_COROUTINE.a.c(i, i2, "Index out of bounds - passed position = ", ", old list size = "));
            }
            int i3 = this.f2016b[i];
            if ((i3 & 15) == 0) {
                return -1;
            }
            return i3 >> 4;
        }

        public int convertNewPositionToOld(@IntRange(from = 0) int i) {
            int i2 = this.f;
            if (i < 0 || i >= i2) {
                throw new IndexOutOfBoundsException(_COROUTINE.a.c(i, i2, "Index out of bounds - passed position = ", ", new list size = "));
            }
            int i3 = this.c[i];
            if ((i3 & 15) == 0) {
                return -1;
            }
            return i3 >> 4;
        }

        public void dispatchUpdatesTo(@NonNull RecyclerView.Adapter adapter) {
            dispatchUpdatesTo(new AdapterListUpdateCallback(adapter));
        }

        public void dispatchUpdatesTo(@NonNull ListUpdateCallback listUpdateCallback) {
            BatchingListUpdateCallback batchingListUpdateCallback;
            int[] iArr;
            Callback callback;
            ArrayList arrayList;
            DiffResult diffResult = this;
            if (listUpdateCallback instanceof BatchingListUpdateCallback) {
                batchingListUpdateCallback = (BatchingListUpdateCallback) listUpdateCallback;
            } else {
                batchingListUpdateCallback = new BatchingListUpdateCallback(listUpdateCallback);
            }
            ArrayDeque arrayDeque = new ArrayDeque();
            ArrayList arrayList2 = diffResult.f2015a;
            int size = arrayList2.size() - 1;
            int i = diffResult.e;
            int i2 = diffResult.f;
            int i3 = i;
            while (size >= 0) {
                c cVar = (c) arrayList2.get(size);
                int i4 = cVar.f2020a;
                int i5 = cVar.c;
                int i6 = i4 + i5;
                int i7 = cVar.f2021b;
                int i8 = i7 + i5;
                while (true) {
                    iArr = diffResult.f2016b;
                    callback = diffResult.d;
                    if (i3 <= i6) {
                        break;
                    }
                    i3--;
                    int i9 = iArr[i3];
                    if ((i9 & 12) != 0) {
                        arrayList = arrayList2;
                        int i10 = i9 >> 4;
                        d dVarA = a(arrayDeque, i10, false);
                        if (dVarA != null) {
                            int i11 = (i - dVarA.f2023b) - 1;
                            batchingListUpdateCallback.onMoved(i3, i11);
                            if ((i9 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i11, 1, callback.getChangePayload(i3, i10));
                            }
                        } else {
                            arrayDeque.add(new d(i3, (i - i3) - 1, true));
                        }
                    } else {
                        arrayList = arrayList2;
                        batchingListUpdateCallback.onRemoved(i3, 1);
                        i--;
                    }
                    arrayList2 = arrayList;
                }
                ArrayList arrayList3 = arrayList2;
                while (i2 > i8) {
                    i2--;
                    int i12 = diffResult.c[i2];
                    if ((i12 & 12) != 0) {
                        int i13 = i12 >> 4;
                        d dVarA2 = a(arrayDeque, i13, true);
                        if (dVarA2 == null) {
                            arrayDeque.add(new d(i2, i - i3, false));
                        } else {
                            batchingListUpdateCallback.onMoved((i - dVarA2.f2023b) - 1, i3);
                            if ((i12 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i3, 1, callback.getChangePayload(i13, i2));
                            }
                        }
                    } else {
                        batchingListUpdateCallback.onInserted(i3, 1);
                        i++;
                    }
                    diffResult = this;
                }
                i3 = cVar.f2020a;
                int i14 = i3;
                int i15 = i7;
                for (int i16 = 0; i16 < i5; i16++) {
                    if ((iArr[i14] & 15) == 2) {
                        batchingListUpdateCallback.onChanged(i14, 1, callback.getChangePayload(i14, i15));
                    }
                    i14++;
                    i15++;
                }
                size--;
                diffResult = this;
                i2 = i7;
                arrayList2 = arrayList3;
            }
            batchingListUpdateCallback.dispatchLastEvent();
        }

        public static d a(ArrayDeque arrayDeque, int i, boolean z) {
            d dVar;
            Iterator it = arrayDeque.iterator();
            while (true) {
                if (!it.hasNext()) {
                    dVar = null;
                    break;
                }
                dVar = (d) it.next();
                if (dVar.f2022a == i && dVar.c == z) {
                    it.remove();
                    break;
                }
            }
            while (it.hasNext()) {
                d dVar2 = (d) it.next();
                if (z) {
                    dVar2.f2023b--;
                } else {
                    dVar2.f2023b++;
                }
            }
            return dVar;
        }
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public final int f2022a;

        /* renamed from: b, reason: collision with root package name */
        public int f2023b;
        public final boolean c;

        public d(int i, int i2, boolean z) {
            this.f2022a = i;
            this.f2023b = i2;
            this.c = z;
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final int[] f2018a;

        /* renamed from: b, reason: collision with root package name */
        public final int f2019b;

        public b(int i) {
            int[] iArr = new int[i];
            this.f2018a = iArr;
            this.f2019b = iArr.length / 2;
        }

        public final int a(int i) {
            return this.f2018a[i + this.f2019b];
        }
    }
}
