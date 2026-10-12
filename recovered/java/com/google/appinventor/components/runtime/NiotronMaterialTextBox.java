package com.google.appinventor.components.runtime;

import android.content.Context;
import android.content.res.ColorStateList;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.google.appinventor.components.annotations.Asset;
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
public final class NiotronMaterialTextBox extends AndroidViewComponent {
    private static final String LOG_TAG = "NiotronMaterialTextBox";
    private int argb;
    private int backgroundColor;
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
    private int hintColor;
    private int inputType;
    private String[] inputTypeArgs;
    private boolean isBordered;
    private boolean isRepl;
    private boolean italic;
    private android.widget.LinearLayout mainView;
    private int maxLength;
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
    private boolean singleLine;
    private float size;
    private String startIcon;
    private int startIconTint;
    private String text;
    private TextInputLayout textInputLayout;
    private TextInputEditText textInputeditText;
    private float topleft;
    private float topright;

    public NiotronMaterialTextBox(ComponentContainer componentContainer) {
        super(componentContainer);
        this.hint = "Hint";
        this.singleLine = true;
        this.argb = -16777216;
        this.hintColor = Component.COLOR_GRAY;
        this.size = 14.0f;
        this.topleft = px(5);
        this.topright = px(5);
        this.bottomleft = px(5);
        this.bottomright = px(5);
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
        this.sborderColor = -4473925;
        this.backgroundColor = 16777215;
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
    @DesignerProperty(alwaysSend = true, defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Bordered(boolean z) {
        this.isBordered = z;
        if (!z) {
            LayoutInflater layoutInflater = (LayoutInflater) this.container.$context().getSystemService("layout_inflater");
            try {
                this.rid = R.layout.class.getField("niotronmaterialtextfield2").getInt(null);
            } catch (Exception unused) {
            }
            TextInputLayout textInputLayout = (TextInputLayout) layoutInflater.inflate(this.rid, (ViewGroup) null);
            this.textInputLayout = textInputLayout;
            this.textInputeditText = (TextInputEditText) textInputLayout.findViewWithTag("textbox");
        } else {
            LayoutInflater layoutInflater2 = (LayoutInflater) this.container.$context().getSystemService("layout_inflater");
            try {
                this.rid = R.layout.class.getField("niotronmaterialtextfield1").getInt(null);
            } catch (Exception unused2) {
            }
            TextInputLayout textInputLayout2 = (TextInputLayout) layoutInflater2.inflate(this.rid, (ViewGroup) null);
            this.textInputLayout = textInputLayout2;
            this.textInputeditText = (TextInputEditText) textInputLayout2.findViewWithTag("textbox");
        }
        this.textInputLayout.setBoxCornerRadii(this.topleft, this.topright, this.bottomleft, this.bottomright);
        this.textInputLayout.setEndIconMode(this.endIconMode);
        this.textInputLayout.setEndIconTintList(ColorStateList.valueOf(this.endIconTint));
        this.textInputLayout.setStartIconTintList(ColorStateList.valueOf(this.startIconTint));
        this.textInputLayout.setBoxStrokeColorStateList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_focused}, new int[0]}, new int[]{this.borderColor, this.sborderColor}));
        this.textInputLayout.setHintTextColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_focused}, new int[0]}, new int[]{this.borderColor, this.hintColor}));
        this.mainView.removeAllViews();
        this.mainView.addView(this.textInputLayout, new LinearLayout.LayoutParams(-1, -1));
        updateAppearance();
        addListeners();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the background color")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_NONE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.backgroundColor = i;
        TextInputLayout textInputLayout = this.textInputLayout;
        if (textInputLayout != null) {
            textInputLayout.setBoxBackgroundColor(i);
        }
    }

    @SimpleProperty(description = "Returns the background color")
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Focused bordered color")
    @DesignerProperty(defaultValue = "&HFF6200EE", editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void FocusedBorderColor(int i) {
        this.borderColor = i;
        this.textInputLayout.setBoxStrokeColorStateList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_focused}, new int[0]}, new int[]{this.borderColor, this.sborderColor}));
        this.textInputLayout.setHintTextColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_focused}, new int[0]}, new int[]{this.borderColor, this.hintColor}));
        this.textInputeditText.invalidate();
        this.textInputLayout.invalidate();
    }

    @SimpleProperty(description = "Focused border color")
    public int FocusedBorderColor() {
        return this.borderColor;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Secondary border color")
    @DesignerProperty(defaultValue = "&HFFBBBBBB", editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void SecondaryBorderColor(int i) {
        this.sborderColor = i;
        this.textInputLayout.setBoxStrokeColorStateList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_focused}, new int[0]}, new int[]{this.borderColor, this.sborderColor}));
        this.textInputeditText.invalidate();
        this.textInputLayout.invalidate();
    }

    @SimpleProperty(description = "Secondary border color")
    public int SecondaryBorderColor() {
        return this.sborderColor;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set hint for material textbox")
    @DesignerProperty(defaultValue = "Hint", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Hint(String str) {
        this.hint = str;
        this.textInputLayout.setHint(str);
    }

    @SimpleProperty(description = "Returns the hint")
    public String Hint() {
        return this.textInputeditText.getHint().toString();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set to to, to make the text box a single line textbox")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void SingleLine(boolean z) {
        this.singleLine = z;
        this.textInputeditText.setSingleLine(z);
    }

    @SimpleProperty(description = "Get single line")
    public boolean SingleLine() {
        return this.singleLine;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set text color of the textbox")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLACK, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int i) {
        this.argb = i;
        this.textInputeditText.setTextColor(i);
    }

    @SimpleProperty(description = "Returns the text color")
    public int TextColor() {
        return this.argb;
    }

    public int HintColor() {
        return this.hintColor;
    }

    public void HintColor(int i) {
        this.hintColor = i;
        this.textInputLayout.setHintTextColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_focused}, new int[0]}, new int[]{this.borderColor, this.hintColor}));
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specify the input type of the text box, Possible integer values are\n1 for normal text\n2 for number only\n3 for email address\n4 for password text\n5 for phone number\n6 for date time")
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_INPUT_TYPE)
    public void InputType(int i) {
        this.inputType = i;
        if (i == 1) {
            this.textInputeditText.setInputType(131073);
            return;
        }
        if (i == 2) {
            this.textInputeditText.setInputType(12290);
            return;
        }
        if (i == 3) {
            this.textInputeditText.setInputType(32);
            return;
        }
        if (i == 4) {
            this.textInputLayout.setPasswordVisibilityToggleEnabled(true);
            this.textInputeditText.setInputType(129);
        } else if (i == 5) {
            this.textInputeditText.setInputType(3);
        } else if (i == 6) {
            this.textInputeditText.setInputType(4);
        }
    }

    @SimpleProperty(description = "Returns the input type")
    public int InputType() {
        return this.inputType;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the text")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Text(String str) {
        this.text = str;
        this.textInputeditText.setText(str);
        if (str.length() > 0) {
            this.textInputeditText.setSelection(str.length() - 1);
        }
    }

    @SimpleFunction(description = "Select text")
    public void SelectText(int i, int i2) {
        this.textInputeditText.setSelection(i - 1, i2 - 1);
    }

    @SimpleFunction(description = "Set cursor position")
    public void SetCursorPosition(int i) {
        this.textInputeditText.setSelection(i - 1);
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

    @SimpleProperty(description = "Get text size")
    public float TextSize() {
        return this.size;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set the helper text, It will be shown on the bottom of any textbox. To disable it use empty string")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void HelperText(String str) {
        this.helperText = str;
        if (str == null || str == "") {
            this.textInputLayout.setHelperText(null);
            this.textInputLayout.setHelperTextEnabled(false);
        } else {
            this.textInputLayout.setHelperTextEnabled(true);
            this.textInputLayout.setHelperText(this.helperText);
        }
    }

    @SimpleProperty(description = "Returns helper text")
    public String HelperText() {
        return this.helperText;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set the error text, It will be shown on the bottom of any textbox")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ErrorText(String str) {
        this.errorText = str;
    }

    @SimpleFunction(description = "Shows error message")
    public void ShowErrorMessage(boolean z) {
        if (!z) {
            this.textInputLayout.setError(null);
            this.textInputLayout.setErrorEnabled(false);
        } else {
            this.textInputLayout.setErrorEnabled(true);
            this.textInputLayout.setError(this.errorText);
        }
    }

    @SimpleProperty(description = "Returns the error text")
    public String ErrorText() {
        return this.errorText;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the maximum length of the counter, It will be shown on the bottom left corner of any textbox. To disable it use 0 number")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void MaxLength(int i) {
        this.maxLength = i;
        if (i == 0) {
            this.textInputLayout.setCounterMaxLength(0);
            this.textInputLayout.setCounterEnabled(false);
        } else {
            this.textInputLayout.setCounterEnabled(true);
            this.textInputLayout.setCounterMaxLength(this.maxLength);
        }
    }

    @SimpleProperty(description = "Returns max length")
    public int MaxLength() {
        return this.maxLength;
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

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Top right radious")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    @Deprecated
    public void RadiousTopRight(int i) {
        float fPx = px(i);
        this.topright = fPx;
        this.textInputLayout.setBoxCornerRadii(this.topleft, fPx, this.bottomleft, this.bottomright);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Top left radious")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    @Deprecated
    public void RadiousTopLeft(int i) {
        float fPx = px(i);
        this.topleft = fPx;
        this.textInputLayout.setBoxCornerRadii(fPx, this.topright, this.bottomleft, this.bottomright);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Bottom right radious")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    @Deprecated
    public void RadiousBottomRight(int i) {
        float fPx = px(i);
        this.bottomright = fPx;
        this.textInputLayout.setBoxCornerRadii(this.topleft, this.topright, this.bottomleft, fPx);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Bottom left radious")
    @DesignerProperty(defaultValue = Component.TYPEFACE_FONT_AWESOME, editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    @Deprecated
    public void RadiousBottomLeft(int i) {
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

    @SimpleProperty(description = "Sets font bold", userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FontBold(boolean z) {
        this.bold = z;
        TextViewUtil.setFontTypeface(this.container.$form(), this.textInputeditText, this.fontTypeface, z, this.italic);
    }

    @SimpleFunction(description = "Hide the keyboard.  Only multiline text boxes need this. \tSingle line text boxes close the keyboard when the users presses the Done key.")
    public void HideKeyboard() {
        ((InputMethodManager) this.container.$context().getSystemService("input_method")).hideSoftInputFromWindow(this.textInputLayout.getWindowToken(), 0);
    }

    @SimpleFunction(description = "Show the keyboard.")
    public void ShowKeyboard() {
        this.textInputLayout.requestFocus();
        ((InputMethodManager) this.container.$context().getSystemService("input_method")).showSoftInput(this.textInputLayout, 1);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Sets enabled")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean z) {
        this.enabled = z;
        this.textInputLayout.setEnabled(z);
    }

    @SimpleProperty(description = "Returns enabled")
    public boolean Enabled() {
        return this.enabled;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets start icon")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void StartIcon(@Asset String str) {
        this.startIcon = str;
        if (str.equals("")) {
            return;
        }
        try {
            this.textInputLayout.setStartIconDrawable(MediaUtil.getBitmapDrawable(this.container.$form(), str));
        } catch (Exception unused) {
        }
    }

    @SimpleProperty(description = "Returns the start icon")
    public String StartIcon() {
        return this.startIcon;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets start icon tint", userVisible = false)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void StartIconTint(int i) {
        this.startIconTint = i;
        this.textInputLayout.setStartIconTintList(ColorStateList.valueOf(i));
    }

    @SimpleProperty(description = "Returns start icon tint")
    public int StartIconTint() {
        return this.startIconTint;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets end icon mode")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void EndIconMode(int i) {
        this.endIconMode = i;
        this.textInputLayout.setEndIconMode(i);
    }

    @SimpleProperty(description = "Returns end icon mode")
    public int EndIconMode() {
        return this.endIconMode;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void EndIconTint(int i) {
        this.endIconTint = i;
        this.textInputLayout.setEndIconTintList(ColorStateList.valueOf(i));
    }

    @SimpleProperty(description = "Returns end icon tint")
    public int EndIconTint() {
        return this.endIconTint;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets if cursor visible")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void CursorVisible(boolean z) {
        this.textInputeditText.setCursorVisible(z);
    }

    @SimpleEvent(description = "Raises when focus changes")
    public void OnFocusChange(boolean z) {
        EventDispatcher.dispatchEvent(this, "OnFocusChange", Boolean.valueOf(z));
    }

    @SimpleEvent(description = "Raises when text changes")
    public void OnTextChange(String str) {
        EventDispatcher.dispatchEvent(this, "OnTextChange", str);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.mainView;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(description = "Sets width")
    public void Width(int i) {
        if (i == -1) {
            i = ComponentConstants.TEXTBOX_PREFERRED_WIDTH;
        }
        super.Width(i);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(description = "Sets height")
    public void Height(int i) {
        if (i == -1) {
            i = 56;
        }
        super.Height(i);
    }

    private void updateAppearance() {
        this.textInputLayout.setHint(this.hint);
        this.textInputeditText.setSingleLine(this.singleLine);
        this.textInputeditText.setTextColor(this.argb);
        this.textInputeditText.setHintTextColor(this.hintColor);
        this.textInputeditText.setTextSize(this.size);
        this.textInputLayout.setBoxCornerRadii(this.topleft, this.topright, this.bottomleft, this.bottomright);
        int i = this.inputType;
        if (i == 1) {
            this.textInputeditText.setInputType(1);
        } else if (i == 2) {
            this.textInputeditText.setInputType(2);
        } else if (i == 3) {
            this.textInputeditText.setInputType(32);
        } else if (i == 4) {
            this.textInputeditText.setInputType(129);
        } else if (i == 5) {
            this.textInputeditText.setInputType(3);
        } else if (i == 6) {
            this.textInputeditText.setInputType(4);
        }
        this.textInputeditText.invalidate();
        this.textInputLayout.invalidate();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleFunction(description = "Sets margin")
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
    @SimpleProperty(description = "Sets margin", userVisible = false)
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
    @SimpleProperty(description = "Sets padding", userVisible = false)
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

    private void addListeners() {
        this.textInputeditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.google.appinventor.components.runtime.NiotronMaterialTextBox.1
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                NiotronMaterialTextBox.this.OnFocusChange(z);
            }
        });
        this.textInputeditText.addTextChangedListener(new TextWatcher() { // from class: com.google.appinventor.components.runtime.NiotronMaterialTextBox.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                NiotronMaterialTextBox.this.OnTextChange(charSequence.toString());
            }
        });
    }
}
