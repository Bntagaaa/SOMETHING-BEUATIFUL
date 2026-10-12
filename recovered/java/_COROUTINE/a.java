package _COROUTINE;

import android.graphics.Canvas;
import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.google.appinventor.components.runtime.HtmlParser;
import java.util.HashMap;
import kotlin.jvm.internal.InlineMarker;

/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static String A(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static void B(String str, String str2, String str3) {
        Log.d(str3, str + str2);
    }

    public static void C(String str, String str2, String str3) {
        Log.i(str3, str + str2);
    }

    public static float a(float f, float f2, float f3, float f4) {
        return ((f - f2) * f3) + f4;
    }

    public static int b(int i, int i2, int i3, int i4) {
        return ((i * i2) + i3) * i4;
    }

    public static String c(int i, int i2, String str, String str2) {
        return str + i + str2 + i2;
    }

    public static String d(int i, String str) {
        return str + i;
    }

    public static String e(int i, String str, String str2) {
        return str + i + str2;
    }

    public static String f(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.exceptionLabel());
        return sb.toString();
    }

    public static String g(String str, long j) {
        return str + j;
    }

    public static String h(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    public static String i(String str, String str2) {
        return str + str2;
    }

    public static String j(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String k(String str, String str2, String str3, String str4, String str5) {
        return str + str2 + str3 + str4 + str5;
    }

    public static String l(StringBuilder sb, Object obj, String str) {
        sb.append(obj);
        sb.append(str);
        return sb.toString();
    }

    public static String m(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static StringBuilder n(int i, int i2, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        sb.append(i2);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder o(int i, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder p(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    public static StringBuilder q(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder r(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static void s(char c, HashMap map, String str, char c2, String str2) {
        map.put(str, Character.valueOf(c));
        map.put(str2, Character.valueOf(c2));
    }

    public static void t(int i, Canvas canvas, int i2, int i3) {
        InlineMarker.finallyStart(i);
        canvas.restoreToCount(i2);
        InlineMarker.finallyEnd(i3);
    }

    public static void u(int i, HashMap map, String str, int i2, String str2) {
        map.put(Integer.valueOf(i), str);
        map.put(Integer.valueOf(i2), str2);
    }

    public static void v(String str, String str2, HtmlParser htmlParser) {
        htmlParser.ErrorOccurred(str + str2);
    }

    public static void w(String str, String str2, String str3) {
        Log.e(str3, str + str2);
    }

    public static /* synthetic */ boolean x(Object obj) {
        return obj != null;
    }

    public static StackTraceElement[] y() {
        return new Throwable().getStackTrace();
    }

    public static String z(String str, String str2) {
        return str + str2;
    }
}
