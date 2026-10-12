package com.google.appinventor.components.runtime.util.theme;

import android.app.ActionBar;
import android.text.Html;
import com.google.appinventor.components.runtime.AppInventorCompatActivity;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.ImageViewUtil;

/* loaded from: classes.dex */
public class HoneycombThemeHelper implements ThemeHelper {
    private final AppInventorCompatActivity activity;

    @Override // com.google.appinventor.components.runtime.util.theme.ThemeHelper
    public void setActionBarAnimation(boolean z) {
    }

    public HoneycombThemeHelper(AppInventorCompatActivity appInventorCompatActivity) {
        this.activity = appInventorCompatActivity;
    }

    @Override // com.google.appinventor.components.runtime.util.theme.ThemeHelper
    public void requestActionBar() {
        if (this.activity.getWindow().hasFeature(8)) {
            return;
        }
        this.activity.getWindow().requestFeature(8);
    }

    @Override // com.google.appinventor.components.runtime.util.theme.ThemeHelper
    public boolean setActionBarVisible(boolean z) {
        ActionBar actionBar = this.activity.getActionBar();
        if (actionBar == null) {
            AppInventorCompatActivity appInventorCompatActivity = this.activity;
            if (appInventorCompatActivity instanceof Form) {
                ((Form) appInventorCompatActivity).dispatchErrorOccurredEvent((Form) appInventorCompatActivity, "ActionBar", ErrorMessages.ERROR_ACTIONBAR_NOT_SUPPORTED, new Object[0]);
            }
            return false;
        }
        if (z) {
            actionBar.show();
            return true;
        }
        actionBar.hide();
        return true;
    }

    @Override // com.google.appinventor.components.runtime.util.theme.ThemeHelper
    public boolean hasActionBar() {
        return this.activity.getActionBar() != null;
    }

    @Override // com.google.appinventor.components.runtime.util.theme.ThemeHelper
    public void setTitle(String str) {
        ActionBar actionBar = this.activity.getActionBar();
        if (actionBar != null) {
            actionBar.setTitle(str);
        }
    }

    @Override // com.google.appinventor.components.runtime.util.theme.ThemeHelper
    public void setTitle(String str, boolean z) {
        ActionBar actionBar = this.activity.getActionBar();
        if (actionBar != null) {
            if (z) {
                actionBar.setTitle(Html.fromHtml("<font color=\"black\">" + str + "</font>"));
                ImageViewUtil.setMenuButtonColor(this.activity, -16777216);
                return;
            }
            actionBar.setTitle(str);
            ImageViewUtil.setMenuButtonColor(this.activity, -1);
        }
    }
}
