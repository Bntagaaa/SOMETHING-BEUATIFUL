package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.Toast;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.kawa.functions.GetNamedPart;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ThreadLocalRandom;

@DesignerComponent(category = ComponentCategory.EXTRAS, description = "Developers tools component contains all useful blocks usually used by a developer in app development.", iconName = "images/devstool.png", nonVisible = true, version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class DevsTool extends AndroidNonvisibleComponent {
    private Activity activity;
    private ComponentContainer container;
    private Context context;
    private boolean showTosats;

    public DevsTool(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.showTosats = false;
        this.context = componentContainer.$context();
        this.activity = componentContainer.$context();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Show toast message, if true")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowToast(boolean z) {
        this.showTosats = z;
    }

    @SimpleProperty(description = "Returns true if 'Show Toast' is enabled.")
    public boolean isShowToastEnabled() {
        return this.showTosats;
    }

    @SimpleFunction(description = "Return file name from file path")
    public String GetFileName(String str) {
        if (str.equals("")) {
            return "";
        }
        return str.split("/")[r3.length - 1];
    }

    @SimpleFunction(description = "Return file extension from file path or file name")
    public String GetFileExtension(String str) {
        if (str.equals("")) {
            return "";
        }
        return str.split("/")[r3.length - 1].substring(r3.length() - 3);
    }

    @SimpleFunction(description = "Return file extension from file path or file name")
    public String GetBetweenText(String str, String str2, String str3) {
        String strSubstring = str.substring(str2.length() + str.indexOf(str2), str.length());
        return strSubstring.substring(0, strSubstring.indexOf(str3));
    }

    @SimpleFunction(description = "Return file extension from file path or file name")
    public String SelectText(String str, int i, int i2) {
        if (i < 0) {
            i = 0;
        }
        if (i < str.length()) {
            if (i2 < 0) {
                i2 = 0;
            }
            int length = i2 + i2;
            if (str.length() < length) {
                length = str.length();
            }
            return str.substring(i, length);
        }
        return "";
    }

    @SimpleFunction(description = "Return file extension from file path or file name")
    public int IndexInString(String str, String str2) {
        return str2.indexOf(str);
    }

    @SimpleFunction(description = "Show Toast Message. Set short to true, to show toast of short length else set false for long toats.")
    public void ShowToast(String str, boolean z) {
        if (z) {
            Toast.makeText(this.context, str, 0).show();
        } else {
            Toast.makeText(this.context, str, 1).show();
        }
    }

    @SimpleFunction(description = "Show custom toast message")
    public void CustomToast(String str, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        Toast toastMakeText;
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new ForegroundColorSpan(i4), 0, spannableString.length(), 0);
        if (z2) {
            toastMakeText = Toast.makeText(this.context, spannableString, 0);
        } else {
            toastMakeText = Toast.makeText(this.context, spannableString, 1);
        }
        toastMakeText.setGravity(17, i, i2);
        View view = toastMakeText.getView();
        if (z) {
            spannableString.setSpan(new BackgroundColorSpan(i3), 0, spannableString.length(), 0);
        } else {
            view.setBackgroundColor(i3);
        }
        toastMakeText.show();
    }

    @SimpleFunction(description = "Copy text to clipboard")
    public void CopyToClipboard(String str) {
        try {
            ((ClipboardManager) this.context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("Copied text", str));
            if (this.showTosats) {
                Toast.makeText(this.context, "Copied to clipboard", 0).show();
            }
        } catch (Exception unused) {
        }
    }

    @SimpleFunction(description = "Retune true if the given test have the given pattern. else it'll return false.")
    public boolean IsMatching(String str, String str2) {
        return str2.matches(str);
    }

    @SimpleFunction(description = "It'll validate if the given email is valid or not. I.e the given email is in proper email format or not like support@niotron.com")
    public boolean IsValidateEmail(String str) {
        if (str.contains(GetNamedPart.CAST_METHOD_NAME)) {
            return str.matches("^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$");
        }
        return false;
    }

    @SimpleFunction(description = "It'll validate if the given number us valid or not. Like it contains only numbers with + or - sign.")
    public boolean IsValidateNumber(String str) {
        return str.matches("^(\\-|\\+)?\\d+(\\.\\d+)?$");
    }

    @SimpleFunction(description = "Must contain at leat 1 lower case letter and 1 upper case letter and 1 number, at least 8 charactors. Specially Designed to check if the password is strong or not")
    public boolean IsStrongPassword(String str) {
        return str.matches("^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$");
    }

    @SimpleFunction(description = "Generate a random number of given length")
    public String RandomNumber(int i) {
        if (i < 0) {
            i = 1;
        }
        String str = "";
        for (int i2 = 0; i2 < i; i2++) {
            str = str + "0123456789".charAt(ThreadLocalRandom.current().nextInt(9));
        }
        return str;
    }

    @SimpleFunction(description = "Generate a random string of given length")
    public String RandomString(int i) {
        if (i < 0) {
            i = 1;
        }
        String str = "";
        for (int i2 = 0; i2 < i; i2++) {
            str = str + "ijklABvxyzGHIJKLMstuvNOPWXYZabcdefghmnoQRSTUVpqrxyz".charAt(ThreadLocalRandom.current().nextInt(50));
        }
        return str;
    }

    @SimpleFunction(description = "Generates a random alphanumeric string.")
    public String RandomAlphanumeric() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }

    @SimpleFunction(description = "Sort a list of numeric/alphabetical values in ascending order, or set inAscending to false to short list in descending order.")
    public Object Short(List list, boolean z) {
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        if (!z) {
            Collections.reverse(arrayList);
        }
        return arrayList;
    }

    @SimpleFunction(description = "Set transparent value between 1 to 10")
    public void SetTransparency(AndroidViewComponent androidViewComponent, int i) {
        androidViewComponent.getView().setAlpha(Float.parseFloat(i > 9 ? "1f" : _COROUTINE.a.e(i, "0.", "f")));
    }
}
