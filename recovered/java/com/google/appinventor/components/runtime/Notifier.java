package com.google.appinventor.components.runtime;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.text.Html;
import android.text.SpannableString;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.widget.TooltipCompat;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import com.google.appinventor.components.runtime.util.YailList;

@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "The Notifier component displays alert dialogs, messages, and temporary alerts, and creates Android log entries through the following methods: <ul><li> ShowMessageDialog: displays a message which the user must dismiss by pressing a button.</li><li> ShowChooseDialog: displays a message two buttons to let the user choose one of two responses, for example, yes or no, after which the AfterChoosing event is raised.</li><li> ShowTextDialog: lets the user enter text in response to the message, after which the AfterTextInput event is raised. <li> ShowPasswordDialog: lets the user enter password in response to the message, after which the AfterTextInput event is raised. <li> ShowAlert: displays a temporary  alert that goes away by itself after a short time.</li><li> ShowProgressDialog: displays an alert with a loading spinner that cannot be dismissed by the user. It can only be dismissed by using the DismissProgressDialog block.</li><li> DismissProgressDialog: Dismisses the progress dialog displayed by ShowProgressDialog.</li><li> LogError: logs an error message to the Android log. </li><li> LogInfo: logs an info message to the Android log.</li><li> LogWarning: logs a warning message to the Android log.</li><li>The messages in the dialogs (but not the alert) can be formatted using the following HTML tags:&lt;b&gt;, &lt;big&gt;, &lt;blockquote&gt;, &lt;br&gt;, &lt;cite&gt;, &lt;dfn&gt;, &lt;div&gt;, &lt;em&gt;, &lt;small&gt;, &lt;strong&gt;, &lt;sub&gt;, &lt;sup&gt;, &lt;tt&gt;. &lt;u&gt;</li><li>You can also use the font tag to specify color, for example, &lt;font color=\"blue\"&gt;.  Some of the available color names are aqua, black, blue, fuchsia, green, grey, lime, maroon, navy, olive, purple, red, silver, teal, white, and yellow</li></ul>", iconName = "images/notifier.png", nonVisible = true, version = 6)
@SimpleObject
/* loaded from: classes.dex */
public final class Notifier extends AndroidNonvisibleComponent implements Component {
    private static final String LOG_TAG = "Notifier";
    private static AlertDialog chooserDialog;
    private final Activity activity;
    private int backgroundColor;
    private Dialog dialog;
    private final Handler handler;
    private int notifierLength;
    private ProgressDialog progressDialog;
    private int textColor;

    public Notifier(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.notifierLength = 1;
        this.backgroundColor = Component.COLOR_DKGRAY;
        this.textColor = -1;
        this.activity = componentContainer.$context();
        this.handler = new Handler();
        this.progressDialog = null;
    }

    @SimpleFunction(description = "Shows a dialog box with an optional title and message (use empty strings if they are not wanted). This dialog box contains a spinning artifact to indicate that the program is working. It cannot be canceled by the user but must be dismissed by the App Inventor Program by using the DismissProgressDialog block.")
    public void ShowProgressDialog(String str, String str2) {
        progressDialog(str, str2);
    }

    @SimpleFunction(description = "Dismiss a previously displayed ProgressDialog box")
    public void DismissProgressDialog() {
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
            this.progressDialog = null;
        }
    }

    public void progressDialog(String str, String str2) {
        if (this.progressDialog != null) {
            DismissProgressDialog();
        }
        ProgressDialog progressDialogShow = ProgressDialog.show(this.activity, str2, str);
        this.progressDialog = progressDialogShow;
        progressDialogShow.setCancelable(false);
    }

    @SimpleFunction
    public void ShowMessageDialog(String str, String str2, String str3) {
        oneButtonAlert(this.activity, str, str2, str3);
    }

    public static void oneButtonAlert(Activity activity, String str, String str2, String str3, final Runnable runnable) {
        Log.i(LOG_TAG, "One button alert " + str);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(activity).create();
        alertDialogCreate.setTitle(str2);
        alertDialogCreate.setCancelable(false);
        alertDialogCreate.setMessage(stringToHTML(str));
        alertDialogCreate.setButton(-3, str3, new DialogInterface.OnClickListener() { // from class: com.google.appinventor.components.runtime.Notifier.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
        alertDialogCreate.show();
    }

    public static void oneButtonAlert(Activity activity, String str, String str2, String str3) {
        oneButtonAlert(activity, str, str2, str3, null);
    }

    private static SpannableString stringToHTML(String str) {
        return new SpannableString(Html.fromHtml(str));
    }

    @SimpleFunction(description = "Shows a dialog box with two buttons, from which the user can choose.  If cancelable is true there will be an additional CANCEL button. Pressing a button will raise the AfterChoosing event.  The \"choice\" parameter to AfterChoosing will be the text on the button that was pressed, or \"Cancel\" if the  CANCEL button was pressed.")
    public void ShowChooseDialog(String str, String str2, final String str3, final String str4, boolean z) {
        twoButtonDialog(this.activity, str, str2, str3, str4, z, new Runnable() { // from class: com.google.appinventor.components.runtime.Notifier.2
            @Override // java.lang.Runnable
            public void run() {
                Notifier.this.AfterChoosing(str3);
            }
        }, new Runnable() { // from class: com.google.appinventor.components.runtime.Notifier.3
            @Override // java.lang.Runnable
            public void run() {
                Notifier.this.AfterChoosing(str4);
            }
        }, new Runnable() { // from class: com.google.appinventor.components.runtime.Notifier.4
            @Override // java.lang.Runnable
            public void run() {
                Notifier.this.ChoosingCanceled();
                Notifier notifier = Notifier.this;
                notifier.AfterChoosing(notifier.activity.getString(R.string.cancel));
            }
        });
    }

    public static void twoButtonDialog(Activity activity, String str, String str2, String str3, String str4, boolean z, final Runnable runnable, final Runnable runnable2, final Runnable runnable3) {
        Log.i(LOG_TAG, "ShowChooseDialog: " + str);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(activity).create();
        chooserDialog = alertDialogCreate;
        alertDialogCreate.setTitle(str2);
        chooserDialog.setCancelable(false);
        chooserDialog.setMessage(stringToHTML(str));
        chooserDialog.setButton(-1, str3, new DialogInterface.OnClickListener() { // from class: com.google.appinventor.components.runtime.Notifier.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                runnable.run();
            }
        });
        chooserDialog.setButton(-3, str4, new DialogInterface.OnClickListener() { // from class: com.google.appinventor.components.runtime.Notifier.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                runnable2.run();
            }
        });
        if (z) {
            chooserDialog.setButton(-2, activity.getString(R.string.cancel), new DialogInterface.OnClickListener() { // from class: com.google.appinventor.components.runtime.Notifier.7
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    runnable3.run();
                }
            });
        }
        chooserDialog.show();
    }

    @SimpleFunction(description = "Dismiss the choose dialog")
    public void DismissChooseDialog() {
        AlertDialog alertDialog = chooserDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            return;
        }
        chooserDialog.dismiss();
    }

    @SimpleEvent(description = "Event after the user has made a selection for ShowChooseDialog.")
    public void AfterChoosing(String str) {
        EventDispatcher.dispatchEvent(this, "AfterChoosing", str);
    }

    @SimpleEvent(description = "Event raised when the user canceled ShowChooseDialog.")
    public void ChoosingCanceled() {
        EventDispatcher.dispatchEvent(this, "ChoosingCanceled", new Object[0]);
    }

    @SimpleFunction(description = "Shows a dialog box where the user can enter text, after which the AfterTextInput event will be raised.  If cancelable is true there will be an additional CANCEL button. Entering text will raise the AfterTextInput event.  The \"response\" parameter to AfterTextInput will be the text that was entered, or \"Cancel\" if the CANCEL button was pressed.")
    public void ShowTextDialog(String str, String str2, boolean z) {
        textInputDialog(str, str2, z, false);
    }

    @SimpleFunction(description = "Shows a dialog box where the user can enter password (input is masked), after which the AfterTextInput event will be raised.  If cancelable is true there will be an additional CANCEL button. Entering password will raise the AfterTextInput event.  The \"response\" parameter to AfterTextInput will be the entered password, or \"Cancel\" if CANCEL button was pressed.")
    public void ShowPasswordDialog(String str, String str2, boolean z) {
        textInputDialog(str, str2, z, true);
    }

    private void textInputDialog(String str, String str2, boolean z, boolean z2) {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this.activity).create();
        alertDialogCreate.setTitle(str2);
        alertDialogCreate.setMessage(stringToHTML(str));
        final EditText editText = new EditText(this.activity);
        if (z2) {
            editText.setInputType(129);
        }
        alertDialogCreate.setView(editText);
        alertDialogCreate.setCancelable(false);
        alertDialogCreate.setButton(-1, "OK", new DialogInterface.OnClickListener() { // from class: com.google.appinventor.components.runtime.Notifier.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Notifier.this.HideKeyboard(editText);
                Notifier.this.AfterTextInput(editText.getText().toString());
            }
        });
        if (z) {
            final String string = this.activity.getString(R.string.cancel);
            alertDialogCreate.setButton(-2, string, new DialogInterface.OnClickListener() { // from class: com.google.appinventor.components.runtime.Notifier.9
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    Notifier.this.HideKeyboard(editText);
                    if (Notifier.this.TextInputCanceled()) {
                        return;
                    }
                    Notifier.this.AfterTextInput(string);
                }
            });
        }
        alertDialogCreate.show();
    }

    public void HideKeyboard(View view) {
        if (view != null) {
            ((InputMethodManager) this.activity.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    @SimpleEvent(description = "Event raised after the user has responded to ShowTextDialog.")
    public void AfterTextInput(String str) {
        EventDispatcher.dispatchEvent(this, "AfterTextInput", str);
    }

    @SimpleEvent(description = "Event raised when the user canceled ShowTextDialog.")
    public boolean TextInputCanceled() {
        return EventDispatcher.dispatchEvent(this, "TextInputCanceled", new Object[0]);
    }

    @SimpleFunction
    public void ShowAlert(final String str) {
        this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.Notifier.10
            @Override // java.lang.Runnable
            public void run() {
                Notifier.this.toastNow(str);
            }
        });
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_TOAST_LENGTH)
    public void NotifierLength(int i) {
        this.notifierLength = i;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies the length of time that the alert is shown -- either \"short\" or \"long\".")
    public int NotifierLength() {
        return this.notifierLength;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies the background color for alerts (not dialogs).")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DKGRAY, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        this.backgroundColor = i;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies the text color for alerts (not dialogs).")
    public int TextColor() {
        return this.textColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int i) {
        this.textColor = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toastNow(String str) {
        Toast.makeText(this.activity, str, 1).show();
    }

    @SimpleFunction(description = "Shows a custom dialog from a layout or cmponent")
    public void CreateCustomDialog(AndroidViewComponent androidViewComponent, boolean z) {
        View view = androidViewComponent.getView();
        ((ViewGroup) view.getParent()).removeView(view);
        Dialog dialog = new Dialog(this.activity);
        this.dialog = dialog;
        dialog.requestWindowFeature(1);
        this.dialog.setCancelable(z);
        this.dialog.setContentView(view);
    }

    @SimpleFunction(description = "Show the custom dialog")
    public void ShowCustomDialog() {
        this.dialog.show();
    }

    @SimpleFunction(description = "Dissmissed the custom dialog")
    public void DismissCustomDialog() {
        this.dialog.dismiss();
    }

    @SimpleFunction(description = "Writes an error message to the Android system log. See the Google Android documentation for how to access the log.")
    public void LogError(String str) {
        Log.e(LOG_TAG, str);
    }

    @SimpleFunction(description = "Writes a warning message to the Android log. See the Google Android documentation for how to access the log.")
    public void LogWarning(String str) {
        Log.w(LOG_TAG, str);
    }

    @SimpleFunction(description = "Writes an information message to the Android log.")
    public void LogInfo(String str) {
        Log.i(LOG_TAG, str);
    }

    @SimpleFunction(description = "Sets tooltip for components")
    public void AddToolTip(Object obj, Object obj2) {
        if ((obj instanceof AndroidViewComponent) && (obj2 instanceof String)) {
            View view = ((AndroidViewComponent) obj).getView();
            view.setOnLongClickListener(null);
            TooltipCompat.setTooltipText(view, (String) obj2);
        } else {
            if ((obj instanceof YailList) && (obj2 instanceof YailList)) {
                YailList yailList = (YailList) obj;
                YailList yailList2 = (YailList) obj2;
                for (int i = 0; i < yailList.size(); i++) {
                    if ((yailList.getObject(i) instanceof AndroidViewComponent) && (yailList2.getObject(i) instanceof String)) {
                        View view2 = ((AndroidViewComponent) yailList.getObject(i)).getView();
                        view2.setOnLongClickListener(null);
                        TooltipCompat.setTooltipText(view2, yailList2.getString(i));
                    } else {
                        throw new YailRuntimeError("Pass a valid list of View with corresponding Texts", "Invalid Input");
                    }
                }
                return;
            }
            throw new YailRuntimeError("The \"view\" parameter should be either component/layout and \"text\" should be a String", "Invalid Input");
        }
    }
}
