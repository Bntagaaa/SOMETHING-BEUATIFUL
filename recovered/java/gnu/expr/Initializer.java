package gnu.expr;

import _COROUTINE.a;
import gnu.bytecode.Field;

/* loaded from: classes2.dex */
public abstract class Initializer {
    public Field field;
    Initializer next;

    public abstract void emit(Compilation compilation);

    public static Initializer reverse(Initializer initializer) {
        Initializer initializer2 = null;
        while (initializer != null) {
            Initializer initializer3 = initializer.next;
            initializer.next = initializer2;
            initializer2 = initializer;
            initializer = initializer3;
        }
        return initializer2;
    }

    public void reportError(String str, Compilation compilation) {
        StringBuilder sbQ = a.q(str, "field ");
        sbQ.append(this.field);
        compilation.error('e', sbQ.toString());
    }
}
