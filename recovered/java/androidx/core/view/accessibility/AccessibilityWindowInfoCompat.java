package androidx.core.view.accessibility;

import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public class AccessibilityWindowInfoCompat {
    public static final int TYPE_ACCESSIBILITY_OVERLAY = 4;
    public static final int TYPE_APPLICATION = 1;
    public static final int TYPE_INPUT_METHOD = 2;
    public static final int TYPE_SPLIT_SCREEN_DIVIDER = 5;
    public static final int TYPE_SYSTEM = 3;

    /* renamed from: a, reason: collision with root package name */
    public final AccessibilityWindowInfo f1392a;

    @Deprecated
    public void recycle() {
    }

    public AccessibilityWindowInfoCompat(AccessibilityWindowInfo accessibilityWindowInfo) {
        this.f1392a = accessibilityWindowInfo;
    }

    public int getType() {
        return a.h(this.f1392a);
    }

    public int getLayer() {
        return a.e(this.f1392a);
    }

    @Nullable
    public AccessibilityNodeInfoCompat getRoot() {
        return AccessibilityNodeInfoCompat.e(a.g(this.f1392a));
    }

    public boolean isInPictureInPictureMode() {
        if (Build.VERSION.SDK_INT >= 33) {
            return c.c(this.f1392a);
        }
        return false;
    }

    @Nullable
    public AccessibilityWindowInfoCompat getParent() {
        AccessibilityWindowInfo accessibilityWindowInfoF = a.f(this.f1392a);
        if (accessibilityWindowInfoF != null) {
            return new AccessibilityWindowInfoCompat(accessibilityWindowInfoF);
        }
        return null;
    }

    public int getId() {
        return a.d(this.f1392a);
    }

    public void getRegionInScreen(@NonNull Region region) {
        int i = Build.VERSION.SDK_INT;
        AccessibilityWindowInfo accessibilityWindowInfo = this.f1392a;
        if (i >= 33) {
            c.b(accessibilityWindowInfo, region);
            return;
        }
        Rect rect = new Rect();
        a.a(accessibilityWindowInfo, rect);
        region.set(rect);
    }

    public void getBoundsInScreen(@NonNull Rect rect) {
        a.a(this.f1392a, rect);
    }

    public boolean isActive() {
        return a.j(this.f1392a);
    }

    public boolean isFocused() {
        return a.k(this.f1392a);
    }

    public boolean isAccessibilityFocused() {
        return a.i(this.f1392a);
    }

    public int getChildCount() {
        return a.c(this.f1392a);
    }

    @Nullable
    public AccessibilityWindowInfoCompat getChild(int i) {
        AccessibilityWindowInfo accessibilityWindowInfoB = a.b(this.f1392a, i);
        if (accessibilityWindowInfoB != null) {
            return new AccessibilityWindowInfoCompat(accessibilityWindowInfoB);
        }
        return null;
    }

    public int getDisplayId() {
        if (Build.VERSION.SDK_INT >= 33) {
            return c.a(this.f1392a);
        }
        return 0;
    }

    @Nullable
    public CharSequence getTitle() {
        if (Build.VERSION.SDK_INT >= 24) {
            return b.b(this.f1392a);
        }
        return null;
    }

    @Nullable
    public AccessibilityNodeInfoCompat getAnchor() {
        if (Build.VERSION.SDK_INT >= 24) {
            return AccessibilityNodeInfoCompat.e(b.a(this.f1392a));
        }
        return null;
    }

    @Nullable
    public static AccessibilityWindowInfoCompat obtain() {
        AccessibilityWindowInfo accessibilityWindowInfoL = a.l();
        if (accessibilityWindowInfoL != null) {
            return new AccessibilityWindowInfoCompat(accessibilityWindowInfoL);
        }
        return null;
    }

    @Nullable
    public static AccessibilityWindowInfoCompat obtain(@Nullable AccessibilityWindowInfoCompat accessibilityWindowInfoCompat) {
        AccessibilityWindowInfo accessibilityWindowInfoM;
        if (accessibilityWindowInfoCompat == null || (accessibilityWindowInfoM = a.m(accessibilityWindowInfoCompat.f1392a)) == null) {
            return null;
        }
        return new AccessibilityWindowInfoCompat(accessibilityWindowInfoM);
    }

    @Nullable
    public AccessibilityWindowInfo unwrap() {
        return this.f1392a;
    }

    public int hashCode() {
        AccessibilityWindowInfo accessibilityWindowInfo = this.f1392a;
        if (accessibilityWindowInfo == null) {
            return 0;
        }
        return accessibilityWindowInfo.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessibilityWindowInfoCompat)) {
            return false;
        }
        AccessibilityWindowInfo accessibilityWindowInfo = ((AccessibilityWindowInfoCompat) obj).f1392a;
        AccessibilityWindowInfo accessibilityWindowInfo2 = this.f1392a;
        if (accessibilityWindowInfo2 == null) {
            return accessibilityWindowInfo == null;
        }
        return accessibilityWindowInfo2.equals(accessibilityWindowInfo);
    }

    @NonNull
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("AccessibilityWindowInfo[id=");
        Rect rect = new Rect();
        getBoundsInScreen(rect);
        sb.append(getId());
        sb.append(", type=");
        int type = getType();
        if (type == 1) {
            str = "TYPE_APPLICATION";
        } else if (type == 2) {
            str = "TYPE_INPUT_METHOD";
        } else if (type == 3) {
            str = "TYPE_SYSTEM";
        } else if (type == 4) {
            str = "TYPE_ACCESSIBILITY_OVERLAY";
        } else {
            str = "<UNKNOWN>";
        }
        sb.append(str);
        sb.append(", layer=");
        sb.append(getLayer());
        sb.append(", bounds=");
        sb.append(rect);
        sb.append(", focused=");
        sb.append(isFocused());
        sb.append(", active=");
        sb.append(isActive());
        sb.append(", hasParent=");
        sb.append(getParent() != null);
        sb.append(", hasChildren=");
        sb.append(getChildCount() > 0);
        sb.append(']');
        return sb.toString();
    }

    @RequiresApi(21)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static void a(AccessibilityWindowInfo accessibilityWindowInfo, Rect rect) {
            accessibilityWindowInfo.getBoundsInScreen(rect);
        }

        @DoNotInline
        public static AccessibilityWindowInfo b(AccessibilityWindowInfo accessibilityWindowInfo, int i) {
            return accessibilityWindowInfo.getChild(i);
        }

        @DoNotInline
        public static int c(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getChildCount();
        }

        @DoNotInline
        public static int d(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getId();
        }

        @DoNotInline
        public static int e(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getLayer();
        }

        @DoNotInline
        public static AccessibilityWindowInfo f(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getParent();
        }

        @DoNotInline
        public static AccessibilityNodeInfo g(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getRoot();
        }

        @DoNotInline
        public static int h(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getType();
        }

        @DoNotInline
        public static boolean i(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isAccessibilityFocused();
        }

        @DoNotInline
        public static boolean j(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isActive();
        }

        @DoNotInline
        public static boolean k(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isFocused();
        }

        @DoNotInline
        public static AccessibilityWindowInfo l() {
            return AccessibilityWindowInfo.obtain();
        }

        @DoNotInline
        public static AccessibilityWindowInfo m(AccessibilityWindowInfo accessibilityWindowInfo) {
            return AccessibilityWindowInfo.obtain(accessibilityWindowInfo);
        }
    }

    @RequiresApi(24)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static AccessibilityNodeInfo a(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getAnchor();
        }

        @DoNotInline
        public static CharSequence b(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getTitle();
        }
    }

    @RequiresApi(33)
    public static class c {
        private c() {
        }

        @DoNotInline
        public static int a(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getDisplayId();
        }

        @DoNotInline
        public static void b(AccessibilityWindowInfo accessibilityWindowInfo, Region region) {
            accessibilityWindowInfo.getRegionInScreen(region);
        }

        @DoNotInline
        public static boolean c(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isInPictureInPictureMode();
        }
    }
}
