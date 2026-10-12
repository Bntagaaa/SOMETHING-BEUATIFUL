package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.ComponentConstants;

@DesignerComponent(category = ComponentCategory.INTERNAL, description = "This component is a replacement component for unsupported components imported from other builders, users should fix the layout according to the desired ui", iconName = "images/placeholderComponent.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class Placeholder extends HVArrangement {
    public Placeholder(ComponentContainer componentContainer) {
        super(componentContainer, 0, ComponentConstants.NONSCROLLABLE_ARRANGEMENT);
    }
}
