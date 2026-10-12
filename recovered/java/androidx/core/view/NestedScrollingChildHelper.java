package androidx.core.view;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class NestedScrollingChildHelper {

    /* renamed from: a, reason: collision with root package name */
    public ViewParent f1307a;

    /* renamed from: b, reason: collision with root package name */
    public ViewParent f1308b;
    public final View c;
    public boolean d;
    public int[] e;

    public NestedScrollingChildHelper(@NonNull View view) {
        this.c = view;
    }

    public void setNestedScrollingEnabled(boolean z) {
        if (this.d) {
            ViewCompat.stopNestedScroll(this.c);
        }
        this.d = z;
    }

    public boolean isNestedScrollingEnabled() {
        return this.d;
    }

    public boolean hasNestedScrollingParent() {
        return hasNestedScrollingParent(0);
    }

    public boolean hasNestedScrollingParent(int i) {
        return b(i) != null;
    }

    public boolean startNestedScroll(int i) {
        return startNestedScroll(i, 0);
    }

    public boolean startNestedScroll(int i, int i2) {
        if (hasNestedScrollingParent(i2)) {
            return true;
        }
        if (!isNestedScrollingEnabled()) {
            return false;
        }
        View view = this.c;
        View view2 = view;
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (ViewParentCompat.onStartNestedScroll(parent, view2, view, i, i2)) {
                if (i2 == 0) {
                    this.f1307a = parent;
                } else if (i2 == 1) {
                    this.f1308b = parent;
                }
                ViewParentCompat.onNestedScrollAccepted(parent, view2, view, i, i2);
                return true;
            }
            if (parent instanceof View) {
                view2 = parent;
            }
        }
        return false;
    }

    public void stopNestedScroll() {
        stopNestedScroll(0);
    }

    public void stopNestedScroll(int i) {
        ViewParent viewParentB = b(i);
        if (viewParentB != null) {
            ViewParentCompat.onStopNestedScroll(viewParentB, this.c, i);
            if (i == 0) {
                this.f1307a = null;
            } else {
                if (i != 1) {
                    return;
                }
                this.f1308b = null;
            }
        }
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, @Nullable int[] iArr) {
        return a(i, i2, i3, i4, iArr, 0, null);
    }

    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, @Nullable int[] iArr, int i5) {
        return a(i, i2, i3, i4, iArr, i5, null);
    }

    public void dispatchNestedScroll(int i, int i2, int i3, int i4, @Nullable int[] iArr, int i5, @Nullable int[] iArr2) {
        a(i, i2, i3, i4, iArr, i5, iArr2);
    }

    public final boolean a(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent viewParentB;
        int i6;
        int i7;
        int[] iArr3;
        if (isNestedScrollingEnabled() && (viewParentB = b(i5)) != null) {
            if (i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
                View view = this.c;
                if (iArr != null) {
                    view.getLocationInWindow(iArr);
                    i6 = iArr[0];
                    i7 = iArr[1];
                } else {
                    i6 = 0;
                    i7 = 0;
                }
                if (iArr2 == null) {
                    if (this.e == null) {
                        this.e = new int[2];
                    }
                    int[] iArr4 = this.e;
                    iArr4[0] = 0;
                    iArr4[1] = 0;
                    iArr3 = iArr4;
                } else {
                    iArr3 = iArr2;
                }
                ViewParentCompat.onNestedScroll(viewParentB, this.c, i, i2, i3, i4, i5, iArr3);
                if (iArr != null) {
                    view.getLocationInWindow(iArr);
                    iArr[0] = iArr[0] - i6;
                    iArr[1] = iArr[1] - i7;
                }
                return true;
            }
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                return false;
            }
        }
        return false;
    }

    public boolean dispatchNestedPreScroll(int i, int i2, @Nullable int[] iArr, @Nullable int[] iArr2) {
        return dispatchNestedPreScroll(i, i2, iArr, iArr2, 0);
    }

    public boolean dispatchNestedPreScroll(int i, int i2, @Nullable int[] iArr, @Nullable int[] iArr2, int i3) {
        ViewParent viewParentB;
        int i4;
        int i5;
        if (isNestedScrollingEnabled() && (viewParentB = b(i3)) != null) {
            if (i != 0 || i2 != 0) {
                View view = this.c;
                if (iArr2 != null) {
                    view.getLocationInWindow(iArr2);
                    i4 = iArr2[0];
                    i5 = iArr2[1];
                } else {
                    i4 = 0;
                    i5 = 0;
                }
                if (iArr == null) {
                    if (this.e == null) {
                        this.e = new int[2];
                    }
                    iArr = this.e;
                }
                int[] iArr3 = iArr;
                iArr3[0] = 0;
                iArr3[1] = 0;
                ViewParentCompat.onNestedPreScroll(viewParentB, this.c, i, i2, iArr3, i3);
                if (iArr2 != null) {
                    view.getLocationInWindow(iArr2);
                    iArr2[0] = iArr2[0] - i4;
                    iArr2[1] = iArr2[1] - i5;
                }
                if (iArr3[0] != 0 || iArr3[1] != 0) {
                    return true;
                }
            } else if (iArr2 != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
                return false;
            }
        }
        return false;
    }

    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        ViewParent viewParentB;
        if (!isNestedScrollingEnabled() || (viewParentB = b(0)) == null) {
            return false;
        }
        return ViewParentCompat.onNestedFling(viewParentB, this.c, f, f2, z);
    }

    public boolean dispatchNestedPreFling(float f, float f2) {
        ViewParent viewParentB;
        if (!isNestedScrollingEnabled() || (viewParentB = b(0)) == null) {
            return false;
        }
        return ViewParentCompat.onNestedPreFling(viewParentB, this.c, f, f2);
    }

    public void onDetachedFromWindow() {
        ViewCompat.stopNestedScroll(this.c);
    }

    public void onStopNestedScroll(@NonNull View view) {
        ViewCompat.stopNestedScroll(this.c);
    }

    public final ViewParent b(int i) {
        if (i == 0) {
            return this.f1307a;
        }
        if (i != 1) {
            return null;
        }
        return this.f1308b;
    }
}
