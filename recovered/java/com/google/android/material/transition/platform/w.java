package com.google.android.material.transition.platform;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.transition.platform.x;

/* loaded from: classes.dex */
class w implements x.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RectF f3492a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RectF f3493b;
    public final /* synthetic */ float c;
    public final /* synthetic */ float d;
    public final /* synthetic */ float e;

    public w(RectF rectF, RectF rectF2, float f, float f2, float f3) {
        this.f3492a = rectF;
        this.f3493b = rectF2;
        this.c = f;
        this.d = f2;
        this.e = f3;
    }

    @Override // com.google.android.material.transition.platform.x.b
    @NonNull
    public CornerSize apply(@NonNull CornerSize cornerSize, @NonNull CornerSize cornerSize2) {
        return new AbsoluteCornerSize(x.d(cornerSize.getCornerSize(this.f3492a), cornerSize2.getCornerSize(this.f3493b), this.c, this.d, this.e, false));
    }
}
