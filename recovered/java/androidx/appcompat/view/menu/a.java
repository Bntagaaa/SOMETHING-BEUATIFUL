package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.internal.view.SupportSubMenu;

/* loaded from: classes.dex */
abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public final Context f267a;

    /* renamed from: b, reason: collision with root package name */
    public SimpleArrayMap f268b;
    public SimpleArrayMap c;

    public a(Context context) {
        this.f267a = context;
    }

    public final MenuItem a(MenuItem menuItem) {
        if (!(menuItem instanceof SupportMenuItem)) {
            return menuItem;
        }
        SupportMenuItem supportMenuItem = (SupportMenuItem) menuItem;
        if (this.f268b == null) {
            this.f268b = new SimpleArrayMap();
        }
        MenuItem menuItem2 = (MenuItem) this.f268b.get(supportMenuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        MenuItemWrapperICS menuItemWrapperICS = new MenuItemWrapperICS(this.f267a, supportMenuItem);
        this.f268b.put(supportMenuItem, menuItemWrapperICS);
        return menuItemWrapperICS;
    }

    public final SubMenu b(SubMenu subMenu) {
        if (!(subMenu instanceof SupportSubMenu)) {
            return subMenu;
        }
        SupportSubMenu supportSubMenu = (SupportSubMenu) subMenu;
        if (this.c == null) {
            this.c = new SimpleArrayMap();
        }
        SubMenu subMenu2 = (SubMenu) this.c.get(supportSubMenu);
        if (subMenu2 != null) {
            return subMenu2;
        }
        f fVar = new f(this.f267a, supportSubMenu);
        this.c.put(supportSubMenu, fVar);
        return fVar;
    }
}
