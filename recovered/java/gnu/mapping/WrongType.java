package gnu.mapping;

import gnu.bytecode.Type;

/* loaded from: classes2.dex */
public class WrongType extends WrappedException {
    public static final int ARG_CAST = -4;
    public static final int ARG_DESCRIPTION = -3;
    public static final int ARG_UNKNOWN = -1;
    public static final int ARG_VARNAME = -2;
    public Object argValue;
    public Object expectedType;
    public int number;
    public Procedure proc;
    public String procname;

    public WrongType(String str, int i, String str2) {
        super(null, null);
        this.procname = str;
        this.number = i;
        this.expectedType = str2;
    }

    public WrongType(Procedure procedure, int i, ClassCastException classCastException) {
        super(classCastException);
        this.proc = procedure;
        this.procname = procedure.getName();
        this.number = i;
    }

    public WrongType(ClassCastException classCastException, Procedure procedure, int i, Object obj) {
        this(procedure, i, classCastException);
        this.argValue = obj;
    }

    public WrongType(Procedure procedure, int i, Object obj) {
        this.proc = procedure;
        this.procname = procedure.getName();
        this.number = i;
        this.argValue = obj;
    }

    public WrongType(Procedure procedure, int i, Object obj, Type type) {
        this.proc = procedure;
        this.procname = procedure.getName();
        this.number = i;
        this.argValue = obj;
        this.expectedType = type;
    }

    public WrongType(int i, Object obj, Type type) {
        this.number = i;
        this.argValue = obj;
        this.expectedType = type;
    }

    public WrongType(Procedure procedure, int i, Object obj, String str) {
        this(procedure.getName(), i, obj, str);
        this.proc = procedure;
    }

    public WrongType(String str, int i, Object obj, String str2) {
        this.procname = str;
        this.number = i;
        this.argValue = obj;
        this.expectedType = str2;
    }

    public WrongType(String str, int i, ClassCastException classCastException) {
        super(classCastException);
        this.procname = str;
        this.number = i;
    }

    public WrongType(ClassCastException classCastException, String str, int i, Object obj) {
        this(str, i, classCastException);
        this.argValue = obj;
    }

    public static WrongType make(ClassCastException classCastException, Procedure procedure, int i) {
        return new WrongType(procedure, i, classCastException);
    }

    public static WrongType make(ClassCastException classCastException, String str, int i) {
        return new WrongType(str, i, classCastException);
    }

    public static WrongType make(ClassCastException classCastException, Procedure procedure, int i, Object obj) {
        WrongType wrongType = new WrongType(procedure, i, classCastException);
        wrongType.argValue = obj;
        return wrongType;
    }

    public static WrongType make(ClassCastException classCastException, String str, int i, Object obj) {
        WrongType wrongType = new WrongType(str, i, classCastException);
        wrongType.argValue = obj;
        return wrongType;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message;
        int i;
        int i2;
        StringBuffer stringBuffer = new StringBuffer(100);
        int i3 = this.number;
        if (i3 == -3) {
            stringBuffer.append(this.procname);
        } else if (i3 == -4 || i3 == -2) {
            stringBuffer.append("Value");
        } else {
            stringBuffer.append("Argument ");
            if (this.number > 0) {
                stringBuffer.append('#');
                stringBuffer.append(this.number);
            }
        }
        if (this.argValue != null) {
            stringBuffer.append(" (");
            String string = this.argValue.toString();
            if (string.length() > 50) {
                stringBuffer.append(string.substring(0, 47));
                stringBuffer.append("...");
            } else {
                stringBuffer.append(string);
            }
            stringBuffer.append(")");
        }
        if (this.procname != null && (i2 = this.number) != -3) {
            stringBuffer.append(i2 == -2 ? " for variable '" : " to '");
            stringBuffer.append(this.procname);
            stringBuffer.append("'");
        }
        stringBuffer.append(" has wrong type");
        if (this.argValue != null) {
            stringBuffer.append(" (");
            stringBuffer.append(this.argValue.getClass().getName());
            stringBuffer.append(")");
        }
        Object name = this.expectedType;
        if (name == null && (i = this.number) > 0) {
            Procedure procedure = this.proc;
            if (procedure instanceof MethodProc) {
                name = ((MethodProc) procedure).getParameterType(i - 1);
            }
        }
        if (name != null && name != Type.pointer_type) {
            stringBuffer.append(" (expected: ");
            if (name instanceof Type) {
                name = ((Type) name).getName();
            } else if (name instanceof Class) {
                name = ((Class) name).getName();
            }
            stringBuffer.append(name);
            stringBuffer.append(")");
        }
        Throwable cause = getCause();
        if (cause != null && (message = cause.getMessage()) != null) {
            stringBuffer.append(" (");
            stringBuffer.append(message);
            stringBuffer.append(')');
        }
        return stringBuffer.toString();
    }
}
