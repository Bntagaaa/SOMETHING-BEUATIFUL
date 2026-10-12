package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Dimension;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.ListMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import com.google.android.material.R;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class NavigationMenuPresenter implements MenuPresenter {
    public static final int NO_TEXT_APPEARANCE_SET = 0;
    public int A;

    /* renamed from: a, reason: collision with root package name */
    public NavigationMenuView f3065a;

    /* renamed from: b, reason: collision with root package name */
    public LinearLayout f3066b;
    public MenuPresenter.Callback c;
    public MenuBuilder d;
    public int e;
    public c f;

    /* renamed from: g, reason: collision with root package name */
    public LayoutInflater f3067g;
    public ColorStateList i;
    public ColorStateList k;
    public ColorStateList l;
    public Drawable m;
    public RippleDrawable n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public boolean w;
    public int y;
    public int z;
    public int h = 0;
    public int j = 0;
    public boolean x = true;
    public int B = -1;
    public final View.OnClickListener C = new a();

    public static class d implements e {
    }

    public interface e {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this.f3067g = LayoutInflater.from(context);
        this.d = menuBuilder;
        this.A = context.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        if (this.f3065a == null) {
            NavigationMenuView navigationMenuView = (NavigationMenuView) this.f3067g.inflate(R.layout.design_navigation_menu, viewGroup, false);
            this.f3065a = navigationMenuView;
            navigationMenuView.setAccessibilityDelegateCompat(new h(this.f3065a));
            if (this.f == null) {
                this.f = new c();
            }
            int i2 = this.B;
            if (i2 != -1) {
                this.f3065a.setOverScrollMode(i2);
            }
            this.f3066b = (LinearLayout) this.f3067g.inflate(R.layout.design_navigation_item_header, (ViewGroup) this.f3065a, false);
            this.f3065a.setAdapter(this.f);
        }
        return this.f3065a;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        c cVar = this.f;
        if (cVar != null) {
            cVar.update();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.c = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        MenuPresenter.Callback callback = this.c;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.e;
    }

    public void setId(int i2) {
        this.e = i2;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    @NonNull
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        if (this.f3065a != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f3065a.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray(ListMenuPresenter.VIEWS_TAG, sparseArray);
        }
        c cVar = this.f;
        if (cVar != null) {
            bundle.putBundle("android:menu:adapter", cVar.createInstanceState());
        }
        if (this.f3066b != null) {
            SparseArray<Parcelable> sparseArray2 = new SparseArray<>();
            this.f3066b.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
        }
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(ListMenuPresenter.VIEWS_TAG);
            if (sparseParcelableArray != null) {
                this.f3065a.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                this.f.restoreInstanceState(bundle2);
            }
            SparseArray<Parcelable> sparseParcelableArray2 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray2 != null) {
                this.f3066b.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    public void setCheckedItem(@NonNull MenuItemImpl menuItemImpl) {
        this.f.setCheckedItem(menuItemImpl);
    }

    @Nullable
    public MenuItemImpl getCheckedItem() {
        return this.f.getCheckedItem();
    }

    public View inflateHeaderView(@LayoutRes int i2) {
        View viewInflate = this.f3067g.inflate(i2, (ViewGroup) this.f3066b, false);
        addHeaderView(viewInflate);
        return viewInflate;
    }

    public void addHeaderView(@NonNull View view) {
        this.f3066b.addView(view);
        NavigationMenuView navigationMenuView = this.f3065a;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    public void removeHeaderView(@NonNull View view) {
        this.f3066b.removeView(view);
        if (this.f3066b.getChildCount() == 0) {
            NavigationMenuView navigationMenuView = this.f3065a;
            navigationMenuView.setPadding(0, this.z, 0, navigationMenuView.getPaddingBottom());
        }
    }

    public int getHeaderCount() {
        return this.f3066b.getChildCount();
    }

    public View getHeaderView(int i2) {
        return this.f3066b.getChildAt(i2);
    }

    public void setSubheaderColor(@Nullable ColorStateList colorStateList) {
        this.i = colorStateList;
        updateMenuView(false);
    }

    public void setSubheaderTextAppearance(@StyleRes int i2) {
        this.h = i2;
        updateMenuView(false);
    }

    @Nullable
    public ColorStateList getItemTintList() {
        return this.l;
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.l = colorStateList;
        updateMenuView(false);
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.k;
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.k = colorStateList;
        updateMenuView(false);
    }

    public void setItemTextAppearance(@StyleRes int i2) {
        this.j = i2;
        updateMenuView(false);
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.m;
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.m = drawable;
        updateMenuView(false);
    }

    public void setItemForeground(@Nullable RippleDrawable rippleDrawable) {
        this.n = rippleDrawable;
        updateMenuView(false);
    }

    public int getItemHorizontalPadding() {
        return this.o;
    }

    public void setItemHorizontalPadding(int i2) {
        this.o = i2;
        updateMenuView(false);
    }

    @Px
    public int getItemVerticalPadding() {
        return this.p;
    }

    public void setItemVerticalPadding(@Px int i2) {
        this.p = i2;
        updateMenuView(false);
    }

    @Px
    public int getDividerInsetStart() {
        return this.s;
    }

    public void setDividerInsetStart(@Px int i2) {
        this.s = i2;
        updateMenuView(false);
    }

    @Px
    public int getDividerInsetEnd() {
        return this.t;
    }

    public void setDividerInsetEnd(@Px int i2) {
        this.t = i2;
        updateMenuView(false);
    }

    @Px
    public int getSubheaderInsetStart() {
        return this.u;
    }

    public void setSubheaderInsetStart(@Px int i2) {
        this.u = i2;
        updateMenuView(false);
    }

    @Px
    public int getSubheaderInsetEnd() {
        return this.v;
    }

    public void setSubheaderInsetEnd(@Px int i2) {
        this.v = i2;
        updateMenuView(false);
    }

    public int getItemIconPadding() {
        return this.q;
    }

    public void setItemIconPadding(int i2) {
        this.q = i2;
        updateMenuView(false);
    }

    public void setItemMaxLines(int i2) {
        this.y = i2;
        updateMenuView(false);
    }

    public int getItemMaxLines() {
        return this.y;
    }

    public void setItemIconSize(@Dimension int i2) {
        if (this.r != i2) {
            this.r = i2;
            this.w = true;
            updateMenuView(false);
        }
    }

    public void setUpdateSuspended(boolean z) {
        c cVar = this.f;
        if (cVar != null) {
            cVar.setUpdateSuspended(z);
        }
    }

    public void setBehindStatusBar(boolean z) {
        if (this.x != z) {
            this.x = z;
            int i2 = (this.f3066b.getChildCount() == 0 && this.x) ? this.z : 0;
            NavigationMenuView navigationMenuView = this.f3065a;
            navigationMenuView.setPadding(0, i2, 0, navigationMenuView.getPaddingBottom());
        }
    }

    public boolean isBehindStatusBar() {
        return this.x;
    }

    public void dispatchApplyWindowInsets(@NonNull WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        if (this.z != systemWindowInsetTop) {
            this.z = systemWindowInsetTop;
            int i2 = (this.f3066b.getChildCount() == 0 && this.x) ? this.z : 0;
            NavigationMenuView navigationMenuView = this.f3065a;
            navigationMenuView.setPadding(0, i2, 0, navigationMenuView.getPaddingBottom());
        }
        NavigationMenuView navigationMenuView2 = this.f3065a;
        navigationMenuView2.setPadding(0, navigationMenuView2.getPaddingTop(), 0, windowInsetsCompat.getSystemWindowInsetBottom());
        ViewCompat.dispatchApplyWindowInsets(this.f3066b, windowInsetsCompat);
    }

    public void setOverScrollMode(int i2) {
        this.B = i2;
        NavigationMenuView navigationMenuView = this.f3065a;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(i2);
        }
    }

    public static abstract class l extends RecyclerView.ViewHolder {
        public l(View view) {
            super(view);
        }
    }

    public static class i extends l {
        public i(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(R.layout.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    public static class k extends l {
        public k(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    public static class j extends l {
        public j(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    public static class b extends l {
        public b(View view) {
            super(view);
        }
    }

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            boolean z = true;
            navigationMenuPresenter.setUpdateSuspended(true);
            MenuItemImpl itemData = ((NavigationMenuItemView) view).getItemData();
            boolean zPerformItemAction = navigationMenuPresenter.d.performItemAction(itemData, navigationMenuPresenter, 0);
            if (itemData != null && itemData.isCheckable() && zPerformItemAction) {
                navigationMenuPresenter.f.setCheckedItem(itemData);
            } else {
                z = false;
            }
            navigationMenuPresenter.setUpdateSuspended(false);
            if (z) {
                navigationMenuPresenter.updateMenuView(false);
            }
        }
    }

    public class c extends RecyclerView.Adapter<l> {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f3069a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        public MenuItemImpl f3070b;
        public boolean c;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return i;
        }

        public c() {
            a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f3069a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            e eVar = (e) this.f3069a.get(i);
            if (eVar instanceof f) {
                return 2;
            }
            if (eVar instanceof d) {
                return 3;
            }
            if (eVar instanceof g) {
                return ((g) eVar).getMenuItem().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @Nullable
        public l onCreateViewHolder(ViewGroup viewGroup, int i) {
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            if (i == 0) {
                return new i(navigationMenuPresenter.f3067g, viewGroup, navigationMenuPresenter.C);
            }
            if (i == 1) {
                return new k(navigationMenuPresenter.f3067g, viewGroup);
            }
            if (i == 2) {
                return new j(navigationMenuPresenter.f3067g, viewGroup);
            }
            if (i != 3) {
                return null;
            }
            return new b(navigationMenuPresenter.f3066b);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull l lVar, int i) throws Resources.NotFoundException {
            int itemViewType = getItemViewType(i);
            ArrayList arrayList = this.f3069a;
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    if (itemViewType != 2) {
                        return;
                    }
                    f fVar = (f) arrayList.get(i);
                    lVar.itemView.setPadding(navigationMenuPresenter.s, fVar.getPaddingTop(), navigationMenuPresenter.t, fVar.getPaddingBottom());
                    return;
                }
                TextView textView = (TextView) lVar.itemView;
                textView.setText(((g) arrayList.get(i)).getMenuItem().getTitle());
                int i2 = navigationMenuPresenter.h;
                if (i2 != 0) {
                    TextViewCompat.setTextAppearance(textView, i2);
                }
                textView.setPadding(navigationMenuPresenter.u, textView.getPaddingTop(), navigationMenuPresenter.v, textView.getPaddingBottom());
                ColorStateList colorStateList = navigationMenuPresenter.i;
                if (colorStateList != null) {
                    textView.setTextColor(colorStateList);
                    return;
                }
                return;
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) lVar.itemView;
            ColorStateList colorStateList2 = navigationMenuPresenter.l;
            navigationMenuItemView.A = colorStateList2;
            navigationMenuItemView.B = colorStateList2 != null;
            MenuItemImpl menuItemImpl = navigationMenuItemView.z;
            if (menuItemImpl != null) {
                navigationMenuItemView.setIcon(menuItemImpl.getIcon());
            }
            int i3 = navigationMenuPresenter.j;
            if (i3 != 0) {
                navigationMenuItemView.setTextAppearance(i3);
            }
            ColorStateList colorStateList3 = navigationMenuPresenter.k;
            if (colorStateList3 != null) {
                navigationMenuItemView.setTextColor(colorStateList3);
            }
            Drawable drawable = navigationMenuPresenter.m;
            ViewCompat.setBackground(navigationMenuItemView, drawable != null ? drawable.getConstantState().newDrawable() : null);
            RippleDrawable rippleDrawable = navigationMenuPresenter.n;
            if (rippleDrawable != null) {
                navigationMenuItemView.setForeground(rippleDrawable.getConstantState().newDrawable());
            }
            g gVar = (g) arrayList.get(i);
            navigationMenuItemView.setNeedsEmptyIcon(gVar.f3074b);
            int i4 = navigationMenuPresenter.o;
            int i5 = navigationMenuPresenter.p;
            navigationMenuItemView.setPadding(i4, i5, i4, i5);
            navigationMenuItemView.setIconPadding(navigationMenuPresenter.q);
            if (navigationMenuPresenter.w) {
                navigationMenuItemView.setIconSize(navigationMenuPresenter.r);
            }
            navigationMenuItemView.setMaxLines(navigationMenuPresenter.y);
            navigationMenuItemView.initialize(gVar.getMenuItem(), 0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewRecycled(l lVar) {
            if (lVar instanceof i) {
                ((NavigationMenuItemView) lVar.itemView).recycle();
            }
        }

        public void update() {
            a();
            notifyDataSetChanged();
        }

        public final void a() {
            if (this.c) {
                return;
            }
            this.c = true;
            ArrayList arrayList = this.f3069a;
            arrayList.clear();
            arrayList.add(new d());
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            int size = navigationMenuPresenter.d.getVisibleItems().size();
            boolean z = false;
            int i = -1;
            int i2 = 0;
            boolean z2 = false;
            int size2 = 0;
            while (i2 < size) {
                MenuItemImpl menuItemImpl = navigationMenuPresenter.d.getVisibleItems().get(i2);
                if (menuItemImpl.isChecked()) {
                    setCheckedItem(menuItemImpl);
                }
                if (menuItemImpl.isCheckable()) {
                    menuItemImpl.setExclusiveCheckable(z);
                }
                if (menuItemImpl.hasSubMenu()) {
                    SubMenu subMenu = menuItemImpl.getSubMenu();
                    if (subMenu.hasVisibleItems()) {
                        if (i2 != 0) {
                            arrayList.add(new f(navigationMenuPresenter.A, z ? 1 : 0));
                        }
                        arrayList.add(new g(menuItemImpl));
                        int size3 = subMenu.size();
                        int i3 = 0;
                        boolean z3 = false;
                        while (i3 < size3) {
                            MenuItemImpl menuItemImpl2 = (MenuItemImpl) subMenu.getItem(i3);
                            if (menuItemImpl2.isVisible()) {
                                if (!z3 && menuItemImpl2.getIcon() != null) {
                                    z3 = true;
                                }
                                if (menuItemImpl2.isCheckable()) {
                                    menuItemImpl2.setExclusiveCheckable(z);
                                }
                                if (menuItemImpl.isChecked()) {
                                    setCheckedItem(menuItemImpl);
                                }
                                arrayList.add(new g(menuItemImpl2));
                            }
                            i3++;
                            z = false;
                        }
                        if (z3) {
                            int size4 = arrayList.size();
                            for (int size5 = arrayList.size(); size5 < size4; size5++) {
                                ((g) arrayList.get(size5)).f3074b = true;
                            }
                        }
                    }
                } else {
                    int groupId = menuItemImpl.getGroupId();
                    if (groupId != i) {
                        size2 = arrayList.size();
                        z2 = menuItemImpl.getIcon() != null;
                        if (i2 != 0) {
                            size2++;
                            int i4 = navigationMenuPresenter.A;
                            arrayList.add(new f(i4, i4));
                        }
                    } else {
                        if (!z2 && menuItemImpl.getIcon() != null) {
                            int size6 = arrayList.size();
                            for (int i5 = size2; i5 < size6; i5++) {
                                ((g) arrayList.get(i5)).f3074b = true;
                            }
                            z2 = true;
                        }
                        g gVar = new g(menuItemImpl);
                        gVar.f3074b = z2;
                        arrayList.add(gVar);
                        i = groupId;
                    }
                    g gVar2 = new g(menuItemImpl);
                    gVar2.f3074b = z2;
                    arrayList.add(gVar2);
                    i = groupId;
                }
                i2++;
                z = false;
            }
            this.c = false;
        }

        public void setCheckedItem(@NonNull MenuItemImpl menuItemImpl) {
            if (this.f3070b == menuItemImpl || !menuItemImpl.isCheckable()) {
                return;
            }
            MenuItemImpl menuItemImpl2 = this.f3070b;
            if (menuItemImpl2 != null) {
                menuItemImpl2.setChecked(false);
            }
            this.f3070b = menuItemImpl;
            menuItemImpl.setChecked(true);
        }

        public MenuItemImpl getCheckedItem() {
            return this.f3070b;
        }

        @NonNull
        public Bundle createInstanceState() {
            Bundle bundle = new Bundle();
            MenuItemImpl menuItemImpl = this.f3070b;
            if (menuItemImpl != null) {
                bundle.putInt("android:menu:checked", menuItemImpl.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            ArrayList arrayList = this.f3069a;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                e eVar = (e) arrayList.get(i);
                if (eVar instanceof g) {
                    MenuItemImpl menuItem = ((g) eVar).getMenuItem();
                    View actionView = menuItem != null ? menuItem.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(menuItem.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
            return bundle;
        }

        public void restoreInstanceState(@NonNull Bundle bundle) {
            MenuItemImpl menuItem;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            MenuItemImpl menuItem2;
            int i = bundle.getInt("android:menu:checked", 0);
            ArrayList arrayList = this.f3069a;
            if (i != 0) {
                this.c = true;
                int size = arrayList.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    e eVar = (e) arrayList.get(i2);
                    if ((eVar instanceof g) && (menuItem2 = ((g) eVar).getMenuItem()) != null && menuItem2.getItemId() == i) {
                        setCheckedItem(menuItem2);
                        break;
                    }
                    i2++;
                }
                this.c = false;
                a();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:action_views");
            if (sparseParcelableArray != null) {
                int size2 = arrayList.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    e eVar2 = (e) arrayList.get(i3);
                    if ((eVar2 instanceof g) && (menuItem = ((g) eVar2).getMenuItem()) != null && (actionView = menuItem.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(menuItem.getItemId())) != null) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        public void setUpdateSuspended(boolean z) {
            this.c = z;
        }
    }

    public static class g implements e {

        /* renamed from: a, reason: collision with root package name */
        public final MenuItemImpl f3073a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f3074b;

        public g(MenuItemImpl menuItemImpl) {
            this.f3073a = menuItemImpl;
        }

        public MenuItemImpl getMenuItem() {
            return this.f3073a;
        }
    }

    public static class f implements e {

        /* renamed from: a, reason: collision with root package name */
        public final int f3071a;

        /* renamed from: b, reason: collision with root package name */
        public final int f3072b;

        public f(int i, int i2) {
            this.f3071a = i;
            this.f3072b = i2;
        }

        public int getPaddingTop() {
            return this.f3071a;
        }

        public int getPaddingBottom() {
            return this.f3072b;
        }
    }

    public class h extends RecyclerViewAccessibilityDelegate {
        public h(RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            int i = navigationMenuPresenter.f3066b.getChildCount() == 0 ? 0 : 1;
            for (int i2 = 0; i2 < navigationMenuPresenter.f.getItemCount(); i2++) {
                if (navigationMenuPresenter.f.getItemViewType(i2) == 0) {
                    i++;
                }
            }
            accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(i, 0, false));
        }
    }
}
