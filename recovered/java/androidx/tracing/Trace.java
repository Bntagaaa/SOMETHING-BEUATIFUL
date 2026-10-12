package androidx.tracing;

import android.annotation.SuppressLint;
import android.util.Log;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class Trace {

    /* renamed from: a, reason: collision with root package name */
    public static long f2211a;

    /* renamed from: b, reason: collision with root package name */
    public static Method f2212b;
    public static Method c;
    public static Method d;
    public static Method e;

    @SuppressLint({"NewApi"})
    public static boolean isEnabled() {
        try {
            if (f2212b == null) {
                return android.os.Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        try {
            if (f2212b == null) {
                f2211a = android.os.Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f2212b = android.os.Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) f2212b.invoke(null, Long.valueOf(f2211a))).booleanValue();
        } catch (Exception e2) {
            a("isTagEnabled", e2);
            return false;
        }
    }

    public static void beginSection(@NonNull String str) {
        a.beginSection(str);
    }

    public static void endSection() {
        a.endSection();
    }

    @SuppressLint({"NewApi"})
    public static void beginAsyncSection(@NonNull String str, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            if (c == null) {
                b.beginAsyncSection(str, i);
                return;
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        try {
            if (c == null) {
                c = android.os.Trace.class.getMethod("asyncTraceBegin", Long.TYPE, String.class, Integer.TYPE);
            }
            c.invoke(null, Long.valueOf(f2211a), str, Integer.valueOf(i));
        } catch (Exception e2) {
            a("asyncTraceBegin", e2);
        }
    }

    @SuppressLint({"NewApi"})
    public static void endAsyncSection(@NonNull String str, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            if (d == null) {
                b.endAsyncSection(str, i);
                return;
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        try {
            if (d == null) {
                d = android.os.Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
            }
            d.invoke(null, Long.valueOf(f2211a), str, Integer.valueOf(i));
        } catch (Exception e2) {
            a("asyncTraceEnd", e2);
        }
    }

    @SuppressLint({"NewApi"})
    public static void setCounter(@NonNull String str, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            if (e == null) {
                b.setCounter(str, i);
                return;
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        try {
            if (e == null) {
                e = android.os.Trace.class.getMethod("traceCounter", Long.TYPE, String.class, Integer.TYPE);
            }
            e.invoke(null, Long.valueOf(f2211a), str, Integer.valueOf(i));
        } catch (Exception e2) {
            a("traceCounter", e2);
        }
    }

    public static void a(String str, Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
        Log.v("Trace", "Unable to call " + str + " via reflection", exc);
    }

    private Trace() {
    }
}
