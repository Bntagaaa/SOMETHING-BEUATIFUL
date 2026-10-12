package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.ontbee.legacyforks.cn.pedant.SweetAlert.SweetAlertDialog;

@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "Show Various kinds of Dialog like Progress, Success, Warnings, Error, etc", iconName = "images/niotronCustomDialog.png", nonVisible = true, version = 1)
@UsesLibraries(libraries = "sweetdialog.jar,sweetdialog.aar,sweetdialogprogress.jar,sweetdialogprogress.aar")
@SimpleObject
/* loaded from: classes.dex */
public final class NiotronCustomDialog extends AndroidNonvisibleComponent {
    private SweetAlertDialog pDialog;

    public NiotronCustomDialog(ComponentContainer componentContainer) {
        super(componentContainer.$form());
    }

    @SimpleFunction(description = "Shoes the progress dialog")
    public void ShowProgressDialog(String str, boolean z, int i) {
        SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(this.form, 5);
        this.pDialog = sweetAlertDialog;
        sweetAlertDialog.getProgressHelper().setBarColor(i);
        this.pDialog.setTitleText(str);
        this.pDialog.setCancelable(z);
        this.pDialog.showCancelButton(false);
        this.pDialog.show();
    }

    @SimpleFunction(description = "Shows the message dialog")
    public void ShowMessageDialog(String str, String str2, boolean z) {
        SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(this.form);
        this.pDialog = sweetAlertDialog;
        sweetAlertDialog.setTitleText(str);
        if (!str2.equals("")) {
            this.pDialog.setContentText(str2);
        }
        this.pDialog.setCancelable(z);
        this.pDialog.showCancelButton(false);
        this.pDialog.show();
    }

    @SimpleFunction(description = "Shows error dialog")
    public void ShowErrorDialog(String str, String str2, boolean z) {
        SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(this.form, 1);
        this.pDialog = sweetAlertDialog;
        sweetAlertDialog.setTitleText(str);
        if (!str2.equals("")) {
            this.pDialog.setContentText(str2);
        }
        this.pDialog.setCancelable(z);
        this.pDialog.showCancelButton(false);
        this.pDialog.show();
    }

    @SimpleFunction(description = "Shows warning dialog")
    public void ShowWarningDialog(final String str, String str2, final String str3, String str4, boolean z) {
        SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(this.form, 3);
        this.pDialog = sweetAlertDialog;
        sweetAlertDialog.setTitleText(str);
        if (!str2.equals("")) {
            this.pDialog.setContentText(str2);
        }
        this.pDialog.setConfirmText(str3);
        if (!str4.equals("")) {
            this.pDialog.setCancelText(str4);
        }
        if (!str4.equals("")) {
            this.pDialog.showCancelButton(true);
        }
        this.pDialog.setCancelable(z);
        this.pDialog.setCancelClickListener(new SweetAlertDialog.OnSweetClickListener() { // from class: com.google.appinventor.components.runtime.NiotronCustomDialog.1
            public void onClick(SweetAlertDialog sweetAlertDialog2) {
                NiotronCustomDialog.this.CancelButtonClick(str, str3);
            }
        });
        this.pDialog.setConfirmClickListener(new SweetAlertDialog.OnSweetClickListener() { // from class: com.google.appinventor.components.runtime.NiotronCustomDialog.2
            public void onClick(SweetAlertDialog sweetAlertDialog2) {
                NiotronCustomDialog.this.ConfirmButtonClick(str, str3);
            }
        });
        this.pDialog.show();
    }

    @SimpleFunction(description = "Shows error dialog with buttons")
    public void ShowErrorDialogWithButtons(final String str, String str2, final String str3, String str4, boolean z) {
        SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(this.form, 1);
        this.pDialog = sweetAlertDialog;
        sweetAlertDialog.setTitleText(str);
        if (!str2.equals("")) {
            this.pDialog.setContentText(str2);
        }
        this.pDialog.setConfirmText(str3);
        if (!str4.equals("")) {
            this.pDialog.setCancelText(str4);
        }
        if (!str4.equals("")) {
            this.pDialog.showCancelButton(true);
        }
        this.pDialog.setCancelable(z);
        this.pDialog.setCancelClickListener(new SweetAlertDialog.OnSweetClickListener() { // from class: com.google.appinventor.components.runtime.NiotronCustomDialog.3
            public void onClick(SweetAlertDialog sweetAlertDialog2) {
                NiotronCustomDialog.this.CancelButtonClick(str, str3);
            }
        });
        this.pDialog.setConfirmClickListener(new SweetAlertDialog.OnSweetClickListener() { // from class: com.google.appinventor.components.runtime.NiotronCustomDialog.4
            public void onClick(SweetAlertDialog sweetAlertDialog2) {
                NiotronCustomDialog.this.ConfirmButtonClick(str, str3);
            }
        });
        this.pDialog.show();
    }

    @SimpleFunction(description = "Shows progress dialog with buttons")
    public void ShowProgressDialogWithButtons(final String str, String str2, final String str3, String str4, boolean z) {
        SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(this.form, 5);
        this.pDialog = sweetAlertDialog;
        sweetAlertDialog.setTitleText(str);
        if (!str2.equals("")) {
            this.pDialog.setContentText(str2);
        }
        this.pDialog.setConfirmText(str3);
        if (!str4.equals("")) {
            this.pDialog.setCancelText(str4);
        }
        if (!str4.equals("")) {
            this.pDialog.showCancelButton(true);
        }
        this.pDialog.setCancelable(z);
        this.pDialog.setCancelClickListener(new SweetAlertDialog.OnSweetClickListener() { // from class: com.google.appinventor.components.runtime.NiotronCustomDialog.5
            public void onClick(SweetAlertDialog sweetAlertDialog2) {
                NiotronCustomDialog.this.CancelButtonClick(str, str3);
            }
        });
        this.pDialog.setConfirmClickListener(new SweetAlertDialog.OnSweetClickListener() { // from class: com.google.appinventor.components.runtime.NiotronCustomDialog.6
            public void onClick(SweetAlertDialog sweetAlertDialog2) {
                NiotronCustomDialog.this.ConfirmButtonClick(str, str3);
            }
        });
        this.pDialog.show();
    }

    @SimpleFunction(description = "Shows success dialog")
    public void ShowSuccessDialog(final String str, String str2, final String str3, boolean z) {
        SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(this.form, 2);
        this.pDialog = sweetAlertDialog;
        sweetAlertDialog.setTitleText(str);
        if (!str2.equals("")) {
            this.pDialog.setContentText(str2);
        }
        if (!str3.equals("")) {
            this.pDialog.setConfirmText(str3);
        }
        this.pDialog.setCancelable(z);
        this.pDialog.showCancelButton(false);
        this.pDialog.setConfirmClickListener(new SweetAlertDialog.OnSweetClickListener() { // from class: com.google.appinventor.components.runtime.NiotronCustomDialog.7
            public void onClick(SweetAlertDialog sweetAlertDialog2) {
                NiotronCustomDialog.this.ConfirmButtonClick(str, str3);
            }
        });
        this.pDialog.show();
    }

    @SimpleFunction(description = "Returns if the dialog is showing")
    public boolean IsShowing() {
        SweetAlertDialog sweetAlertDialog = this.pDialog;
        if (sweetAlertDialog != null) {
            return sweetAlertDialog.isShowing();
        }
        return false;
    }

    @SimpleFunction(description = "Sets custom image")
    public void SetCustomImage(@Asset String str) {
        try {
            this.pDialog.setCustomImage(MediaUtil.getBitmapDrawable(this.form, str));
        } catch (Exception unused) {
        }
    }

    @SimpleEvent(description = "Cancel button clicked")
    public void CancelButtonClick(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "CancelButtonClick", str, str2);
    }

    @SimpleEvent(description = "Confirm button clicked")
    public void ConfirmButtonClick(String str, String str2) {
        EventDispatcher.dispatchEvent(this, "ConfirmButtonClick", str, str2);
    }

    @SimpleFunction(description = "Dialog dismissed")
    public void Dismiss() {
        SweetAlertDialog sweetAlertDialog = this.pDialog;
        if (sweetAlertDialog != null) {
            sweetAlertDialog.dismiss();
        }
    }

    @SimpleFunction(description = "Dialog dismissed with animation")
    public void DismissWithAnimation() {
        SweetAlertDialog sweetAlertDialog = this.pDialog;
        if (sweetAlertDialog != null) {
            sweetAlertDialog.dismissWithAnimation();
        }
    }
}
