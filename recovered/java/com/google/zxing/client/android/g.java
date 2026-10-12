package com.google.zxing.client.android;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;

/* loaded from: classes.dex */
final class g implements ResultPointCallback {

    /* renamed from: a, reason: collision with root package name */
    public final ViewfinderView f5137a;

    public g(ViewfinderView viewfinderView) {
        this.f5137a = viewfinderView;
    }

    @Override // com.google.zxing.ResultPointCallback
    public void foundPossibleResultPoint(ResultPoint resultPoint) {
        this.f5137a.addPossibleResultPoint(resultPoint);
    }
}
