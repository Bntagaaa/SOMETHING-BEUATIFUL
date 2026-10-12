package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.MenuItem;
import android.widget.Toast;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.PopupMenu;
import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.YailList;

@DesignerComponent(category = ComponentCategory.MATERIAL, description = "A new component ", iconName = "images/niotronPopupMenu.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronPopupMenu extends AndroidNonvisibleComponent {
    private Activity activity;
    private PopupMenu popupMenu;

    public NiotronPopupMenu(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.activity = componentContainer.$context();
    }

    @SimpleEvent(description = "Menu item clicked")
    public void MenuItemClick(String str) {
        EventDispatcher.dispatchEvent(this, "MenuItemClick", str);
    }

    @SimpleEvent(description = "Menu dismissed")
    public void MenuDismissed() {
        EventDispatcher.dispatchEvent(this, "MenuDismissed", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set target")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_VISIBLE_COMPONENTS)
    public void Target(AndroidViewComponent androidViewComponent) {
        PopupMenu popupMenu = new PopupMenu(this.form.getSupportActionBar().getThemedContext(), androidViewComponent.getView());
        this.popupMenu = popupMenu;
        ((MenuBuilder) popupMenu.getMenu()).setOptionalIconsVisible(true);
        this.popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: com.google.appinventor.components.runtime.NiotronPopupMenu.1
            @Override // androidx.appcompat.widget.PopupMenu.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                NiotronPopupMenu.this.MenuItemClick((String) menuItem.getTitle());
                return true;
            }
        });
        this.popupMenu.setOnDismissListener(new PopupMenu.OnDismissListener() { // from class: com.google.appinventor.components.runtime.NiotronPopupMenu.2
            @Override // androidx.appcompat.widget.PopupMenu.OnDismissListener
            public void onDismiss(PopupMenu popupMenu2) {
                NiotronPopupMenu.this.MenuDismissed();
            }
        });
    }

    @SimpleFunction(description = "Add item")
    public void AddItem(String str) {
        PopupMenu popupMenu = this.popupMenu;
        if (popupMenu != null) {
            popupMenu.getMenu().add(str);
        } else {
            Toast.makeText(this.activity, "Target Not Set For Popup Menu", 0).show();
        }
    }

    @SimpleFunction(description = "Add item with icon")
    public void AddItemWithIcon(final String str, @Asset String str2) {
        PopupMenu popupMenu = this.popupMenu;
        if (popupMenu != null) {
            try {
                MenuItem onMenuItemClickListener = popupMenu.getMenu().add(str).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.google.appinventor.components.runtime.NiotronPopupMenu.3
                    @Override // android.view.MenuItem.OnMenuItemClickListener
                    public boolean onMenuItemClick(MenuItem menuItem) {
                        NiotronPopupMenu.this.MenuItemClick(str);
                        return true;
                    }
                });
                if (str2.equals("")) {
                    return;
                }
                onMenuItemClickListener.setIcon(new BitmapDrawable(this.activity.getResources(), Bitmap.createScaledBitmap(MediaUtil.getBitmapDrawable(this.form, str2).getBitmap(), px(36), px(36), true)));
                return;
            } catch (Exception unused) {
                return;
            }
        }
        Toast.makeText(this.activity, "Target Not Set For Popup Menu", 0).show();
    }

    @SimpleFunction(description = "Add items")
    public void AddItems(YailList yailList, YailList yailList2) {
        if (this.popupMenu != null) {
            for (int i = 1; i <= yailList.size(); i++) {
                try {
                    final String string = yailList.getString(i);
                    String string2 = yailList.getString(i);
                    MenuItem onMenuItemClickListener = this.popupMenu.getMenu().add(string).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.google.appinventor.components.runtime.NiotronPopupMenu.4
                        @Override // android.view.MenuItem.OnMenuItemClickListener
                        public boolean onMenuItemClick(MenuItem menuItem) {
                            NiotronPopupMenu.this.MenuItemClick(string);
                            return true;
                        }
                    });
                    if (!string2.equals("")) {
                        onMenuItemClickListener.setIcon(new BitmapDrawable(this.activity.getResources(), Bitmap.createScaledBitmap(MediaUtil.getBitmapDrawable(this.form, string2).getBitmap(), px(24), px(36), true)));
                    }
                } catch (Exception unused) {
                    return;
                }
            }
            return;
        }
        Toast.makeText(this.activity, "Target Not Set For Popup Menu", 0).show();
    }

    @SimpleFunction(description = "Clear the items")
    public void Clear() {
        PopupMenu popupMenu = this.popupMenu;
        if (popupMenu != null) {
            popupMenu.getMenu().clear();
        }
    }

    @SimpleFunction(description = "Removes item")
    public void RemoveItem(int i) {
        PopupMenu popupMenu = this.popupMenu;
        if (popupMenu != null) {
            popupMenu.getMenu().removeItem(i + 1);
        }
    }

    @SimpleFunction(description = "Shows the popup menu")
    public void Show() {
        PopupMenu popupMenu = this.popupMenu;
        if (popupMenu != null) {
            popupMenu.show();
        } else {
            Toast.makeText(this.activity, "Target Not Set For Popup Menu", 0).show();
        }
    }

    @SimpleFunction(description = "Dismisses the popup menu")
    public void Dismiss() {
        PopupMenu popupMenu = this.popupMenu;
        if (popupMenu != null) {
            popupMenu.dismiss();
        }
    }

    public int px(int i) {
        return (int) (i * Resources.getSystem().getDisplayMetrics().density);
    }
}
