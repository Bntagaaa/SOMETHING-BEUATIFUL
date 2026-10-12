package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@GwtIncompatible
/* loaded from: classes.dex */
public final class FileWriteMode {
    public static final FileWriteMode APPEND;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ FileWriteMode[] f4656a;

    public static FileWriteMode valueOf(String str) {
        return (FileWriteMode) Enum.valueOf(FileWriteMode.class, str);
    }

    public static FileWriteMode[] values() {
        return (FileWriteMode[]) f4656a.clone();
    }

    static {
        FileWriteMode fileWriteMode = new FileWriteMode("APPEND", 0);
        APPEND = fileWriteMode;
        f4656a = new FileWriteMode[]{fileWriteMode};
    }
}
