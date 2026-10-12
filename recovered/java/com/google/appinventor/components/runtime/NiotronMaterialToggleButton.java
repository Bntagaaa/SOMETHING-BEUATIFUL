package com.google.appinventor.components.runtime;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
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
import com.google.appinventor.components.runtime.util.MediaUtil;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

@DesignerComponent(category = ComponentCategory.MATERIAL, description = "New Material design buttom. Helps to create button with material design provided by google", iconName = "images/material_textbox.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronMaterialToggleButton extends AndroidViewComponent {
    private static final String LOG_TAG = "NiotronMaterialButton";
    private int argb;
    private int backgroundColor;
    private ComponentContainer container;
    private Context context;
    private boolean enabled;
    private int iconTint;
    private HashMap<String, Integer> ids;
    private String[] inputTypeArgs;
    private boolean isRepl;
    private android.widget.LinearLayout mainView;
    private MaterialButtonToggleGroup materialButton;
    private int radius;
    private int rid;
    private float size;

    public NiotronMaterialToggleButton(ComponentContainer componentContainer) {
        super(componentContainer);
        this.argb = -16777216;
        this.size = 14.0f;
        this.enabled = true;
        this.ids = new HashMap<>();
        this.container = componentContainer;
        this.context = componentContainer.$context();
        this.isRepl = componentContainer.$form() instanceof ReplForm;
        this.mainView = new android.widget.LinearLayout(this.context);
        MaterialButtonToggleGroup materialButtonToggleGroup = new MaterialButtonToggleGroup(this.context);
        this.materialButton = materialButtonToggleGroup;
        this.mainView.addView(materialButtonToggleGroup);
        componentContainer.$add(this);
        Width(-1);
        Height(-1);
        addListeners();
        SingleSelection(false);
    }

    @SimpleFunction(description = "Set items in toggle button")
    public void AddItem(String str, @Asset String str2, String str3) throws IOException {
        LayoutInflater layoutInflater = (LayoutInflater) this.container.$context().getSystemService("layout_inflater");
        try {
            this.rid = R.layout.class.getField("niotronmaterialbutton3").getInt(null);
        } catch (Exception unused) {
        }
        MaterialButton materialButton = (MaterialButton) layoutInflater.inflate(this.rid, (ViewGroup) null);
        int iGenerateViewId = View.generateViewId();
        this.ids.put(str3, Integer.valueOf(iGenerateViewId));
        materialButton.setId(iGenerateViewId);
        materialButton.setText(str);
        materialButton.setTextColor(this.argb);
        materialButton.setTextSize(this.size);
        materialButton.setCornerRadius(this.radius);
        if (str2 != "") {
            materialButton.setIcon(MediaUtil.getBitmapDrawable(this.container.$form(), str2));
        }
        materialButton.setIconTint(ColorStateList.valueOf(this.argb));
        this.materialButton.addView(materialButton, new LinearLayout.LayoutParams(-1, -1));
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set text color of the button")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLACK, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int i) {
        this.argb = i;
    }

    @SimpleProperty(description = "Returns the text color")
    public int TextColor() {
        return this.argb;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the text size")
    @DesignerProperty(defaultValue = "14.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void TextSize(float f) {
        this.size = f;
    }

    @SimpleProperty(description = "")
    public float TextSize() {
        return this.size;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Corner radius")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void CornerRadius(int i) {
        this.radius = px(i);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean z) {
        this.enabled = z;
        this.materialButton.setEnabled(z);
    }

    @SimpleProperty
    public boolean Enabled() {
        return this.enabled;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void IconTint(int i) {
        this.iconTint = i;
    }

    @SimpleProperty
    public int IconTint() {
        return this.iconTint;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.backgroundColor = i;
        MaterialButtonToggleGroup materialButtonToggleGroup = this.materialButton;
        if (materialButtonToggleGroup != null) {
            materialButtonToggleGroup.setBackgroundColor(i);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void SingleSelection(boolean z) {
        this.materialButton.setSingleSelection(z);
    }

    @SimpleProperty
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleFunction(description = "It will check the button of the given id")
    public void CheckButton(String str) {
        this.materialButton.check(this.ids.get(str).intValue());
    }

    @SimpleFunction(description = "It will clear the selection")
    public void ClearSelection() {
        this.materialButton.clearChecked();
    }

    @SimpleFunction(description = "This will return the current checked button id")
    public String GetCheckedButtonId() {
        return getIdByValue(Integer.valueOf(this.materialButton.getCheckedButtonId()));
    }

    @SimpleEvent(description = "Raises when button is clicked")
    public void Click(String str, boolean z) {
        EventDispatcher.dispatchEvent(this, "Click", str, Boolean.valueOf(z));
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.mainView;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Width(int i) {
        if (i == -1) {
            i = -1;
        }
        super.Width(i);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Height(int i) {
        if (i == -1) {
            i = -1;
        }
        super.Height(i);
    }

    private void updateAppearance() {
        this.materialButton.setBackgroundColor(this.backgroundColor);
    }

    private void addListeners() {
        this.materialButton.addOnButtonCheckedListener(new MaterialButtonToggleGroup.OnButtonCheckedListener() { // from class: com.google.appinventor.components.runtime.NiotronMaterialToggleButton.1
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.OnButtonCheckedListener
            public void onButtonChecked(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
                NiotronMaterialToggleButton niotronMaterialToggleButton = NiotronMaterialToggleButton.this;
                niotronMaterialToggleButton.Click(niotronMaterialToggleButton.getIdByValue(Integer.valueOf(i)), z);
            }
        });
    }

    public String getIdByValue(Integer num) {
        for (Map.Entry<String, Integer> entry : this.ids.entrySet()) {
            if (Objects.equals(num, entry.getValue())) {
                return entry.getKey();
            }
        }
        return "";
    }
}
