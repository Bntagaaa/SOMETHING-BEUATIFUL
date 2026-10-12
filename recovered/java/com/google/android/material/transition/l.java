package com.google.android.material.transition;

import android.graphics.Canvas;
import com.google.android.material.transition.MaterialContainerTransform;
import com.google.android.material.transition.u;

/* loaded from: classes.dex */
class l implements u.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialContainerTransform.d f3432a;

    @Override // com.google.android.material.transition.u.a
    public void run(Canvas canvas) {
        this.f3432a.f3407a.draw(canvas);
    }

    public l(MaterialContainerTransform.d dVar) {
        this.f3432a = dVar;
    }
}
