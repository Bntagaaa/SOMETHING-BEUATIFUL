package com.google.appinventor.components.runtime.query;

import com.google.firebase.firestore.FieldValue;

/* loaded from: classes.dex */
public class FieldValueHelper {
    private static String fieldValueDelete = "__DELETE";
    private static String fieldValueServerTimestamp = "__SERVERTIMESTAMP";

    public static void setDeletePrefix(String str) {
        fieldValueDelete = str;
    }

    public static void setServerTimestampPrefix(String str) {
        fieldValueServerTimestamp = str;
    }

    public static Object unwrapFieldValue(Object obj) {
        String str = (String) obj;
        if (fieldValueDelete.equals(str)) {
            return FieldValue.delete();
        }
        return fieldValueServerTimestamp.equals(str) ? FieldValue.serverTimestamp() : obj;
    }

    public static boolean isWrappedFieldValue(Object obj) {
        if (!(obj instanceof String)) {
            return false;
        }
        String str = (String) obj;
        return fieldValueDelete.equals(str) || fieldValueServerTimestamp.equals(str);
    }
}
