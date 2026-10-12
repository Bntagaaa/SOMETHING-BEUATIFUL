package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.appcompat.R;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.menu.MenuPresenter;

/* loaded from: classes.dex */
class b implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, MenuPresenter.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final MenuBuilder f269a;

    /* renamed from: b, reason: collision with root package name */
    public AlertDialog f270b;
    public ListMenuPresenter c;

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
        return false;
    }

    public b(MenuBuilder menuBuilder) {
        this.f269a = menuBuilder;
    }

    public void show(IBinder iBinder) {
        MenuBuilder menuBuilder = this.f269a;
        AlertDialog.Builder builder = new AlertDialog.Builder(menuBuilder.getContext());
        ListMenuPresenter listMenuPresenter = new ListMenuPresenter(builder.getContext(), R.layout.abc_list_menu_item_layout);
        this.c = listMenuPresenter;
        listMenuPresenter.setCallback(this);
        menuBuilder.addMenuPresenter(this.c);
        builder.setAdapter(this.c.getAdapter(), this);
        View headerView = menuBuilder.getHeaderView();
        if (headerView != null) {
            builder.setCustomTitle(headerView);
        } else {
            builder.setIcon(menuBuilder.getHeaderIcon()).setTitle(menuBuilder.getHeaderTitle());
        }
        builder.setOnKeyListener(this);
        AlertDialog alertDialogCreate = builder.create();
        this.f270b = alertDialogCreate;
        alertDialogCreate.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f270b.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f270b.show();
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        MenuBuilder menuBuilder = this.f269a;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f270b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f270b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                menuBuilder.close(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return menuBuilder.performShortcut(i, keyEvent, 0);
    }

    public void dismiss() {
        AlertDialog alertDialog = this.f270b;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.c.onCloseMenu(this.f269a, true);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
    public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z) {
        if (z || menuBuilder == this.f269a) {
            dismiss();
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f269a.performItemAction((MenuItemImpl) this.c.getAdapter().getItem(i), 0);
    }
}
