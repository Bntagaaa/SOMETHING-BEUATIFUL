package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.BaseMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ActionProvider;
import androidx.core.view.GravityCompat;
import java.util.ArrayList;

/* loaded from: classes.dex */
class b extends BaseMenuPresenter implements ActionProvider.SubUiVisibilityListener {
    public d e;
    public Drawable f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f459g;
    public boolean h;
    public boolean i;
    public int j;
    public int k;
    public int l;
    public boolean m;
    public final SparseBooleanArray n;
    public e o;
    public a p;
    public c q;
    public C0004b r;
    public final f s;
    public int t;

    public b(Context context) {
        super(context, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
        this.n = new SparseBooleanArray();
        this.s = new f();
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(@NonNull Context context, @Nullable MenuBuilder menuBuilder) {
        super.initForMenu(context, menuBuilder);
        Resources resources = context.getResources();
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(context);
        if (!this.i) {
            this.h = actionBarPolicy.showsOverflowMenuButton();
        }
        this.j = actionBarPolicy.getEmbeddedMenuWidthLimit();
        this.l = actionBarPolicy.getMaxActionButtons();
        int measuredWidth = this.j;
        if (this.h) {
            if (this.e == null) {
                d dVar = new d(this.mSystemContext);
                this.e = dVar;
                if (this.f459g) {
                    dVar.setImageDrawable(this.f);
                    this.f = null;
                    this.f459g = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.e.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.e.getMeasuredWidth();
        } else {
            this.e = null;
        }
        this.k = measuredWidth;
        float f2 = resources.getDisplayMetrics().density;
    }

    public void onConfigurationChanged(Configuration configuration) {
        this.l = ActionBarPolicy.get(this.mContext).getMaxActionButtons();
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder != null) {
            menuBuilder.onItemsChanged(true);
        }
    }

    public void setReserveOverflow(boolean z) {
        this.h = z;
        this.i = true;
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.m = z;
    }

    public void setOverflowIcon(Drawable drawable) {
        d dVar = this.e;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
        } else {
            this.f459g = true;
            this.f = drawable;
        }
    }

    public Drawable getOverflowIcon() {
        d dVar = this.e;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (this.f459g) {
            return this.f;
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        MenuView menuView = this.mMenuView;
        MenuView menuView2 = super.getMenuView(viewGroup);
        if (menuView != menuView2) {
            ((ActionMenuView) menuView2).setPresenter(this);
        }
        return menuView2;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public View getItemView(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        View actionView = menuItemImpl.getActionView();
        if (actionView == null || menuItemImpl.hasCollapsibleActionView()) {
            actionView = super.getItemView(menuItemImpl, view, viewGroup);
        }
        actionView.setVisibility(menuItemImpl.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public void bindItemView(MenuItemImpl menuItemImpl, MenuView.ItemView itemView) {
        itemView.initialize(menuItemImpl, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) itemView;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.mMenuView);
        if (this.r == null) {
            this.r = new C0004b();
        }
        actionMenuItemView.setPopupCallback(this.r);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public boolean shouldIncludeItem(int i, MenuItemImpl menuItemImpl) {
        return menuItemImpl.isActionButton();
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        super.updateMenuView(z);
        ((View) this.mMenuView).requestLayout();
        MenuBuilder menuBuilder = this.mMenu;
        boolean z2 = false;
        if (menuBuilder != null) {
            ArrayList<MenuItemImpl> actionItems = menuBuilder.getActionItems();
            int size = actionItems.size();
            for (int i = 0; i < size; i++) {
                ActionProvider supportActionProvider = actionItems.get(i).getSupportActionProvider();
                if (supportActionProvider != null) {
                    supportActionProvider.setSubUiVisibilityListener(this);
                }
            }
        }
        MenuBuilder menuBuilder2 = this.mMenu;
        ArrayList<MenuItemImpl> nonActionItems = menuBuilder2 != null ? menuBuilder2.getNonActionItems() : null;
        if (this.h && nonActionItems != null) {
            int size2 = nonActionItems.size();
            if (size2 == 1) {
                z2 = !nonActionItems.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z2 = true;
            }
        }
        if (z2) {
            if (this.e == null) {
                this.e = new d(this.mSystemContext);
            }
            ViewGroup viewGroup = (ViewGroup) this.e.getParent();
            if (viewGroup != this.mMenuView) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.e);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.mMenuView;
                actionMenuView.addView(this.e, actionMenuView.generateOverflowButtonLayoutParams());
            }
        } else {
            d dVar = this.e;
            if (dVar != null) {
                Object parent = dVar.getParent();
                Object obj = this.mMenuView;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.e);
                }
            }
        }
        ((ActionMenuView) this.mMenuView).setOverflowReserved(this.h);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public boolean filterLeftoverView(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.e) {
            return false;
        }
        return super.filterLeftoverView(viewGroup, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        boolean z = false;
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
        while (subMenuBuilder2.getParentMenu() != this.mMenu) {
            subMenuBuilder2 = (SubMenuBuilder) subMenuBuilder2.getParentMenu();
        }
        MenuItem item = subMenuBuilder2.getItem();
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        View view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i);
                if ((childAt instanceof MenuView.ItemView) && ((MenuView.ItemView) childAt).getItemData() == item) {
                    view = childAt;
                    break;
                }
                i++;
            }
        }
        if (view == null) {
            return false;
        }
        this.t = subMenuBuilder.getItem().getItemId();
        int size = subMenuBuilder.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            MenuItem item2 = subMenuBuilder.getItem(i2);
            if (item2.isVisible() && item2.getIcon() != null) {
                z = true;
                break;
            }
            i2++;
        }
        a aVar = new a(this.mContext, subMenuBuilder, view);
        this.p = aVar;
        aVar.setForceShowIcon(z);
        this.p.show();
        super.onSubMenuSelected(subMenuBuilder);
        return true;
    }

    public boolean showOverflowMenu() {
        MenuBuilder menuBuilder;
        if (!this.h || isOverflowMenuShowing() || (menuBuilder = this.mMenu) == null || this.mMenuView == null || this.q != null || menuBuilder.getNonActionItems().isEmpty()) {
            return false;
        }
        c cVar = new c(new e(this.mContext, this.mMenu, this.e, true));
        this.q = cVar;
        ((View) this.mMenuView).post(cVar);
        return true;
    }

    public boolean hideOverflowMenu() {
        Object obj;
        c cVar = this.q;
        if (cVar != null && (obj = this.mMenuView) != null) {
            ((View) obj).removeCallbacks(cVar);
            this.q = null;
            return true;
        }
        e eVar = this.o;
        if (eVar == null) {
            return false;
        }
        eVar.dismiss();
        return true;
    }

    public boolean dismissPopupMenus() {
        return hideOverflowMenu() | hideSubMenus();
    }

    public boolean hideSubMenus() {
        a aVar = this.p;
        if (aVar == null) {
            return false;
        }
        aVar.dismiss();
        return true;
    }

    public boolean isOverflowMenuShowing() {
        e eVar = this.o;
        return eVar != null && eVar.isShowing();
    }

    public boolean isOverflowMenuShowPending() {
        return this.q != null || isOverflowMenuShowing();
    }

    public boolean isOverflowReserved() {
        return this.h;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        ArrayList<MenuItemImpl> visibleItems;
        int size;
        boolean z;
        MenuBuilder menuBuilder = this.mMenu;
        View view = null;
        if (menuBuilder != null) {
            visibleItems = menuBuilder.getVisibleItems();
            size = visibleItems.size();
        } else {
            visibleItems = null;
            size = 0;
        }
        int i = this.l;
        int i2 = this.k;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        int i3 = 0;
        boolean z2 = false;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            z = true;
            if (i3 >= size) {
                break;
            }
            MenuItemImpl menuItemImpl = visibleItems.get(i3);
            if (menuItemImpl.requiresActionButton()) {
                i4++;
            } else if (menuItemImpl.requestsActionButton()) {
                i5++;
            } else {
                z2 = true;
            }
            if (this.m && menuItemImpl.isActionViewExpanded()) {
                i = 0;
            }
            i3++;
        }
        if (this.h && (z2 || i5 + i4 > i)) {
            i--;
        }
        int i6 = i - i4;
        SparseBooleanArray sparseBooleanArray = this.n;
        sparseBooleanArray.clear();
        int i7 = 0;
        int i8 = 0;
        while (i7 < size) {
            MenuItemImpl menuItemImpl2 = visibleItems.get(i7);
            if (menuItemImpl2.requiresActionButton()) {
                View itemView = getItemView(menuItemImpl2, view, viewGroup);
                itemView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredWidth = itemView.getMeasuredWidth();
                i2 -= measuredWidth;
                if (i8 == 0) {
                    i8 = measuredWidth;
                }
                int groupId = menuItemImpl2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, z);
                }
                menuItemImpl2.setIsActionButton(z);
            } else if (menuItemImpl2.requestsActionButton()) {
                int groupId2 = menuItemImpl2.getGroupId();
                boolean z3 = sparseBooleanArray.get(groupId2);
                boolean z4 = (i6 > 0 || z3) && i2 > 0;
                if (z4) {
                    View itemView2 = getItemView(menuItemImpl2, view, viewGroup);
                    itemView2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    int measuredWidth2 = itemView2.getMeasuredWidth();
                    i2 -= measuredWidth2;
                    if (i8 == 0) {
                        i8 = measuredWidth2;
                    }
                    z4 &= i2 + i8 > 0;
                }
                boolean z5 = z4;
                if (z5 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, z);
                } else if (z3) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i9 = 0; i9 < i7; i9++) {
                        MenuItemImpl menuItemImpl3 = visibleItems.get(i9);
                        if (menuItemImpl3.getGroupId() == groupId2) {
                            if (menuItemImpl3.isActionButton()) {
                                i6++;
                            }
                            menuItemImpl3.setIsActionButton(false);
                        }
                    }
                }
                if (z5) {
                    i6--;
                }
                menuItemImpl2.setIsActionButton(z5);
            } else {
                menuItemImpl2.setIsActionButton(false);
            }
            i7++;
            view = null;
            z = true;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        dismissPopupMenus();
        super.onCloseMenu(menuBuilder, z);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        g gVar = new g();
        gVar.f464a = this.t;
        return gVar;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        int i;
        MenuItem menuItemFindItem;
        if ((parcelable instanceof g) && (i = ((g) parcelable).f464a) > 0 && (menuItemFindItem = this.mMenu.findItem(i)) != null) {
            onSubMenuSelected((SubMenuBuilder) menuItemFindItem.getSubMenu());
        }
    }

    @Override // androidx.core.view.ActionProvider.SubUiVisibilityListener
    public void onSubUiVisibilityChanged(boolean z) {
        if (z) {
            super.onSubMenuSelected(null);
            return;
        }
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder != null) {
            menuBuilder.close(false);
        }
    }

    public void setMenuView(ActionMenuView actionMenuView) {
        this.mMenuView = actionMenuView;
        actionMenuView.initialize(this.mMenu);
    }

    @SuppressLint({"BanParcelableUsage"})
    public static class g implements Parcelable {
        public static final Parcelable.Creator<g> CREATOR = new a();

        /* renamed from: a, reason: collision with root package name */
        public int f464a;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f464a);
        }

        public class a implements Parcelable.Creator<g> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public g createFromParcel(Parcel parcel) {
                g gVar = new g();
                gVar.f464a = parcel.readInt();
                return gVar;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public g[] newArray(int i) {
                return new g[i];
            }
        }
    }

    public class d extends AppCompatImageView implements ActionMenuView.ActionMenuChildView {
        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public boolean needsDividerAfter() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public boolean needsDividerBefore() {
            return false;
        }

        public d(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            TooltipCompat.setTooltipText(this, getContentDescription());
            setOnTouchListener(new a(this));
        }

        public class a extends ForwardingListener {
            public a(View view) {
                super(view);
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            public ShowableListMenu getPopup() {
                e eVar = b.this.o;
                if (eVar == null) {
                    return null;
                }
                return eVar.getPopup();
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            public boolean onForwardingStarted() {
                b.this.showOverflowMenu();
                return true;
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            public boolean onForwardingStopped() {
                b bVar = b.this;
                if (bVar.q != null) {
                    return false;
                }
                bVar.hideOverflowMenu();
                return true;
            }
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            b.this.showOverflowMenu();
            return true;
        }

        @Override // android.widget.ImageView
        public boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                DrawableCompat.setHotspotBounds(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    public class e extends MenuPopupHelper {
        public e(Context context, MenuBuilder menuBuilder, View view, boolean z) {
            super(context, menuBuilder, view, z, R.attr.actionOverflowMenuStyle);
            setGravity(GravityCompat.END);
            setPresenterCallback(b.this.s);
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        public void onDismiss() {
            b bVar = b.this;
            if (((BaseMenuPresenter) bVar).mMenu != null) {
                ((BaseMenuPresenter) bVar).mMenu.close();
            }
            bVar.o = null;
            super.onDismiss();
        }
    }

    public class a extends MenuPopupHelper {
        public a(Context context, SubMenuBuilder subMenuBuilder, View view) {
            super(context, subMenuBuilder, view, false, R.attr.actionOverflowMenuStyle);
            if (!((MenuItemImpl) subMenuBuilder.getItem()).isActionButton()) {
                View view2 = b.this.e;
                setAnchorView(view2 == null ? (View) ((BaseMenuPresenter) b.this).mMenuView : view2);
            }
            setPresenterCallback(b.this.s);
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        public void onDismiss() {
            b bVar = b.this;
            bVar.p = null;
            bVar.t = 0;
            super.onDismiss();
        }
    }

    public class f implements MenuPresenter.Callback {
        public f() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
            b bVar = b.this;
            if (menuBuilder == ((BaseMenuPresenter) bVar).mMenu) {
                return false;
            }
            bVar.t = ((SubMenuBuilder) menuBuilder).getItem().getItemId();
            MenuPresenter.Callback callback = bVar.getCallback();
            if (callback != null) {
                return callback.onOpenSubMenu(menuBuilder);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z) {
            if (menuBuilder instanceof SubMenuBuilder) {
                menuBuilder.getRootMenu().close(false);
            }
            MenuPresenter.Callback callback = b.this.getCallback();
            if (callback != null) {
                callback.onCloseMenu(menuBuilder, z);
            }
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final e f461a;

        public c(e eVar) {
            this.f461a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            if (((BaseMenuPresenter) bVar).mMenu != null) {
                ((BaseMenuPresenter) bVar).mMenu.changeMenuMode();
            }
            View view = (View) ((BaseMenuPresenter) bVar).mMenuView;
            if (view != null && view.getWindowToken() != null) {
                e eVar = this.f461a;
                if (eVar.tryShow()) {
                    bVar.o = eVar;
                }
            }
            bVar.q = null;
        }
    }

    /* renamed from: androidx.appcompat.widget.b$b, reason: collision with other inner class name */
    public class C0004b extends ActionMenuItemView.PopupCallback {
        public C0004b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.PopupCallback
        public ShowableListMenu getPopup() {
            a aVar = b.this.p;
            if (aVar != null) {
                return aVar.getPopup();
            }
            return null;
        }
    }
}
