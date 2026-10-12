package com.google.android.material.transition;

import android.graphics.Canvas;
import com.google.android.material.transition.MaterialContainerTransform;
import com.google.android.material.transition.u;

/* loaded from: classes.dex */
class m implements u.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialContainerTransform.d f3433a;

    @Override // com.google.android.material.transition.u.a
    public void run(Canvas canvas) {
        this.f3433a.e.draw(canvas);
    }

    public m(MaterialContainerTransform.d dVar) {
        this.f3433a = dVar;
    }
}
