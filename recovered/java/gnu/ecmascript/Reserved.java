package gnu.ecmascript;

import gnu.mapping.Procedure;

/* loaded from: classes2.dex */
public class Reserved {
    public static final int BREAK_TOKEN = 35;
    public static final int CONTINUE_TOKEN = 34;
    public static final int ELSE_TOKEN = 38;
    public static final int FOR_TOKEN = 33;
    public static final int FUNCTION_TOKEN = 41;
    public static final int IF_TOKEN = 31;
    public static final int LESS_OP = 5;
    public static final int LSHIFT_OP = 4;
    public static final int MINUS_OP = 2;
    public static final int NEW_TOKEN = 39;
    public static final int PLUS_OP = 1;
    public static final int RETURN_TOKEN = 36;
    public static final int THIS_TOKEN = 40;
    public static final int TIMES_OP = 3;
    public static final int VAR_TOKEN = 30;
    public static final int WHILE_TOKEN = 32;
    public static final int WITH_TOKEN = 37;
    public static final Reserved d = new Reserved("||", 1, 0);
    public static final Reserved e = new Reserved("&&", 2, 0);
    public static final Reserved f = new Reserved("|", 3, 0);

    /* renamed from: g, reason: collision with root package name */
    public static final Reserved f5466g = new Reserved("^", 4, 0);
    public static final Reserved h = new Reserved("&", 5, 0);
    public static final Reserved i = new Reserved("=", 6, 0);
    public static final Reserved j = new Reserved("!=", 6, 0);
    public static final Reserved k = new Reserved("<", 7, 5);
    public static final Reserved l = new Reserved(">", 7, 0);
    public static final Reserved m = new Reserved("<=", 7, 0);
    public static final Reserved n = new Reserved(">=", 7, 0);
    public static final Reserved o = new Reserved("<<", 8, 4);
    public static final Reserved p = new Reserved(">>", 8, 0);
    public static final Reserved q = new Reserved(">>>", 8, 0);
    public static final Reserved r = new Reserved("+", 9, 1);
    public static final Reserved s = new Reserved("-", 9, 2);
    public static final Reserved t = new Reserved("*", 10, 3);
    public static final Reserved u = new Reserved("/", 10, 0);
    public static final Reserved v = new Reserved("%", 10, 0);

    /* renamed from: a, reason: collision with root package name */
    public final String f5467a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5468b;
    public final Procedure c;

    public boolean isAssignmentOp() {
        return false;
    }

    public Reserved(String str, int i2, Procedure procedure) {
        this.f5467a = str;
        this.f5468b = i2;
        this.c = procedure;
    }

    public Reserved(String str, int i2) {
        this.f5467a = str;
        this.f5468b = i2;
    }

    public Reserved(String str, int i2, int i3) {
        this.f5467a = str;
        this.f5468b = i2;
        this.c = new BinaryOp(str, i3);
    }

    public String toString() {
        return "[Reserved \"" + this.f5467a + "\" prio:" + this.f5468b + "]";
    }
}
