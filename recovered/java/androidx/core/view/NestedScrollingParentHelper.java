package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class NestedScrollingParentHelper {

    /* renamed from: a, reason: collision with root package name */
    public int f1309a;

    /* renamed from: b, reason: collision with root package name */
    public int f1310b;

    public NestedScrollingParentHelper(@NonNull ViewGroup viewGroup) {
    }

    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i) {
        onNestedScrollAccepted(view, view2, i, 0);
    }

    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i, int i2) {
        if (i2 == 1) {
            this.f1310b = i;
        } else {
            this.f1309a = i;
        }
    }

    public int getNestedScrollAxes() {
        return this.f1309a | this.f1310b;
    }

    public void onStopNestedScroll(@NonNull View view) {
        onStopNestedScroll(view, 0);
    }

    public void onStopNestedScroll(@NonNull View view, int i) {
        if (i == 1) {
            this.f1310b = 0;
        } else {
            this.f1309a = 0;
        }
    }
}
