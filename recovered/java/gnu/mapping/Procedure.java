package gnu.mapping;

import com.google.appinventor.components.runtime.util.ErrorMessages;
import gnu.bytecode.Type;
import gnu.expr.Expression;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public abstract class Procedure extends PropertySet {
    public static final LazyPropertyKey<?> compilerKey;
    private static final Symbol setterKey;
    private static final String sourceLocationKey = "source-location";
    public static final Symbol validateApplyKey;

    public static int maxArgs(int i) {
        return i >> 12;
    }

    public static int minArgs(int i) {
        return i & 4095;
    }

    public abstract Object apply0() throws Throwable;

    public abstract Object apply1(Object obj) throws Throwable;

    public abstract Object apply2(Object obj, Object obj2) throws Throwable;

    public abstract Object apply3(Object obj, Object obj2, Object obj3) throws Throwable;

    public abstract Object apply4(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable;

    public abstract Object applyN(Object[] objArr) throws Throwable;

    public boolean isSideEffectFree() {
        return false;
    }

    public int numArgs() {
        return -4096;
    }

    static {
        Namespace namespace = Namespace.EmptyNamespace;
        setterKey = namespace.getSymbol("setter");
        validateApplyKey = namespace.getSymbol("validate-apply");
        compilerKey = new LazyPropertyKey<>("compiler");
    }

    public void setSourceLocation(String str, int i) {
        setProperty(sourceLocationKey, str + ":" + i);
    }

    public String getSourceLocation() {
        Object property = getProperty(sourceLocationKey, null);
        if (property == null) {
            return null;
        }
        return property.toString();
    }

    public Procedure() {
    }

    public Procedure(String str) {
        setName(str);
    }

    public final int minArgs() {
        return minArgs(numArgs());
    }

    public final int maxArgs() {
        return maxArgs(numArgs());
    }

    public static void checkArgCount(Procedure procedure, int i) {
        int iNumArgs = procedure.numArgs();
        if (i < minArgs(iNumArgs) || (iNumArgs >= 0 && i > maxArgs(iNumArgs))) {
            throw new WrongArguments(procedure, i);
        }
    }

    public void apply(CallContext callContext) throws Throwable {
        apply(this, callContext);
    }

    public static void apply(Procedure procedure, CallContext callContext) throws Throwable {
        Object objApply0;
        int i = callContext.count;
        if (callContext.where == 0 && i != 0) {
            objApply0 = procedure.applyN(callContext.values);
        } else if (i == 0) {
            objApply0 = procedure.apply0();
        } else if (i == 1) {
            objApply0 = procedure.apply1(callContext.getNextArg());
        } else if (i == 2) {
            objApply0 = procedure.apply2(callContext.getNextArg(), callContext.getNextArg());
        } else if (i == 3) {
            objApply0 = procedure.apply3(callContext.getNextArg(), callContext.getNextArg(), callContext.getNextArg());
        } else if (i == 4) {
            objApply0 = procedure.apply4(callContext.getNextArg(), callContext.getNextArg(), callContext.getNextArg(), callContext.getNextArg());
        } else {
            objApply0 = procedure.applyN(callContext.getArgs());
        }
        callContext.writeValue(objApply0);
    }

    public int match0(CallContext callContext) {
        int iNumArgs = numArgs();
        int iMinArgs = minArgs(iNumArgs);
        if (iMinArgs > 0) {
            return (-983040) | iMinArgs;
        }
        if (iNumArgs < 0) {
            return matchN(ProcedureN.noArgs, callContext);
        }
        callContext.count = 0;
        callContext.where = 0;
        callContext.next = 0;
        callContext.proc = this;
        return 0;
    }

    public int match1(Object obj, CallContext callContext) {
        int iNumArgs = numArgs();
        int iMinArgs = minArgs(iNumArgs);
        if (iMinArgs > 1) {
            return (-983040) | iMinArgs;
        }
        if (iNumArgs >= 0) {
            int iMaxArgs = maxArgs(iNumArgs);
            if (iMaxArgs < 1) {
                return (-917504) | iMaxArgs;
            }
            callContext.value1 = obj;
            callContext.count = 1;
            callContext.where = 1;
            callContext.next = 0;
            callContext.proc = this;
            return 0;
        }
        return matchN(new Object[]{obj}, callContext);
    }

    public int match2(Object obj, Object obj2, CallContext callContext) {
        int iNumArgs = numArgs();
        int iMinArgs = minArgs(iNumArgs);
        if (iMinArgs > 2) {
            return (-983040) | iMinArgs;
        }
        if (iNumArgs >= 0) {
            int iMaxArgs = maxArgs(iNumArgs);
            if (iMaxArgs < 2) {
                return (-917504) | iMaxArgs;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.count = 2;
            callContext.where = 33;
            callContext.next = 0;
            callContext.proc = this;
            return 0;
        }
        return matchN(new Object[]{obj, obj2}, callContext);
    }

    public int match3(Object obj, Object obj2, Object obj3, CallContext callContext) {
        int iNumArgs = numArgs();
        int iMinArgs = minArgs(iNumArgs);
        if (iMinArgs > 3) {
            return (-983040) | iMinArgs;
        }
        if (iNumArgs >= 0) {
            int iMaxArgs = maxArgs(iNumArgs);
            if (iMaxArgs < 3) {
                return (-917504) | iMaxArgs;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.count = 3;
            callContext.where = ErrorMessages.ERROR_SOUND_RECORDER;
            callContext.next = 0;
            callContext.proc = this;
            return 0;
        }
        return matchN(new Object[]{obj, obj2, obj3}, callContext);
    }

    public int match4(Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        int iNumArgs = numArgs();
        int iMinArgs = minArgs(iNumArgs);
        if (iMinArgs > 4) {
            return (-983040) | iMinArgs;
        }
        if (iNumArgs >= 0) {
            int iMaxArgs = maxArgs(iNumArgs);
            if (iMaxArgs < 4) {
                return (-917504) | iMaxArgs;
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.count = 4;
            callContext.where = 17185;
            callContext.next = 0;
            callContext.proc = this;
            return 0;
        }
        return matchN(new Object[]{obj, obj2, obj3, obj4}, callContext);
    }

    public int matchN(Object[] objArr, CallContext callContext) {
        int iNumArgs = numArgs();
        int iMinArgs = minArgs(iNumArgs);
        if (objArr.length < iMinArgs) {
            return (-983040) | iMinArgs;
        }
        if (iNumArgs >= 0) {
            int length = objArr.length;
            if (length == 0) {
                return match0(callContext);
            }
            if (length == 1) {
                return match1(objArr[0], callContext);
            }
            if (length == 2) {
                return match2(objArr[0], objArr[1], callContext);
            }
            if (length == 3) {
                return match3(objArr[0], objArr[1], objArr[2], callContext);
            }
            if (length == 4) {
                return match4(objArr[0], objArr[1], objArr[2], objArr[3], callContext);
            }
            int iMaxArgs = maxArgs(iNumArgs);
            if (objArr.length > iMaxArgs) {
                return (-917504) | iMaxArgs;
            }
        }
        callContext.values = objArr;
        callContext.count = objArr.length;
        callContext.where = 0;
        callContext.next = 0;
        callContext.proc = this;
        return 0;
    }

    public void check0(CallContext callContext) {
        int iMatch0 = match0(callContext);
        if (iMatch0 != 0) {
            throw MethodProc.matchFailAsException(iMatch0, this, ProcedureN.noArgs);
        }
    }

    public void check1(Object obj, CallContext callContext) {
        int iMatch1 = match1(obj, callContext);
        if (iMatch1 != 0) {
            throw MethodProc.matchFailAsException(iMatch1, this, new Object[]{obj});
        }
    }

    public void check2(Object obj, Object obj2, CallContext callContext) {
        int iMatch2 = match2(obj, obj2, callContext);
        if (iMatch2 != 0) {
            throw MethodProc.matchFailAsException(iMatch2, this, new Object[]{obj, obj2});
        }
    }

    public void check3(Object obj, Object obj2, Object obj3, CallContext callContext) {
        int iMatch3 = match3(obj, obj2, obj3, callContext);
        if (iMatch3 != 0) {
            throw MethodProc.matchFailAsException(iMatch3, this, new Object[]{obj, obj2, obj3});
        }
    }

    public void check4(Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
        int iMatch4 = match4(obj, obj2, obj3, obj4, callContext);
        if (iMatch4 != 0) {
            throw MethodProc.matchFailAsException(iMatch4, this, new Object[]{obj, obj2, obj3, obj4});
        }
    }

    public void checkN(Object[] objArr, CallContext callContext) {
        int iMatchN = matchN(objArr, callContext);
        if (iMatchN != 0) {
            throw MethodProc.matchFailAsException(iMatchN, this, objArr);
        }
    }

    public Procedure getSetter() {
        if (!(this instanceof HasSetter)) {
            Object property = getProperty(setterKey, null);
            if (property instanceof Procedure) {
                return (Procedure) property;
            }
            throw new RuntimeException("procedure '" + getName() + "' has no setter");
        }
        int iNumArgs = numArgs();
        if (iNumArgs == 0) {
            return new Setter0(this);
        }
        if (iNumArgs == 4097) {
            return new Setter1(this);
        }
        return new Setter(this);
    }

    public void setSetter(Procedure procedure) {
        if (this instanceof HasSetter) {
            throw new RuntimeException("procedure '" + getName() + "' has builtin setter - cannot be modified");
        }
        setProperty(setterKey, procedure);
    }

    public void set0(Object obj) throws Throwable {
        getSetter().apply1(obj);
    }

    public void set1(Object obj, Object obj2) throws Throwable {
        getSetter().apply2(obj, obj2);
    }

    public void setN(Object[] objArr) throws Throwable {
        getSetter().applyN(objArr);
    }

    public Type getReturnType(Expression[] expressionArr) {
        return Type.objectType;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("#<procedure ");
        String name = getName();
        if (name == null) {
            name = getSourceLocation();
        }
        if (name == null) {
            name = getClass().getName();
        }
        stringBuffer.append(name);
        stringBuffer.append(Typography.greater);
        return stringBuffer.toString();
    }
}
