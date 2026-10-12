package gnu.commonlisp.lang;

import gnu.mapping.Environment;
import gnu.mapping.EnvironmentKey;
import gnu.mapping.Namespace;
import gnu.mapping.Symbol;

/* loaded from: classes2.dex */
public class Symbols {
    private Symbols() {
    }

    public static boolean isSymbol(Object obj) {
        return (obj instanceof String) || obj == Lisp2.FALSE || (obj instanceof Symbol);
    }

    public static boolean isBound(Object obj) {
        Symbol symbolLookup;
        if (obj == Lisp2.FALSE) {
            return true;
        }
        Environment current = Environment.getCurrent();
        if (obj instanceof Symbol) {
            symbolLookup = (Symbol) obj;
        } else {
            symbolLookup = current.defaultNamespace().lookup((String) obj);
        }
        return symbolLookup != null && current.isBound(symbolLookup);
    }

    public static Symbol getSymbol(Environment environment, Object obj) {
        if (obj == Lisp2.FALSE) {
            obj = "nil";
        }
        return obj instanceof Symbol ? (Symbol) obj : environment.defaultNamespace().getSymbol((String) obj);
    }

    public static Symbol getSymbol(Object obj) {
        if (obj == Lisp2.FALSE) {
            obj = "nil";
        }
        return obj instanceof Symbol ? (Symbol) obj : Namespace.getDefaultSymbol((String) obj);
    }

    public static Object getPrintName(Object obj) {
        return obj == Lisp2.FALSE ? "nil" : Lisp2.getString(((Symbol) obj).getName());
    }

    public static Object getFunctionBinding(Object obj) {
        return Environment.getCurrent().getFunction(getSymbol(obj));
    }

    public static Object getFunctionBinding(Environment environment, Object obj) {
        return environment.getFunction(getSymbol(obj));
    }

    public static void setFunctionBinding(Environment environment, Object obj, Object obj2) {
        environment.put(getSymbol(obj), EnvironmentKey.FUNCTION, obj2);
    }
}
