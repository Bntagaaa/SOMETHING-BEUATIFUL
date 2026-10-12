package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

/* loaded from: classes.dex */
public class Debug {
    public static void logStack(String str, String str2, int i) {
        StackTraceElement[] stackTraceElementArrY = _COROUTINE.a.y();
        int iMin = Math.min(i, stackTraceElementArrY.length - 1);
        String strZ = " ";
        for (int i2 = 1; i2 <= iMin; i2++) {
            StackTraceElement stackTraceElement = stackTraceElementArrY[i2];
            String str3 = ".(" + stackTraceElementArrY[i2].getFileName() + ":" + stackTraceElementArrY[i2].getLineNumber() + ") " + stackTraceElementArrY[i2].getMethodName();
            strZ = _COROUTINE.a.z(strZ, " ");
            Log.v(str, str2 + strZ + str3 + strZ);
        }
    }

    public static void printStack(String str, int i) {
        StackTraceElement[] stackTraceElementArrY = _COROUTINE.a.y();
        int iMin = Math.min(i, stackTraceElementArrY.length - 1);
        String strZ = " ";
        for (int i2 = 1; i2 <= iMin; i2++) {
            StackTraceElement stackTraceElement = stackTraceElementArrY[i2];
            String str2 = ".(" + stackTraceElementArrY[i2].getFileName() + ":" + stackTraceElementArrY[i2].getLineNumber() + ") ";
            strZ = _COROUTINE.a.z(strZ, " ");
            System.out.println(str + strZ + str2 + strZ);
        }
    }

    public static String getName(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return "UNKNOWN";
        }
    }

    public static void dumpPoc(Object obj) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        StackTraceElement stackTraceElement = _COROUTINE.a.y()[1];
        String str = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
        Class<?> cls = obj.getClass();
        PrintStream printStream = System.out;
        StringBuilder sbQ = _COROUTINE.a.q(str, "------------- ");
        sbQ.append(cls.getName());
        sbQ.append(" --------------------");
        printStream.println(sbQ.toString());
        for (Field field : cls.getFields()) {
            try {
                Object obj2 = field.get(obj);
                if (field.getName().startsWith("layout_constraint") && ((!(obj2 instanceof Integer) || !obj2.toString().equals("-1")) && ((!(obj2 instanceof Integer) || !obj2.toString().equals("0")) && ((!(obj2 instanceof Float) || !obj2.toString().equals("1.0")) && (!(obj2 instanceof Float) || !obj2.toString().equals("0.5")))))) {
                    System.out.println(str + "    " + field.getName() + " " + obj2);
                }
            } catch (IllegalAccessException unused) {
            }
        }
        PrintStream printStream2 = System.out;
        StringBuilder sbQ2 = _COROUTINE.a.q(str, "------------- ");
        sbQ2.append(cls.getSimpleName());
        sbQ2.append(" --------------------");
        printStream2.println(sbQ2.toString());
    }

    public static String getName(Context context, int i) {
        if (i == -1) {
            return "UNKNOWN";
        }
        try {
            return context.getResources().getResourceEntryName(i);
        } catch (Exception unused) {
            return _COROUTINE.a.d(i, "?");
        }
    }

    public static String getName(Context context, int[] iArr) throws Resources.NotFoundException {
        String resourceEntryName;
        try {
            String str = iArr.length + "[";
            int i = 0;
            while (i < iArr.length) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(i == 0 ? "" : " ");
                String string = sb.toString();
                try {
                    resourceEntryName = context.getResources().getResourceEntryName(iArr[i]);
                } catch (Resources.NotFoundException unused) {
                    resourceEntryName = "? " + iArr[i] + " ";
                }
                str = string + resourceEntryName;
                i++;
            }
            return str + "]";
        } catch (Exception e) {
            Log.v("DEBUG", e.toString());
            return "UNKNOWN";
        }
    }

    public static String getState(MotionLayout motionLayout, int i) {
        if (i == -1) {
            return "UNDEFINED";
        }
        return motionLayout.getContext().getResources().getResourceEntryName(i);
    }

    public static String getActionType(MotionEvent motionEvent) throws SecurityException {
        int action = motionEvent.getAction();
        for (Field field : MotionEvent.class.getFields()) {
            if (Modifier.isStatic(field.getModifiers()) && field.getType().equals(Integer.TYPE) && field.getInt(null) == action) {
                return field.getName();
            }
        }
        return "---";
    }

    public static String getLocation() {
        StackTraceElement stackTraceElement = _COROUTINE.a.y()[1];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    public static String getLoc() {
        StackTraceElement stackTraceElement = _COROUTINE.a.y()[1];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName() + "()";
    }

    public static String getLocation2() {
        StackTraceElement stackTraceElement = _COROUTINE.a.y()[2];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    public static String getCallFrom(int i) {
        StackTraceElement stackTraceElement = _COROUTINE.a.y()[i + 2];
        return ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ")";
    }

    public static void dumpLayoutParams(ViewGroup viewGroup, String str) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        StackTraceElement stackTraceElement = _COROUTINE.a.y()[1];
        String str2 = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + str + "  ";
        int childCount = viewGroup.getChildCount();
        System.out.println(str + " children " + childCount);
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            PrintStream printStream = System.out;
            StringBuilder sbQ = _COROUTINE.a.q(str2, "     ");
            sbQ.append(getName(childAt));
            printStream.println(sbQ.toString());
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            for (Field field : layoutParams.getClass().getFields()) {
                try {
                    Object obj = field.get(layoutParams);
                    if (field.getName().contains("To") && !obj.toString().equals("-1")) {
                        System.out.println(str2 + "       " + field.getName() + " " + obj);
                    }
                } catch (IllegalAccessException unused) {
                }
            }
        }
    }

    public static void dumpLayoutParams(ViewGroup.LayoutParams layoutParams, String str) throws IllegalAccessException, SecurityException, IllegalArgumentException {
        StackTraceElement stackTraceElement = _COROUTINE.a.y()[1];
        String str2 = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + str + "  ";
        PrintStream printStream = System.out;
        StringBuilder sbR = _COROUTINE.a.r(" >>>>>>>>>>>>>>>>>>. dump ", str2, "  ");
        sbR.append(layoutParams.getClass().getName());
        printStream.println(sbR.toString());
        for (Field field : layoutParams.getClass().getFields()) {
            try {
                Object obj = field.get(layoutParams);
                String name = field.getName();
                if (name.contains("To") && !obj.toString().equals("-1")) {
                    System.out.println(str2 + "       " + name + " " + obj);
                }
            } catch (IllegalAccessException unused) {
            }
        }
        System.out.println(" <<<<<<<<<<<<<<<<< dump " + str2);
    }
}
