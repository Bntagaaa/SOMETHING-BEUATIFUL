package com.google.android.material.floatingactionbutton;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.floatingactionbutton.m;

/* loaded from: classes.dex */
class f implements m.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FloatingActionButton.OnVisibilityChangedListener f3032a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FloatingActionButton f3033b;

    public f(FloatingActionButton floatingActionButton, FloatingActionButton.OnVisibilityChangedListener onVisibilityChangedListener) {
        this.f3033b = floatingActionButton;
        this.f3032a = onVisibilityChangedListener;
    }

    @Override // com.google.android.material.floatingactionbutton.m.e
    public void onShown() {
        this.f3032a.onShown(this.f3033b);
    }

    @Override // com.google.android.material.floatingactionbutton.m.e
    public void onHidden() {
        this.f3032a.onHidden(this.f3033b);
    }
}
