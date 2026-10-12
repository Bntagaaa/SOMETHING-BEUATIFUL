package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.internal.ParcelableSparseArray;
import com.google.android.material.internal.ToolbarUtils;

@ExperimentalBadgeUtils
/* loaded from: classes.dex */
public class BadgeUtils {
    public static final boolean USE_COMPAT_PARENT = false;

    private BadgeUtils() {
    }

    public static void updateBadgeBounds(@NonNull Rect rect, float f, float f2, float f3, float f4) {
        rect.set((int) (f - f3), (int) (f2 - f4), (int) (f + f3), (int) (f2 + f4));
    }

    public static void attachBadgeDrawable(@NonNull BadgeDrawable badgeDrawable, @NonNull View view) {
        attachBadgeDrawable(badgeDrawable, view, (FrameLayout) null);
    }

    public static void attachBadgeDrawable(@NonNull BadgeDrawable badgeDrawable, @NonNull View view, @Nullable FrameLayout frameLayout) {
        setBadgeDrawableBounds(badgeDrawable, view, frameLayout);
        if (badgeDrawable.getCustomBadgeParent() != null) {
            badgeDrawable.getCustomBadgeParent().setForeground(badgeDrawable);
        } else {
            if (USE_COMPAT_PARENT) {
                throw new IllegalArgumentException("Trying to reference null customBadgeParent");
            }
            view.getOverlay().add(badgeDrawable);
        }
    }

    public static void attachBadgeDrawable(@NonNull BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i) {
        attachBadgeDrawable(badgeDrawable, toolbar, i, null);
    }

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Toolbar f2787a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f2788b;
        public final /* synthetic */ BadgeDrawable c;
        public final /* synthetic */ FrameLayout d;

        public a(BadgeDrawable badgeDrawable, Toolbar toolbar, int i, FrameLayout frameLayout) {
            this.f2787a = toolbar;
            this.f2788b = i;
            this.c = badgeDrawable;
            this.d = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            Toolbar toolbar = this.f2787a;
            ActionMenuItemView actionMenuItemView = ToolbarUtils.getActionMenuItemView(toolbar, this.f2788b);
            if (actionMenuItemView != null) {
                Resources resources = toolbar.getResources();
                int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_badge_toolbar_action_menu_item_horizontal_offset);
                Integer numValueOf = Integer.valueOf(dimensionPixelOffset);
                BadgeDrawable badgeDrawable = this.c;
                BadgeState badgeState = badgeDrawable.e;
                badgeState.f2782a.q = numValueOf;
                badgeState.f2783b.q = Integer.valueOf(dimensionPixelOffset);
                badgeDrawable.e();
                int dimensionPixelOffset2 = resources.getDimensionPixelOffset(R.dimen.mtrl_badge_toolbar_action_menu_item_vertical_offset);
                Integer numValueOf2 = Integer.valueOf(dimensionPixelOffset2);
                BadgeState badgeState2 = badgeDrawable.e;
                badgeState2.f2782a.r = numValueOf2;
                badgeState2.f2783b.r = Integer.valueOf(dimensionPixelOffset2);
                badgeDrawable.e();
                BadgeUtils.attachBadgeDrawable(badgeDrawable, actionMenuItemView, this.d);
                if (Build.VERSION.SDK_INT < 29 || !ViewCompat.hasAccessibilityDelegate(actionMenuItemView)) {
                    ViewCompat.setAccessibilityDelegate(actionMenuItemView, new c(badgeDrawable));
                } else {
                    ViewCompat.setAccessibilityDelegate(actionMenuItemView, new b(actionMenuItemView.getAccessibilityDelegate(), badgeDrawable));
                }
            }
        }
    }

    public static void attachBadgeDrawable(@NonNull BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i, @Nullable FrameLayout frameLayout) {
        toolbar.post(new a(badgeDrawable, toolbar, i, frameLayout));
    }

    public static void detachBadgeDrawable(@Nullable BadgeDrawable badgeDrawable, @NonNull View view) {
        if (badgeDrawable == null) {
            return;
        }
        if (USE_COMPAT_PARENT || badgeDrawable.getCustomBadgeParent() != null) {
            badgeDrawable.getCustomBadgeParent().setForeground(null);
        } else {
            view.getOverlay().remove(badgeDrawable);
        }
    }

    public static void detachBadgeDrawable(@Nullable BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i) {
        if (badgeDrawable == null) {
            return;
        }
        ActionMenuItemView actionMenuItemView = ToolbarUtils.getActionMenuItemView(toolbar, i);
        if (actionMenuItemView == null) {
            Log.w("BadgeUtils", "Trying to remove badge from a null menuItemView: " + i);
            return;
        }
        BadgeState badgeState = badgeDrawable.e;
        badgeState.f2782a.q = 0;
        badgeState.f2783b.q = 0;
        badgeDrawable.e();
        badgeState.f2782a.r = 0;
        badgeState.f2783b.r = 0;
        badgeDrawable.e();
        detachBadgeDrawable(badgeDrawable, actionMenuItemView);
        if (Build.VERSION.SDK_INT < 29 || !ViewCompat.hasAccessibilityDelegate(actionMenuItemView)) {
            ViewCompat.setAccessibilityDelegate(actionMenuItemView, null);
        } else {
            ViewCompat.setAccessibilityDelegate(actionMenuItemView, new d(actionMenuItemView.getAccessibilityDelegate()));
        }
    }

    public static void setBadgeDrawableBounds(@NonNull BadgeDrawable badgeDrawable, @NonNull View view, @Nullable FrameLayout frameLayout) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        badgeDrawable.setBounds(rect);
        badgeDrawable.updateBadgeCoordinates(view, frameLayout);
    }

    @NonNull
    public static ParcelableSparseArray createParcelableBadgeStates(@NonNull SparseArray<BadgeDrawable> sparseArray) {
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i = 0; i < sparseArray.size(); i++) {
            int iKeyAt = sparseArray.keyAt(i);
            BadgeDrawable badgeDrawableValueAt = sparseArray.valueAt(i);
            if (badgeDrawableValueAt == null) {
                throw new IllegalArgumentException("badgeDrawable cannot be null");
            }
            parcelableSparseArray.put(iKeyAt, badgeDrawableValueAt.e.f2782a);
        }
        return parcelableSparseArray;
    }

    @NonNull
    public static SparseArray<BadgeDrawable> createBadgeDrawablesFromSavedStates(Context context, @NonNull ParcelableSparseArray parcelableSparseArray) {
        SparseArray<BadgeDrawable> sparseArray = new SparseArray<>(parcelableSparseArray.size());
        for (int i = 0; i < parcelableSparseArray.size(); i++) {
            int iKeyAt = parcelableSparseArray.keyAt(i);
            BadgeState.State state = (BadgeState.State) parcelableSparseArray.valueAt(i);
            if (state == null) {
                throw new IllegalArgumentException("BadgeDrawable's savedState cannot be null");
            }
            sparseArray.put(iKeyAt, new BadgeDrawable(context, 0, state));
        }
        return sparseArray;
    }
}
