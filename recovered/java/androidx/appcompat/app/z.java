package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.ActionBar;

/* loaded from: classes.dex */
class z implements AdapterView.OnItemSelectedListener {

    /* renamed from: a, reason: collision with root package name */
    public final ActionBar.OnNavigationListener f183a;

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public z(ActionBar.OnNavigationListener onNavigationListener) {
        this.f183a = onNavigationListener;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        ActionBar.OnNavigationListener onNavigationListener = this.f183a;
        if (onNavigationListener != null) {
            onNavigationListener.onNavigationItemSelected(i, j);
        }
    }
}
