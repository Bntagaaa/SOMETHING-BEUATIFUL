package com.google.zxing.client.android;

import android.app.Activity;
import android.content.DialogInterface;

/* loaded from: classes.dex */
public final class FinishListener implements DialogInterface.OnClickListener, DialogInterface.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f5108a;

    public FinishListener(Activity activity) {
        this.f5108a = activity;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.f5108a.finish();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f5108a.finish();
    }
}
