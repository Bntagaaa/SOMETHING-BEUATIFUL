package com.google.appinventor.components.runtime;

import android.content.Context;
import android.text.TextUtils;
import android.text.util.Linkify;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesAssets;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.HtmlEntities;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.TextViewUtil;

@UsesAssets(fileNames = "MaterialIcons-Regular.ttf, fontawesome-webfont.ttf,fa-brands-400.ttf, fa-regular-400.ttf, fa-solid-900.ttf")
@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "A Label displays a piece of text, which is specified through the <code>Text</code> property.  Other properties, all of which can be set in the Designer or Blocks Editor, control the appearance and placement of the text.", iconName = "images/label.png", version = 6)
@SimpleObject
/* loaded from: classes.dex */
public final class Label extends AndroidViewComponent implements AccessibleComponent {
    private static final int DEFAULT_LABEL_MARGIN = 2;
    private int backgroundColor;
    private boolean bold;
    private boolean clickable;
    private Context context;
    private int defaultLabelMarginInDp;
    private boolean fontAwesome;
    private String fontPath;
    private String fontTypeface;
    private boolean hasMargins;
    private String htmlContent;
    private boolean htmlFormat;
    private boolean isBigText;
    private boolean isJustify;
    private boolean isRepl;
    private boolean italic;
    private final LinearLayout.LayoutParams linearLayoutParams;
    private boolean longclickable;
    private boolean selectable;
    private int textAlignment;
    private int textColor;
    private final TextView view;

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public boolean getHighContrast() {
        return false;
    }

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public void setHighContrast(boolean z) {
    }

    public Label(ComponentContainer componentContainer) {
        super(componentContainer);
        this.defaultLabelMarginInDp = 0;
        this.selectable = false;
        this.isJustify = false;
        this.isBigText = false;
        TextView textView = new TextView(componentContainer.$context());
        this.view = textView;
        this.isRepl = componentContainer.$form() instanceof ReplForm;
        this.context = componentContainer.$context();
        componentContainer.$add(this);
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            this.linearLayoutParams = (LinearLayout.LayoutParams) layoutParams;
            this.defaultLabelMarginInDp = dpToPx(textView, 2);
        } else {
            this.defaultLabelMarginInDp = 0;
            this.linearLayoutParams = null;
            Log.e("Label", "Error: The label's view does not have linear layout parameters");
            new RuntimeException().printStackTrace();
        }
        TextAlignment(0);
        BackgroundColor(16777215);
        this.fontTypeface = "0";
        TextViewUtil.setFontTypeface(componentContainer.$form(), textView, this.fontTypeface, this.bold, this.italic);
        FontSize(14.0f);
        Text("");
        TextColor(0);
        HTMLFormat(false);
        HasMargins(true);
        Clickable(true);
        LongClickable(false);
    }

    public Label(ComponentContainer componentContainer, TextView textView) {
        super(componentContainer);
        this.defaultLabelMarginInDp = 0;
        this.selectable = false;
        this.isJustify = false;
        this.isBigText = false;
        this.view = textView;
        this.isRepl = componentContainer.$form() instanceof ReplForm;
        this.context = componentContainer.$context();
        ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            this.linearLayoutParams = (LinearLayout.LayoutParams) layoutParams;
            this.defaultLabelMarginInDp = dpToPx(textView, 2);
        } else {
            this.defaultLabelMarginInDp = 0;
            this.linearLayoutParams = null;
            Log.e("Label", "Error: The label's view does not have linear layout parameters");
            new RuntimeException().printStackTrace();
        }
    }

    private static int dpToPx(View view, int i) {
        return Math.round(i * view.getContext().getResources().getDisplayMetrics().density);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.view;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    public int TextAlignment() {
        return this.textAlignment;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXTALIGNMENT)
    public void TextAlignment(int i) {
        this.textAlignment = i;
        TextViewUtil.setAlignment(this.view, i, false);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_NONE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.backgroundColor = i;
        if (i != 0) {
            TextViewUtil.setBackgroundColor(this.view, i);
        } else {
            TextViewUtil.setBackgroundColor(this.view, 16777215);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    public boolean FontBold() {
        return this.bold;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FontBold(boolean z) {
        this.bold = z;
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, this.fontTypeface, z, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    public boolean FontItalic() {
        return this.italic;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FontItalic(boolean z) {
        this.italic = z;
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, this.fontTypeface, this.bold, z);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Reports whether or not the label appears with margins.  All four margins (left, right, top, bottom) are the same.  This property has no effect in the designer, where labels are always shown with margins.", userVisible = true)
    public boolean HasMargins() {
        return this.hasMargins;
    }

    @SimpleProperty(userVisible = true)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void HasMargins(boolean z) {
        this.hasMargins = z;
        setLabelMargins(z);
    }

    private void setLabelMargins(boolean z) {
        int i = z ? this.defaultLabelMarginInDp : 0;
        this.linearLayoutParams.setMargins(i, i, i, i);
        this.view.invalidate();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public float FontSize() {
        return TextViewUtil.getFontSize(this.view, this.container.$context());
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "14.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void FontSize(float f) {
        if (f == 14.0f && (this.isBigText || this.container.$form().BigDefaultText())) {
            TextViewUtil.setFontSize(this.view, 24.0f);
        } else {
            TextViewUtil.setFontSize(this.view, f);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
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
    public String Text() {
        return TextViewUtil.getText(this.view);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXTAREA)
    public void Text(String str) {
        if (this.fontAwesome) {
            try {
                TextViewUtil.setText(this.view, HtmlEntities.decodeHtmlText("&#x" + str + ";"));
                return;
            } catch (IllegalArgumentException unused) {
                TextViewUtil.setText(this.view, str);
            }
        } else {
            TextViewUtil.setText(this.view, str);
        }
        if (this.htmlFormat) {
            TextViewUtil.setTextHTML(this.view, str);
        } else {
            TextViewUtil.setText(this.view, str);
        }
        this.htmlContent = str;
    }

    @SimpleProperty(description = "Join text in label inline or in new line")
    public final void JoinText(String str) {
        String strZ = _COROUTINE.a.z(TextViewUtil.getText(this.view), str);
        if (this.fontAwesome) {
            try {
                TextViewUtil.setText(this.view, HtmlEntities.decodeHtmlText("&#x" + strZ + ";"));
                return;
            } catch (IllegalArgumentException unused) {
                TextViewUtil.setText(this.view, strZ);
            }
        } else {
            TextViewUtil.setText(this.view, strZ);
        }
        if (this.htmlFormat) {
            TextViewUtil.setTextHTML(this.view, strZ);
        } else {
            TextViewUtil.setText(this.view, strZ);
        }
        this.htmlContent = strZ;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Highlight the links, phone numbers and email addresses. Clicking on it will load the given URI")
    @DesignerProperty(defaultValue = "None", editorArgs = {"None", "All", "Email", "Phone", "URLs"}, editorType = PropertyTypeConstants.PROPERTY_TYPE_CHOICES)
    public final void ShowLinks(String str) {
        int i;
        if (str.equalsIgnoreCase("All")) {
            i = 15;
        } else if (str.equalsIgnoreCase("Email")) {
            i = 2;
        } else if (str.equalsIgnoreCase("Phone")) {
            i = 4;
        } else {
            i = str.equalsIgnoreCase("URLs") ? 1 : 16;
        }
        Linkify.addLinks(this.view, i);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set opacity value between 1 to 10")
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void Opacity(int i) {
        this.view.setAlpha(Float.parseFloat(i > 9 ? "1f" : _COROUTINE.a.e(i, "0.", "f")));
    }

    @SimpleProperty(description = "Set Line Spacing. From 0.0 to nth value")
    public void LineSpacing(float f) {
        this.view.setLineSpacing(0.0f, f);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set space between words")
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void WordSpacing(int i) {
        String text = TextViewUtil.getText(this.view);
        text.replaceAll("\\s+", " ");
        if (i < 0) {
            i = 1;
        }
        String strZ = " ";
        for (int i2 = 0; i2 < i; i2++) {
            strZ = _COROUTINE.a.z(strZ, " ");
        }
        text.replaceAll("\\s", strZ);
        if (this.fontAwesome || this.htmlFormat) {
            return;
        }
        TextViewUtil.setText(this.view, text);
        this.htmlContent = text;
    }

    @SimpleProperty
    public boolean Selectable() {
        return this.selectable;
    }

    @SimpleProperty(description = "Return the number of lines")
    public int CountLines() {
        return this.view.getLineCount();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Set test to selectable")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Selectable(boolean z) {
        this.selectable = z;
        this.view.setTextIsSelectable(z);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "If true then justified contents by stretching spaces.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void JustifyContent(boolean z) {
        this.isJustify = z;
        this.view.setJustificationMode(z ? 1 : 0);
    }

    @SimpleProperty
    public boolean JustifyContent() {
        return this.isJustify;
    }

    @SimpleFunction(description = "Set shadow under the text")
    public void SetShadow(float f, float f2, float f3, int i) {
        this.view.setShadowLayer(f, f2, f3, i);
    }

    @SimpleProperty
    public String HTMLContent() {
        if (this.htmlFormat) {
            return this.htmlContent;
        }
        return TextViewUtil.getText(this.view);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "If true, then this label will show html text else it will show plain text. Note: Not all HTML is supported.")
    public boolean HTMLFormat() {
        return this.htmlFormat;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void HTMLFormat(boolean z) {
        this.htmlFormat = z;
        if (z) {
            TextViewUtil.setTextHTML(this.view, TextViewUtil.getText(this.view));
        } else {
            TextViewUtil.setText(this.view, TextViewUtil.getText(this.view));
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public int TextColor() {
        return this.textColor;
    }

    @SimpleProperty
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
    public void CustomFontTypeFace(String str) {
        if (str == null || str.isEmpty() || str == "") {
            return;
        }
        TextViewUtil.setFontTypeface(this.container.$form(), this.view, str, this.bold, this.italic);
    }

    @SimpleEvent(description = "Triggers when label clicked")
    public void Click() {
        EventDispatcher.dispatchEvent(this, "Click", new Object[0]);
    }

    @SimpleEvent(description = "Triggers when label long clicked")
    public void LongClick() {
        EventDispatcher.dispatchEvent(this, "LongClick", new Object[0]);
    }

    @SimpleProperty(description = "Specifies whether the image should be long clickable or not.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void LongClickable(boolean z) {
        this.longclickable = z;
        this.view.setLongClickable(z);
        if (this.longclickable) {
            this.view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.google.appinventor.components.runtime.Label.1
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    Label.this.LongClick();
                    return true;
                }
            });
        } else {
            this.view.setOnLongClickListener(null);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies whether the image should be long clickable or not.")
    public boolean LongClickable() {
        return this.longclickable;
    }

    @SimpleProperty(description = "Specifies whether the image should be clickable or not.")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Clickable(boolean z) {
        this.clickable = z;
        this.view.setClickable(z);
        if (this.clickable) {
            this.view.setOnClickListener(new View.OnClickListener() { // from class: com.google.appinventor.components.runtime.Label.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Label.this.Click();
                }
            });
        } else {
            this.view.setOnClickListener(null);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies whether the image should be clickable or not.")
    public boolean Clickable() {
        return this.clickable;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "None", editorArgs = {"None", "Start", "Center", "End", "Marquee"}, editorType = PropertyTypeConstants.PROPERTY_TYPE_CHOICES)
    public void Ellipsize(String str) {
        if (str.equalsIgnoreCase("Marquee")) {
            this.view.setEllipsize(TextUtils.TruncateAt.MARQUEE);
            this.view.setMarqueeRepeatLimit(-1);
            this.view.setSingleLine(true);
            this.view.setSelected(true);
            return;
        }
        if (str.equalsIgnoreCase("Start")) {
            this.view.setEllipsize(TextUtils.TruncateAt.START);
            this.view.setSelected(true);
            return;
        }
        if (str.equalsIgnoreCase("Center")) {
            this.view.setEllipsize(TextUtils.TruncateAt.MIDDLE);
            this.view.setSelected(true);
        } else if (str.equalsIgnoreCase("End")) {
            this.view.setEllipsize(TextUtils.TruncateAt.END);
            this.view.setSelected(true);
        } else if (str.equalsIgnoreCase("None")) {
            this.view.setEllipsize(null);
            this.view.setSingleLine(false);
            this.view.setSelected(false);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void MaxLines(int i) {
        this.view.setLines(i);
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
