package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.Insets;
import androidx.core.util.ObjectsCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class DisplayCutoutCompat {

    /* renamed from: a, reason: collision with root package name */
    public final DisplayCutout f1286a;

    public DisplayCutoutCompat(@Nullable Rect rect, @Nullable List<Rect> list) {
        this(Build.VERSION.SDK_INT >= 28 ? a.a(rect, list) : null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DisplayCutoutCompat(@NonNull Insets insets, @Nullable Rect rect, @Nullable Rect rect2, @Nullable Rect rect3, @Nullable Rect rect4, @NonNull Insets insets2) {
        DisplayCutout displayCutoutA;
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            displayCutoutA = c.a(insets.toPlatformInsets(), rect, rect2, rect3, rect4, insets2.toPlatformInsets());
        } else if (i >= 29) {
            displayCutoutA = b.a(insets.toPlatformInsets(), rect, rect2, rect3, rect4);
        } else if (i >= 28) {
            Rect rect5 = new Rect(insets.left, insets.top, insets.right, insets.bottom);
            ArrayList arrayList = new ArrayList();
            if (rect != null) {
                arrayList.add(rect);
            }
            if (rect2 != null) {
                arrayList.add(rect2);
            }
            if (rect3 != null) {
                arrayList.add(rect3);
            }
            if (rect4 != null) {
                arrayList.add(rect4);
            }
            displayCutoutA = a.a(rect5, arrayList);
        } else {
            displayCutoutA = null;
        }
        this(displayCutoutA);
    }

    public DisplayCutoutCompat(DisplayCutout displayCutout) {
        this.f1286a = displayCutout;
    }

    public int getSafeInsetTop() {
        if (Build.VERSION.SDK_INT >= 28) {
            return a.f(this.f1286a);
        }
        return 0;
    }

    public int getSafeInsetBottom() {
        if (Build.VERSION.SDK_INT >= 28) {
            return a.c(this.f1286a);
        }
        return 0;
    }

    public int getSafeInsetLeft() {
        if (Build.VERSION.SDK_INT >= 28) {
            return a.d(this.f1286a);
        }
        return 0;
    }

    public int getSafeInsetRight() {
        if (Build.VERSION.SDK_INT >= 28) {
            return a.e(this.f1286a);
        }
        return 0;
    }

    @NonNull
    public List<Rect> getBoundingRects() {
        if (Build.VERSION.SDK_INT >= 28) {
            return a.b(this.f1286a);
        }
        return Collections.EMPTY_LIST;
    }

    @NonNull
    public Insets getWaterfallInsets() {
        if (Build.VERSION.SDK_INT >= 30) {
            return Insets.toCompatInsets(c.b(this.f1286a));
        }
        return Insets.NONE;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DisplayCutoutCompat.class != obj.getClass()) {
            return false;
        }
        return ObjectsCompat.equals(this.f1286a, ((DisplayCutoutCompat) obj).f1286a);
    }

    public int hashCode() {
        DisplayCutout displayCutout = this.f1286a;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    @NonNull
    public String toString() {
        return "DisplayCutoutCompat{" + this.f1286a + "}";
    }

    @RequiresApi(28)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static DisplayCutout a(Rect rect, List<Rect> list) {
            return new DisplayCutout(rect, list);
        }

        @DoNotInline
        public static int f(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetTop();
        }

        @DoNotInline
        public static int c(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetBottom();
        }

        @DoNotInline
        public static int d(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetLeft();
        }

        @DoNotInline
        public static int e(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetRight();
        }

        @DoNotInline
        public static List<Rect> b(DisplayCutout displayCutout) {
            return displayCutout.getBoundingRects();
        }
    }

    @RequiresApi(30)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static DisplayCutout a(android.graphics.Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, android.graphics.Insets insets2) {
            return new DisplayCutout(insets, rect, rect2, rect3, rect4, insets2);
        }

        @DoNotInline
        public static android.graphics.Insets b(DisplayCutout displayCutout) {
            return displayCutout.getWaterfallInsets();
        }
    }

    @RequiresApi(29)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static DisplayCutout a(android.graphics.Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4) {
            return new DisplayCutout(insets, rect, rect2, rect3, rect4);
        }
    }
}
