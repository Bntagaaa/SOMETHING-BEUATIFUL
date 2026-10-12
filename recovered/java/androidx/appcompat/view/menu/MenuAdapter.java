package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuView;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MenuAdapter extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final MenuBuilder f249a;

    /* renamed from: b, reason: collision with root package name */
    public int f250b = -1;
    public boolean c;
    public final boolean d;
    public final LayoutInflater e;
    public final int f;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public MenuAdapter(MenuBuilder menuBuilder, LayoutInflater layoutInflater, boolean z, int i) {
        this.d = z;
        this.e = layoutInflater;
        this.f249a = menuBuilder;
        this.f = i;
        a();
    }

    public boolean getForceShowIcon() {
        return this.c;
    }

    public void setForceShowIcon(boolean z) {
        this.c = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        boolean z = this.d;
        MenuBuilder menuBuilder = this.f249a;
        ArrayList<MenuItemImpl> nonActionItems = z ? menuBuilder.getNonActionItems() : menuBuilder.getVisibleItems();
        if (this.f250b < 0) {
            return nonActionItems.size();
        }
        return nonActionItems.size() - 1;
    }

    public MenuBuilder getAdapterMenu() {
        return this.f249a;
    }

    @Override // android.widget.Adapter
    public MenuItemImpl getItem(int i) {
        boolean z = this.d;
        MenuBuilder menuBuilder = this.f249a;
        ArrayList<MenuItemImpl> nonActionItems = z ? menuBuilder.getNonActionItems() : menuBuilder.getVisibleItems();
        int i2 = this.f250b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return nonActionItems.get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.e.inflate(this.f, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f249a.isGroupDividerEnabled() && groupId != (i2 >= 0 ? getItem(i2).getGroupId() : groupId));
        MenuView.ItemView itemView = (MenuView.ItemView) view;
        if (this.c) {
            listMenuItemView.setForceShowIcon(true);
        }
        itemView.initialize(getItem(i), 0);
        return view;
    }

    public final void a() {
        MenuBuilder menuBuilder = this.f249a;
        MenuItemImpl expandedItem = menuBuilder.getExpandedItem();
        if (expandedItem != null) {
            ArrayList<MenuItemImpl> nonActionItems = menuBuilder.getNonActionItems();
            int size = nonActionItems.size();
            for (int i = 0; i < size; i++) {
                if (nonActionItems.get(i) == expandedItem) {
                    this.f250b = i;
                    return;
                }
            }
        }
        this.f250b = -1;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
