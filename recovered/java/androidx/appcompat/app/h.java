package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import androidx.appcompat.app.AlertController;

/* loaded from: classes.dex */
class h extends CursorAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final int f163a;

    /* renamed from: b, reason: collision with root package name */
    public final int f164b;
    public final /* synthetic */ AlertController.RecycleListView c;
    public final /* synthetic */ AlertController d;
    public final /* synthetic */ AlertController.AlertParams e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(AlertController.AlertParams alertParams, Context context, Cursor cursor, AlertController.RecycleListView recycleListView, AlertController alertController) {
        super(context, cursor, false);
        this.e = alertParams;
        this.c = recycleListView;
        this.d = alertController;
        Cursor cursor2 = getCursor();
        this.f163a = cursor2.getColumnIndexOrThrow(alertParams.mLabelColumn);
        this.f164b = cursor2.getColumnIndexOrThrow(alertParams.mIsCheckedColumn);
    }

    @Override // android.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        ((CheckedTextView) view.findViewById(R.id.text1)).setText(cursor.getString(this.f163a));
        this.c.setItemChecked(cursor.getPosition(), cursor.getInt(this.f164b) == 1);
    }

    @Override // android.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.e.mInflater.inflate(this.d.L, viewGroup, false);
    }
}
