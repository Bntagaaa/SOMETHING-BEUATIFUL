package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum FileType implements OptionList<String> {
    Any("*/*"),
    Audio("audio/*"),
    Image("image/*"),
    Video("video/*");


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3545b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3546a;

    static {
        for (FileType fileType : values()) {
            f3545b.put(fileType.toUnderlyingValue(), fileType);
        }
    }

    FileType(String str) {
        this.f3546a = str;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3546a;
    }

    public static FileType fromUnderlyingValue(String str) {
        return (FileType) f3545b.get(str);
    }
}
