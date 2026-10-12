package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
@Deprecated
/* loaded from: classes.dex */
public class ComputationException extends RuntimeException {
    public ComputationException(@NullableDecl Throwable th) {
        super(th);
    }
}
