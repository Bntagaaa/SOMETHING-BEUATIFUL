package com.google.appinventor.components.runtime.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.webkit.GeolocationPermissions;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.EditText;
import com.google.appinventor.components.runtime.WebViewer;
import com.google.common.net.HttpHeaders;

/* loaded from: classes.dex */
public class EclairUtil {
    private EclairUtil() {
    }

    public static void overridePendingTransitions(Activity activity, int i, int i2) {
        activity.overridePendingTransition(i, i2);
    }

    public static void setupWebViewGeoLoc(final WebViewer webViewer, WebView webView, final Activity activity) {
        webView.getSettings().setGeolocationDatabasePath(activity.getFilesDir().getAbsolutePath());
        webView.getSettings().setDatabaseEnabled(true);
        webView.setWebChromeClient(new WebChromeClient() { // from class: com.google.appinventor.components.runtime.util.EclairUtil.1
            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsShowPrompt(final String str, final GeolocationPermissions.Callback callback) {
                if (!webViewer.PromptforPermission()) {
                    callback.invoke(str, true, true);
                    return;
                }
                AlertDialog alertDialogCreate = new AlertDialog.Builder(activity).create();
                alertDialogCreate.setTitle("Permission Request");
                alertDialogCreate.setMessage((str.equals("file://") ? "This Application" : str).concat(" would like to access your location."));
                alertDialogCreate.setButton(-1, HttpHeaders.ALLOW, new DialogInterface.OnClickListener() { // from class: com.google.appinventor.components.runtime.util.EclairUtil.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        callback.invoke(str, true, true);
                    }
                });
                alertDialogCreate.setButton(-2, "Refuse", new DialogInterface.OnClickListener() { // from class: com.google.appinventor.components.runtime.util.EclairUtil.1.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        callback.invoke(str, false, true);
                    }
                });
                alertDialogCreate.show();
            }
        });
    }

    public static void clearWebViewGeoLoc() {
        GeolocationPermissions.getInstance().clearAll();
    }

    public static String getInstallerPackageName(String str, Activity activity) {
        return activity.getPackageManager().getInstallerPackageName(str);
    }

    public static void disableSuggestions(EditText editText) {
        editText.setInputType(editText.getInputType() | 524288);
    }
}
