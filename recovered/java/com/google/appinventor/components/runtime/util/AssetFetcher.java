package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.ReplForm;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import java.io.File;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes.dex */
public class AssetFetcher {
    private static Context context = Form.getActiveForm();
    private static HashDatabase db = new HashDatabase(context);
    private static final String LOG_TAG = "AssetFetcher";
    private static ExecutorService background = Executors.newSingleThreadExecutor();
    private static volatile boolean inError = false;
    private static final Object semaphore = new Object();

    public static /* bridge */ /* synthetic */ File b(String str, String str2, String str3) {
        return getFile(str, str2, str3, 0);
    }

    private AssetFetcher() {
    }

    public static void fetchAssets(final String str, final String str2, final String str3, final String str4) {
        background.submit(new Runnable() { // from class: com.google.appinventor.components.runtime.util.AssetFetcher.1
            @Override // java.lang.Runnable
            public void run() {
                if (AssetFetcher.b(str3 + "/ode/download/file/" + str2 + "/" + str4, str, str4) != null) {
                    RetValManager.assetTransferred(str4);
                }
            }
        });
    }

    public static void upgradeCompanion(final String str, final String str2) {
        background.submit(new Runnable() { // from class: com.google.appinventor.components.runtime.util.AssetFetcher.2
            @Override // java.lang.Runnable
            public void run() {
                String[] strArrSplit = str2.split("/", 0);
                File fileB = AssetFetcher.b(str2, str, strArrSplit[strArrSplit.length - 1]);
                if (fileB != null) {
                    try {
                        Form activeForm = Form.getActiveForm();
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setDataAndType(NougatUtil.getPackageUri(activeForm, fileB), "application/vnd.android.package-archive");
                        intent.setFlags(1);
                        activeForm.startActivity(intent);
                    } catch (Exception e) {
                        Log.e(AssetFetcher.LOG_TAG, "ERROR_UNABLE_TO_GET", e);
                        RetValManager.sendError("Unable to Install new Companion Package.");
                    }
                }
            }
        });
    }

    public static void loadExtensions(String str) {
        String str2 = LOG_TAG;
        a.B("loadExtensions called jsonString = ", str, str2);
        try {
            ReplForm replForm = (ReplForm) Form.getActiveForm();
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            if (jSONArray.length() == 0) {
                Log.d(str2, "loadExtensions: No Extensions");
                RetValManager.extensionsLoaded();
                return;
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                String strOptString = jSONArray.optString(i);
                if (strOptString == null) {
                    Log.e(LOG_TAG, "extensionName was null");
                    return;
                }
                Log.d(LOG_TAG, "loadExtensions, extensionName = " + strOptString);
                arrayList.add(strOptString);
            }
            try {
                replForm.loadComponents(arrayList);
                RetValManager.extensionsLoaded();
            } catch (Exception e) {
                Log.e(LOG_TAG, "Error in form.loadComponents", e);
                RetValManager.sendError("Unable to load extensions." + e);
            }
        } catch (JSONException e2) {
            Log.e(LOG_TAG, "JSON Exception parsing extension string", e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0215 A[Catch: all -> 0x00b4, Exception -> 0x00b8, TRY_LEAVE, TryCatch #7 {Exception -> 0x00b8, all -> 0x00b4, blocks: (B:29:0x0089, B:31:0x00a4, B:33:0x00aa, B:38:0x00bc, B:46:0x00f5, B:48:0x00fb, B:50:0x0101, B:52:0x0107, B:53:0x010a, B:57:0x0129, B:59:0x012e, B:62:0x0150, B:63:0x016b, B:90:0x0215, B:78:0x01bb, B:80:0x01c0, B:82:0x01e0, B:83:0x01fb, B:84:0x01fc, B:71:0x017b, B:73:0x0180, B:76:0x019f, B:77:0x01ba, B:85:0x01fd, B:86:0x020e, B:54:0x011f, B:56:0x0126, B:68:0x0170, B:70:0x0174), top: B:132:0x0089, inners: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0226  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.io.File getFile(final java.lang.String r17, java.lang.String r18, java.lang.String r19, int r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.util.AssetFetcher.getFile(java.lang.String, java.lang.String, java.lang.String, int):java.io.File");
    }

    private static File getDestinationFile(Form form, String str) {
        String strZ;
        if (!str.contains("/external_comps/") || Build.VERSION.SDK_INT < 34) {
            return new File(QUtil.getReplAssetPath(form, true), str.substring(7));
        }
        File file = new File(form.getCacheDir(), str.substring(7));
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            throw new IllegalStateException("Unable to determine parent directory for " + file);
        }
        if (!parentFile.exists() && !parentFile.mkdirs()) {
            throw new YailRuntimeError("Unable to create directory " + parentFile, "Extensions");
        }
        if (str.endsWith("/classes.jar")) {
            strZ = a.z(parentFile.getName(), ".jar");
        } else {
            String[] strArrSplit = str.split("/");
            strZ = strArrSplit[strArrSplit.length - 1];
        }
        return new File(parentFile, strZ);
    }

    private static String byteArray2Hex(byte[] bArr) {
        Formatter formatter = new Formatter();
        for (byte b2 : bArr) {
            formatter.format("%02x", Byte.valueOf(b2));
        }
        return formatter.toString();
    }
}
