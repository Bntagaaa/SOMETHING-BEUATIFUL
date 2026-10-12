package androidx.customview.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.core.view.accessibility.AccessibilityRecordCompat;
import androidx.customview.widget.FocusStrategy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {
    public static final int HOST_ID = -1;
    public static final int INVALID_ID = Integer.MIN_VALUE;
    public static final Rect n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    public static final FocusStrategy.BoundsAdapter o = new a();
    public static final FocusStrategy.CollectionAdapter p = new b();
    public final AccessibilityManager h;
    public final View i;
    public c j;
    public final Rect d = new Rect();
    public final Rect e = new Rect();
    public final Rect f = new Rect();

    /* renamed from: g, reason: collision with root package name */
    public final int[] f1455g = new int[2];
    public int k = Integer.MIN_VALUE;
    public int l = Integer.MIN_VALUE;
    public int m = Integer.MIN_VALUE;

    public abstract int getVirtualViewAt(float f, float f2);

    public abstract void getVisibleVirtualViews(List<Integer> list);

    public abstract boolean onPerformActionForVirtualView(int i, int i2, @Nullable Bundle bundle);

    public void onPopulateEventForHost(@NonNull AccessibilityEvent accessibilityEvent) {
    }

    public void onPopulateEventForVirtualView(int i, @NonNull AccessibilityEvent accessibilityEvent) {
    }

    public void onPopulateNodeForHost(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    public abstract void onPopulateNodeForVirtualView(int i, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    public void onVirtualViewKeyboardFocusChanged(int i, boolean z) {
    }

    public ExploreByTouchHelper(@NonNull View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.i = view;
        this.h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (ViewCompat.getImportantForAccessibility(view) == 0) {
            ViewCompat.setImportantForAccessibility(view, 1);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        if (this.j == null) {
            this.j = new c();
        }
        return this.j;
    }

    public final boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        int i;
        AccessibilityManager accessibilityManager = this.h;
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int virtualViewAt = getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
            int i2 = this.m;
            if (i2 != virtualViewAt) {
                this.m = virtualViewAt;
                sendEventForVirtualView(virtualViewAt, 128);
                sendEventForVirtualView(i2, 256);
            }
            if (virtualViewAt == Integer.MIN_VALUE) {
                return false;
            }
        } else {
            if (action != 10 || (i = this.m) == Integer.MIN_VALUE) {
                return false;
            }
            if (i != Integer.MIN_VALUE) {
                this.m = Integer.MIN_VALUE;
                sendEventForVirtualView(Integer.MIN_VALUE, 128);
                sendEventForVirtualView(i, 256);
                return true;
            }
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchKeyEvent(@androidx.annotation.NonNull android.view.KeyEvent r7) {
        /*
            r6 = this;
            int r0 = r7.getAction()
            r1 = 0
            r2 = 1
            if (r0 == r2) goto L75
            int r0 = r7.getKeyCode()
            r3 = 61
            r4 = 0
            if (r0 == r3) goto L5e
            r3 = 66
            if (r0 == r3) goto L46
            switch(r0) {
                case 19: goto L19;
                case 20: goto L19;
                case 21: goto L19;
                case 22: goto L19;
                case 23: goto L46;
                default: goto L18;
            }
        L18:
            goto L75
        L19:
            boolean r5 = r7.hasNoModifiers()
            if (r5 == 0) goto L75
            r5 = 19
            if (r0 == r5) goto L31
            r5 = 21
            if (r0 == r5) goto L2e
            r5 = 22
            if (r0 == r5) goto L33
            r3 = 130(0x82, float:1.82E-43)
            goto L33
        L2e:
            r3 = 17
            goto L33
        L31:
            r3 = 33
        L33:
            int r7 = r7.getRepeatCount()
            int r7 = r7 + r2
            r0 = 0
        L39:
            if (r1 >= r7) goto L45
            boolean r5 = r6.c(r3, r4)
            if (r5 == 0) goto L45
            int r1 = r1 + 1
            r0 = 1
            goto L39
        L45:
            return r0
        L46:
            boolean r0 = r7.hasNoModifiers()
            if (r0 == 0) goto L75
            int r7 = r7.getRepeatCount()
            if (r7 != 0) goto L75
            int r7 = r6.l
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r7 == r0) goto L5d
            r0 = 16
            r6.onPerformActionForVirtualView(r7, r0, r4)
        L5d:
            return r2
        L5e:
            boolean r0 = r7.hasNoModifiers()
            if (r0 == 0) goto L6a
            r7 = 2
            boolean r7 = r6.c(r7, r4)
            return r7
        L6a:
            boolean r7 = r7.hasModifiers(r2)
            if (r7 == 0) goto L75
            boolean r7 = r6.c(r2, r4)
            return r7
        L75:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ExploreByTouchHelper.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    public final void onFocusChanged(boolean z, int i, @Nullable Rect rect) {
        int i2 = this.l;
        if (i2 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i2);
        }
        if (z) {
            c(i, rect);
        }
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.k;
    }

    public final int getKeyboardFocusedVirtualViewId() {
        return this.l;
    }

    public class a implements FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat> {
        @Override // androidx.customview.widget.FocusStrategy.BoundsAdapter
        public void obtainBounds(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, Rect rect) {
            accessibilityNodeInfoCompat.getBoundsInParent(rect);
        }
    }

    public class b implements FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat> {
        @Override // androidx.customview.widget.FocusStrategy.CollectionAdapter
        public AccessibilityNodeInfoCompat get(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat, int i) {
            return sparseArrayCompat.valueAt(i);
        }

        @Override // androidx.customview.widget.FocusStrategy.CollectionAdapter
        public int size(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat) {
            return sparseArrayCompat.size();
        }
    }

    public final boolean c(int i, Rect rect) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat;
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        SparseArrayCompat sparseArrayCompat = new SparseArrayCompat();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            sparseArrayCompat.put(((Integer) arrayList.get(i2)).intValue(), b(((Integer) arrayList.get(i2)).intValue()));
        }
        int i3 = this.l;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = i3 == Integer.MIN_VALUE ? null : (AccessibilityNodeInfoCompat) sparseArrayCompat.get(i3);
        FocusStrategy.BoundsAdapter boundsAdapter = o;
        FocusStrategy.CollectionAdapter collectionAdapter = p;
        View view = this.i;
        if (i == 1 || i == 2) {
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) FocusStrategy.findNextFocusInRelativeDirection(sparseArrayCompat, collectionAdapter, boundsAdapter, accessibilityNodeInfoCompat2, i, ViewCompat.getLayoutDirection(view) == 1, false);
        } else if (i == 17 || i == 33 || i == 66 || i == 130) {
            Rect rect2 = new Rect();
            int i4 = this.l;
            if (i4 != Integer.MIN_VALUE) {
                d(i4).getBoundsInParent(rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                int width = view.getWidth();
                int height = view.getHeight();
                if (i == 17) {
                    rect2.set(width, 0, width, height);
                } else if (i == 33) {
                    rect2.set(0, height, width, height);
                } else if (i == 66) {
                    rect2.set(-1, 0, -1, height);
                } else if (i == 130) {
                    rect2.set(0, -1, width, -1);
                } else {
                    throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                }
            }
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) FocusStrategy.findNextFocusInAbsoluteDirection(sparseArrayCompat, collectionAdapter, boundsAdapter, accessibilityNodeInfoCompat2, rect2, i);
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return requestKeyboardFocusForVirtualView(accessibilityNodeInfoCompat != null ? sparseArrayCompat.keyAt(sparseArrayCompat.indexOfValue(accessibilityNodeInfoCompat)) : Integer.MIN_VALUE);
    }

    public final boolean sendEventForVirtualView(int i, int i2) {
        View view;
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.h.isEnabled() || (parent = (view = this.i).getParent()) == null) {
            return false;
        }
        return parent.requestSendAccessibilityEvent(view, a(i, i2));
    }

    public final void invalidateRoot() {
        invalidateVirtualView(-1, 1);
    }

    public final void invalidateVirtualView(int i) {
        invalidateVirtualView(i, 0);
    }

    public final void invalidateVirtualView(int i, int i2) {
        View view;
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.h.isEnabled() || (parent = (view = this.i).getParent()) == null) {
            return;
        }
        AccessibilityEvent accessibilityEventA = a(i, 2048);
        AccessibilityEventCompat.setContentChangeTypes(accessibilityEventA, i2);
        parent.requestSendAccessibilityEvent(view, accessibilityEventA);
    }

    @Deprecated
    public int getFocusedVirtualView() {
        return getAccessibilityFocusedVirtualViewId();
    }

    public final AccessibilityEvent a(int i, int i2) {
        View view = this.i;
        if (i == -1) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i2);
            view.onInitializeAccessibilityEvent(accessibilityEventObtain);
            return accessibilityEventObtain;
        }
        AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain(i2);
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatD = d(i);
        accessibilityEventObtain2.getText().add(accessibilityNodeInfoCompatD.getText());
        accessibilityEventObtain2.setContentDescription(accessibilityNodeInfoCompatD.getContentDescription());
        accessibilityEventObtain2.setScrollable(accessibilityNodeInfoCompatD.isScrollable());
        accessibilityEventObtain2.setPassword(accessibilityNodeInfoCompatD.isPassword());
        accessibilityEventObtain2.setEnabled(accessibilityNodeInfoCompatD.isEnabled());
        accessibilityEventObtain2.setChecked(accessibilityNodeInfoCompatD.isChecked());
        onPopulateEventForVirtualView(i, accessibilityEventObtain2);
        if (accessibilityEventObtain2.getText().isEmpty() && accessibilityEventObtain2.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        accessibilityEventObtain2.setClassName(accessibilityNodeInfoCompatD.getClassName());
        AccessibilityRecordCompat.setSource(accessibilityEventObtain2, view, i);
        accessibilityEventObtain2.setPackageName(view.getContext().getPackageName());
        return accessibilityEventObtain2;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        onPopulateEventForHost(accessibilityEvent);
    }

    public final AccessibilityNodeInfoCompat d(int i) {
        if (i != -1) {
            return b(i);
        }
        View view = this.i;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain(view);
        ViewCompat.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompatObtain);
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        if (accessibilityNodeInfoCompatObtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            accessibilityNodeInfoCompatObtain.addChild(view, ((Integer) arrayList.get(i2)).intValue());
        }
        return accessibilityNodeInfoCompatObtain;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        onPopulateNodeForHost(accessibilityNodeInfoCompat);
    }

    public final AccessibilityNodeInfoCompat b(int i) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain();
        accessibilityNodeInfoCompatObtain.setEnabled(true);
        accessibilityNodeInfoCompatObtain.setFocusable(true);
        accessibilityNodeInfoCompatObtain.setClassName("android.view.View");
        Rect rect = n;
        accessibilityNodeInfoCompatObtain.setBoundsInParent(rect);
        accessibilityNodeInfoCompatObtain.setBoundsInScreen(rect);
        View view = this.i;
        accessibilityNodeInfoCompatObtain.setParent(view);
        onPopulateNodeForVirtualView(i, accessibilityNodeInfoCompatObtain);
        if (accessibilityNodeInfoCompatObtain.getText() == null && accessibilityNodeInfoCompatObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        Rect rect2 = this.e;
        accessibilityNodeInfoCompatObtain.getBoundsInParent(rect2);
        if (rect2.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = accessibilityNodeInfoCompatObtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoCompatObtain.setPackageName(view.getContext().getPackageName());
        accessibilityNodeInfoCompatObtain.setSource(view, i);
        if (this.k == i) {
            accessibilityNodeInfoCompatObtain.setAccessibilityFocused(true);
            accessibilityNodeInfoCompatObtain.addAction(128);
        } else {
            accessibilityNodeInfoCompatObtain.setAccessibilityFocused(false);
            accessibilityNodeInfoCompatObtain.addAction(64);
        }
        boolean z = this.l == i;
        if (z) {
            accessibilityNodeInfoCompatObtain.addAction(2);
        } else if (accessibilityNodeInfoCompatObtain.isFocusable()) {
            accessibilityNodeInfoCompatObtain.addAction(1);
        }
        accessibilityNodeInfoCompatObtain.setFocused(z);
        int[] iArr = this.f1455g;
        view.getLocationOnScreen(iArr);
        Rect rect3 = this.d;
        accessibilityNodeInfoCompatObtain.getBoundsInScreen(rect3);
        if (rect3.equals(rect)) {
            accessibilityNodeInfoCompatObtain.getBoundsInParent(rect3);
            if (accessibilityNodeInfoCompatObtain.mParentVirtualDescendantId != -1) {
                AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain2 = AccessibilityNodeInfoCompat.obtain();
                for (int i2 = accessibilityNodeInfoCompatObtain.mParentVirtualDescendantId; i2 != -1; i2 = accessibilityNodeInfoCompatObtain2.mParentVirtualDescendantId) {
                    accessibilityNodeInfoCompatObtain2.setParent(view, -1);
                    accessibilityNodeInfoCompatObtain2.setBoundsInParent(rect);
                    onPopulateNodeForVirtualView(i2, accessibilityNodeInfoCompatObtain2);
                    accessibilityNodeInfoCompatObtain2.getBoundsInParent(rect2);
                    rect3.offset(rect2.left, rect2.top);
                }
                accessibilityNodeInfoCompatObtain2.recycle();
            }
            rect3.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
        }
        Rect rect4 = this.f;
        if (view.getLocalVisibleRect(rect4)) {
            rect4.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
            if (rect3.intersect(rect4)) {
                accessibilityNodeInfoCompatObtain.setBoundsInScreen(rect3);
                if (rect3 != null && !rect3.isEmpty() && view.getWindowVisibility() == 0) {
                    Object parent = view.getParent();
                    while (true) {
                        if (parent instanceof View) {
                            View view2 = (View) parent;
                            if (view2.getAlpha() <= 0.0f || view2.getVisibility() != 0) {
                                break;
                            }
                            parent = view2.getParent();
                        } else if (parent != null) {
                            accessibilityNodeInfoCompatObtain.setVisibleToUser(true);
                        }
                    }
                }
            }
        }
        return accessibilityNodeInfoCompatObtain;
    }

    public class c extends AccessibilityNodeProviderCompat {
        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public boolean performAction(int i, int i2, Bundle bundle) {
            int i3;
            ExploreByTouchHelper exploreByTouchHelper = ExploreByTouchHelper.this;
            View view = exploreByTouchHelper.i;
            if (i == -1) {
                return ViewCompat.performAccessibilityAction(view, i2, bundle);
            }
            if (i2 == 1) {
                return exploreByTouchHelper.requestKeyboardFocusForVirtualView(i);
            }
            if (i2 == 2) {
                return exploreByTouchHelper.clearKeyboardFocusForVirtualView(i);
            }
            if (i2 != 64) {
                if (i2 != 128) {
                    return exploreByTouchHelper.onPerformActionForVirtualView(i, i2, bundle);
                }
                if (exploreByTouchHelper.k != i) {
                    return false;
                }
                exploreByTouchHelper.k = Integer.MIN_VALUE;
                view.invalidate();
                exploreByTouchHelper.sendEventForVirtualView(i, 65536);
                return true;
            }
            AccessibilityManager accessibilityManager = exploreByTouchHelper.h;
            if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled() || (i3 = exploreByTouchHelper.k) == i) {
                return false;
            }
            if (i3 != Integer.MIN_VALUE) {
                exploreByTouchHelper.k = Integer.MIN_VALUE;
                view.invalidate();
                exploreByTouchHelper.sendEventForVirtualView(i3, 65536);
            }
            exploreByTouchHelper.k = i;
            view.invalidate();
            exploreByTouchHelper.sendEventForVirtualView(i, 32768);
            return true;
        }

        public c() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i) {
            return AccessibilityNodeInfoCompat.obtain(ExploreByTouchHelper.this.d(i));
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat findFocus(int i) {
            ExploreByTouchHelper exploreByTouchHelper = ExploreByTouchHelper.this;
            int i2 = i == 2 ? exploreByTouchHelper.k : exploreByTouchHelper.l;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return createAccessibilityNodeInfo(i2);
        }
    }

    public final boolean requestKeyboardFocusForVirtualView(int i) {
        int i2;
        View view = this.i;
        if ((!view.isFocused() && !view.requestFocus()) || (i2 = this.l) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i2);
        }
        if (i == Integer.MIN_VALUE) {
            return false;
        }
        this.l = i;
        onVirtualViewKeyboardFocusChanged(i, true);
        sendEventForVirtualView(i, 8);
        return true;
    }

    public final boolean clearKeyboardFocusForVirtualView(int i) {
        if (this.l != i) {
            return false;
        }
        this.l = Integer.MIN_VALUE;
        onVirtualViewKeyboardFocusChanged(i, false);
        sendEventForVirtualView(i, 8);
        return true;
    }
}
