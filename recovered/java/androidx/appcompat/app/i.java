package androidx.appcompat.app;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController;

/* loaded from: classes.dex */
class i implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AlertController f165a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AlertController.AlertParams f166b;

    public i(AlertController.AlertParams alertParams, AlertController alertController) {
        this.f166b = alertParams;
        this.f165a = alertController;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        AlertController.AlertParams alertParams = this.f166b;
        DialogInterface.OnClickListener onClickListener = alertParams.mOnClickListener;
        AlertController alertController = this.f165a;
        onClickListener.onClick(alertController.f91b, i);
        if (alertParams.mIsSingleChoice) {
            return;
        }
        alertController.f91b.dismiss();
    }
}
