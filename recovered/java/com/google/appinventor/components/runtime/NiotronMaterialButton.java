package com.google.appinventor.components.runtime;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
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
import com.google.appinventor.components.runtime.util.TextViewUtil;

@DesignerComponent(category = ComponentCategory.MATERIAL, description = "New Material design buttom. Helps to create button with material design provided by google", iconName = "images/material_textbox.png", nonVisible = false, version = 3)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronMaterialButton extends AndroidViewComponent {
    private static final String LOG_TAG = "NiotronMaterialButton";
    private int argb;
    private int backgroundColor;
    private boolean bold;
    private float bottomleft;
    private float bottomright;
    private ComponentContainer container;
    private Context context;
    private float elevation;
    private boolean enabled;
    private String errorText;
    private boolean fontAwesome;
    private String fontTypeface;
    private String helperText;
    private String icon;
    private int iconTint;
    private String[] inputTypeArgs;
    private boolean isRepl;
    private boolean italic;
    private android.widget.LinearLayout mainView;
    private MaterialButton materialButton;
    private int maxLength;
    private int paddingBottom2;
    private int paddingLeft2;
    private int paddingRight2;
    private int paddingTop2;
    private int rid;
    private float size;
    private String text;
    private String textAppearence;
    private float topleft;
    private float topright;

    public NiotronMaterialButton(ComponentContainer componentContainer) {
        super(componentContainer);
        this.argb = Component.COLOR_THEME;
        this.textAppearence = "unspecified";
        this.size = 14.0f;
        this.topleft = 5.0f;
        this.topright = 5.0f;
        this.bottomleft = 5.0f;
        this.bottomright = 5.0f;
        this.helperText = "";
        this.errorText = "";
        this.text = "";
        this.bold = true;
        this.enabled = true;
        this.paddingLeft2 = 0;
        this.paddingTop2 = 0;
        this.paddingRight2 = 0;
        this.paddingBottom2 = 0;
        this.container = componentContainer;
        this.context = componentContainer.$context();
        this.isRepl = componentContainer.$form() instanceof ReplForm;
        this.mainView = new android.widget.LinearLayout(this.context);
        componentContainer.$add(this);
        Width(-1);
        Height(-1);
        HeihMargin("5,5,5,5");
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set to true if to create a material button with different styles", userVisible = false)
    @DesignerProperty(alwaysSend = true, defaultValue = "Filled", editorArgs = {"Filled", "Outlined", "Elevated", "Tonal", "Text"}, editorType = PropertyTypeConstants.PROPERTY_TYPE_CHOICES)
    public void ButtonType(String str) {
        String str2 = "niotron_m3_button_filled";
        if (!str.equals("Filled")) {
            if (str.equals("Outlined")) {
                str2 = "niotron_m3_button_outlined";
            } else if (str.equals("Elevated")) {
                str2 = "niotron_m3_button_elevated";
            } else if (str.equals("Tonal")) {
                str2 = "niotron_m3_button_filled_tonal";
            } else if (str.equals("Text")) {
                str2 = "niotron_m3_button_text";
            }
        }
        LayoutInflater layoutInflater = (LayoutInflater) this.container.$context().getSystemService("layout_inflater");
        try {
            this.rid = R.layout.class.getField(str2).getInt(null);
        } catch (Exception unused) {
        }
        this.materialButton = (MaterialButton) layoutInflater.inflate(this.rid, (ViewGroup) null);
        this.mainView.removeAllViews();
        this.mainView.addView(this.materialButton, new LinearLayout.LayoutParams(-1, -1));
        updateAppearance();
        addListeners();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set text color of the button")
    @DesignerProperty(defaultValue = "&HFF6200EE", editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int i) {
        this.argb = i;
        this.materialButton.setTextColor(i);
    }

    @SimpleProperty(description = "Returns the text color")
    public int TextColor() {
        return this.argb;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the text")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Text(String str) {
        this.text = str;
        this.materialButton.setText(str);
    }

    @SimpleProperty(description = "returns the text")
    public String Text() {
        return (String) this.materialButton.getText();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the text size")
    @DesignerProperty(defaultValue = "14.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void TextSize(float f) {
        this.size = f;
        if (this.textAppearence.equalsIgnoreCase("unspecified")) {
            this.materialButton.setTextSize(f);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the elevation")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void Elevation(float f) {
        this.elevation = f;
        this.materialButton.setElevation(f);
    }

    @SimpleProperty(description = "Returns the elevation")
    public float Elevation() {
        return this.elevation;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the text appearance", userVisible = false)
    @DesignerProperty(defaultValue = "unspecified", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXT_APPEARANCE)
    public void TextAppearance(String str) {
        this.textAppearence = str;
        if (str.equalsIgnoreCase("Material3_ActionBar_Title")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_ActionBar_Title"));
            return;
        }
        if (str.equalsIgnoreCase("Material3_ActionBar_Subtitle")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_ActionBar_Subtitle"));
            return;
        }
        if (str.equalsIgnoreCase("Material3_DisplayLarge")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_DisplayLarge"));
            return;
        }
        if (str.equalsIgnoreCase("Material3_DisplayMedium")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_DisplayMedium"));
            return;
        }
        if (str.equalsIgnoreCase("Material3_DisplaySmall")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_DisplaySmall"));
            return;
        }
        if (str.equalsIgnoreCase("TextAppearance_Material3_HeadlineLarge")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_HeadlineLarge"));
            return;
        }
        if (str.equalsIgnoreCase("Material3_HeadlineMedium")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_HeadlineMedium"));
            return;
        }
        if (str.equalsIgnoreCase("Material3_HeadlineSmall")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_HeadlineSmall"));
            return;
        }
        if (str.equalsIgnoreCase("Material3_TitleLarge")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_TitleLarge"));
            return;
        }
        if (str.equalsIgnoreCase("Material3_TitleMedium")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_TitleMedium"));
            return;
        }
        if (str.equalsIgnoreCase("Material3_TitleSmall")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_TitleSmall"));
            return;
        }
        if (str.equalsIgnoreCase("Material3_BodyLarge")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_BodyLarge"));
            return;
        }
        if (str.equalsIgnoreCase("Material3_BodyMedium")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_BodyMedium"));
            return;
        }
        if (str.equalsIgnoreCase("Material3_BodySmall")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_BodySmall"));
            return;
        }
        if (str.equalsIgnoreCase("Material3_LabelLarge")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_LabelLarge"));
        } else if (str.equalsIgnoreCase("Material3_LabelMedium")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_LabelMedium"));
        } else if (str.equalsIgnoreCase("Material3_LabelSmall")) {
            this.materialButton.setTextAppearance(getTextAppearance("TextAppearance_Material3_LabelSmall"));
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the font typeface", userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_TYPEFACE)
    public void FontTypeface(String str) {
        this.fontAwesome = str.equals(Component.TYPEFACE_FONT_AWESOME);
        this.fontTypeface = str;
        TextViewUtil.setFontTypeface(this.container.$form(), this.materialButton, this.fontTypeface, this.bold, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the custom font typeface")
    public void CustomFontTypeFace(String str) {
        if (str == null || str.isEmpty() || str == "") {
            return;
        }
        TextViewUtil.setFontTypeface(this.container.$form(), this.materialButton, str, this.bold, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Whether the font for the text should be bold.  By default, it is not.", userVisible = false)
    public boolean FontBold() {
        return this.bold;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FontBold(boolean z) {
        this.bold = z;
        TextViewUtil.setFontTypeface(this.container.$form(), this.materialButton, this.fontTypeface, z, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Sets if enabled")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean z) {
        this.enabled = z;
        this.materialButton.setEnabled(z);
    }

    @SimpleProperty(description = "Returns if enabled")
    public boolean Enabled() {
        return this.enabled;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the icon")
    @DesignerProperty
    public void Icon(@Asset String str) {
        this.icon = str;
        if (str.equals("")) {
            return;
        }
        try {
            this.materialButton.setIcon(MediaUtil.getBitmapDrawable(this.container.$form(), str));
        } catch (Exception unused) {
        }
    }

    @SimpleProperty
    public String Icon() {
        return this.icon;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the icon tint", userVisible = false)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void IconTint(int i) {
        this.iconTint = i;
        this.materialButton.setIconTint(ColorStateList.valueOf(i));
    }

    @SimpleProperty(description = "Returns the icon tint")
    public int IconTint() {
        return this.iconTint;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the background color", userVisible = false)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.backgroundColor = i;
        MaterialButton materialButton = this.materialButton;
        if (materialButton != null) {
            materialButton.setBackgroundColor(i);
        }
    }

    @SimpleProperty(description = "Returns the background color")
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the ripple color", userVisible = false)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_NONE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void RippleColor(int i) {
        MaterialButton materialButton = this.materialButton;
        if (materialButton != null) {
            materialButton.setRippleColor(ColorStateList.valueOf(i));
        }
    }

    @SimpleEvent(description = "Raises when button is clicked")
    public void Click() {
        EventDispatcher.dispatchEvent(this, "Click", new Object[0]);
    }

    @SimpleEvent(description = "Raises when button is long clicked")
    public void LongClick() {
        EventDispatcher.dispatchEvent(this, "LongClick", new Object[0]);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.mainView;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(description = "Sets the width")
    public void Width(int i) {
        if (i == -1) {
            i = -1;
        }
        super.Width(i);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(description = "Sets the height")
    public void Height(int i) {
        if (i == -1) {
            i = -1;
        }
        super.Height(i);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleFunction(description = "Sets padding to the component")
    public void SetPadding(int i, int i2, int i3, int i4) {
        this.paddingTop2 = i;
        this.paddingBottom2 = i2;
        this.paddingRight2 = i3;
        this.paddingLeft2 = i4;
        refreshPadding();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleProperty(description = "Sets the padding", userVisible = false)
    @DesignerProperty(defaultValue = "16,16,0,0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FOUR)
    public void HeihPadding(String str) {
        String[] strArrSplit = str.split(",");
        this.paddingLeft2 = Integer.parseInt(strArrSplit[0]);
        this.paddingRight2 = Integer.parseInt(strArrSplit[1]);
        this.paddingTop2 = Integer.parseInt(strArrSplit[2]);
        this.paddingBottom2 = Integer.parseInt(strArrSplit[3]);
        refreshPadding();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleProperty(description = "Sets paddings", userVisible = false)
    @DesignerProperty(defaultValue = "5,5,0,0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FOUR)
    public void HeihMargin(String str) {
        super.HeihMargin(str);
    }

    private void refreshPadding() {
        this.materialButton.setPadding(px(this.paddingLeft2), px(this.paddingTop2), px(this.paddingRight2), px(this.paddingBottom2));
    }

    private void updateAppearance() {
        this.materialButton.setBackgroundColor(this.backgroundColor);
        this.materialButton.setTextColor(this.argb);
    }

    private void addListeners() {
        this.materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.NiotronMaterialButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NiotronMaterialButton.this.Click();
            }
        });
        this.materialButton.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.google.appinventor.components.runtime.NiotronMaterialButton.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                NiotronMaterialButton.this.LongClick();
                return true;
            }
        });
    }

    private int getTextAppearance(String str) {
        try {
            return R.style.class.getField(str).getInt(null);
        } catch (Exception unused) {
            return 0;
        }
    }
}
