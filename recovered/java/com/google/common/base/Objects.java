package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public final class Objects extends f {
    private Objects() {
    }

    public static boolean equal(@NullableDecl Object obj, @NullableDecl Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int hashCode(@NullableDecl Object... objArr) {
        return Arrays.hashCode(objArr);
    }
}
