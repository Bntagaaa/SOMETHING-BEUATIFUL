package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
class b {

    /* renamed from: a, reason: collision with root package name */
    public final RecyclerView.e f2141a;
    public View e;
    public int d = 0;

    /* renamed from: b, reason: collision with root package name */
    public final a f2142b = new a();
    public final ArrayList c = new ArrayList();

    /* renamed from: androidx.recyclerview.widget.b$b, reason: collision with other inner class name */
    public interface InterfaceC0032b {
        void addView(View view, int i);

        void attachViewToParent(View view, int i, ViewGroup.LayoutParams layoutParams);

        void detachViewFromParent(int i);

        View getChildAt(int i);

        int getChildCount();

        RecyclerView.ViewHolder getChildViewHolder(View view);

        int indexOfChild(View view);

        void onEnteredHiddenState(View view);

        void onLeftHiddenState(View view);

        void removeAllViews();

        void removeViewAt(int i);
    }

    public b(RecyclerView.e eVar) {
        this.f2141a = eVar;
    }

    public final void g(View view) {
        if (this.c.remove(view)) {
            this.f2141a.onLeftHiddenState(view);
        }
    }

    public final int d(int i) {
        if (i < 0) {
            return -1;
        }
        int childCount = this.f2141a.getChildCount();
        int i2 = i;
        while (i2 < childCount) {
            a aVar = this.f2142b;
            int iB = i - (i2 - aVar.b(i2));
            if (iB == 0) {
                while (aVar.d(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += iB;
        }
        return -1;
    }

    public final void f(int i) {
        RecyclerView.e eVar = this.f2141a;
        int i2 = this.d;
        if (i2 == 1) {
            throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
        }
        if (i2 == 2) {
            throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
        }
        try {
            int iD = d(i);
            View childAt = eVar.getChildAt(iD);
            if (childAt != null) {
                this.d = 1;
                this.e = childAt;
                if (this.f2142b.f(iD)) {
                    g(childAt);
                }
                eVar.removeViewAt(iD);
            }
            this.d = 0;
            this.e = null;
        } catch (Throwable th) {
            this.d = 0;
            this.e = null;
            throw th;
        }
    }

    public final View b(int i) {
        return this.f2141a.getChildAt(d(i));
    }

    public final void a(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int iD;
        RecyclerView.e eVar = this.f2141a;
        if (i < 0) {
            iD = eVar.getChildCount();
        } else {
            iD = d(i);
        }
        this.f2142b.e(iD, z);
        if (z) {
            this.c.add(view);
            eVar.onEnteredHiddenState(view);
        }
        eVar.attachViewToParent(view, iD, layoutParams);
    }

    public final int c() {
        return this.f2141a.getChildCount() - this.c.size();
    }

    public final int e(View view) {
        int iIndexOfChild = this.f2141a.indexOfChild(view);
        if (iIndexOfChild != -1) {
            a aVar = this.f2142b;
            if (!aVar.d(iIndexOfChild)) {
                return iIndexOfChild - aVar.b(iIndexOfChild);
            }
        }
        return -1;
    }

    public String toString() {
        return this.f2142b.toString() + ", hidden list:" + this.c.size();
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public long f2143a = 0;

        /* renamed from: b, reason: collision with root package name */
        public a f2144b;

        public final void h(int i) {
            if (i >= 64) {
                c();
                this.f2144b.h(i - 64);
            } else {
                this.f2143a |= 1 << i;
            }
        }

        public final void c() {
            if (this.f2144b == null) {
                this.f2144b = new a();
            }
        }

        public final void a(int i) {
            if (i >= 64) {
                a aVar = this.f2144b;
                if (aVar != null) {
                    aVar.a(i - 64);
                    return;
                }
                return;
            }
            this.f2143a &= ~(1 << i);
        }

        public final boolean d(int i) {
            if (i < 64) {
                return (this.f2143a & (1 << i)) != 0;
            }
            c();
            return this.f2144b.d(i - 64);
        }

        public final void g() {
            this.f2143a = 0L;
            a aVar = this.f2144b;
            if (aVar != null) {
                aVar.g();
            }
        }

        public final void e(int i, boolean z) {
            if (i >= 64) {
                c();
                this.f2144b.e(i - 64, z);
                return;
            }
            long j = this.f2143a;
            boolean z2 = (Long.MIN_VALUE & j) != 0;
            long j2 = (1 << i) - 1;
            this.f2143a = ((j & (~j2)) << 1) | (j & j2);
            if (z) {
                h(i);
            } else {
                a(i);
            }
            if (z2 || this.f2144b != null) {
                c();
                this.f2144b.e(0, z2);
            }
        }

        public final boolean f(int i) {
            if (i >= 64) {
                c();
                return this.f2144b.f(i - 64);
            }
            long j = 1 << i;
            long j2 = this.f2143a;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (~j);
            this.f2143a = j3;
            long j4 = j - 1;
            this.f2143a = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
            a aVar = this.f2144b;
            if (aVar != null) {
                if (aVar.d(0)) {
                    h(63);
                }
                this.f2144b.f(0);
            }
            return z;
        }

        public final int b(int i) {
            a aVar = this.f2144b;
            if (aVar == null) {
                if (i >= 64) {
                    return Long.bitCount(this.f2143a);
                }
                return Long.bitCount(this.f2143a & ((1 << i) - 1));
            }
            if (i < 64) {
                return Long.bitCount(this.f2143a & ((1 << i) - 1));
            }
            return Long.bitCount(this.f2143a) + aVar.b(i - 64);
        }

        public String toString() {
            if (this.f2144b == null) {
                return Long.toBinaryString(this.f2143a);
            }
            return this.f2144b.toString() + "xx" + Long.toBinaryString(this.f2143a);
        }
    }
}
