package gnu.kawa.xml;

import gnu.bytecode.ClassType;
import gnu.bytecode.Method;
import gnu.expr.Compilation;
import gnu.lists.TreePosition;
import gnu.math.IntNum;

/* loaded from: classes2.dex */
public final class Focus extends TreePosition {
    public static final ClassType TYPE;
    static ThreadLocal current = new ThreadLocal();
    static final Method getCurrentFocusMethod;
    IntNum contextPosition;
    public long position;

    static {
        ClassType classTypeMake = ClassType.make("gnu.kawa.xml.Focus");
        TYPE = classTypeMake;
        getCurrentFocusMethod = classTypeMake.getDeclaredMethod("getCurrent", 0);
    }

    public static Focus getCurrent() {
        Object focus = current.get();
        if (focus == null) {
            focus = new Focus();
            current.set(focus);
        }
        return (Focus) focus;
    }

    public static void compileGetCurrent(Compilation compilation) {
        compilation.getCode().emitInvoke(getCurrentFocusMethod);
    }
}
