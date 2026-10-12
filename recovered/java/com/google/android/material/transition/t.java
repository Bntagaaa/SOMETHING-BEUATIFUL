package com.google.android.material.transition;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.transition.u;

/* loaded from: classes.dex */
class t implements u.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RectF f3498a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RectF f3499b;
    public final /* synthetic */ float c;
    public final /* synthetic */ float d;
    public final /* synthetic */ float e;

    public t(RectF rectF, RectF rectF2, float f, float f2, float f3) {
        this.f3498a = rectF;
        this.f3499b = rectF2;
        this.c = f;
        this.d = f2;
        this.e = f3;
    }

    @Override // com.google.android.material.transition.u.b
    @NonNull
    public CornerSize apply(@NonNull CornerSize cornerSize, @NonNull CornerSize cornerSize2) {
        return new AbsoluteCornerSize(u.d(cornerSize.getCornerSize(this.f3498a), cornerSize2.getCornerSize(this.f3499b), this.c, this.d, this.e, false));
    }
}
