package com.google.j2objc.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.LOCAL_VARIABLE})
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes.dex */
public @interface LoopTranslation {
    LoopStyle value();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class LoopStyle {
        public static final LoopStyle FAST_ENUMERATION;
        public static final LoopStyle JAVA_ITERATOR;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ LoopStyle[] f5063a;

        public static LoopStyle valueOf(String str) {
            return (LoopStyle) Enum.valueOf(LoopStyle.class, str);
        }

        public static LoopStyle[] values() {
            return (LoopStyle[]) f5063a.clone();
        }

        static {
            LoopStyle loopStyle = new LoopStyle("JAVA_ITERATOR", 0);
            JAVA_ITERATOR = loopStyle;
            LoopStyle loopStyle2 = new LoopStyle("FAST_ENUMERATION", 1);
            FAST_ENUMERATION = loopStyle2;
            f5063a = new LoopStyle[]{loopStyle, loopStyle2};
        }
    }
}
