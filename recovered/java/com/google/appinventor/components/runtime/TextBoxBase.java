package com.google.appinventor.components.runtime;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentConstants;
import com.google.appinventor.components.common.HtmlEntities;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.EclairUtil;
import com.google.appinventor.components.runtime.util.TextViewUtil;
import com.google.appinventor.components.runtime.util.ViewUtil;

@SimpleObject
/* loaded from: classes.dex */
public abstract class TextBoxBase extends AndroidViewComponent implements View.OnFocusChangeListener, TextWatcher, AccessibleComponent {
    private int backgroundColor;
    private boolean bold;
    private Context context;
    private Drawable defaultTextBoxDrawable;
    private String errorText;
    private boolean fontAwesome;
    private String fontTypeface;
    private String hint;
    private int hintColor;
    private int hintColorDefault;
    private boolean isBigText;
    private boolean isHighContrast;
    private boolean isRepl;
    private boolean italic;
    private String lastText;
    private int textAlignment;
    private int textColor;
    protected final EditText view;

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public TextBoxBase(ComponentContainer componentContainer, EditText editText) {
        super(componentContainer);
        this.hintColor = 0;
        this.errorText = "";
        this.isHighContrast = false;
        this.isBigText = false;
        this.lastText = "";
        this.view = editText;
        this.context = componentContainer.$context();
        this.hintColorDefault = editText.getCurrentHintTextColor();
        if (Build.VERSION.SDK_INT >= 24) {
            EclairUtil.disableSuggestions(editText);
        }
        editText.setOnFocusChangeListener(this);
        this.defaultTextBoxDrawable = editText.getBackground();
        componentContainer.$add(this);
        componentContainer.setChildWidth(this, ComponentConstants.TEXTBOX_PREFERRED_WIDTH);
        TextAlignment(0);
        this.isRepl = componentContainer.$form() instanceof ReplForm;
        Enabled(true);
        this.fontTypeface = "0";
        TextViewUtil.setFontTypeface(componentContainer.$form(), editText, this.fontTypeface, this.bold, this.italic);
        FontSize(14.0f);
        Hint("");
        if (this.isHighContrast || componentContainer.$form().HighContrast()) {
            editText.setHintTextColor(-256);
        } else {
            editText.setHintTextColor(this.hintColorDefault);
        }
        Text("");
        editText.addTextChangedListener(this);
        TextColor(0);
        HintColor(Component.COLOR_GRAY);
        BackgroundColor(0);
        HeihPadding("10,10,10,10");
        editText.addTextChangedListener(new TextWatcher() { // from class: com.google.appinventor.components.runtime.TextBoxBase.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                TextBoxBase.this.OnTextChange(charSequence.toString());
            }
        });
    }

    public TextBoxBase(ComponentContainer componentContainer, EditText editText, String str) {
        super(componentContainer);
        this.hintColor = 0;
        this.errorText = "";
        this.isHighContrast = false;
        this.isBigText = false;
        this.lastText = "";
        this.view = editText;
        this.context = componentContainer.$context();
        if (Build.VERSION.SDK_INT >= 24) {
            EclairUtil.disableSuggestions(editText);
        }
        editText.setOnFocusChangeListener(this);
        this.defaultTextBoxDrawable = editText.getBackground();
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.view;
    }

    @SimpleEvent(description = "Event raised when the %type% is selected for input, such as by the user touching it.")
    public void GotFocus() {
        EventDispatcher.dispatchEvent(this, "GotFocus", new Object[0]);
    }

    @SimpleEvent(description = "Event raised when the %type% is no longer selected for input, such as if the user touches a different text box.")
    public void LostFocus() {
        EventDispatcher.dispatchEvent(this, "LostFocus", new Object[0]);
    }

    @SimpleEvent(description = "Event raised when the text of the %type% is changed, either by the user or the program.")
    public void TextChanged() {
        EventDispatcher.dispatchEvent(this, "TextChanged", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Whether the text should be left justified, centered, or right justified.  By default, text is left justified.", userVisible = false)
    public int TextAlignment() {
        return this.textAlignment;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXTALIGNMENT)
    public void TextAlignment(int i) {
        this.textAlignment = i;
        TextViewUtil.setAlignment(this.view, i, false);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The background color of the input box.  You can choose a color by name in the Designer or in the Blocks Editor.  The default background color is 'default' (shaded 3-D look).")
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.backgroundColor = i;
        if (i != 0) {
            TextViewUtil.setBackgroundColor(this.view, i);
        } else if (this.isHighContrast || this.container.$form().$form().HighContrast()) {
            TextViewUtil.setBackgroundColor(this.view, -16777216);
        } else {
            ViewUtil.setBackgroundDrawable(this.view, this.defaultTextBoxDrawable);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the user can enter text into the %type%.  By default, this is true.")
    public boolean Enabled() {
        return TextViewUtil.isEnabled(this.view);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean z) {
        TextViewUtil.setEnabled(this.view, z);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Whether the font for the text should be bold.  By default, it is not.", userVisible = false)
    public boolean FontBold() {
        return this.bold;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FontBold(boolean z) {
        this.bold = z;
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, this.fontTypeface, z, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Whether the text should appear in italics.  By default, it does not.", userVisible = false)
    public boolean FontItalic() {
        return this.italic;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FontItalic(boolean z) {
        this.italic = z;
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, this.fontTypeface, this.bold, z);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The font size for the text.  By default, it is 14.0 points.")
    public float FontSize() {
        return TextViewUtil.getFontSize(this.view, this.container.$context());
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "14.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void FontSize(float f) {
        if (f == 14.0f && this.container.$form().BigDefaultText()) {
            TextViewUtil.setFontSize(this.view, 24.0f);
        } else {
            TextViewUtil.setFontSize(this.view, f);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The font for the text.  The value can be changed in the Designer.", userVisible = false)
    public String FontTypeface() {
        return this.fontTypeface;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_TYPEFACE)
    public void FontTypeface(String str) {
        this.fontTypeface = str;
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, this.fontTypeface, this.bold, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void CustomFontTypeFace(String str) {
        if (str == null || str.isEmpty() || str == "") {
            return;
        }
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, str, this.bold, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set the error text, It will be shown on the bottom of any textbox. To disable it use empty string")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ErrorText(String str) {
        this.errorText = str;
    }

    @SimpleProperty(description = "returns the error text")
    public String ErrorText() {
        return this.errorText;
    }

    @SimpleFunction(description = "Shows the error message")
    public void ShowErrorMessage(boolean z) {
        if (!z) {
            this.view.setError(null);
        } else {
            this.view.setError(this.errorText);
        }
    }

    @SimpleFunction(description = "Selects the text with given range")
    public void SelectText(int i, int i2) {
        this.view.setSelection(i - 1, i2 - 1);
    }

    @SimpleFunction(description = "Sets the cursor position into the given index")
    public void SetCursorPosition(int i) {
        this.view.setSelection(i - 1);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Text that should appear faintly in the %type% to provide a hint as to what the user should enter.  This can only be seen if the Text property is empty.")
    public String Hint() {
        return this.hint;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Property for getting the color of hint text")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Hint(String str) {
        this.hint = str;
        this.view.setHint(str);
        this.view.invalidate();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Property for setting the color of hint text")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_GRAY, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void HintColor(int i) {
        this.hintColor = i;
        if (i != 0) {
            this.view.setHintTextColor(i);
        } else if (this.isHighContrast || this.container.$form().HighContrast()) {
            this.view.setHintTextColor(-256);
        } else {
            this.view.setHintTextColor(this.hintColorDefault);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String Text() {
        return TextViewUtil.getText(this.view);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The text in the %type%, which can be set by the programmer in the Designer or Blocks Editor, or it can be entered by the user (unless the <code>Enabled</code> property is false).")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXTAREA)
    public void Text(String str) {
        this.lastText = this.view.getText().toString();
        if (this.fontAwesome) {
            try {
                TextViewUtil.setText(this.view, HtmlEntities.decodeHtmlText("&#x" + str + ";"));
                return;
            } catch (IllegalArgumentException unused) {
                TextViewUtil.setText(this.view, str);
                return;
            }
        }
        TextViewUtil.setText(this.view, str);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The color for the text.  You can choose a color by name in the Designer or in the Blocks Editor.  The default text color is black.")
    public int TextColor() {
        return this.textColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int i) {
        this.textColor = i;
        if (i != 0) {
            TextViewUtil.setTextColor(this.view, i);
            return;
        }
        if (this.isHighContrast || this.container.$form().HighContrast()) {
            TextViewUtil.setTextColor(this.view, -1);
        } else {
            TextViewUtil.setTextColor(this.view, this.container.$form().isDarkTheme() ? -1 : -16777216);
        }
    }

    @SimpleFunction(description = "Repositions the cursor of the %type% before the character at the given 1-indexed position. If the given position is larger than the length of the %type%, the cursor will be moved to the end of the text; and if the given position is smaller or equal to 1, the cursor will be moved to the start.")
    public void MoveCursorTo(int i) {
        int length = this.view.getText().toString().length();
        if (i > length) {
            this.view.setSelection(length);
        } else if (i <= 1) {
            this.view.setSelection(0);
        } else {
            this.view.setSelection(i - 1);
        }
    }

    @SimpleFunction(description = "Repositions the cursor to the end of the %type%'s text.")
    public void MoveCursorToEnd() {
        MoveCursorTo(this.view.getText().length() + 1);
    }

    @SimpleFunction(description = "Repositions the cursor to the start of the %type%'s text.")
    public void MoveCursorToStart() {
        MoveCursorTo(1);
    }

    @SimpleEvent(description = "Raises when text changes")
    public void OnTextChange(String str) {
        EventDispatcher.dispatchEvent(this, "OnTextChange", str);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void CursorVisible(boolean z) {
        this.view.setCursorVisible(z);
    }

    @SimpleFunction(description = "Sets the %type% active.")
    public void RequestFocus() {
        this.view.requestFocus();
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (!this.lastText.equals(this.view.getText().toString())) {
            TextChanged();
        }
        this.lastText = charSequence.toString();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (z) {
            GotFocus();
        } else {
            LostFocus();
        }
    }

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public void setHighContrast(boolean z) {
        if (this.backgroundColor == 0) {
            if (z) {
                TextViewUtil.setBackgroundColor(this.view, -16777216);
            } else {
                ViewUtil.setBackgroundDrawable(this.view, this.defaultTextBoxDrawable);
            }
        }
        if (this.textColor == 0) {
            if (z) {
                TextViewUtil.setTextColor(this.view, -1);
                this.view.setHintTextColor(-256);
            } else {
                TextViewUtil.setTextColor(this.view, this.container.$form().isDarkTheme() ? -1 : -16777216);
                this.view.setHintTextColor(this.hintColorDefault);
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public boolean getHighContrast() {
        return this.isHighContrast;
    }

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public void setLargeFont(boolean z) {
        if (TextViewUtil.getFontSize(this.view, this.container.$context()) == 24.0d || TextViewUtil.getFontSize(this.view, this.container.$context()) == 14.0f) {
            if (z) {
                TextViewUtil.setFontSize(this.view, 24.0f);
            } else {
                TextViewUtil.setFontSize(this.view, 14.0f);
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public boolean getLargeFont() {
        return this.isBigText;
    }
}
