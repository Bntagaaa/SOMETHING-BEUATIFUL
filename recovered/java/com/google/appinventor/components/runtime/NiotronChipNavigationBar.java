package com.google.appinventor.components.runtime;

import android.content.Context;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.gauravk.bubblenavigation.BubbleNavigationLinearView;
import com.gauravk.bubblenavigation.BubbleToggleItem;
import com.gauravk.bubblenavigation.BubbleToggleView;
import com.gauravk.bubblenavigation.listener.BubbleNavigationChangeListener;
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
import java.util.HashMap;

@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "A navigation bar widget inspired on Bottom Navigation mixed with Chips component", iconName = "images/niotronChipNavigationBar.png", nonVisible = false, version = 1)
@UsesLibraries(libraries = "chipnavigation.jar,chipnavigation.aar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronChipNavigationBar extends AndroidViewComponent {
    private ComponentContainer container;
    private Context context;
    private HashMap<String, BubbleToggleView> items;
    private final BubbleNavigationLinearView view;

    public NiotronChipNavigationBar(ComponentContainer componentContainer) {
        super(componentContainer);
        this.items = new HashMap<>();
        this.container = componentContainer;
        this.context = componentContainer.$context();
        BubbleNavigationLinearView bubbleNavigationLinearView = new BubbleNavigationLinearView(this.context);
        this.view = bubbleNavigationLinearView;
        bubbleNavigationLinearView.setElevation(px(4));
        int iPx = px(12);
        bubbleNavigationLinearView.setPadding(iPx, iPx, iPx, iPx);
        componentContainer.$add(this);
        bubbleNavigationLinearView.setNavigationChangeListener(new BubbleNavigationChangeListener() { // from class: com.google.appinventor.components.runtime.NiotronChipNavigationBar.1
            public void onNavigationChanged(View view, int i) {
                NiotronChipNavigationBar.this.OnPositionChanged(i);
            }
        });
    }

    @SimpleFunction(description = "Adds item in the chip navigation")
    public void AddItem(String str, @Asset String str2, int i, int i2, String str3) {
        try {
            BubbleToggleItem bubbleToggleItem = new BubbleToggleItem();
            bubbleToggleItem.setIcon(MediaUtil.getBitmapDrawable(this.container.$form(), str2));
            bubbleToggleItem.setTitle(str);
            bubbleToggleItem.setColorActive(i);
            bubbleToggleItem.setColorInactive(i2);
            bubbleToggleItem.setShapeColor(i);
            BubbleToggleView bubbleToggleView = new BubbleToggleView(this.context, bubbleToggleItem);
            bubbleToggleView.setId(ViewCompat.generateViewId());
            this.view.addView(bubbleToggleView);
            this.items.put(str3, bubbleToggleView);
        } catch (Exception e) {
            ErrorOccurred(e.toString());
        }
    }

    @SimpleFunction(description = "Creates the navigation view")
    public void Create() {
        this.view.post(new Runnable() { // from class: com.google.appinventor.components.runtime.NiotronChipNavigationBar.2
            @Override // java.lang.Runnable
            public void run() {
                NiotronChipNavigationBar.this.view.updateChildNavItems();
            }
        });
    }

    @SimpleFunction(description = "Get active item position")
    public int GetActiveItemPosition() {
        return this.view.getCurrentActiveItemPosition();
    }

    @SimpleFunction(description = "Set active item position")
    public void SetActiveItemPosition(int i) {
        this.view.setCurrentActiveItem(i);
    }

    @SimpleFunction(description = "Toggle id")
    public void Toggle(String str) {
        this.items.get(str).toggle();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.view.setBackgroundColor(i);
    }

    @SimpleEvent(description = "Error occurred")
    public void ErrorOccurred(String str) {
        EventDispatcher.dispatchEvent(this, "ErrorOccurred", str);
    }

    @SimpleEvent(description = "On position changed")
    public void OnPositionChanged(int i) {
        EventDispatcher.dispatchEvent(this, "OnPositionChanged", Integer.valueOf(i));
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.view;
    }
}
