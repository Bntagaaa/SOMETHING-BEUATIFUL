package androidx.appcompat.widget;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.ShowableListMenu;

/* loaded from: classes.dex */
public class PopupMenu {

    /* renamed from: a, reason: collision with root package name */
    public final Context f383a;

    /* renamed from: b, reason: collision with root package name */
    public final MenuBuilder f384b;
    public final View c;
    public final MenuPopupHelper d;
    public OnMenuItemClickListener e;
    public OnDismissListener f;

    /* renamed from: g, reason: collision with root package name */
    public View.OnTouchListener f385g;

    public interface OnDismissListener {
        void onDismiss(PopupMenu popupMenu);
    }

    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public PopupMenu(@NonNull Context context, @NonNull View view) {
        this(context, view, 0);
    }

    public PopupMenu(@NonNull Context context, @NonNull View view, int i) {
        this(context, view, i, R.attr.popupMenuStyle, 0);
    }

    public PopupMenu(@NonNull Context context, @NonNull View view, int i, @AttrRes int i2, @StyleRes int i3) {
        this.f383a = context;
        this.c = view;
        MenuBuilder menuBuilder = new MenuBuilder(context);
        this.f384b = menuBuilder;
        menuBuilder.setCallback(new a());
        MenuPopupHelper menuPopupHelper = new MenuPopupHelper(context, menuBuilder, view, false, i2, i3);
        this.d = menuPopupHelper;
        menuPopupHelper.setGravity(i);
        menuPopupHelper.setOnDismissListener(new b());
    }

    public class a implements MenuBuilder.Callback {
        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
        }

        public a() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            OnMenuItemClickListener onMenuItemClickListener = PopupMenu.this.e;
            if (onMenuItemClickListener != null) {
                return onMenuItemClickListener.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    public class b implements PopupWindow.OnDismissListener {
        public b() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            PopupMenu popupMenu = PopupMenu.this;
            OnDismissListener onDismissListener = popupMenu.f;
            if (onDismissListener != null) {
                onDismissListener.onDismiss(popupMenu);
            }
        }
    }

    public void setGravity(int i) {
        this.d.setGravity(i);
    }

    public int getGravity() {
        return this.d.getGravity();
    }

    public class c extends ForwardingListener {
        public c(View view) {
            super(view);
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public boolean onForwardingStarted() {
            PopupMenu.this.show();
            return true;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public boolean onForwardingStopped() {
            PopupMenu.this.dismiss();
            return true;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public ShowableListMenu getPopup() {
            return PopupMenu.this.d.getPopup();
        }
    }

    @NonNull
    public View.OnTouchListener getDragToOpenListener() {
        if (this.f385g == null) {
            this.f385g = new c(this.c);
        }
        return this.f385g;
    }

    @NonNull
    public Menu getMenu() {
        return this.f384b;
    }

    @NonNull
    public MenuInflater getMenuInflater() {
        return new SupportMenuInflater(this.f383a);
    }

    public void inflate(@MenuRes int i) {
        getMenuInflater().inflate(i, this.f384b);
    }

    public void show() {
        this.d.show();
    }

    public void dismiss() {
        this.d.dismiss();
    }

    public void setOnMenuItemClickListener(@Nullable OnMenuItemClickListener onMenuItemClickListener) {
        this.e = onMenuItemClickListener;
    }

    public void setOnDismissListener(@Nullable OnDismissListener onDismissListener) {
        this.f = onDismissListener;
    }

    public void setForceShowIcon(boolean z) {
        this.d.setForceShowIcon(z);
    }
}
