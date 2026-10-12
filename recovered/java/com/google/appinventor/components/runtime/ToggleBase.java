package com.google.appinventor.components.runtime;

import android.content.Context;
import android.view.View;
import android.widget.CompoundButton;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.HtmlEntities;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.TextViewUtil;

@SimpleObject
/* loaded from: classes.dex */
public abstract class ToggleBase<T extends CompoundButton> extends AndroidViewComponent implements CompoundButton.OnCheckedChangeListener, View.OnFocusChangeListener, AccessibleComponent {
    private int backgroundColor;
    private boolean bold;
    private Context context;
    private boolean fontAwesome;
    private String fontTypeface;
    private boolean isBigText;
    private boolean isRepl;
    private boolean italic;
    private int textColor;
    protected T view;

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public boolean getHighContrast() {
        return false;
    }

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public void setHighContrast(boolean z) {
    }

    public ToggleBase(ComponentContainer componentContainer) {
        super(componentContainer);
        this.isBigText = false;
        this.context = componentContainer.$context();
        this.isRepl = componentContainer.$form() instanceof ReplForm;
    }

    public void initToggle() {
        this.view.setOnFocusChangeListener(this);
        this.view.setOnCheckedChangeListener(this);
        this.container.$add(this);
        BackgroundColor(16777215);
        Enabled(true);
        this.fontTypeface = "0";
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, this.fontTypeface, this.bold, this.italic);
        FontSize(14.0f);
        Text("");
        TextColor(0);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.view;
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

    @SimpleEvent(description = "User tapped and released the %type%.")
    public void Changed() {
        EventDispatcher.dispatchEvent(this, "Changed", new Object[0]);
    }

    @SimpleEvent(description = "%type% became the focused component.")
    public void GotFocus() {
        EventDispatcher.dispatchEvent(this, "GotFocus", new Object[0]);
    }

    @SimpleEvent(description = "%type% stopped being the focused component.")
    public void LostFocus() {
        EventDispatcher.dispatchEvent(this, "LostFocus", new Object[0]);
    }

    @SimpleProperty(description = "The background color of the %type% as an alpha-red-green-blue integer.")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_NONE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.backgroundColor = i;
        if (i != 0) {
            TextViewUtil.setBackgroundColor(this.view, i);
        } else {
            TextViewUtil.setBackgroundColor(this.view, 16777215);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty(description = "True if the %type% is active and clickable.")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean z) {
        TextViewUtil.setEnabled(this.view, z);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean Enabled() {
        return this.view.isEnabled();
    }

    @SimpleProperty(description = "Set to true if the text of the %type% should be bold.", userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FontBold(boolean z) {
        this.bold = z;
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, this.fontTypeface, z, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void CustomFontTypeFace(String str) {
        if (str == null || str.isEmpty() || str == "") {
            return;
        }
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, str, this.bold, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    public boolean FontBold() {
        return this.bold;
    }

    @SimpleProperty(description = "Set to true if the text of the %type% should be italic.", userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FontItalic(boolean z) {
        this.italic = z;
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, this.fontTypeface, this.bold, z);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    public boolean FontItalic() {
        return this.italic;
    }

    @SimpleProperty(description = "Specifies the text font size of the %type% in scale-independent pixels.")
    @DesignerProperty(defaultValue = "14.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void FontSize(float f) {
        if (Math.abs(f - 14.0f) < 0.01d || Math.abs(f - 24.0f) < 0.01d) {
            if (this.isBigText || this.container.$form().BigDefaultText()) {
                TextViewUtil.setFontSize(this.view, 24.0f);
                return;
            } else {
                TextViewUtil.setFontSize(this.view, 14.0f);
                return;
            }
        }
        TextViewUtil.setFontSize(this.view, f);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public float FontSize() {
        return TextViewUtil.getFontSize(this.view, this.container.$context());
    }

    @SimpleProperty(description = "Specifies the text font face of the %type%.", userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_TYPEFACE)
    public void FontTypeface(String str) {
        this.fontTypeface = str;
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, this.fontTypeface, this.bold, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    public String FontTypeface() {
        return this.fontTypeface;
    }

    @SimpleProperty(description = "Specifies the text displayed by the %type%.")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Text(String str) {
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

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public String Text() {
        return TextViewUtil.getText(this.view);
    }

    @SimpleProperty(description = "Specifies the text color of the %type% as an alpha-red-green-blue integer.")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLACK, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int i) {
        this.textColor = i;
        if (i != 0) {
            TextViewUtil.setTextColor(this.view, i);
        } else {
            TextViewUtil.setTextColor(this.view, this.container.$form().isDarkTheme() ? -1 : -16777216);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public int TextColor() {
        return this.textColor;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Changed();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        if (z) {
            GotFocus();
        } else {
            LostFocus();
        }
    }
}
