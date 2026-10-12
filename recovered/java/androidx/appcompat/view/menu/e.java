package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
final class e extends d implements PopupWindow.OnDismissListener, AdapterView.OnItemClickListener, MenuPresenter, View.OnKeyListener {
    public static final int v = R.layout.abc_popup_menu_item_layout;

    /* renamed from: b, reason: collision with root package name */
    public final Context f272b;
    public final MenuBuilder c;
    public final MenuAdapter d;
    public final boolean e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f273g;
    public final int h;
    public final MenuPopupWindow i;
    public PopupWindow.OnDismissListener l;
    public View m;
    public View n;
    public MenuPresenter.Callback o;
    public ViewTreeObserver p;
    public boolean q;
    public boolean r;
    public int s;
    public boolean u;
    public final ViewTreeObserver.OnGlobalLayoutListener j = new a();
    public final View.OnAttachStateChangeListener k = new b();
    public int t = 0;

    @Override // androidx.appcompat.view.menu.d
    public void addMenu(MenuBuilder menuBuilder) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        return null;
    }

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            e eVar = e.this;
            if (!eVar.isShowing() || eVar.i.isModal()) {
                return;
            }
            View view = eVar.n;
            if (view == null || !view.isShown()) {
                eVar.dismiss();
            } else {
                eVar.i.show();
            }
        }
    }

    public class b implements View.OnAttachStateChangeListener {
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        public b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            e eVar = e.this;
            ViewTreeObserver viewTreeObserver = eVar.p;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    eVar.p = view.getViewTreeObserver();
                }
                eVar.p.removeGlobalOnLayoutListener(eVar.j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public e(Context context, MenuBuilder menuBuilder, View view, int i, int i2, boolean z) {
        this.f272b = context;
        this.c = menuBuilder;
        this.e = z;
        this.d = new MenuAdapter(menuBuilder, LayoutInflater.from(context), z, v);
        this.f273g = i;
        this.h = i2;
        Resources resources = context.getResources();
        this.f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.m = view;
        this.i = new MenuPopupWindow(context, null, i, i2);
        menuBuilder.addMenuPresenter(this, context);
    }

    @Override // androidx.appcompat.view.menu.d
    public void setForceShowIcon(boolean z) {
        this.d.setForceShowIcon(z);
    }

    @Override // androidx.appcompat.view.menu.d
    public void setGravity(int i) {
        this.t = i;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void show() {
        View view;
        if (isShowing()) {
            return;
        }
        if (!this.q && (view = this.m) != null) {
            this.n = view;
            MenuPopupWindow menuPopupWindow = this.i;
            menuPopupWindow.setOnDismissListener(this);
            menuPopupWindow.setOnItemClickListener(this);
            menuPopupWindow.setModal(true);
            View view2 = this.n;
            boolean z = this.p == null;
            ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
            this.p = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.j);
            }
            view2.addOnAttachStateChangeListener(this.k);
            menuPopupWindow.setAnchorView(view2);
            menuPopupWindow.setDropDownGravity(this.t);
            boolean z2 = this.r;
            Context context = this.f272b;
            MenuAdapter menuAdapter = this.d;
            if (!z2) {
                this.s = d.measureIndividualMenuWidth(menuAdapter, null, context, this.f);
                this.r = true;
            }
            menuPopupWindow.setContentWidth(this.s);
            menuPopupWindow.setInputMethodMode(2);
            menuPopupWindow.setEpicenterBounds(getEpicenterBounds());
            menuPopupWindow.show();
            ListView listView = menuPopupWindow.getListView();
            listView.setOnKeyListener(this);
            if (this.u) {
                MenuBuilder menuBuilder = this.c;
                if (menuBuilder.getHeaderTitle() != null) {
                    FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) listView, false);
                    TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                    if (textView != null) {
                        textView.setText(menuBuilder.getHeaderTitle());
                    }
                    frameLayout.setEnabled(false);
                    listView.addHeaderView(frameLayout, null, false);
                }
            }
            menuPopupWindow.setAdapter(menuAdapter);
            menuPopupWindow.show();
            return;
        }
        throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        if (isShowing()) {
            this.i.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public boolean isShowing() {
        return !this.q && this.i.isShowing();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.q = true;
        this.c.close();
        ViewTreeObserver viewTreeObserver = this.p;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.p = this.n.getViewTreeObserver();
            }
            this.p.removeGlobalOnLayoutListener(this.j);
            this.p = null;
        }
        this.n.removeOnAttachStateChangeListener(this.k);
        PopupWindow.OnDismissListener onDismissListener = this.l;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        this.r = false;
        MenuAdapter menuAdapter = this.d;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.o = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (subMenuBuilder.hasVisibleItems()) {
            MenuPopupHelper menuPopupHelper = new MenuPopupHelper(this.f272b, subMenuBuilder, this.n, this.e, this.f273g, this.h);
            menuPopupHelper.setPresenterCallback(this.o);
            menuPopupHelper.setForceShowIcon(d.shouldPreserveIconSpacing(subMenuBuilder));
            menuPopupHelper.setOnDismissListener(this.l);
            this.l = null;
            this.c.close(false);
            MenuPopupWindow menuPopupWindow = this.i;
            int horizontalOffset = menuPopupWindow.getHorizontalOffset();
            int verticalOffset = menuPopupWindow.getVerticalOffset();
            if ((Gravity.getAbsoluteGravity(this.t, ViewCompat.getLayoutDirection(this.m)) & 7) == 5) {
                horizontalOffset += this.m.getWidth();
            }
            if (menuPopupHelper.tryShow(horizontalOffset, verticalOffset)) {
                MenuPresenter.Callback callback = this.o;
                if (callback == null) {
                    return true;
                }
                callback.onOpenSubMenu(subMenuBuilder);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (menuBuilder != this.c) {
            return;
        }
        dismiss();
        MenuPresenter.Callback callback = this.o;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.view.menu.d
    public void setAnchorView(View view) {
        this.m = view;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.d
    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.l = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public ListView getListView() {
        return this.i.getListView();
    }

    @Override // androidx.appcompat.view.menu.d
    public void setHorizontalOffset(int i) {
        this.i.setHorizontalOffset(i);
    }

    @Override // androidx.appcompat.view.menu.d
    public void setVerticalOffset(int i) {
        this.i.setVerticalOffset(i);
    }

    @Override // androidx.appcompat.view.menu.d
    public void setShowTitle(boolean z) {
        this.u = z;
    }
}
