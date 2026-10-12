package com.google.appinventor.components.runtime;

import android.widget.ScrollView;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.ComponentConstants;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.LAYOUT, description = "<p>A formatting element in which to place components that should be displayed one below another.  (The first child component is stored on top, the second beneath it, etc.)  If you wish to have components displayed next to one another, use <code>HorizontalArrangement</code> instead.</p><p> This version is scrollable", iconName = "images/vertical.png", version = 2)
@SimpleObject
/* loaded from: classes.dex */
public class VerticalScrollArrangement extends HVArrangement {
    public VerticalScrollArrangement(ComponentContainer componentContainer) {
        super(componentContainer, 0, ComponentConstants.SCROLLABLE_ARRANGEMENT);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies whether the scrollbar should be visible or not")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ScrollbarVisible(boolean z) {
        ((ScrollView) getView()).setVerticalScrollBarEnabled(z);
    }
}
