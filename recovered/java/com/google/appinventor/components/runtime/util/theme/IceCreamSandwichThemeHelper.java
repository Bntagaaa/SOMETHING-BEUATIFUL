package com.google.appinventor.components.runtime.util.theme;

import androidx.appcompat.app.ActionBar;
import com.google.appinventor.components.runtime.AppInventorCompatActivity;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.ImageViewUtil;

/* loaded from: classes.dex */
public class IceCreamSandwichThemeHelper implements ThemeHelper {
    private final AppInventorCompatActivity activity;

    @Override // com.google.appinventor.components.runtime.util.theme.ThemeHelper
    public void requestActionBar() {
    }

    public IceCreamSandwichThemeHelper(AppInventorCompatActivity appInventorCompatActivity) {
        this.activity = appInventorCompatActivity;
    }

    @Override // com.google.appinventor.components.runtime.util.theme.ThemeHelper
    public boolean setActionBarVisible(boolean z) {
        ActionBar supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar == null) {
            AppInventorCompatActivity appInventorCompatActivity = this.activity;
            if (appInventorCompatActivity instanceof Form) {
                ((Form) appInventorCompatActivity).dispatchErrorOccurredEvent((Form) appInventorCompatActivity, "ActionBar", ErrorMessages.ERROR_ACTIONBAR_NOT_SUPPORTED, new Object[0]);
            }
            return false;
        }
        if (z) {
            supportActionBar.show();
            return true;
        }
        supportActionBar.hide();
        return true;
    }

    @Override // com.google.appinventor.components.runtime.util.theme.ThemeHelper
    public boolean hasActionBar() {
        return this.activity.getSupportActionBar() != null;
    }

    @Override // com.google.appinventor.components.runtime.util.theme.ThemeHelper
    public void setTitle(String str) {
        ActionBar supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(str);
        }
    }

    @Override // com.google.appinventor.components.runtime.util.theme.ThemeHelper
    public void setActionBarAnimation(boolean z) {
        ActionBar supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(z);
        }
    }

    @Override // com.google.appinventor.components.runtime.util.theme.ThemeHelper
    public void setTitle(String str, boolean z) {
        ActionBar supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(str);
            ImageViewUtil.setMenuButtonColor(this.activity, -1);
        }
    }
}
