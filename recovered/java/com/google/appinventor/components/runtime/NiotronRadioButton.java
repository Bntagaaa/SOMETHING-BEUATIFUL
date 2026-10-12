package com.google.appinventor.components.runtime;

import android.R;
import android.content.res.ColorStateList;
import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "Component dor radio buttons", iconName = "images/niotronRadioButton.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronRadioButton extends AndroidViewComponent {
    private ComponentContainer container;
    private RadioGroup radioGroup;
    private int selectedColor;
    private int unselectedColor;

    public NiotronRadioButton(ComponentContainer componentContainer) {
        super(componentContainer);
        this.selectedColor = -16744320;
        this.unselectedColor = Component.COLOR_GRAY;
        this.radioGroup = new RadioGroup(componentContainer.$context());
        componentContainer.$add(this);
        this.container = componentContainer;
        addListener();
    }

    private void addListener() {
        this.radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.google.appinventor.components.runtime.NiotronRadioButton.1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                NiotronRadioButton.this.CheckChange(((RadioButton) NiotronRadioButton.this.container.$context().findViewById(radioGroup.getCheckedRadioButtonId())).getText().toString());
            }
        });
    }

    @SimpleEvent(description = "Invoked when check changes")
    public void CheckChange(String str) {
        EventDispatcher.dispatchEvent(this, "CheckChange", str);
    }

    @SimpleFunction
    public boolean IsChecked(String str) {
        RadioButton radioButton = (RadioButton) this.container.$context().findViewById(this.radioGroup.getCheckedRadioButtonId());
        if (radioButton != null) {
            return radioButton.getText().toString().equalsIgnoreCase(str);
        }
        return false;
    }

    @SimpleFunction
    public String GetCheckedRadioButton() {
        RadioButton radioButton = (RadioButton) this.container.$context().findViewById(this.radioGroup.getCheckedRadioButtonId());
        if (radioButton != null) {
            return radioButton.getText().toString();
        }
        return "";
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Adds radio button", userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void RadioButtons(String str) {
        for (String str2 : str.split(",")) {
            RadioButton radioButton = new RadioButton(this.container.$context());
            radioButton.setText(str2);
            radioButton.setButtonTintList(new ColorStateList(new int[][]{new int[]{R.attr.state_checked}, new int[0]}, new int[]{this.selectedColor, this.unselectedColor}));
            this.radioGroup.addView(radioButton);
        }
    }

    @SimpleFunction(description = "Adds radio button")
    public void AddRadioButton(String str) {
        RadioButton radioButton = new RadioButton(this.container.$context());
        radioButton.setText(str);
        radioButton.setButtonTintList(new ColorStateList(new int[][]{new int[]{R.attr.state_checked}, new int[0]}, new int[]{this.selectedColor, this.unselectedColor}));
        this.radioGroup.addView(radioButton);
    }

    @SimpleProperty(description = "Set true is horizonal")
    public void Horizontal(boolean z) {
        if (z) {
            this.radioGroup.setOrientation(0);
        } else {
            this.radioGroup.setOrientation(1);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "&HFF008080", editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void SelectedColor(int i) {
        this.selectedColor = i;
        for (int i2 = 0; i2 < this.radioGroup.getChildCount(); i2++) {
            ((RadioButton) this.radioGroup.getChildAt(i2)).setButtonTintList(new ColorStateList(new int[][]{new int[]{R.attr.state_checked}, new int[0]}, new int[]{this.selectedColor, this.unselectedColor}));
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_GRAY, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void UnselectedColor(int i) {
        this.unselectedColor = i;
        for (int i2 = 0; i2 < this.radioGroup.getChildCount(); i2++) {
            ((RadioButton) this.radioGroup.getChildAt(i2)).setButtonTintList(new ColorStateList(new int[][]{new int[]{R.attr.state_checked}, new int[0]}, new int[]{this.selectedColor, this.unselectedColor}));
        }
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.radioGroup;
    }
}
