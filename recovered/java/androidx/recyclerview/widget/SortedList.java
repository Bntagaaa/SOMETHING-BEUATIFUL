package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;

/* loaded from: classes.dex */
public class SortedList<T> {
    public static final int INVALID_POSITION = -1;

    /* renamed from: a, reason: collision with root package name */
    public Object[] f2099a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f2100b;
    public int c;
    public int d;
    public int e;
    public Callback f;

    /* renamed from: g, reason: collision with root package name */
    public BatchedCallback f2101g;
    public int h;
    public final Class i;

    public SortedList(@NonNull Class<T> cls, @NonNull Callback<T> callback) {
        this(cls, callback, 10);
    }

    public SortedList(@NonNull Class<T> cls, @NonNull Callback<T> callback, int i) {
        this.i = cls;
        this.f2099a = (Object[]) Array.newInstance((Class<?>) cls, i);
        this.f = callback;
        this.h = 0;
    }

    public int size() {
        return this.h;
    }

    public int add(T t) {
        g();
        return a(t, true);
    }

    public void addAll(@NonNull T[] tArr, boolean z) {
        g();
        if (tArr.length == 0) {
            return;
        }
        if (z) {
            b(tArr);
            return;
        }
        Object[] objArr = (Object[]) Array.newInstance((Class<?>) this.i, tArr.length);
        System.arraycopy(tArr, 0, objArr, 0, tArr.length);
        b(objArr);
    }

    public void addAll(@NonNull T... tArr) {
        addAll(tArr, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addAll(@NonNull Collection<T> collection) {
        addAll(collection.toArray((Object[]) Array.newInstance((Class<?>) this.i, collection.size())), true);
    }

    public void replaceAll(@NonNull T[] tArr, boolean z) {
        g();
        if (z) {
            e(tArr);
            return;
        }
        Object[] objArr = (Object[]) Array.newInstance((Class<?>) this.i, tArr.length);
        System.arraycopy(tArr, 0, objArr, 0, tArr.length);
        e(objArr);
    }

    public void replaceAll(@NonNull T... tArr) {
        replaceAll(tArr, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void replaceAll(@NonNull Collection<T> collection) {
        replaceAll(collection.toArray((Object[]) Array.newInstance((Class<?>) this.i, collection.size())), true);
    }

    public final void b(Object[] objArr) {
        if (objArr.length < 1) {
            return;
        }
        int iF = f(objArr);
        int i = 0;
        if (this.h == 0) {
            this.f2099a = objArr;
            this.h = iF;
            this.f.onInserted(0, iF);
            return;
        }
        boolean z = this.f instanceof BatchedCallback;
        if (!z) {
            beginBatchedUpdates();
        }
        this.f2100b = this.f2099a;
        this.c = 0;
        int i2 = this.h;
        this.d = i2;
        this.f2099a = (Object[]) Array.newInstance((Class<?>) this.i, i2 + iF + 10);
        this.e = 0;
        while (true) {
            int i3 = this.c;
            int i4 = this.d;
            if (i3 >= i4 && i >= iF) {
                break;
            }
            if (i3 == i4) {
                int i5 = iF - i;
                System.arraycopy(objArr, i, this.f2099a, this.e, i5);
                int i6 = this.e + i5;
                this.e = i6;
                this.h += i5;
                this.f.onInserted(i6 - i5, i5);
                break;
            }
            if (i == iF) {
                int i7 = i4 - i3;
                System.arraycopy(this.f2100b, i3, this.f2099a, this.e, i7);
                this.e += i7;
                break;
            }
            Object obj = this.f2100b[i3];
            Object obj2 = objArr[i];
            int iCompare = this.f.compare(obj, obj2);
            if (iCompare > 0) {
                Object[] objArr2 = this.f2099a;
                int i8 = this.e;
                this.e = i8 + 1;
                objArr2[i8] = obj2;
                this.h++;
                i++;
                this.f.onInserted(i8, 1);
            } else if (iCompare == 0 && this.f.areItemsTheSame(obj, obj2)) {
                Object[] objArr3 = this.f2099a;
                int i9 = this.e;
                this.e = i9 + 1;
                objArr3[i9] = obj2;
                i++;
                this.c++;
                if (!this.f.areContentsTheSame(obj, obj2)) {
                    Callback callback = this.f;
                    callback.onChanged(this.e - 1, 1, callback.getChangePayload(obj, obj2));
                }
            } else {
                Object[] objArr4 = this.f2099a;
                int i10 = this.e;
                this.e = i10 + 1;
                objArr4[i10] = obj;
                this.c++;
            }
        }
        this.f2100b = null;
        if (z) {
            return;
        }
        endBatchedUpdates();
    }

    public final void e(Object[] objArr) {
        boolean z = this.f instanceof BatchedCallback;
        if (!z) {
            beginBatchedUpdates();
        }
        this.c = 0;
        this.d = this.h;
        this.f2100b = this.f2099a;
        this.e = 0;
        int iF = f(objArr);
        this.f2099a = (Object[]) Array.newInstance((Class<?>) this.i, iF);
        while (true) {
            int i = this.e;
            if (i >= iF && this.c >= this.d) {
                break;
            }
            int i2 = this.c;
            int i3 = this.d;
            if (i2 >= i3) {
                int i4 = iF - i;
                System.arraycopy(objArr, i, this.f2099a, i, i4);
                this.e += i4;
                this.h += i4;
                this.f.onInserted(i, i4);
                break;
            }
            if (i >= iF) {
                int i5 = i3 - i2;
                this.h -= i5;
                this.f.onRemoved(i, i5);
                break;
            }
            Object obj = this.f2100b[i2];
            Object obj2 = objArr[i];
            int iCompare = this.f.compare(obj, obj2);
            if (iCompare < 0) {
                this.h--;
                this.c++;
                this.f.onRemoved(this.e, 1);
            } else if (iCompare <= 0) {
                if (this.f.areItemsTheSame(obj, obj2)) {
                    Object[] objArr2 = this.f2099a;
                    int i6 = this.e;
                    objArr2[i6] = obj2;
                    this.c++;
                    this.e = i6 + 1;
                    if (!this.f.areContentsTheSame(obj, obj2)) {
                        Callback callback = this.f;
                        callback.onChanged(this.e - 1, 1, callback.getChangePayload(obj, obj2));
                    }
                } else {
                    this.h--;
                    this.c++;
                    this.f.onRemoved(this.e, 1);
                    Object[] objArr3 = this.f2099a;
                    int i7 = this.e;
                    objArr3[i7] = obj2;
                    this.e = i7 + 1;
                    this.h++;
                    this.f.onInserted(i7, 1);
                }
            } else {
                Object[] objArr4 = this.f2099a;
                int i8 = this.e;
                objArr4[i8] = obj2;
                this.e = i8 + 1;
                this.h++;
                this.f.onInserted(i8, 1);
            }
        }
        this.f2100b = null;
        if (z) {
            return;
        }
        endBatchedUpdates();
    }

    public final int f(Object[] objArr) {
        if (objArr.length == 0) {
            return 0;
        }
        Arrays.sort(objArr, this.f);
        int i = 1;
        int i2 = 0;
        for (int i3 = 1; i3 < objArr.length; i3++) {
            Object obj = objArr[i3];
            if (this.f.compare(objArr[i2], obj) == 0) {
                int i4 = i2;
                while (true) {
                    if (i4 >= i) {
                        i4 = -1;
                        break;
                    }
                    if (this.f.areItemsTheSame(objArr[i4], obj)) {
                        break;
                    }
                    i4++;
                }
                if (i4 != -1) {
                    objArr[i4] = obj;
                } else {
                    if (i != i3) {
                        objArr[i] = obj;
                    }
                    i++;
                }
            } else {
                if (i != i3) {
                    objArr[i] = obj;
                }
                i2 = i;
                i++;
            }
        }
        return i;
    }

    public final void g() {
        if (this.f2100b != null) {
            throw new IllegalStateException("Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll.");
        }
    }

    public void beginBatchedUpdates() {
        g();
        Callback callback = this.f;
        if (callback instanceof BatchedCallback) {
            return;
        }
        if (this.f2101g == null) {
            this.f2101g = new BatchedCallback(callback);
        }
        this.f = this.f2101g;
    }

    public void endBatchedUpdates() {
        g();
        Callback callback = this.f;
        if (callback instanceof BatchedCallback) {
            ((BatchedCallback) callback).dispatchLastEvent();
        }
        Callback callback2 = this.f;
        BatchedCallback batchedCallback = this.f2101g;
        if (callback2 == batchedCallback) {
            this.f = batchedCallback.f2102a;
        }
    }

    public final int a(Object obj, boolean z) {
        int iC = c(this.f2099a, 0, this.h, 1, obj);
        if (iC == -1) {
            iC = 0;
        } else if (iC < this.h) {
            Object obj2 = this.f2099a[iC];
            if (this.f.areItemsTheSame(obj2, obj)) {
                if (this.f.areContentsTheSame(obj2, obj)) {
                    this.f2099a[iC] = obj;
                    return iC;
                }
                this.f2099a[iC] = obj;
                Callback callback = this.f;
                callback.onChanged(iC, 1, callback.getChangePayload(obj2, obj));
                return iC;
            }
        }
        int i = this.h;
        if (iC > i) {
            StringBuilder sbO = _COROUTINE.a.o(iC, "cannot add item to ", " because size is ");
            sbO.append(this.h);
            throw new IndexOutOfBoundsException(sbO.toString());
        }
        Object[] objArr = this.f2099a;
        if (i == objArr.length) {
            Object[] objArr2 = (Object[]) Array.newInstance((Class<?>) this.i, objArr.length + 10);
            System.arraycopy(this.f2099a, 0, objArr2, 0, iC);
            objArr2[iC] = obj;
            System.arraycopy(this.f2099a, iC, objArr2, iC + 1, this.h - iC);
            this.f2099a = objArr2;
        } else {
            System.arraycopy(objArr, iC, objArr, iC + 1, i - iC);
            this.f2099a[iC] = obj;
        }
        this.h++;
        if (z) {
            this.f.onInserted(iC, 1);
        }
        return iC;
    }

    public boolean remove(T t) {
        g();
        int iC = c(this.f2099a, 0, this.h, 2, t);
        if (iC == -1) {
            return false;
        }
        d(iC, true);
        return true;
    }

    public T removeItemAt(int i) throws IndexOutOfBoundsException {
        g();
        T t = get(i);
        d(i, true);
        return t;
    }

    public final void d(int i, boolean z) {
        Object[] objArr = this.f2099a;
        System.arraycopy(objArr, i + 1, objArr, i, (this.h - i) - 1);
        int i2 = this.h - 1;
        this.h = i2;
        this.f2099a[i2] = null;
        if (z) {
            this.f.onRemoved(i, 1);
        }
    }

    public void updateItemAt(int i, T t) throws IndexOutOfBoundsException {
        g();
        T t2 = get(i);
        boolean z = t2 == t || !this.f.areContentsTheSame(t2, t);
        if (t2 != t && this.f.compare(t2, t) == 0) {
            this.f2099a[i] = t;
            if (z) {
                Callback callback = this.f;
                callback.onChanged(i, 1, callback.getChangePayload(t2, t));
                return;
            }
            return;
        }
        if (z) {
            Callback callback2 = this.f;
            callback2.onChanged(i, 1, callback2.getChangePayload(t2, t));
        }
        d(i, false);
        int iA = a(t, false);
        if (i != iA) {
            this.f.onMoved(i, iA);
        }
    }

    public void recalculatePositionOfItemAt(int i) throws IndexOutOfBoundsException {
        g();
        T t = get(i);
        d(i, false);
        int iA = a(t, false);
        if (i != iA) {
            this.f.onMoved(i, iA);
        }
    }

    public T get(int i) throws IndexOutOfBoundsException {
        int i2;
        if (i < this.h && i >= 0) {
            Object[] objArr = this.f2100b;
            return (objArr == null || i < (i2 = this.e)) ? (T) this.f2099a[i] : (T) objArr[(i - i2) + this.c];
        }
        StringBuilder sbO = _COROUTINE.a.o(i, "Asked to get item at ", " but size is ");
        sbO.append(this.h);
        throw new IndexOutOfBoundsException(sbO.toString());
    }

    public int indexOf(T t) {
        if (this.f2100b != null) {
            int iC = c(this.f2099a, 0, this.e, 4, t);
            if (iC != -1) {
                return iC;
            }
            int iC2 = c(this.f2100b, this.c, this.d, 4, t);
            if (iC2 != -1) {
                return (iC2 - this.c) + this.e;
            }
            return -1;
        }
        return c(this.f2099a, 0, this.h, 4, t);
    }

    public final int c(Object[] objArr, int i, int i2, int i3, Object obj) {
        while (i < i2) {
            int i4 = (i + i2) / 2;
            Object obj2 = objArr[i4];
            int iCompare = this.f.compare(obj2, obj);
            if (iCompare < 0) {
                i = i4 + 1;
            } else {
                if (iCompare == 0) {
                    if (!this.f.areItemsTheSame(obj2, obj)) {
                        int i5 = i4 - 1;
                        while (i5 >= i) {
                            Object obj3 = this.f2099a[i5];
                            if (this.f.compare(obj3, obj) != 0) {
                                break;
                            }
                            if (this.f.areItemsTheSame(obj3, obj)) {
                                break;
                            }
                            i5--;
                        }
                        i5 = i4 + 1;
                        while (i5 < i2) {
                            Object obj4 = this.f2099a[i5];
                            if (this.f.compare(obj4, obj) != 0) {
                                break;
                            }
                            if (this.f.areItemsTheSame(obj4, obj)) {
                                break;
                            }
                            i5++;
                        }
                        i5 = -1;
                        if (i3 != 1 || i5 != -1) {
                            return i5;
                        }
                    }
                    return i4;
                }
                i2 = i4;
            }
        }
        if (i3 == 1) {
            return i;
        }
        return -1;
    }

    public void clear() {
        g();
        int i = this.h;
        if (i == 0) {
            return;
        }
        Arrays.fill(this.f2099a, 0, i, (Object) null);
        this.h = 0;
        this.f.onRemoved(0, i);
    }

    public static abstract class Callback<T2> implements Comparator<T2>, ListUpdateCallback {
        public abstract boolean areContentsTheSame(T2 t2, T2 t22);

        public abstract boolean areItemsTheSame(T2 t2, T2 t22);

        @Override // java.util.Comparator
        public abstract int compare(T2 t2, T2 t22);

        @Nullable
        public Object getChangePayload(T2 t2, T2 t22) {
            return null;
        }

        public abstract void onChanged(int i, int i2);

        @SuppressLint({"UnknownNullness"})
        public void onChanged(int i, int i2, Object obj) {
            onChanged(i, i2);
        }
    }

    public static class BatchedCallback<T2> extends Callback<T2> {

        /* renamed from: a, reason: collision with root package name */
        public final Callback f2102a;

        /* renamed from: b, reason: collision with root package name */
        public final BatchingListUpdateCallback f2103b;

        @SuppressLint({"UnknownNullness"})
        public BatchedCallback(Callback<T2> callback) {
            this.f2102a = callback;
            this.f2103b = new BatchingListUpdateCallback(callback);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback, java.util.Comparator
        public int compare(T2 t2, T2 t22) {
            return this.f2102a.compare(t2, t22);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onInserted(int i, int i2) {
            this.f2103b.onInserted(i, i2);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onRemoved(int i, int i2) {
            this.f2103b.onRemoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.ListUpdateCallback
        public void onMoved(int i, int i2) {
            this.f2103b.onMoved(i, i2);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public void onChanged(int i, int i2) {
            this.f2103b.onChanged(i, i2, null);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback, androidx.recyclerview.widget.ListUpdateCallback
        @SuppressLint({"UnknownNullness"})
        public void onChanged(int i, int i2, Object obj) {
            this.f2103b.onChanged(i, i2, obj);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public boolean areContentsTheSame(T2 t2, T2 t22) {
            return this.f2102a.areContentsTheSame(t2, t22);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        public boolean areItemsTheSame(T2 t2, T2 t22) {
            return this.f2102a.areItemsTheSame(t2, t22);
        }

        @Override // androidx.recyclerview.widget.SortedList.Callback
        @Nullable
        public Object getChangePayload(T2 t2, T2 t22) {
            return this.f2102a.getChangePayload(t2, t22);
        }

        public void dispatchLastEvent() {
            this.f2103b.dispatchLastEvent();
        }
    }
}
