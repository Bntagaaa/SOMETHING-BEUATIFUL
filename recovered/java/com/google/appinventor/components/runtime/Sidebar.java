package com.google.appinventor.components.runtime;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.navigation.NavigationView;
import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.SidebarDirection;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.MediaUtil;
import java.io.IOException;

@DesignerComponent(category = ComponentCategory.LAYOUT, description = "Sidebar component lets you help to create sidebar for your app", iconName = "images/sidebar.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public class Sidebar extends AndroidNonvisibleComponent implements Component, OnOrientationChangeListener {
    private ComponentContainer container;
    private Context context;
    private DrawerLayout drawerLayout;
    private Form form;
    private int itemColor;
    private NavigationView navigationView;
    private int selectedItemColor;
    private int sidebarDirection;

    public Sidebar(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.itemColor = -16777216;
        this.selectedItemColor = Color.parseColor("#6200EE");
        this.sidebarDirection = 3;
        this.container = componentContainer;
        this.context = componentContainer.$context();
        Form form$form = componentContainer.$form();
        this.form = form$form;
        form$form.registerForOnOrientationChange(this);
        this.drawerLayout = this.form.getDrawerLayout();
        NavigationView navigationView = new NavigationView(this.context);
        this.navigationView = navigationView;
        this.drawerLayout.addView(navigationView);
    }

    public void Initialize() {
        DrawerLayout.LayoutParams layoutParams = new DrawerLayout.LayoutParams(-1, -1);
        layoutParams.gravity = this.sidebarDirection;
        this.navigationView.setLayoutParams(layoutParams);
        addListeners();
        setColor();
        this.form.enableHamburger();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Direction of the sidebar")
    public void SidebarDirection(@Options(SidebarDirection.class) String str) {
        if (str.equals("Right")) {
            this.sidebarDirection = 5;
        } else {
            this.sidebarDirection = 3;
        }
        DrawerLayout.LayoutParams layoutParams = new DrawerLayout.LayoutParams(-1, -1);
        layoutParams.gravity = this.sidebarDirection;
        this.navigationView.setLayoutParams(layoutParams);
    }

    @SimpleProperty(description = "Direction of the sidebar")
    public String SidebarDirection() {
        if (this.sidebarDirection == 5) {
            return "Right";
        }
        return "Left";
    }

    @SimpleFunction(description = "Add custom layout to show as sidebar")
    public void AddSidebar(AndroidViewComponent androidViewComponent) {
        View view = androidViewComponent.getView();
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        view.setVisibility(0);
        for (int i = 1; i < this.drawerLayout.getChildCount(); i++) {
            this.drawerLayout.removeViewAt(i);
        }
        DrawerLayout.LayoutParams layoutParams = new DrawerLayout.LayoutParams(-1, -1);
        layoutParams.gravity = this.sidebarDirection;
        this.drawerLayout.addView(view, layoutParams);
    }

    @SimpleFunction(description = "Set header to the drawer")
    public void SetHeader(AndroidViewComponent androidViewComponent) {
        View view = androidViewComponent.getView();
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        view.setVisibility(0);
        navigationCheck();
        if (this.navigationView.getHeaderCount() < 1) {
            this.navigationView.addHeaderView(view);
            return;
        }
        throw new YailRuntimeError("Sidebar", "More than 1 header is not allowed");
    }

    @SimpleFunction(description = "Adds menu item")
    public void AddItem(String str, int i) {
        navigationCheck();
        Menu menu = this.navigationView.getMenu();
        MenuItem menuItemAdd = menu.add(i, menu.size() + 1, 1, str);
        menuItemAdd.setCheckable(true);
        menuItemAdd.setChecked(false);
    }

    @SimpleFunction(description = "Adds menu item")
    public void AddItemWithIcon(String str, @Asset String str2, int i) {
        navigationCheck();
        try {
            BitmapDrawable bitmapDrawable = MediaUtil.getBitmapDrawable(this.form, str2);
            Menu menu = this.navigationView.getMenu();
            MenuItem icon = menu.add(i, menu.size() + 1, 1, str).setIcon(bitmapDrawable);
            icon.setCheckable(true);
            icon.setChecked(false);
        } catch (IOException unused) {
            throw new YailRuntimeError("Sidebar", "No icon found for menu item");
        }
    }

    @SimpleFunction
    public void ClearItems() {
        this.navigationView.getMenu().clear();
    }

    @SimpleFunction
    public void SetSelected(String str, boolean z) {
        Menu menu = this.navigationView.getMenu();
        for (int i = 0; i < menu.size(); i++) {
            if (menu.getItem(i).getTitle().toString().equalsIgnoreCase(str)) {
                menu.getItem(i).setChecked(z);
            } else if (z) {
                menu.getItem(i).setChecked(false);
            }
        }
    }

    public void navigationCheck() {
        if (this.navigationView.getParent() == null) {
            this.drawerLayout.removeViewAt(1);
            DrawerLayout.LayoutParams layoutParams = new DrawerLayout.LayoutParams(-1, -1);
            layoutParams.gravity = this.sidebarDirection;
            this.drawerLayout.addView(this.navigationView, layoutParams);
        }
    }

    private void addListeners() {
        this.navigationView.setNavigationItemSelectedListener(new NavigationView.OnNavigationItemSelectedListener() { // from class: com.google.appinventor.components.runtime.Sidebar.1
            @Override // com.google.android.material.navigation.NavigationView.OnNavigationItemSelectedListener
            public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
                Sidebar.this.MenuItemSelected(menuItem.getTitle().toString());
                return false;
            }
        });
        this.drawerLayout.addDrawerListener(new DrawerLayout.DrawerListener() { // from class: com.google.appinventor.components.runtime.Sidebar.2
            @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerStateChanged(int i) {
            }

            @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerSlide(@NonNull View view, float f) {
                Sidebar.this.form.getToggle().onDrawerSlide(view, f);
            }

            @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerOpened(@NonNull View view) {
                Sidebar.this.DrawerOpened();
            }

            @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerClosed(@NonNull View view) {
                Sidebar.this.DrawerClosed();
            }
        });
    }

    @SimpleEvent(description = "Item selected")
    public void MenuItemSelected(String str) {
        EventDispatcher.dispatchEvent(this, "MenuItemSelected", str);
    }

    @SimpleFunction(description = "Opens the sidebar")
    public void Open() {
        this.drawerLayout.openDrawer(this.sidebarDirection);
    }

    @SimpleFunction(description = "Closes the sidebar")
    public void Close() {
        this.drawerLayout.closeDrawer(this.sidebarDirection);
    }

    @SimpleEvent(description = "Triggers when drawer opened")
    public void DrawerOpened() {
        EventDispatcher.dispatchEvent(this, "DrawerOpened", new Object[0]);
    }

    @SimpleEvent(description = "Triggered when drawer closed")
    public void DrawerClosed() {
        EventDispatcher.dispatchEvent(this, "DrawerClosed", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLACK, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void ItemColor(int i) {
        this.itemColor = i;
        setColor();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "&HFF6200EE", editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void SelectedItemColor(int i) {
        this.selectedItemColor = i;
        setColor();
    }

    public void setColor() {
        ColorStateList colorStateList = new ColorStateList(new int[][]{new int[]{R.attr.state_checked}, new int[0]}, new int[]{this.selectedItemColor, this.itemColor});
        this.navigationView.setItemTextColor(colorStateList);
        this.navigationView.setItemIconTintList(colorStateList);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.navigationView.setBackgroundColor(i);
    }

    @Override // com.google.appinventor.components.runtime.OnOrientationChangeListener
    public void onOrientationChange() {
        this.drawerLayout.removeView(this.navigationView);
        DrawerLayout drawerLayout = this.form.getDrawerLayout();
        this.drawerLayout = drawerLayout;
        drawerLayout.addView(this.navigationView);
        Initialize();
    }
}
