package com.google.appinventor.components.runtime.util;

import com.google.appinventor.components.common.FileScope;
import com.google.appinventor.components.runtime.Form;

/* loaded from: classes.dex */
public class RUtil {
    public static boolean needsFilePermission(Form form, String str, FileScope fileScope) {
        if (fileScope == null) {
            if (str.startsWith("//")) {
                return false;
            }
            return (str.startsWith("/") || str.startsWith("file:")) && FileUtil.isExternalStorageUri(form, str) && !FileUtil.isAppSpecificExternalUri(form, str);
        }
        int i = AnonymousClass1.$SwitchMap$com$google$appinventor$components$common$FileScope[fileScope.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return i == 3;
            }
            form.isRepl();
        }
        return false;
    }

    /* renamed from: com.google.appinventor.components.runtime.util.RUtil$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$common$FileScope;

        static {
            int[] iArr = new int[FileScope.values().length];
            $SwitchMap$com$google$appinventor$components$common$FileScope = iArr;
            try {
                iArr[FileScope.App.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$FileScope[FileScope.Asset.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$FileScope[FileScope.Shared.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
