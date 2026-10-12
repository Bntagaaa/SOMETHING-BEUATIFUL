package kotlin.jvm.internal;

import java.util.Arrays;
import kotlin.KotlinNullPointerException;
import kotlin.SinceKotlin;
import kotlin.UninitializedPropertyAccessException;

/* loaded from: classes2.dex */
public class Intrinsics {
    public static int compare(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    public static int compare(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    private Intrinsics() {
    }

    public static String stringPlus(String str, Object obj) {
        return str + obj;
    }

    public static void checkNotNull(Object obj) {
        if (obj == null) {
            throwJavaNpe();
        }
    }

    public static void checkNotNull(Object obj, String str) {
        if (obj == null) {
            throwJavaNpe(str);
        }
    }

    public static void throwNpe() {
        KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException();
        b(kotlinNullPointerException, Intrinsics.class.getName());
        throw kotlinNullPointerException;
    }

    public static void throwNpe(String str) {
        KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException(str);
        b(kotlinNullPointerException, Intrinsics.class.getName());
        throw kotlinNullPointerException;
    }

    @SinceKotlin(version = "1.4")
    public static void throwJavaNpe() {
        NullPointerException nullPointerException = new NullPointerException();
        b(nullPointerException, Intrinsics.class.getName());
        throw nullPointerException;
    }

    @SinceKotlin(version = "1.4")
    public static void throwJavaNpe(String str) {
        NullPointerException nullPointerException = new NullPointerException(str);
        b(nullPointerException, Intrinsics.class.getName());
        throw nullPointerException;
    }

    public static void throwUninitializedProperty(String str) {
        UninitializedPropertyAccessException uninitializedPropertyAccessException = new UninitializedPropertyAccessException(str);
        b(uninitializedPropertyAccessException, Intrinsics.class.getName());
        throw uninitializedPropertyAccessException;
    }

    public static void throwUninitializedPropertyAccessException(String str) {
        throwUninitializedProperty("lateinit property " + str + " has not been initialized");
    }

    public static void throwAssert() {
        AssertionError assertionError = new AssertionError();
        b(assertionError, Intrinsics.class.getName());
        throw assertionError;
    }

    public static void throwAssert(String str) {
        AssertionError assertionError = new AssertionError(str);
        b(assertionError, Intrinsics.class.getName());
        throw assertionError;
    }

    public static void throwIllegalArgument() {
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException();
        b(illegalArgumentException, Intrinsics.class.getName());
        throw illegalArgumentException;
    }

    public static void throwIllegalArgument(String str) {
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException(str);
        b(illegalArgumentException, Intrinsics.class.getName());
        throw illegalArgumentException;
    }

    public static void throwIllegalState() {
        IllegalStateException illegalStateException = new IllegalStateException();
        b(illegalStateException, Intrinsics.class.getName());
        throw illegalStateException;
    }

    public static void throwIllegalState(String str) {
        IllegalStateException illegalStateException = new IllegalStateException(str);
        b(illegalStateException, Intrinsics.class.getName());
        throw illegalStateException;
    }

    public static void checkExpressionValueIsNotNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException(_COROUTINE.a.z(str, " must not be null"));
        b(illegalStateException, Intrinsics.class.getName());
        throw illegalStateException;
    }

    public static void checkNotNullExpressionValue(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(_COROUTINE.a.z(str, " must not be null"));
        b(nullPointerException, Intrinsics.class.getName());
        throw nullPointerException;
    }

    public static void checkReturnedValueIsNotNull(Object obj, String str, String str2) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException("Method specified as non-null returned null: " + str + "." + str2);
        b(illegalStateException, Intrinsics.class.getName());
        throw illegalStateException;
    }

    public static void checkReturnedValueIsNotNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException(str);
        b(illegalStateException, Intrinsics.class.getName());
        throw illegalStateException;
    }

    public static void checkFieldIsNotNull(Object obj, String str, String str2) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException("Field specified as non-null is null: " + str + "." + str2);
        b(illegalStateException, Intrinsics.class.getName());
        throw illegalStateException;
    }

    public static void checkFieldIsNotNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException(str);
        b(illegalStateException, Intrinsics.class.getName());
        throw illegalStateException;
    }

    public static void checkParameterIsNotNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException(a(str));
        b(illegalArgumentException, Intrinsics.class.getName());
        throw illegalArgumentException;
    }

    public static void checkNotNullParameter(Object obj, String str) {
        if (obj != null) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(a(str));
        b(nullPointerException, Intrinsics.class.getName());
        throw nullPointerException;
    }

    public static String a(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        String name = Intrinsics.class.getName();
        int i = 0;
        while (!stackTrace[i].getClassName().equals(name)) {
            i++;
        }
        while (stackTrace[i].getClassName().equals(name)) {
            i++;
        }
        StackTraceElement stackTraceElement = stackTrace[i];
        return "Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str;
    }

    public static boolean areEqual(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(Double d, Double d2) {
        return d == null ? d2 == null : d2 != null && d.doubleValue() == d2.doubleValue();
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(Double d, double d2) {
        return d != null && d.doubleValue() == d2;
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(double d, Double d2) {
        return d2 != null && d == d2.doubleValue();
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(Float f, Float f2) {
        return f == null ? f2 == null : f2 != null && f.floatValue() == f2.floatValue();
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(Float f, float f2) {
        return f != null && f.floatValue() == f2;
    }

    @SinceKotlin(version = "1.1")
    public static boolean areEqual(float f, Float f2) {
        return f2 != null && f == f2.floatValue();
    }

    public static void throwUndefinedForReified() {
        throwUndefinedForReified("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
    }

    public static void throwUndefinedForReified(String str) {
        throw new UnsupportedOperationException(str);
    }

    public static void reifiedOperationMarker(int i, String str) {
        throwUndefinedForReified();
    }

    public static void reifiedOperationMarker(int i, String str, String str2) {
        throwUndefinedForReified(str2);
    }

    public static void needClassReification() {
        throwUndefinedForReified();
    }

    public static void needClassReification(String str) {
        throwUndefinedForReified(str);
    }

    public static void checkHasClass(String str) throws ClassNotFoundException {
        String strReplace = str.replace('/', '.');
        try {
            Class.forName(strReplace);
        } catch (ClassNotFoundException e) {
            ClassNotFoundException classNotFoundException = new ClassNotFoundException(_COROUTINE.a.A("Class ", strReplace, " is not found. Please update the Kotlin runtime to the latest version"), e);
            b(classNotFoundException, Intrinsics.class.getName());
            throw classNotFoundException;
        }
    }

    public static void checkHasClass(String str, String str2) throws ClassNotFoundException {
        String strReplace = str.replace('/', '.');
        try {
            Class.forName(strReplace);
        } catch (ClassNotFoundException e) {
            ClassNotFoundException classNotFoundException = new ClassNotFoundException("Class " + strReplace + " is not found: this code requires the Kotlin runtime of version at least " + str2, e);
            b(classNotFoundException, Intrinsics.class.getName());
            throw classNotFoundException;
        }
    }

    public static void b(Throwable th, String str) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(stackTrace[i2].getClassName())) {
                i = i2;
            }
        }
        th.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i + 1, length));
    }

    @SinceKotlin(version = "1.4")
    public static class Kotlin {
        private Kotlin() {
        }
    }
}
