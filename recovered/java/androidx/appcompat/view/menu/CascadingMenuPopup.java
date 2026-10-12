package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.MenuItemHoverListener;
import androidx.appcompat.widget.MenuPopupWindow;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
final class CascadingMenuPopup extends androidx.appcompat.view.menu.d implements MenuPresenter, View.OnKeyListener, PopupWindow.OnDismissListener {
    public static final int B = R.layout.abc_cascading_menu_item_layout;
    public boolean A;

    /* renamed from: b, reason: collision with root package name */
    public final Context f230b;
    public final int c;
    public final int d;
    public final int e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final Handler f231g;
    public View o;
    public View p;
    public int q;
    public boolean r;
    public boolean s;
    public int t;
    public int u;
    public boolean w;
    public MenuPresenter.Callback x;
    public ViewTreeObserver y;
    public PopupWindow.OnDismissListener z;
    public final ArrayList h = new ArrayList();
    public final ArrayList i = new ArrayList();
    public final ViewTreeObserver.OnGlobalLayoutListener j = new a();
    public final View.OnAttachStateChangeListener k = new b();
    public final MenuItemHoverListener l = new c();
    public int m = 0;
    public int n = 0;
    public boolean v = false;

    @Retention(RetentionPolicy.SOURCE)
    public @interface HorizPosition {
    }

    @Override // androidx.appcompat.view.menu.d
    public boolean closeMenuOnSubMenuOpened() {
        return false;
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
            CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
            if (cascadingMenuPopup.isShowing()) {
                ArrayList arrayList = cascadingMenuPopup.i;
                if (arrayList.size() <= 0 || ((d) arrayList.get(0)).f237a.isModal()) {
                    return;
                }
                View view = cascadingMenuPopup.p;
                if (view == null || !view.isShown()) {
                    cascadingMenuPopup.dismiss();
                    return;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((d) it.next()).f237a.show();
                }
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
            CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
            ViewTreeObserver viewTreeObserver = cascadingMenuPopup.y;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    cascadingMenuPopup.y = view.getViewTreeObserver();
                }
                cascadingMenuPopup.y.removeGlobalOnLayoutListener(cascadingMenuPopup.j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public class c implements MenuItemHoverListener {
        public c() {
        }

        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public void onItemHoverExit(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            CascadingMenuPopup.this.f231g.removeCallbacksAndMessages(menuBuilder);
        }

        @Override // androidx.appcompat.widget.MenuItemHoverListener
        public void onItemHoverEnter(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            CascadingMenuPopup cascadingMenuPopup = CascadingMenuPopup.this;
            Handler handler = cascadingMenuPopup.f231g;
            handler.removeCallbacksAndMessages(null);
            ArrayList arrayList = cascadingMenuPopup.i;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (menuBuilder == ((d) arrayList.get(i)).f238b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            handler.postAtTime(new a(i2 < arrayList.size() ? (d) arrayList.get(i2) : null, menuItem, menuBuilder), menuBuilder, SystemClock.uptimeMillis() + 200);
        }

        public class a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ d f235a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MenuItem f236b;
            public final /* synthetic */ MenuBuilder c;

            public a(d dVar, MenuItem menuItem, MenuBuilder menuBuilder) {
                this.f235a = dVar;
                this.f236b = menuItem;
                this.c = menuBuilder;
            }

            @Override // java.lang.Runnable
            public void run() {
                d dVar = this.f235a;
                if (dVar != null) {
                    c cVar = c.this;
                    CascadingMenuPopup.this.A = true;
                    dVar.f238b.close(false);
                    CascadingMenuPopup.this.A = false;
                }
                MenuItem menuItem = this.f236b;
                if (menuItem.isEnabled() && menuItem.hasSubMenu()) {
                    this.c.performItemAction(menuItem, 4);
                }
            }
        }
    }

    public CascadingMenuPopup(@NonNull Context context, @NonNull View view, @AttrRes int i, @StyleRes int i2, boolean z) {
        this.f230b = context;
        this.o = view;
        this.d = i;
        this.e = i2;
        this.f = z;
        this.q = ViewCompat.getLayoutDirection(view) != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f231g = new Handler();
    }

    @Override // androidx.appcompat.view.menu.d
    public void setForceShowIcon(boolean z) {
        this.v = z;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void show() {
        if (isShowing()) {
            return;
        }
        ArrayList arrayList = this.h;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            a((MenuBuilder) it.next());
        }
        arrayList.clear();
        View view = this.o;
        this.p = view;
        if (view != null) {
            boolean z = this.y == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.y = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.j);
            }
            this.p.addOnAttachStateChangeListener(this.k);
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        ArrayList arrayList = this.i;
        int size = arrayList.size();
        if (size > 0) {
            d[] dVarArr = (d[]) arrayList.toArray(new d[size]);
            for (int i = size - 1; i >= 0; i--) {
                d dVar = dVarArr[i];
                if (dVar.f237a.isShowing()) {
                    dVar.f237a.dismiss();
                }
            }
        }
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
    public void addMenu(MenuBuilder menuBuilder) {
        menuBuilder.addMenuPresenter(this, this.f230b);
        if (isShowing()) {
            a(menuBuilder);
        } else {
            this.h.add(menuBuilder);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0129  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(androidx.appcompat.view.menu.MenuBuilder r18) {
        /*
            Method dump skipped, instructions count: 503
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.CascadingMenuPopup.a(androidx.appcompat.view.menu.MenuBuilder):void");
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public boolean isShowing() {
        ArrayList arrayList = this.i;
        return arrayList.size() > 0 && ((d) arrayList.get(0)).f237a.isShowing();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        d dVar;
        ArrayList arrayList = this.i;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                dVar = null;
                break;
            }
            dVar = (d) arrayList.get(i);
            if (!dVar.f237a.isShowing()) {
                break;
            } else {
                i++;
            }
        }
        if (dVar != null) {
            dVar.f238b.close(false);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            androidx.appcompat.view.menu.d.toMenuAdapter(((d) it.next()).getListView().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.x = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            if (subMenuBuilder == dVar.f238b) {
                dVar.getListView().requestFocus();
                return true;
            }
        }
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        addMenu(subMenuBuilder);
        MenuPresenter.Callback callback = this.x;
        if (callback != null) {
            callback.onOpenSubMenu(subMenuBuilder);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        ArrayList arrayList = this.i;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (menuBuilder == ((d) arrayList.get(i)).f238b) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        int i2 = i + 1;
        if (i2 < arrayList.size()) {
            ((d) arrayList.get(i2)).f238b.close(false);
        }
        d dVar = (d) arrayList.remove(i);
        dVar.f238b.removeMenuPresenter(this);
        boolean z2 = this.A;
        MenuPopupWindow menuPopupWindow = dVar.f237a;
        if (z2) {
            menuPopupWindow.setExitTransition(null);
            menuPopupWindow.setAnimationStyle(0);
        }
        menuPopupWindow.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.q = ((d) arrayList.get(size2 - 1)).c;
        } else {
            this.q = ViewCompat.getLayoutDirection(this.o) == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z) {
                ((d) arrayList.get(0)).f238b.close(false);
                return;
            }
            return;
        }
        dismiss();
        MenuPresenter.Callback callback = this.x;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, true);
        }
        ViewTreeObserver viewTreeObserver = this.y;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.y.removeGlobalOnLayoutListener(this.j);
            }
            this.y = null;
        }
        this.p.removeOnAttachStateChangeListener(this.k);
        this.z.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.d
    public void setGravity(int i) {
        if (this.m != i) {
            this.m = i;
            this.n = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this.o));
        }
    }

    @Override // androidx.appcompat.view.menu.d
    public void setAnchorView(@NonNull View view) {
        if (this.o != view) {
            this.o = view;
            this.n = GravityCompat.getAbsoluteGravity(this.m, ViewCompat.getLayoutDirection(view));
        }
    }

    @Override // androidx.appcompat.view.menu.d
    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.z = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public ListView getListView() {
        ArrayList arrayList = this.i;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((d) arrayList.get(arrayList.size() - 1)).getListView();
    }

    @Override // androidx.appcompat.view.menu.d
    public void setHorizontalOffset(int i) {
        this.r = true;
        this.t = i;
    }

    @Override // androidx.appcompat.view.menu.d
    public void setVerticalOffset(int i) {
        this.s = true;
        this.u = i;
    }

    @Override // androidx.appcompat.view.menu.d
    public void setShowTitle(boolean z) {
        this.w = z;
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public final MenuPopupWindow f237a;

        /* renamed from: b, reason: collision with root package name */
        public final MenuBuilder f238b;
        public final int c;

        public d(@NonNull MenuPopupWindow menuPopupWindow, @NonNull MenuBuilder menuBuilder, int i) {
            this.f237a = menuPopupWindow;
            this.f238b = menuBuilder;
            this.c = i;
        }

        public ListView getListView() {
            return this.f237a.getListView();
        }
    }
}
