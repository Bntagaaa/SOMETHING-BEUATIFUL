package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(18)
/* loaded from: classes.dex */
class x implements y {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroupOverlay f2313a;

    public x(ViewGroup viewGroup) {
        this.f2313a = viewGroup.getOverlay();
    }

    @Override // androidx.transition.y
    public void add(@NonNull View view) {
        this.f2313a.add(view);
    }

    @Override // androidx.transition.y
    public void remove(@NonNull View view) {
        this.f2313a.remove(view);
    }
}
