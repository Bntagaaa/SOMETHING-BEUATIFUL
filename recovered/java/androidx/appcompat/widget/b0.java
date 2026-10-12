package androidx.appcompat.widget;

import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.appcompat.view.menu.MenuBuilder;

/* loaded from: classes.dex */
class b0 implements MenuBuilder.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Toolbar f465a;

    public b0(Toolbar toolbar) {
        this.f465a = toolbar;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        MenuBuilder.Callback callback = this.f465a.O;
        return callback != null && callback.onMenuItemSelected(menuBuilder, menuItem);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
        Toolbar toolbar = this.f465a;
        if (!toolbar.f435a.isOverflowMenuShowing()) {
            toolbar.G.onPrepareMenu(menuBuilder);
        }
        MenuBuilder.Callback callback = toolbar.O;
        if (callback != null) {
            callback.onMenuModeChange(menuBuilder);
        }
    }
}
