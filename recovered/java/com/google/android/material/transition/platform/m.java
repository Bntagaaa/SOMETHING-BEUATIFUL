package com.google.android.material.transition.platform;

import android.graphics.Canvas;
import com.google.android.material.transition.platform.MaterialContainerTransform;
import com.google.android.material.transition.platform.x;

/* loaded from: classes.dex */
class m implements x.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialContainerTransform.d f3479a;

    @Override // com.google.android.material.transition.platform.x.a
    public void run(Canvas canvas) {
        this.f3479a.e.draw(canvas);
    }

    public m(MaterialContainerTransform.d dVar) {
        this.f3479a = dVar;
    }
}
