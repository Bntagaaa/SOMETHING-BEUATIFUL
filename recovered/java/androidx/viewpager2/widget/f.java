package androidx.viewpager2.widget;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes.dex */
final class f extends RecyclerView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    public ViewPager2.OnPageChangeCallback f2418a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewPager2 f2419b;
    public final RecyclerView c;
    public final LinearLayoutManager d;
    public int e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public final a f2420g;
    public int h;
    public int i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public int f2421a;

        /* renamed from: b, reason: collision with root package name */
        public float f2422b;
        public int c;
    }

    public f(ViewPager2 viewPager2) {
        this.f2419b = viewPager2;
        RecyclerView recyclerView = viewPager2.j;
        this.c = recyclerView;
        this.d = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.f2420g = new a();
        c();
    }

    public final void c() {
        this.e = 0;
        this.f = 0;
        a aVar = this.f2420g;
        aVar.f2421a = -1;
        aVar.f2422b = 0.0f;
        aVar.c = 0;
        this.h = -1;
        this.i = -1;
        this.j = false;
        this.k = false;
        this.m = false;
        this.l = false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback;
        int i2 = this.e;
        boolean z = true;
        if (!(i2 == 1 && this.f == 1) && i == 1) {
            d(false);
            return;
        }
        if ((i2 == 1 || i2 == 4) && i == 2) {
            if (this.k) {
                b(2);
                this.j = true;
                return;
            }
            return;
        }
        if (i2 != 1 && i2 != 4) {
            z = false;
        }
        a aVar = this.f2420g;
        if (z && i == 0) {
            e();
            if (!this.k) {
                int i3 = aVar.f2421a;
                if (i3 != -1 && (onPageChangeCallback = this.f2418a) != null) {
                    onPageChangeCallback.onPageScrolled(i3, 0.0f, 0);
                }
            } else if (aVar.c == 0) {
                int i4 = this.h;
                int i5 = aVar.f2421a;
                if (i4 != i5) {
                    a(i5);
                }
            }
            b(0);
            c();
        }
        if (this.e == 2 && i == 0 && this.l) {
            e();
            if (aVar.c == 0) {
                int i6 = this.i;
                int i7 = aVar.f2421a;
                if (i6 != i7) {
                    if (i7 == -1) {
                        i7 = 0;
                    }
                    a(i7);
                }
                b(0);
                c();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0038  */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onScrolled(@androidx.annotation.NonNull androidx.recyclerview.widget.RecyclerView r6, int r7, int r8) {
        /*
            r5 = this;
            r6 = 1
            r5.k = r6
            r5.e()
            boolean r0 = r5.j
            androidx.viewpager2.widget.f$a r1 = r5.f2420g
            r2 = -1
            r3 = 0
            if (r0 == 0) goto L3c
            r5.j = r3
            if (r8 > 0) goto L28
            if (r8 != 0) goto L30
            if (r7 >= 0) goto L18
            r7 = 1
            goto L19
        L18:
            r7 = 0
        L19:
            androidx.viewpager2.widget.ViewPager2 r8 = r5.f2419b
            androidx.recyclerview.widget.LinearLayoutManager r8 = r8.f2399g
            int r8 = r8.getLayoutDirection()
            if (r8 != r6) goto L25
            r8 = 1
            goto L26
        L25:
            r8 = 0
        L26:
            if (r7 != r8) goto L30
        L28:
            int r7 = r1.c
            if (r7 == 0) goto L30
            int r7 = r1.f2421a
            int r7 = r7 + r6
            goto L32
        L30:
            int r7 = r1.f2421a
        L32:
            r5.i = r7
            int r8 = r5.h
            if (r8 == r7) goto L48
            r5.a(r7)
            goto L48
        L3c:
            int r7 = r5.e
            if (r7 != 0) goto L48
            int r7 = r1.f2421a
            if (r7 != r2) goto L45
            r7 = 0
        L45:
            r5.a(r7)
        L48:
            int r7 = r1.f2421a
            if (r7 != r2) goto L4d
            r7 = 0
        L4d:
            float r8 = r1.f2422b
            int r0 = r1.c
            androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback r4 = r5.f2418a
            if (r4 == 0) goto L58
            r4.onPageScrolled(r7, r8, r0)
        L58:
            int r7 = r1.f2421a
            int r8 = r5.i
            if (r7 == r8) goto L60
            if (r8 != r2) goto L6e
        L60:
            int r7 = r1.c
            if (r7 != 0) goto L6e
            int r7 = r5.f
            if (r7 == r6) goto L6e
            r5.b(r3)
            r5.c()
        L6e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.f.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0129  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e() {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.f.e():void");
    }

    public final void d(boolean z) {
        this.m = z;
        this.e = z ? 4 : 1;
        int i = this.i;
        if (i != -1) {
            this.h = i;
            this.i = -1;
        } else if (this.h == -1) {
            this.h = this.d.findFirstVisibleItemPosition();
        }
        b(1);
    }

    public final void b(int i) {
        if ((this.e == 3 && this.f == 0) || this.f == i) {
            return;
        }
        this.f = i;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f2418a;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrollStateChanged(i);
        }
    }

    public final void a(int i) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f2418a;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageSelected(i);
        }
    }
}
