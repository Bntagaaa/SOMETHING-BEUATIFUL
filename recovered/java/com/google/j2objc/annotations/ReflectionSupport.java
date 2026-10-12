package com.google.j2objc.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE, ElementType.PACKAGE})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes.dex */
public @interface ReflectionSupport {
    Level value();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Level {
        public static final Level FULL;
        public static final Level NATIVE_ONLY;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Level[] f5064a;

        public static Level valueOf(String str) {
            return (Level) Enum.valueOf(Level.class, str);
        }

        public static Level[] values() {
            return (Level[]) f5064a.clone();
        }

        static {
            Level level = new Level("NATIVE_ONLY", 0);
            NATIVE_ONLY = level;
            Level level2 = new Level("FULL", 1);
            FULL = level2;
            f5064a = new Level[]{level, level2};
        }
    }
}
