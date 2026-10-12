package com.google.appinventor.components.runtime.query;

import java.util.Date;

/* loaded from: classes.dex */
public class JSONDateWrapper extends Date {
    private static String datePrefix = "__DATE:";

    public JSONDateWrapper(Date date) {
        super(date.getTime());
    }

    public static void setDatePrefix(String str) {
        datePrefix = str;
    }

    public static boolean isWrappedDate(Object obj) {
        return (obj instanceof String) && ((String) obj).startsWith(datePrefix);
    }

    public static Date unwrapDate(Object obj) {
        String str = (String) obj;
        int length = datePrefix.length();
        return new Date(Long.parseLong(str.substring(length).substring(0, str.length() - length)));
    }

    @Override // java.util.Date
    public String toString() {
        return datePrefix + getTime();
    }
}
