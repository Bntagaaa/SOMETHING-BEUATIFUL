package com.google.appinventor.components.runtime.query;

import com.google.firebase.Timestamp;

/* loaded from: classes.dex */
public class JSONTimestampWrapper {
    private static String timestampPrefix = "__TIMESTAMP:";
    private Timestamp timestamp;

    public JSONTimestampWrapper(Timestamp timestamp) {
        this.timestamp = timestamp;
    }

    public static void setTimestampPrefix(String str) {
        timestampPrefix = str;
    }

    public static boolean isWrappedTimestamp(Object obj) {
        return (obj instanceof String) && ((String) obj).startsWith(timestampPrefix);
    }

    public static Timestamp unwrapTimestamp(Object obj) throws NumberFormatException {
        long j;
        int i;
        String str = (String) obj;
        int length = timestampPrefix.length();
        String strSubstring = str.substring(length).substring(0, str.length() - length);
        if (strSubstring.contains("_")) {
            String[] strArrSplit = strSubstring.split("_");
            j = Long.parseLong(strArrSplit[0]);
            i = Integer.parseInt(strArrSplit[1]);
        } else {
            j = Long.parseLong(strSubstring);
            i = 0;
        }
        return new Timestamp(j, i);
    }

    public String toString() {
        return timestampPrefix + this.timestamp.getSeconds() + "_" + this.timestamp.getNanoseconds();
    }
}
