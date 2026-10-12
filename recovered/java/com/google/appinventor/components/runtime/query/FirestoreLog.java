package com.google.appinventor.components.runtime.query;

import android.util.Log;

/* loaded from: classes.dex */
public class FirestoreLog {
    private static int _logLevel = 3;

    public static void setLogLevel(String str) {
        w("FirestoreJDL", "Setting log level to : " + str);
        String lowerCase = str.toLowerCase();
        lowerCase.getClass();
        switch (lowerCase) {
            case "warn":
            case "warning":
                _logLevel = 5;
                break;
            case "debug":
                _logLevel = 3;
                break;
            case "error":
                _logLevel = 6;
                break;
            default:
                e("FirestoreJDL", "New logLevel unknown, leaving previous setting : " + _logLevel);
                break;
        }
        d("FirestoreJDL", "New logLevel : " + _logLevel);
    }

    public static void d(String str, String str2) {
        if (_logLevel <= 3) {
            Log.d(str, str2);
        }
    }

    public static void w(String str, String str2) {
        if (_logLevel <= 5) {
            Log.w(str, str2);
        }
    }

    public static void w(String str, String str2, Exception exc) {
        if (_logLevel <= 5) {
            Log.w(str, str2, exc);
        }
    }

    public static void e(String str, String str2) {
        if (_logLevel <= 6) {
            Log.e(str, str2);
        }
    }

    public static void e(String str, String str2, Exception exc) {
        if (_logLevel <= 6) {
            Log.e(str, str2, exc);
        }
    }
}
