package com.google.appinventor.components.runtime.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public class HashFile {
    private String fileName;
    private String hash;
    private String timestamp;

    public HashFile() {
    }

    public HashFile(String str, String str2, Date date) {
        this.fileName = str;
        this.hash = str2;
        this.timestamp = formatTimestamp(date);
    }

    public HashFile(String str, String str2, String str3) {
        this.fileName = str;
        this.hash = str2;
        this.timestamp = str3;
    }

    public String getFileName() {
        return this.fileName;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    public String getHash() {
        return this.hash;
    }

    public void setHash(String str) {
        this.hash = str;
    }

    public String getTimestamp() {
        return this.timestamp;
    }

    public void setTimestampInDb(Date date) {
        this.timestamp = formatTimestamp(date);
    }

    public void setTimestamp(String str) {
        this.timestamp = str;
    }

    public String formatTimestamp(Date date) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(date);
    }
}
