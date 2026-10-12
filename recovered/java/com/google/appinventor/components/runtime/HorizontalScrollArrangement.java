package com.google.appinventor.components.runtime;

import android.widget.HorizontalScrollView;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.ComponentConstants;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.LAYOUT, description = "<p>A formatting element in which to place components that should be displayed from left to right.  If you wish to have components displayed one over another, use <code>VerticalArrangement</code> instead.</p><p>This version is scrollable.", iconName = "images/horizontal.png", version = 2)
@SimpleObject
/* loaded from: classes.dex */
public class HorizontalScrollArrangement extends HVArrangement {
    public HorizontalScrollArrangement(ComponentContainer componentContainer) {
        super(componentContainer, 1, ComponentConstants.SCROLLABLE_ARRANGEMENT);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Specifies whether the scrollbar should be visible or not")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ScrollbarVisible(boolean z) {
        ((HorizontalScrollView) getView()).setHorizontalScrollBarEnabled(z);
    }
}
