package androidx.core.view;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* loaded from: classes.dex */
public abstract class ActionProvider {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1274a;

    /* renamed from: b, reason: collision with root package name */
    public SubUiVisibilityListener f1275b;
    public VisibilityListener c;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public interface SubUiVisibilityListener {
        void onSubUiVisibilityChanged(boolean z);
    }

    public interface VisibilityListener {
        void onActionProviderVisibilityChanged(boolean z);
    }

    public boolean hasSubMenu() {
        return false;
    }

    public boolean isVisible() {
        return true;
    }

    @NonNull
    public abstract View onCreateActionView();

    public boolean onPerformDefaultAction() {
        return false;
    }

    public void onPrepareSubMenu(@NonNull SubMenu subMenu) {
    }

    public boolean overridesItemVisibility() {
        return false;
    }

    public ActionProvider(@NonNull Context context) {
        this.f1274a = context;
    }

    @NonNull
    public Context getContext() {
        return this.f1274a;
    }

    @NonNull
    public View onCreateActionView(@NonNull MenuItem menuItem) {
        return onCreateActionView();
    }

    public void refreshVisibility() {
        if (this.c == null || !overridesItemVisibility()) {
            return;
        }
        this.c.onActionProviderVisibilityChanged(isVisible());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void subUiVisibilityChanged(boolean z) {
        SubUiVisibilityListener subUiVisibilityListener = this.f1275b;
        if (subUiVisibilityListener != null) {
            subUiVisibilityListener.onSubUiVisibilityChanged(z);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSubUiVisibilityListener(@Nullable SubUiVisibilityListener subUiVisibilityListener) {
        this.f1275b = subUiVisibilityListener;
    }

    public void setVisibilityListener(@Nullable VisibilityListener visibilityListener) {
        if (this.c != null && visibilityListener != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.c = visibilityListener;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void reset() {
        this.c = null;
        this.f1275b = null;
    }
}
