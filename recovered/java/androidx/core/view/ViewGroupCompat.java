package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class ViewGroupCompat {
    public static final int LAYOUT_MODE_CLIP_BOUNDS = 0;
    public static final int LAYOUT_MODE_OPTICAL_BOUNDS = 1;

    private ViewGroupCompat() {
    }

    @Deprecated
    public static boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return viewGroup.onRequestSendAccessibilityEvent(view, accessibilityEvent);
    }

    @Deprecated
    public static void setMotionEventSplittingEnabled(ViewGroup viewGroup, boolean z) {
        viewGroup.setMotionEventSplittingEnabled(z);
    }

    public static int getLayoutMode(@NonNull ViewGroup viewGroup) {
        return a.a(viewGroup);
    }

    public static void setLayoutMode(@NonNull ViewGroup viewGroup, int i) {
        a.b(viewGroup, i);
    }

    public static void setTransitionGroup(@NonNull ViewGroup viewGroup, boolean z) {
        b.c(viewGroup, z);
    }

    public static boolean isTransitionGroup(@NonNull ViewGroup viewGroup) {
        return b.b(viewGroup);
    }

    public static int getNestedScrollAxes(@NonNull ViewGroup viewGroup) {
        return b.a(viewGroup);
    }

    @RequiresApi(18)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static int a(ViewGroup viewGroup) {
            return viewGroup.getLayoutMode();
        }

        @DoNotInline
        public static void b(ViewGroup viewGroup, int i) {
            viewGroup.setLayoutMode(i);
        }
    }

    @RequiresApi(21)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static void c(ViewGroup viewGroup, boolean z) {
            viewGroup.setTransitionGroup(z);
        }

        @DoNotInline
        public static boolean b(ViewGroup viewGroup) {
            return viewGroup.isTransitionGroup();
        }

        @DoNotInline
        public static int a(ViewGroup viewGroup) {
            return viewGroup.getNestedScrollAxes();
        }
    }
}
