package com.google.appinventor.components.runtime;

import android.view.MenuItem;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.bottomappbar.BottomAppBar;
import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.MediaUtil;
import java.io.IOException;

@DesignerComponent(category = ComponentCategory.MATERIAL, description = "A new component ", iconName = "images/niotronBottomAppBar.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronBottomAppBar extends AndroidNonvisibleComponent {
    private BottomAppBar bottomAppBar;
    private CoordinatorLayout coordinatorLayout;

    public NiotronBottomAppBar(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.bottomAppBar = new BottomAppBar(this.form.$context());
        CoordinatorLayout.LayoutParams layoutParams = new CoordinatorLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        this.bottomAppBar.setLayoutParams(layoutParams);
        this.form.setBottomAppBar(this.bottomAppBar);
        this.coordinatorLayout = componentContainer.$form().getCoordinatorLayout();
    }

    @SimpleFunction(description = "Add menu to bottom app bar")
    public void AddBottomAppBarMenu(@Asset String str, String str2, int i) {
        try {
            MenuItem icon = this.bottomAppBar.getMenu().add(str2).setIcon(MediaUtil.getBitmapDrawable(this.form, str));
            icon.setShowAsAction(1);
            icon.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.google.appinventor.components.runtime.NiotronBottomAppBar.1
                @Override // android.view.MenuItem.OnMenuItemClickListener
                public boolean onMenuItemClick(MenuItem menuItem) {
                    NiotronBottomAppBar.this.BottomAppBarItemClicked(menuItem.getTitle().toString());
                    return false;
                }
            });
            icon.setOnActionExpandListener(new MenuItem.OnActionExpandListener() { // from class: com.google.appinventor.components.runtime.NiotronBottomAppBar.2
                @Override // android.view.MenuItem.OnActionExpandListener
                public boolean onMenuItemActionExpand(MenuItem menuItem) {
                    NiotronBottomAppBar.this.BottomAppBarExpanded(menuItem.getTitle().toString());
                    return false;
                }

                @Override // android.view.MenuItem.OnActionExpandListener
                public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                    NiotronBottomAppBar.this.BottomAppBarCollapsed(menuItem.getTitle().toString());
                    return false;
                }
            });
        } catch (IOException unused) {
            throw new YailRuntimeError("Provide a valid icon", "Missing Asset");
        }
    }

    @SimpleProperty(description = "Set navigation icon")
    public void BottomAppBarNavigationIcon(@Asset String str) {
        try {
            this.bottomAppBar.setNavigationIcon(MediaUtil.getBitmapDrawable(this.form, str));
            this.bottomAppBar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.NiotronBottomAppBar.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    NiotronBottomAppBar.this.BottomAppBarNavigationClicked();
                }
            });
        } catch (IOException unused) {
            throw new YailRuntimeError("Provide a valid icon", "Missing Asset");
        }
    }

    @SimpleEvent(description = "Bottom app bar item clicked")
    public void BottomAppBarItemClicked(String str) {
        EventDispatcher.dispatchEvent(this, "BottomAppBarItemClicked", str);
    }

    @SimpleEvent(description = "Bottom app bar expanded")
    public void BottomAppBarExpanded(String str) {
        EventDispatcher.dispatchEvent(this, "BottomAppBarExpanded", str);
    }

    @SimpleEvent(description = "Bottom app bar collapsed")
    public void BottomAppBarCollapsed(String str) {
        EventDispatcher.dispatchEvent(this, "BottomAppBarCollapsed", str);
    }

    @SimpleEvent(description = "Bottom app bar navigation clicked")
    public void BottomAppBarNavigationClicked() {
        EventDispatcher.dispatchEvent(this, "BottomAppBarNavigationClicked", new Object[0]);
    }
}
