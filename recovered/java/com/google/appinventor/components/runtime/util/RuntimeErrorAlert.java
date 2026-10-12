package com.google.appinventor.components.runtime.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.util.Log;

/* loaded from: classes.dex */
public final class RuntimeErrorAlert {
    public static void alert(final Object obj, String str, String str2, String str3) {
        Log.i("RuntimeErrorAlert", "in alert");
        AlertDialog alertDialogCreate = new AlertDialog.Builder((Context) obj).create();
        alertDialogCreate.setTitle(str2);
        alertDialogCreate.setMessage(str);
        alertDialogCreate.setButton(str3, new DialogInterface.OnClickListener() { // from class: com.google.appinventor.components.runtime.util.RuntimeErrorAlert.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ((Activity) obj).finish();
            }
        });
        if (str == null) {
            Log.e(RuntimeErrorAlert.class.getName(), "No error message available");
        } else {
            Log.e(RuntimeErrorAlert.class.getName(), str);
        }
        alertDialogCreate.show();
    }
}
