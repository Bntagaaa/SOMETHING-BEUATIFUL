package com.google.appinventor.components.runtime;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesAssets;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;

@UsesAssets(fileNames = "MaterialIcons-Regular.ttf, fontawesome-webfont.ttf,fa-brands-400.ttf, fa-regular-400.ttf, fa-solid-900.ttf")
@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "<p>A box for the user to enter text.  The initial or user-entered text value is in the <code>Text</code> property.  If blank, the <code>Hint</code> property, which appears as faint text in the box, can provide the user with guidance as to what to type.</p><p>The <code>MultiLine</code> property determines if the text can havemore than one line.  For a single line text box, the keyboard will closeautomatically when the user presses the Done key.  To close the keyboard for multiline text boxes, the app should use  the HideKeyboard method or  rely on the user to press the Back key.</p><p>The <code> NumbersOnly</code> property restricts the keyboard to acceptnumeric input only.</p><p>Other properties affect the appearance of the text box (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be used (<code>Enabled</code>).</p><p>Text boxes are usually used with the <code>Button</code> component, with the user clicking on the button when text entry is complete.</p><p>If the text entered by the user should not be displayed, use <code>PasswordTextBox</code> instead.</p>", iconName = "images/textbox.png", version = 14)
@SimpleObject
/* loaded from: classes.dex */
public final class TextBox extends TextBoxBase {
    private boolean acceptsNumbersOnly;
    private int inputType;
    private boolean multiLine;
    private int paddingBottom2;
    private int paddingLeft2;
    private int paddingRight2;
    private int paddingTop2;
    private boolean readOnly;

    public TextBox(ComponentContainer componentContainer) {
        super(componentContainer, new EditText(componentContainer.$context()));
        this.paddingLeft2 = 0;
        this.paddingTop2 = 0;
        this.paddingRight2 = 0;
        this.paddingBottom2 = 0;
        MultiLine(false);
        ReadOnly(false);
        this.view.setImeOptions(6);
    }

    public TextBox(ComponentContainer componentContainer, EditText editText) {
        super(componentContainer, editText, "");
        this.paddingLeft2 = 0;
        this.paddingTop2 = 0;
        this.paddingRight2 = 0;
        this.paddingBottom2 = 0;
    }

    @SimpleFunction(description = "Hide the keyboard.  Only multiline text boxes need this. Single line text boxes close the keyboard when the users presses the Done key.")
    public void HideKeyboard() {
        ((InputMethodManager) this.container.$context().getSystemService("input_method")).hideSoftInputFromWindow(this.view.getWindowToken(), 0);
    }

    @SimpleFunction(description = "Show the keyboard.")
    public void ShowKeyboard() {
        this.view.requestFocus();
        ((InputMethodManager) this.container.$context().getSystemService("input_method")).showSoftInput(this.view, 1);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "If true, then this text box accepts multiple lines of input, which are entered using the return key.  For single line text boxes there is a Done key instead of a return key, and pressing Done hides the keyboard.  The app should call the HideKeyboard method to hide the keyboard for a mutiline text box.")
    public boolean MultiLine() {
        return this.multiLine;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void MultiLine(boolean z) {
        this.multiLine = z;
        this.view.setSingleLine(!z);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether the %type% is read-only. By default, this is false.")
    public boolean ReadOnly() {
        return this.readOnly;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ReadOnly(boolean z) {
        this.readOnly = z;
        this.view.setEnabled(!z);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specify the input type of the text box, Possible integer values are\n1 for normal text\n2 for number only\n3 for email address\n4 for password text\n5 for phone number\n6 for date time")
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_INPUT_TYPE)
    public void InputType(int i) {
        this.inputType = i;
        if (i == 1) {
            this.view.setInputType(131073);
            return;
        }
        if (i == 2) {
            this.view.setInputType(12290);
            return;
        }
        if (i == 3) {
            this.view.setInputType(32);
            return;
        }
        if (i == 4) {
            this.view.setInputType(129);
        } else if (i == 5) {
            this.view.setInputType(3);
        } else if (i == 6) {
            this.view.setInputType(4);
        }
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "10,10,10,10", editorType = PropertyTypeConstants.PROPERTY_TYPE_FOUR)
    public void HeihPadding(String str) {
        String[] strArrSplit = str.split(",");
        this.paddingLeft2 = Integer.parseInt(strArrSplit[0]);
        this.paddingRight2 = Integer.parseInt(strArrSplit[1]);
        this.paddingTop2 = Integer.parseInt(strArrSplit[2]);
        this.paddingBottom2 = Integer.parseInt(strArrSplit[3]);
        refreshPadding();
    }

    private void refreshPadding() {
        getView().setPadding(px(this.paddingLeft2), px(this.paddingTop2), px(this.paddingRight2), px(this.paddingBottom2));
    }
}
