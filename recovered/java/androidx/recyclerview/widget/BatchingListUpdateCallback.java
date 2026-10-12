package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class BatchingListUpdateCallback implements ListUpdateCallback {

    /* renamed from: a, reason: collision with root package name */
    public final ListUpdateCallback f1998a;

    /* renamed from: b, reason: collision with root package name */
    public int f1999b = 0;
    public int c = -1;
    public int d = -1;
    public Object e = null;

    public BatchingListUpdateCallback(@NonNull ListUpdateCallback listUpdateCallback) {
        this.f1998a = listUpdateCallback;
    }

    public void dispatchLastEvent() {
        int i = this.f1999b;
        if (i == 0) {
            return;
        }
        ListUpdateCallback listUpdateCallback = this.f1998a;
        if (i == 1) {
            listUpdateCallback.onInserted(this.c, this.d);
        } else if (i == 2) {
            listUpdateCallback.onRemoved(this.c, this.d);
        } else if (i == 3) {
            listUpdateCallback.onChanged(this.c, this.d, this.e);
        }
        this.e = null;
        this.f1999b = 0;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i, int i2) {
        int i3;
        if (this.f1999b == 1 && i >= (i3 = this.c)) {
            int i4 = this.d;
            if (i <= i3 + i4) {
                this.d = i4 + i2;
                this.c = Math.min(i, i3);
                return;
            }
        }
        dispatchLastEvent();
        this.c = i;
        this.d = i2;
        this.f1999b = 1;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i, int i2) {
        int i3;
        if (this.f1999b == 2 && (i3 = this.c) >= i && i3 <= i + i2) {
            this.d += i2;
            this.c = i;
        } else {
            dispatchLastEvent();
            this.c = i;
            this.d = i2;
            this.f1999b = 2;
        }
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i, int i2) {
        dispatchLastEvent();
        this.f1998a.onMoved(i, i2);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    @SuppressLint({"UnknownNullness"})
    public void onChanged(int i, int i2, Object obj) {
        int i3;
        int i4;
        int i5;
        if (this.f1999b == 3 && i <= (i4 = this.d + (i3 = this.c)) && (i5 = i + i2) >= i3 && this.e == obj) {
            this.c = Math.min(i, i3);
            this.d = Math.max(i4, i5) - this.c;
            return;
        }
        dispatchLastEvent();
        this.c = i;
        this.d = i2;
        this.e = obj;
        this.f1999b = 3;
    }
}
