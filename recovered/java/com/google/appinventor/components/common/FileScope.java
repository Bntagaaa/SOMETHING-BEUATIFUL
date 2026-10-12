package com.google.appinventor.components.common;

import java.util.HashMap;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class FileScope implements OptionList<String> {
    public static final FileScope App;
    public static final FileScope Asset;
    public static final FileScope Cache;
    public static final FileScope Legacy;
    public static final FileScope Private;
    public static final FileScope Shared;

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f3543a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ FileScope[] f3544b;

    public static FileScope valueOf(String str) {
        return (FileScope) Enum.valueOf(FileScope.class, str);
    }

    public static FileScope[] values() {
        return (FileScope[]) f3544b.clone();
    }

    static {
        FileScope fileScope = new FileScope("App", 0);
        App = fileScope;
        FileScope fileScope2 = new FileScope("Asset", 1);
        Asset = fileScope2;
        FileScope fileScope3 = new FileScope("Cache", 2);
        Cache = fileScope3;
        FileScope fileScope4 = new FileScope("Legacy", 3);
        Legacy = fileScope4;
        FileScope fileScope5 = new FileScope("Private", 4);
        Private = fileScope5;
        FileScope fileScope6 = new FileScope("Shared", 5);
        Shared = fileScope6;
        f3544b = new FileScope[]{fileScope, fileScope2, fileScope3, fileScope4, fileScope5, fileScope6};
        f3543a = new HashMap();
        for (FileScope fileScope7 : values()) {
            f3543a.put(fileScope7.toUnderlyingValue(), fileScope7);
        }
    }

    public static FileScope fromUnderlyingValue(String str) {
        return (FileScope) f3543a.get(str);
    }

    @Override // com.google.appinventor.components.common.OptionList
    public String toUnderlyingValue() {
        return name();
    }
}
