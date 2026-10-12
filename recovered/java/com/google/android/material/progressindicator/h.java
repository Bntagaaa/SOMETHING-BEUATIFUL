package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;

/* loaded from: classes.dex */
abstract class h<S extends BaseProgressIndicatorSpec> {

    /* renamed from: a, reason: collision with root package name */
    public final BaseProgressIndicatorSpec f3141a;

    /* renamed from: b, reason: collision with root package name */
    public g f3142b;

    public abstract void a(Canvas canvas, Paint paint);

    public abstract void adjustCanvas(Canvas canvas, float f);

    public abstract void fillIndicator(Canvas canvas, Paint paint, float f, float f2, int i);

    public abstract int getPreferredHeight();

    public abstract int getPreferredWidth();

    public h(S s) {
        this.f3141a = s;
    }

    public void registerDrawable(@NonNull g gVar) {
        this.f3142b = gVar;
    }
}
