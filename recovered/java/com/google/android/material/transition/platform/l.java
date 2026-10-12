package com.google.android.material.transition.platform;

import android.graphics.Canvas;
import com.google.android.material.transition.platform.MaterialContainerTransform;
import com.google.android.material.transition.platform.x;

/* loaded from: classes.dex */
class l implements x.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialContainerTransform.d f3478a;

    @Override // com.google.android.material.transition.platform.x.a
    public void run(Canvas canvas) {
        this.f3478a.f3450a.draw(canvas);
    }

    public l(MaterialContainerTransform.d dVar) {
        this.f3478a = dVar;
    }
}
