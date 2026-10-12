package com.google.zxing.client.android.result;

import android.view.View;

/* loaded from: classes.dex */
public final class ResultButtonListener implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final ResultHandler f5138a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5139b;

    public ResultButtonListener(ResultHandler resultHandler, int i) {
        this.f5138a = resultHandler;
        this.f5139b = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f5138a.handleButtonPress(this.f5139b);
    }
}
