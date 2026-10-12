package androidx.appcompat.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.view.menu.MenuWrapperICS;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenu;
import androidx.core.internal.view.SupportMenuItem;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class SupportActionModeWrapper extends android.view.ActionMode {

    /* renamed from: a, reason: collision with root package name */
    public final Context f209a;

    /* renamed from: b, reason: collision with root package name */
    public final ActionMode f210b;

    public SupportActionModeWrapper(Context context, ActionMode actionMode) {
        this.f209a = context;
        this.f210b = actionMode;
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f210b.getTag();
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f210b.setTag(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f210b.setTitle(charSequence);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f210b.setSubtitle(charSequence);
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f210b.invalidate();
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f210b.finish();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return new MenuWrapperICS(this.f209a, (SupportMenu) this.f210b.getMenu());
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f210b.getTitle();
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f210b.setTitle(i);
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f210b.getSubtitle();
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f210b.setSubtitle(i);
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f210b.getCustomView();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f210b.setCustomView(view);
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f210b.getMenuInflater();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f210b.getTitleOptionalHint();
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f210b.setTitleOptionalHint(z);
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f210b.isTitleOptional();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static class CallbackWrapper implements ActionMode.Callback {

        /* renamed from: a, reason: collision with root package name */
        public final ActionMode.Callback f211a;

        /* renamed from: b, reason: collision with root package name */
        public final Context f212b;
        public final ArrayList c = new ArrayList();
        public final SimpleArrayMap d = new SimpleArrayMap();

        public CallbackWrapper(Context context, ActionMode.Callback callback) {
            this.f212b = context;
            this.f211a = callback;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            android.view.ActionMode actionModeWrapper = getActionModeWrapper(actionMode);
            SimpleArrayMap simpleArrayMap = this.d;
            Menu menuWrapperICS = (Menu) simpleArrayMap.get(menu);
            if (menuWrapperICS == null) {
                menuWrapperICS = new MenuWrapperICS(this.f212b, (SupportMenu) menu);
                simpleArrayMap.put(menu, menuWrapperICS);
            }
            return this.f211a.onCreateActionMode(actionModeWrapper, menuWrapperICS);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            android.view.ActionMode actionModeWrapper = getActionModeWrapper(actionMode);
            SimpleArrayMap simpleArrayMap = this.d;
            Menu menuWrapperICS = (Menu) simpleArrayMap.get(menu);
            if (menuWrapperICS == null) {
                menuWrapperICS = new MenuWrapperICS(this.f212b, (SupportMenu) menu);
                simpleArrayMap.put(menu, menuWrapperICS);
            }
            return this.f211a.onPrepareActionMode(actionModeWrapper, menuWrapperICS);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f211a.onActionItemClicked(getActionModeWrapper(actionMode), new MenuItemWrapperICS(this.f212b, (SupportMenuItem) menuItem));
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f211a.onDestroyActionMode(getActionModeWrapper(actionMode));
        }

        public android.view.ActionMode getActionModeWrapper(ActionMode actionMode) {
            ArrayList arrayList = this.c;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                SupportActionModeWrapper supportActionModeWrapper = (SupportActionModeWrapper) arrayList.get(i);
                if (supportActionModeWrapper != null && supportActionModeWrapper.f210b == actionMode) {
                    return supportActionModeWrapper;
                }
            }
            SupportActionModeWrapper supportActionModeWrapper2 = new SupportActionModeWrapper(this.f212b, actionMode);
            arrayList.add(supportActionModeWrapper2);
            return supportActionModeWrapper2;
        }
    }
}
