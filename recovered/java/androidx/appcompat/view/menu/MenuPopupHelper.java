package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MenuPopupHelper implements c {

    /* renamed from: a, reason: collision with root package name */
    public final Context f263a;

    /* renamed from: b, reason: collision with root package name */
    public final MenuBuilder f264b;
    public final boolean c;
    public final int d;
    public final int e;
    public View f;

    /* renamed from: g, reason: collision with root package name */
    public int f265g;
    public boolean h;
    public MenuPresenter.Callback i;
    public d j;
    public PopupWindow.OnDismissListener k;
    public final PopupWindow.OnDismissListener l;

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this(context, menuBuilder, null, false, R.attr.popupMenuStyle, 0);
    }

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder, @NonNull View view) {
        this(context, menuBuilder, view, false, R.attr.popupMenuStyle, 0);
    }

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder, @NonNull View view, boolean z, @AttrRes int i) {
        this(context, menuBuilder, view, z, i, 0);
    }

    public MenuPopupHelper(@NonNull Context context, @NonNull MenuBuilder menuBuilder, @NonNull View view, boolean z, @AttrRes int i, @StyleRes int i2) {
        this.f265g = GravityCompat.START;
        this.l = new a();
        this.f263a = context;
        this.f264b = menuBuilder;
        this.f = view;
        this.c = z;
        this.d = i;
        this.e = i2;
    }

    public void setOnDismissListener(@Nullable PopupWindow.OnDismissListener onDismissListener) {
        this.k = onDismissListener;
    }

    public void setAnchorView(@NonNull View view) {
        this.f = view;
    }

    public void setForceShowIcon(boolean z) {
        this.h = z;
        d dVar = this.j;
        if (dVar != null) {
            dVar.setForceShowIcon(z);
        }
    }

    public void setGravity(int i) {
        this.f265g = i;
    }

    public int getGravity() {
        return this.f265g;
    }

    public void show() {
        if (!tryShow()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public void show(int i, int i2) {
        if (!tryShow(i, i2)) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public d getPopup() {
        d eVar;
        if (this.j == null) {
            Context context = this.f263a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            b.a(defaultDisplay, point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
                eVar = new CascadingMenuPopup(this.f263a, this.f, this.d, this.e, this.c);
            } else {
                View view = this.f;
                eVar = new e(this.f263a, this.f264b, view, this.d, this.e, this.c);
            }
            eVar.addMenu(this.f264b);
            eVar.setOnDismissListener(this.l);
            eVar.setAnchorView(this.f);
            eVar.setCallback(this.i);
            eVar.setForceShowIcon(this.h);
            eVar.setGravity(this.f265g);
            this.j = eVar;
        }
        return this.j;
    }

    public boolean tryShow() {
        if (isShowing()) {
            return true;
        }
        if (this.f == null) {
            return false;
        }
        a(0, 0, false, false);
        return true;
    }

    public boolean tryShow(int i, int i2) {
        if (isShowing()) {
            return true;
        }
        if (this.f == null) {
            return false;
        }
        a(i, i2, true, true);
        return true;
    }

    public final void a(int i, int i2, boolean z, boolean z2) {
        d popup = getPopup();
        popup.setShowTitle(z2);
        if (z) {
            if ((GravityCompat.getAbsoluteGravity(this.f265g, ViewCompat.getLayoutDirection(this.f)) & 7) == 5) {
                i -= this.f.getWidth();
            }
            popup.setHorizontalOffset(i);
            popup.setVerticalOffset(i2);
            int i3 = (int) ((this.f263a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            popup.setEpicenterBounds(new Rect(i - i3, i2 - i3, i + i3, i2 + i3));
        }
        popup.show();
    }

    public void dismiss() {
        if (isShowing()) {
            this.j.dismiss();
        }
    }

    public void onDismiss() {
        this.j = null;
        PopupWindow.OnDismissListener onDismissListener = this.k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public boolean isShowing() {
        d dVar = this.j;
        return dVar != null && dVar.isShowing();
    }

    public void setPresenterCallback(@Nullable MenuPresenter.Callback callback) {
        this.i = callback;
        d dVar = this.j;
        if (dVar != null) {
            dVar.setCallback(callback);
        }
    }

    public class a implements PopupWindow.OnDismissListener {
        public a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            MenuPopupHelper.this.onDismiss();
        }
    }

    public ListView getListView() {
        return getPopup().getListView();
    }

    @RequiresApi(17)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static void a(Display display, Point point) {
            display.getRealSize(point);
        }
    }
}
