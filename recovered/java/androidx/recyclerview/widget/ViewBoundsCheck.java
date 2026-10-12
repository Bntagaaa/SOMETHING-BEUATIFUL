package androidx.recyclerview.widget;

import android.view.View;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
class ViewBoundsCheck {

    /* renamed from: a, reason: collision with root package name */
    public final b f2126a;

    /* renamed from: b, reason: collision with root package name */
    public final a f2127b = new a();

    @Retention(RetentionPolicy.SOURCE)
    public @interface ViewBounds {
    }

    public interface b {
        View getChildAt(int i);

        int getChildEnd(View view);

        int getChildStart(View view);

        int getParentEnd();

        int getParentStart();
    }

    public ViewBoundsCheck(b bVar) {
        this.f2126a = bVar;
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public int f2128a = 0;

        /* renamed from: b, reason: collision with root package name */
        public int f2129b;
        public int c;
        public int d;
        public int e;

        public final boolean a() {
            int i = this.f2128a;
            int i2 = 2;
            if ((i & 7) != 0) {
                int i3 = this.d;
                int i4 = this.f2129b;
                if (((i3 > i4 ? 1 : i3 == i4 ? 2 : 4) & i) == 0) {
                    return false;
                }
            }
            if ((i & 112) != 0) {
                int i5 = this.d;
                int i6 = this.c;
                if ((((i5 > i6 ? 1 : i5 == i6 ? 2 : 4) << 4) & i) == 0) {
                    return false;
                }
            }
            if ((i & 1792) != 0) {
                int i7 = this.e;
                int i8 = this.f2129b;
                if ((((i7 > i8 ? 1 : i7 == i8 ? 2 : 4) << 8) & i) == 0) {
                    return false;
                }
            }
            if ((i & 28672) != 0) {
                int i9 = this.e;
                int i10 = this.c;
                if (i9 > i10) {
                    i2 = 1;
                } else if (i9 != i10) {
                    i2 = 4;
                }
                if ((i & (i2 << 12)) == 0) {
                    return false;
                }
            }
            return true;
        }
    }

    public final View a(int i, int i2, int i3, int i4) {
        b bVar = this.f2126a;
        int parentStart = bVar.getParentStart();
        int parentEnd = bVar.getParentEnd();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View childAt = bVar.getChildAt(i);
            int childStart = bVar.getChildStart(childAt);
            int childEnd = bVar.getChildEnd(childAt);
            a aVar = this.f2127b;
            aVar.f2129b = parentStart;
            aVar.c = parentEnd;
            aVar.d = childStart;
            aVar.e = childEnd;
            if (i3 != 0) {
                aVar.f2128a = i3;
                if (aVar.a()) {
                    return childAt;
                }
            }
            if (i4 != 0) {
                aVar.f2128a = i4;
                if (aVar.a()) {
                    view = childAt;
                }
            }
            i += i5;
        }
        return view;
    }

    public final boolean b(View view) {
        b bVar = this.f2126a;
        int parentStart = bVar.getParentStart();
        int parentEnd = bVar.getParentEnd();
        int childStart = bVar.getChildStart(view);
        int childEnd = bVar.getChildEnd(view);
        a aVar = this.f2127b;
        aVar.f2129b = parentStart;
        aVar.c = parentEnd;
        aVar.d = childStart;
        aVar.e = childEnd;
        aVar.f2128a = 24579;
        return aVar.a();
    }
}
