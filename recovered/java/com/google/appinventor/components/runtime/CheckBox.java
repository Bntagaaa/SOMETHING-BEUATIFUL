package com.google.appinventor.components.runtime;

import android.R;
import android.content.res.ColorStateList;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "Checkbox that raises an event when the user clicks on it. There are many properties affecting its appearance that can be set in the Designer or Blocks Editor.", iconName = "images/checkbox.png", version = 2)
@SimpleObject
/* loaded from: classes.dex */
public final class CheckBox extends ToggleBase<android.widget.CheckBox> {
    private int selectedColor;
    private int unselectedColor;

    public CheckBox(ComponentContainer componentContainer) {
        super(componentContainer);
        this.selectedColor = -16744320;
        this.unselectedColor = Component.COLOR_GRAY;
        this.view = new android.widget.CheckBox(componentContainer.$context());
        Checked(false);
        initToggle();
    }

    public CheckBox(ComponentContainer componentContainer, android.widget.CheckBox checkBox) {
        super(componentContainer);
        this.selectedColor = -16744320;
        this.unselectedColor = Component.COLOR_GRAY;
        this.view = checkBox;
        checkBox.setOnFocusChangeListener(this);
        ((android.widget.CheckBox) this.view).setOnCheckedChangeListener(this);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "True if the box is checked, false otherwise.")
    public boolean Checked() {
        return ((android.widget.CheckBox) this.view).isChecked();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Checked(boolean z) {
        ((android.widget.CheckBox) this.view).setChecked(z);
        ((android.widget.CheckBox) this.view).invalidate();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "&HFF008080", editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void SelectedColor(int i) {
        this.selectedColor = i;
        ((android.widget.CheckBox) this.view).setButtonTintList(new ColorStateList(new int[][]{new int[]{R.attr.state_checked}, new int[0]}, new int[]{this.selectedColor, this.unselectedColor}));
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_GRAY, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void UnselectedColor(int i) {
        this.unselectedColor = i;
        ((android.widget.CheckBox) this.view).setButtonTintList(new ColorStateList(new int[][]{new int[]{R.attr.state_checked}, new int[0]}, new int[]{this.selectedColor, this.unselectedColor}));
    }
}
