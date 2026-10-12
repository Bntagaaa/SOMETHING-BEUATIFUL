package com.google.appinventor.components.runtime;

import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.util.Log;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabItem;
import com.google.android.material.tabs.TabLayout;
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
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.MediaUtil;
import java.io.IOException;

@DesignerComponent(category = ComponentCategory.MATERIAL, description = "A new component ", iconName = "images/niotronTabLayout.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronTabLayout extends AndroidViewComponent {
    private static final String LOG_TAG = "NiotronTabLayout";
    private ComponentContainer container;
    private int nonSelectedColor;
    private int selectedColor;
    private TabLayout tabLayout;

    public NiotronTabLayout(ComponentContainer componentContainer) {
        super(componentContainer);
        this.selectedColor = Color.parseColor("#6200EE");
        this.nonSelectedColor = Component.COLOR_DKGRAY;
        this.container = componentContainer;
        TabLayout tabLayout = new TabLayout(componentContainer.$context());
        this.tabLayout = tabLayout;
        tabLayout.setTabTextColors(this.nonSelectedColor, this.selectedColor);
        componentContainer.$add(this);
        addListeners();
        IndicatorColor(Component.COLOR_MAGENTA);
    }

    private void addListeners() {
        this.tabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() { // from class: com.google.appinventor.components.runtime.NiotronTabLayout.1
            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabUnselected(TabLayout.Tab tab) {
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabSelected(TabLayout.Tab tab) {
                NiotronTabLayout.this.Selected(tab.getPosition() + 1);
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public void onTabReselected(TabLayout.Tab tab) {
                NiotronTabLayout.this.ReSelected(tab.getPosition() + 1);
            }
        });
    }

    @SimpleEvent(description = "Invoked when tab item re-selected")
    public void ReSelected(int i) {
        EventDispatcher.dispatchEvent(this, "ReSelected", Integer.valueOf(i));
    }

    @SimpleEvent(description = "Invoked when tab item selected")
    public void Selected(int i) {
        EventDispatcher.dispatchEvent(this, "Selected", Integer.valueOf(i));
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Adds tab item button with text", userVisible = false)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void TabNames(String str) {
        if (str.isEmpty()) {
            return;
        }
        String[] strArrSplit = str.split(",");
        Log.d(LOG_TAG, strArrSplit.toString());
        if (strArrSplit.length < 1) {
            Log.d(LOG_TAG, "Length is less than 1");
            return;
        }
        for (int i = 0; i < strArrSplit.length; i++) {
            if (this.tabLayout.getTabAt(i) == null) {
                this.tabLayout.addView(new TabItem(this.container.$context()), i);
                Log.d(LOG_TAG, "Tab created");
            }
            this.tabLayout.getTabAt(i).setText(strArrSplit[i]);
            Log.d(LOG_TAG, "Tab text set to " + strArrSplit[i]);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Adds tab item button with icon", userVisible = false)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void TabIcons(String str) {
        if (str.isEmpty()) {
            return;
        }
        String[] strArrSplit = str.split(",");
        Log.d(LOG_TAG, strArrSplit.toString());
        if (strArrSplit.length < 1) {
            Log.d(LOG_TAG, "Tab icons length is less than 1");
            return;
        }
        for (int i = 0; i < strArrSplit.length; i++) {
            if (this.tabLayout.getTabAt(i) == null) {
                this.tabLayout.addView(new TabItem(this.container.$context()), i);
                Log.d(LOG_TAG, "Tab (icon) created");
            }
            try {
                BitmapDrawable bitmapDrawable = MediaUtil.getBitmapDrawable(this.container.$form(), strArrSplit[i]);
                this.tabLayout.getTabAt(i).setIcon(bitmapDrawable);
                StringBuilder sb = new StringBuilder("Tab icon set ");
                sb.append(bitmapDrawable);
                Log.d(LOG_TAG, sb.toString() == null ? "null" : "ok");
            } catch (IOException unused) {
                throw new YailRuntimeError("TabLayout", "Icon not found, please check asset name properly");
            }
        }
    }

    @SimpleFunction(description = "Adds a tab item with text and icon")
    public void AddTab(String str, @Asset String str2, int i) {
        if (i <= 0) {
            throw new YailRuntimeError("TabLayout", "Index Should Be Greater Than 0 in Add Tab Block");
        }
        int i2 = i - 1;
        this.tabLayout.addView(new TabItem(this.container.$context()), i2);
        this.tabLayout.getTabAt(i2).setText(str);
        if (str2.isEmpty()) {
            return;
        }
        try {
            this.tabLayout.getTabAt(i2).setIcon(MediaUtil.getBitmapDrawable(this.container.$form(), str2));
        } catch (IOException unused) {
            throw new YailRuntimeError("TabLayout", "Icon not found, please check asset name properly");
        }
    }

    @SimpleFunction(description = "Connect View Pager With Tab View")
    public void ConnectViewPager(NiotronViewPager niotronViewPager) {
        this.tabLayout.setupWithViewPager((ViewPager) niotronViewPager.getView());
    }

    @SimpleFunction(description = "Remove All Tabs")
    public void RemoveAllTabs() {
        this.tabLayout.removeAllTabs();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Selected indicator color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_MAGENTA, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void IndicatorColor(int i) {
        this.tabLayout.setSelectedTabIndicatorColor(i);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Selected text color")
    @DesignerProperty(defaultValue = "&HFF6200EE", editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void SelectedTextColor(int i) {
        this.selectedColor = i;
        this.tabLayout.setTabTextColors(this.nonSelectedColor, i);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Background color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.tabLayout.setBackgroundColor(i);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Text color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DKGRAY, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int i) {
        this.nonSelectedColor = i;
        this.tabLayout.setTabTextColors(i, this.selectedColor);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Show Full Width Tab")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FullWidthTab(boolean z) {
        this.tabLayout.setTabIndicatorFullWidth(z);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Scrollable Tab View")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Scrollable(boolean z) {
        this.tabLayout.setTabMode(!z ? 1 : 0);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.tabLayout;
    }
}
