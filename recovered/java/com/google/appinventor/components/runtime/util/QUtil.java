package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import java.io.File;

/* loaded from: classes.dex */
public class QUtil {
    public static String getExternalStoragePath(Context context, boolean z, boolean z2) {
        return getExternalStorageDir(context, z, z2).getAbsolutePath();
    }

    public static String getExternalStoragePath(Context context, boolean z) {
        return getExternalStoragePath(context, z, false);
    }

    public static String getExternalStoragePath(Context context) {
        return getExternalStoragePath(context, false, false);
    }

    public static File getExternalStorageDir(Context context) {
        return getExternalStorageDir(context, false);
    }

    public static File getExternalStorageDir(Context context, boolean z) {
        return getExternalStorageDir(context, z, false);
    }

    public static File getExternalStorageDir(Context context, boolean z, boolean z2) {
        int i = Build.VERSION.SDK_INT;
        if ((!z2 && i >= 29) || z) {
            return context.getExternalFilesDir(null);
        }
        return Environment.getExternalStorageDirectory();
    }

    public static String getReplAssetPath(Context context, boolean z) {
        return Build.VERSION.SDK_INT >= 29 ? a.z(getExternalStoragePath(context, z), "/assets/") : a.z(getExternalStoragePath(context, z), "/Niotron/assets/");
    }

    public static String getReplDatabasePath(Context context, boolean z) {
        return Build.VERSION.SDK_INT >= 29 ? a.z(getExternalStoragePath(context, z), "/databases/") : a.z(getExternalStoragePath(context, z), "/AppInventor/databases/");
    }

    public static String getReplAssetPath(Context context) {
        return getReplAssetPath(context, false);
    }

    public static String getReplDataPath(Context context, boolean z) {
        return Build.VERSION.SDK_INT >= 29 ? a.z(getExternalStoragePath(context, z), "/data/") : a.z(getExternalStoragePath(context, z), "/AppInventor/data/");
    }

    public static String getReplDataPath(Context context) {
        return getReplDataPath(context, false);
    }
}
