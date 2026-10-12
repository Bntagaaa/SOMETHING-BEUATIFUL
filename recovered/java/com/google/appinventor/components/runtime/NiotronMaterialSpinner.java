package com.google.appinventor.components.runtime;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.ComponentConstants;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.TextViewUtil;

@DesignerComponent(category = ComponentCategory.MATERIAL, description = "New Material design textbox. Helps to create textbox with matial design provided by google", iconName = "images/material_textbox.png", nonVisible = false, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronMaterialSpinner extends AndroidViewComponent {
    private static final String LOG_TAG = "NiotronMaterialTextBox";
    private int argb;
    private boolean bold;
    int borderColor;
    private float bottomleft;
    private float bottomright;
    private ComponentContainer container;
    private Context context;
    private boolean enabled;
    private int endIconMode;
    private int endIconTint;
    private String errorText;
    private boolean fontAwesome;
    private String fontTypeface;
    private String helperText;
    private String hint;
    private int inputType;
    private String[] inputTypeArgs;
    private boolean isBordered;
    private boolean isRepl;
    private boolean italic;
    private android.widget.LinearLayout mainView;
    private int paddingBottom;
    private int paddingBottom2;
    private int paddingLeft;
    private int paddingLeft2;
    private int paddingRight;
    private int paddingRight2;
    private int paddingTop;
    private int paddingTop2;
    private int rid;
    int sborderColor;
    private float size;
    private String startIcon;
    private int startIconTint;
    private String text;
    private TextInputLayout textInputLayout;
    private AppCompatAutoCompleteTextView textInputeditText;
    private float topleft;
    private float topright;

    public NiotronMaterialSpinner(ComponentContainer componentContainer) {
        super(componentContainer);
        this.hint = "Hint";
        this.argb = -16777216;
        this.size = 14.0f;
        this.topleft = 5.0f;
        this.topright = 5.0f;
        this.bottomleft = 5.0f;
        this.bottomright = 5.0f;
        this.helperText = "";
        this.errorText = "";
        this.text = "";
        this.enabled = true;
        this.paddingLeft = 0;
        this.paddingTop = 0;
        this.paddingRight = 0;
        this.paddingBottom = 0;
        this.paddingLeft2 = 0;
        this.paddingTop2 = 0;
        this.paddingRight2 = 0;
        this.paddingBottom2 = 0;
        this.borderColor = Component.COLOR_THEME;
        this.sborderColor = -6381922;
        this.container = componentContainer;
        this.context = componentContainer.$context();
        this.isRepl = componentContainer.$form() instanceof ReplForm;
        this.mainView = new android.widget.LinearLayout(this.context);
        componentContainer.$add(this);
        Width(-1);
        Height(-1);
        HeihMargin("5,5,5,5");
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set to true if to create a material textbox with a outline background", userVisible = false)
    @DesignerProperty(alwaysSend = true, defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Bordered(boolean z) {
        this.isBordered = z;
        if (!z) {
            LayoutInflater layoutInflater = (LayoutInflater) this.container.$context().getSystemService("layout_inflater");
            try {
                this.rid = R.layout.class.getField("niotronmaterialspinner2").getInt(null);
            } catch (Exception unused) {
            }
            TextInputLayout textInputLayout = (TextInputLayout) layoutInflater.inflate(this.rid, (ViewGroup) null);
            this.textInputLayout = textInputLayout;
            this.textInputeditText = (AppCompatAutoCompleteTextView) textInputLayout.findViewWithTag("spinner");
        } else {
            LayoutInflater layoutInflater2 = (LayoutInflater) this.container.$context().getSystemService("layout_inflater");
            try {
                this.rid = R.layout.class.getField("niotronmaterialspinner1").getInt(null);
            } catch (Exception unused2) {
            }
            TextInputLayout textInputLayout2 = (TextInputLayout) layoutInflater2.inflate(this.rid, (ViewGroup) null);
            this.textInputLayout = textInputLayout2;
            this.textInputeditText = (AppCompatAutoCompleteTextView) textInputLayout2.findViewWithTag("spinner");
        }
        this.textInputeditText.setKeyListener(null);
        this.textInputLayout.setBoxCornerRadii(this.topleft, this.topright, this.bottomleft, this.bottomright);
        this.textInputLayout.setStartIconTintList(ColorStateList.valueOf(this.startIconTint));
        this.textInputLayout.setBoxStrokeColorStateList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_focused}, new int[0]}, new int[]{this.borderColor, this.sborderColor}));
        this.mainView.removeAllViews();
        this.mainView.addView(this.textInputLayout, new LinearLayout.LayoutParams(-1, -1));
        updateAppearance();
        addListeners();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Focused border color")
    @DesignerProperty(defaultValue = "&HFF6200EE", editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void FocusedBorderColor(int i) {
        this.borderColor = i;
        this.textInputLayout.setBoxStrokeColorStateList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_focused}, new int[0]}, new int[]{this.borderColor, this.sborderColor}));
    }

    @SimpleProperty(description = "Returns focused border color")
    public int FocusedBorderColor() {
        return this.borderColor;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Secondary border color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLACK, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void SecondaryBorderColor(int i) {
        this.sborderColor = i;
        this.textInputLayout.setBoxStrokeColorStateList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_focused}, new int[0]}, new int[]{this.borderColor, this.sborderColor}));
    }

    @SimpleProperty(description = "Secondary border color")
    public int SecondaryBorderColor() {
        return this.sborderColor;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set hint for material spinner")
    @DesignerProperty(defaultValue = "Hint", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Hint(String str) {
        this.hint = str;
        this.textInputLayout.setHint(str);
    }

    @SimpleProperty(description = "Returns the hint")
    public String Hint() {
        return this.textInputeditText.getHint().toString();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set text color of the spinner")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLACK, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int i) {
        this.argb = i;
        this.textInputeditText.setTextColor(i);
    }

    @SimpleProperty(description = "Returns the text color")
    public int TextColor() {
        return this.argb;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the text")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Text(String str) {
        this.text = str;
        this.textInputeditText.setText(str);
    }

    @SimpleProperty(description = "returns the text")
    public String Text() {
        return this.textInputeditText.getText().toString();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the text size")
    @DesignerProperty(defaultValue = "14.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void TextSize(float f) {
        this.size = f;
        this.textInputeditText.setTextSize(f);
    }

    @SimpleProperty(description = "Returns the text size")
    public float TextSize() {
        return this.size;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Top right radious")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void RadiusTopRight(int i) {
        float fPx = px(i);
        this.topright = fPx;
        this.textInputLayout.setBoxCornerRadii(this.topleft, fPx, this.bottomleft, this.bottomright);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Top left radious")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void RadiusTopLeft(int i) {
        float fPx = px(i);
        this.topleft = fPx;
        this.textInputLayout.setBoxCornerRadii(fPx, this.topright, this.bottomleft, this.bottomright);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Bottom right radious")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void RadiusBottomRight(int i) {
        float fPx = px(i);
        this.bottomright = fPx;
        this.textInputLayout.setBoxCornerRadii(this.topleft, this.topright, this.bottomleft, fPx);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Bottom left radious")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_FLOAT)
    public void RadiusBottomLeft(int i) {
        float fPx = px(i);
        this.bottomleft = fPx;
        this.textInputLayout.setBoxCornerRadii(this.topleft, this.topright, fPx, this.bottomright);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets font typeface", userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_TYPEFACE)
    public void FontTypeface(String str) {
        this.fontAwesome = str.equals(Component.TYPEFACE_FONT_AWESOME);
        this.fontTypeface = str;
        TextViewUtil.setFontTypeface(this.container.$form(), this.textInputeditText, this.fontTypeface, this.bold, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets custom font typeface")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void CustomFontTypeFace(String str) {
        if (str == null || str.isEmpty() || str == "") {
            return;
        }
        TextViewUtil.setFontTypeface(this.container.$form(), this.textInputeditText, str, this.bold, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Whether the font for the text should be bold.  By default, it is not.", userVisible = false)
    public boolean FontBold() {
        return this.bold;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FontBold(boolean z) {
        this.bold = z;
        TextViewUtil.setFontTypeface(this.container.$form(), this.textInputeditText, this.fontTypeface, z, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set enabled")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean z) {
        this.enabled = z;
        this.textInputLayout.setEnabled(z);
    }

    @SimpleProperty(description = "Get enabled")
    public boolean Enabled() {
        return this.enabled;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set start icon")
    @DesignerProperty
    public void StartIcon(String str) {
        this.startIcon = str;
        if (str.equals("")) {
            return;
        }
        try {
            this.textInputLayout.setStartIconDrawable(MediaUtil.getBitmapDrawable(this.container.$form(), str));
        } catch (Exception unused) {
        }
    }

    @SimpleProperty(description = "Returns start icon")
    public String StartIcon() {
        return this.startIcon;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set start icon tint", userVisible = false)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void StartIconTint(int i) {
        this.startIconTint = i;
        this.textInputLayout.setStartIconTintList(ColorStateList.valueOf(i));
    }

    @SimpleProperty(description = "Gets start icon tint")
    public int StartIconTint() {
        return this.startIconTint;
    }

    @SimpleEvent(description = "Raises when focus changes")
    public void OnFocusChange(boolean z) {
        EventDispatcher.dispatchEvent(this, "OnFocusChange", Boolean.valueOf(z));
    }

    @SimpleEvent(description = "Raises when item is selected")
    public void ItemClick(int i) {
        EventDispatcher.dispatchEvent(this, "ItemClick", Integer.valueOf(i));
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set icon from string")
    @DesignerProperty
    public void ItemsFromString(String str) {
        this.textInputeditText.setAdapter(new ArrayAdapter(this.context, android.R.layout.simple_list_item_1, str.split(",")));
        this.textInputeditText.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.google.appinventor.components.runtime.NiotronMaterialSpinner.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                NiotronMaterialSpinner.this.ItemClick(i);
            }
        });
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.mainView;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(description = "Sets the width")
    public void Width(int i) {
        if (i == -1) {
            i = ComponentConstants.TEXTBOX_PREFERRED_WIDTH;
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
    @SimpleFunction(description = "Sets the margin")
    public void SetMargin(int i, int i2, int i3, int i4) {
        this.paddingTop = i;
        this.paddingBottom = i2;
        this.paddingRight = i3;
        this.paddingLeft = i4;
        refreshMargin();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleFunction(description = "Sets padding")
    public void SetPadding(int i, int i2, int i3, int i4) {
        this.paddingTop2 = i;
        this.paddingBottom2 = i2;
        this.paddingRight2 = i3;
        this.paddingLeft2 = i4;
        refreshPadding();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleProperty(description = "Sets the margin", userVisible = false)
    @DesignerProperty(defaultValue = "5,5,5,5", editorType = PropertyTypeConstants.PROPERTY_TYPE_FOUR)
    public void HeihMargin(String str) {
        String[] strArrSplit = str.split(",");
        this.paddingLeft = Integer.parseInt(strArrSplit[0]);
        this.paddingRight = Integer.parseInt(strArrSplit[1]);
        this.paddingTop = Integer.parseInt(strArrSplit[2]);
        this.paddingBottom = Integer.parseInt(strArrSplit[3]);
        refreshMargin();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleProperty(description = "Sets the padding", userVisible = false)
    @DesignerProperty(defaultValue = "17,17,17,17", editorType = PropertyTypeConstants.PROPERTY_TYPE_FOUR)
    public void HeihPadding(String str) {
        String[] strArrSplit = str.split(",");
        this.paddingLeft2 = Integer.parseInt(strArrSplit[0]);
        this.paddingRight2 = Integer.parseInt(strArrSplit[1]);
        this.paddingTop2 = Integer.parseInt(strArrSplit[2]);
        this.paddingBottom2 = Integer.parseInt(strArrSplit[3]);
        refreshPadding();
    }

    private void refreshMargin() {
        View view = getView();
        if (view.getLayoutParams() instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
            layoutParams.setMargins(px(this.paddingLeft), px(this.paddingTop), px(this.paddingRight), px(this.paddingBottom));
            view.setLayoutParams(layoutParams);
        } else {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view.getLayoutParams();
            layoutParams2.setMargins(px(this.paddingLeft), px(this.paddingTop), px(this.paddingRight), px(this.paddingBottom));
            view.setLayoutParams(layoutParams2);
        }
    }

    private void refreshPadding() {
        this.textInputeditText.setPadding(px(this.paddingLeft2), px(this.paddingTop2), px(this.paddingRight2), px(this.paddingBottom2));
    }

    private void updateAppearance() {
        this.textInputLayout.setHint(this.hint);
        this.textInputeditText.setTextColor(this.argb);
        this.textInputeditText.setTextSize(this.size);
        this.textInputLayout.setBoxCornerRadii(this.topleft, this.topright, this.bottomleft, this.bottomright);
    }

    private void addListeners() {
        this.textInputeditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.google.appinventor.components.runtime.NiotronMaterialSpinner.2
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                NiotronMaterialSpinner.this.OnFocusChange(z);
            }
        });
    }
}
