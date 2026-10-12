package androidx.core.os;

import android.os.Build;
import android.os.Trace;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@Deprecated
/* loaded from: classes.dex */
public final class TraceCompat {

    /* renamed from: a, reason: collision with root package name */
    public static final long f1141a;

    /* renamed from: b, reason: collision with root package name */
    public static final Method f1142b;
    public static final Method c;
    public static final Method d;
    public static final Method e;

    static {
        if (Build.VERSION.SDK_INT < 29) {
            try {
                f1141a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                Class cls = Long.TYPE;
                f1142b = Trace.class.getMethod("isTagEnabled", cls);
                Class cls2 = Integer.TYPE;
                c = Trace.class.getMethod("asyncTraceBegin", cls, String.class, cls2);
                d = Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls2);
                e = Trace.class.getMethod("traceCounter", cls, String.class, cls2);
            } catch (Exception e2) {
                Log.i("TraceCompat", "Unable to initialize via reflection.", e2);
            }
        }
    }

    public static boolean isEnabled() {
        if (Build.VERSION.SDK_INT >= 29) {
            return b.c();
        }
        try {
            return ((Boolean) f1142b.invoke(null, Long.valueOf(f1141a))).booleanValue();
        } catch (Exception unused) {
            Log.v("TraceCompat", "Unable to invoke isTagEnabled() via reflection.");
            return false;
        }
    }

    public static void beginSection(@NonNull String str) {
        a.a(str);
    }

    public static void endSection() {
        a.b();
    }

    public static void beginAsyncSection(@NonNull String str, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 29) {
            b.a(str, i);
            return;
        }
        try {
            c.invoke(null, Long.valueOf(f1141a), str, Integer.valueOf(i));
        } catch (Exception unused) {
            Log.v("TraceCompat", "Unable to invoke asyncTraceBegin() via reflection.");
        }
    }

    public static void endAsyncSection(@NonNull String str, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 29) {
            b.b(str, i);
            return;
        }
        try {
            d.invoke(null, Long.valueOf(f1141a), str, Integer.valueOf(i));
        } catch (Exception unused) {
            Log.v("TraceCompat", "Unable to invoke endAsyncSection() via reflection.");
        }
    }

    public static void setCounter(@NonNull String str, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 29) {
            b.d(str, i);
            return;
        }
        try {
            e.invoke(null, Long.valueOf(f1141a), str, Integer.valueOf(i));
        } catch (Exception unused) {
            Log.v("TraceCompat", "Unable to invoke traceCounter() via reflection.");
        }
    }

    private TraceCompat() {
    }

    @RequiresApi(29)
    public static class b {
        private b() {
        }

        @DoNotInline
        public static boolean c() {
            return Trace.isEnabled();
        }

        @DoNotInline
        public static void b(String str, int i) {
            Trace.endAsyncSection(str, i);
        }

        @DoNotInline
        public static void a(String str, int i) {
            Trace.beginAsyncSection(str, i);
        }

        @DoNotInline
        public static void d(String str, long j) {
            Trace.setCounter(str, j);
        }
    }

    @RequiresApi(18)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static void a(String str) {
            Trace.beginSection(str);
        }

        @DoNotInline
        public static void b() {
            Trace.endSection();
        }
    }
}
