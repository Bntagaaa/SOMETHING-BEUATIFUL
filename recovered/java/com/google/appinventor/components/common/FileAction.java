package com.google.appinventor.components.common;

import java.util.HashMap;

/* loaded from: classes.dex */
public enum FileAction implements OptionList<String> {
    PickExistingFile("Pick Existing File"),
    PickNewFile("Pick New File"),
    PickDirectory("Pick Directory");


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3541b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final String f3542a;

    static {
        for (FileAction fileAction : values()) {
            f3541b.put(fileAction.f3542a, fileAction);
        }
    }

    FileAction(String str) {
        this.f3542a = str;
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return this.f3542a;
    }

    public static FileAction fromUnderlyingValue(String str) {
        return (FileAction) f3541b.get(str);
    }
}
