package com.google.appinventor.components.runtime;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.MediaUtil;
import java.io.IOException;

@DesignerComponent(category = ComponentCategory.MATERIAL, description = "Bottom navigation view", iconName = "images/bottomnavigation.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronBottomNavigation extends AndroidViewComponent {
    private static String LOG_TAG = "Bottom Navigation";
    private Activity activity;
    private ComponentContainer container;
    private Context context;
    private int iconSelectColor;
    private int iconUnSelectColor;
    private BottomNavigationView nav;
    private int textSelectColor;
    private int textUnSelectColor;

    public NiotronBottomNavigation(ComponentContainer componentContainer) {
        super(componentContainer);
        this.iconSelectColor = Component.COLOR_BLUE;
        this.iconUnSelectColor = Component.COLOR_GRAY;
        this.textSelectColor = Component.COLOR_BLUE;
        this.textUnSelectColor = Component.COLOR_GRAY;
        this.nav = new BottomNavigationView(componentContainer.$context());
        componentContainer.$add(this);
        this.container = componentContainer;
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
        Width(-2);
        Height(-1);
        this.nav.setBackgroundColor(-1);
        AddListener();
        Log.d(LOG_TAG, "Botton nav created");
    }

    @SimpleFunction(description = "Adds a new item")
    public void addItem(String str, @Asset String str2, int i) {
        Log.d(LOG_TAG, "Method called");
        if (str2.length() > 0) {
            try {
                this.nav.getMenu().add(0, i, 0, str).setIcon(MediaUtil.getBitmapDrawable(this.container.$form(), str2));
            } catch (IOException unused) {
            }
        }
    }

    @SimpleFunction(description = "Clears item")
    public void ClearItem(int i) {
        this.nav.getMenu().removeItem(i);
    }

    @SimpleFunction(description = "Clear all item")
    public void ClearAllItem() {
        this.nav.getMenu().clear();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Selected item color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLUE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void IconSelectedColor(int i) {
        this.iconSelectColor = i;
        UpdateIconColor();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Unselected item color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_GRAY, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void IconUnSelectedColor(int i) {
        this.iconUnSelectColor = i;
        UpdateIconColor();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Title selected color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLUE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TitleSelectedColor(int i) {
        this.textSelectColor = i;
        UpdateTextColor();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Title unselected color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_GRAY, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TitleUnSelectedColor(int i) {
        this.textUnSelectColor = i;
        UpdateTextColor();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Ripple color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLUE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void RippleColor(int i) {
        this.nav.setItemRippleColor(new ColorStateList(new int[][]{new int[]{-16842912}}, new int[]{i}));
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set the background color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.nav.setBackgroundColor(i);
    }

    @SimpleProperty(description = "Select item")
    public void SelectItem(int i) {
        this.nav.setSelectedItemId(i);
    }

    @SimpleEvent(description = "On item selected")
    public void OnItemSelected(String str) {
        EventDispatcher.dispatchEvent(this, "OnItemSelected", str);
    }

    @SimpleEvent(description = "On item re selected")
    public void OnItemReSelected(String str) {
        EventDispatcher.dispatchEvent(this, "OnItemReSelected", str);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.nav;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Width(int i) {
        if (i == -1) {
            i = -2;
        }
        super.Width(i);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Height(int i) {
        if (i == -1) {
            i = -1;
        }
        super.Height(i);
    }

    private void UpdateIconColor() {
        this.nav.setItemIconTintList(new ColorStateList(new int[][]{new int[]{-16842912}, new int[]{R.attr.state_checked}}, new int[]{this.iconUnSelectColor, this.iconSelectColor}));
    }

    private void UpdateTextColor() {
        this.nav.setItemTextColor(new ColorStateList(new int[][]{new int[]{-16842912}, new int[]{R.attr.state_checked}}, new int[]{this.textUnSelectColor, this.textSelectColor}));
    }

    private void AddListener() {
        this.nav.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: com.google.appinventor.components.runtime.NiotronBottomNavigation.1
            @Override // com.google.android.material.navigation.NavigationBarView.OnItemSelectedListener
            public boolean onNavigationItemSelected(MenuItem menuItem) {
                NiotronBottomNavigation.this.OnItemSelected(menuItem.getTitle().toString());
                return true;
            }
        });
        this.nav.setOnNavigationItemReselectedListener(new BottomNavigationView.OnNavigationItemReselectedListener() { // from class: com.google.appinventor.components.runtime.NiotronBottomNavigation.2
            @Override // com.google.android.material.navigation.NavigationBarView.OnItemReselectedListener
            public void onNavigationItemReselected(MenuItem menuItem) {
                NiotronBottomNavigation.this.OnItemReSelected(menuItem.getTitle().toString());
            }
        });
    }
}
