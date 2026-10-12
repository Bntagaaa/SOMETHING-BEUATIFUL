package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.ArrayList;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes.dex */
class g extends FrameLayout {
    public static final /* synthetic */ int c = 0;

    /* renamed from: a, reason: collision with root package name */
    public ViewGroup f2282a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f2283b;

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (!this.f2283b) {
            throw new IllegalStateException("This GhostViewHolder is detached!");
        }
        super.onViewAdded(view);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if ((getChildCount() == 1 && getChildAt(0) == view) || getChildCount() == 0) {
            int i = R.id.ghost_view_holder;
            ViewGroup viewGroup = this.f2282a;
            viewGroup.setTag(i, null);
            new x(viewGroup).remove(this);
            this.f2283b = false;
        }
    }

    public static void a(View view, ArrayList arrayList) {
        Object parent = view.getParent();
        if (parent instanceof ViewGroup) {
            a((View) parent, arrayList);
        }
        arrayList.add(view);
    }
}
