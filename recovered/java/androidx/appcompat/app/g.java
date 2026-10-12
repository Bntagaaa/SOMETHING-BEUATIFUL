package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.appcompat.app.AlertController;

/* loaded from: classes.dex */
class g extends ArrayAdapter<CharSequence> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AlertController.RecycleListView f161a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AlertController.AlertParams f162b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(AlertController.AlertParams alertParams, Context context, int i, CharSequence[] charSequenceArr, AlertController.RecycleListView recycleListView) {
        super(context, i, R.id.text1, charSequenceArr);
        this.f162b = alertParams;
        this.f161a = recycleListView;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        boolean[] zArr = this.f162b.mCheckedItems;
        if (zArr != null && zArr[i]) {
            this.f161a.setItemChecked(i, true);
        }
        return view2;
    }
}
