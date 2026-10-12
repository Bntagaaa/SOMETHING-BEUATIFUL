package com.google.appinventor.components.runtime;

import android.view.MotionEvent;
import android.view.View;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesAssets;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@UsesAssets(fileNames = "MaterialIcons-Regular.ttf, fontawesome-webfont.ttf,fa-brands-400.ttf, fa-regular-400.ttf, fa-solid-900.ttf")
@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "Button with the ability to detect clicks.  Many aspects of its appearance can be changed, as well as whether it is clickable (<code>Enabled</code>), can be changed in the Designer or in the Blocks Editor.", iconName = "images/button.png", version = 8)
@SimpleObject
/* loaded from: classes.dex */
public final class Button extends ButtonBase {
    public Button(ComponentContainer componentContainer) {
        super(componentContainer);
        HeihPadding("10,10,0,0");
    }

    public Button(ComponentContainer componentContainer, android.widget.Button button) {
        super(componentContainer, button);
    }

    @Override // com.google.appinventor.components.runtime.ButtonBase
    public void click() {
        Click();
    }

    @SimpleEvent(description = "User tapped and released the button.")
    public void Click() {
        EventDispatcher.dispatchEvent(this, "Click", new Object[0]);
    }

    @Override // com.google.appinventor.components.runtime.ButtonBase
    public boolean longClick() {
        return LongClick();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "10,10,0,0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FOUR)
    public void HeihPadding(String str) {
        super.HeihPadding(str);
    }

    @Override // com.google.appinventor.components.runtime.ButtonBase, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return super.onTouch(view, motionEvent);
    }

    @SimpleEvent(description = "User held the button down.")
    public boolean LongClick() {
        return EventDispatcher.dispatchEvent(this, "LongClick", new Object[0]);
    }
}
