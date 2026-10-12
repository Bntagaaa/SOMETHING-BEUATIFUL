package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController;

/* loaded from: classes.dex */
class j implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AlertController.RecycleListView f167a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AlertController f168b;
    public final /* synthetic */ AlertController.AlertParams c;

    public j(AlertController.AlertParams alertParams, AlertController.RecycleListView recycleListView, AlertController alertController) {
        this.c = alertParams;
        this.f167a = recycleListView;
        this.f168b = alertController;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        AlertController.AlertParams alertParams = this.c;
        boolean[] zArr = alertParams.mCheckedItems;
        AlertController.RecycleListView recycleListView = this.f167a;
        if (zArr != null) {
            zArr[i] = recycleListView.isItemChecked(i);
        }
        alertParams.mOnCheckboxClickListener.onClick(this.f168b.f91b, i, recycleListView.isItemChecked(i));
    }
}
