package androidx.appcompat.app;

import android.view.View;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;

/* loaded from: classes.dex */
class a implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActionBarDrawerToggle f134a;

    public a(ActionBarDrawerToggle actionBarDrawerToggle) {
        this.f134a = actionBarDrawerToggle;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ActionBarDrawerToggle actionBarDrawerToggle = this.f134a;
        if (!actionBarDrawerToggle.f) {
            View.OnClickListener onClickListener = actionBarDrawerToggle.j;
            if (onClickListener != null) {
                onClickListener.onClick(view);
                return;
            }
            return;
        }
        DrawerLayout drawerLayout = actionBarDrawerToggle.f85b;
        int drawerLockMode = drawerLayout.getDrawerLockMode(GravityCompat.START);
        if (drawerLayout.isDrawerVisible(GravityCompat.START) && drawerLockMode != 2) {
            drawerLayout.closeDrawer(GravityCompat.START);
        } else if (drawerLockMode != 1) {
            drawerLayout.openDrawer(GravityCompat.START);
        }
    }
}
