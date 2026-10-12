package com.google.appinventor.components.runtime;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;

@DesignerComponent(category = ComponentCategory.LAYOUT, description = "Spacing for Visible Components", iconName = "images/spacer.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class Spacer extends AndroidViewComponent {
    private Context context;
    private Space space;

    public Spacer(ComponentContainer componentContainer) {
        super(componentContainer);
        this.context = componentContainer.$context();
        Space space = new Space(this.context);
        this.space = space;
        space.setLayoutParams(new ViewGroup.LayoutParams(10, 10));
        componentContainer.$add(this);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.space;
    }
}
