package gnu.kawa.functions;

import gnu.mapping.Procedure;
import gnu.mapping.PropertySet;

/* loaded from: classes2.dex */
public class DivideOp extends ArithOp {
    public static final DivideOp $Sl = new DivideOp("/", 4);
    public static final DivideOp div;
    public static final DivideOp div0;
    public static final DivideOp idiv;
    public static final DivideOp mod;
    public static final DivideOp mod0;
    public static final DivideOp modulo;
    public static final DivideOp quotient;
    public static final DivideOp remainder;
    int rounding_mode;

    public int getRoundingMode() {
        return this.rounding_mode;
    }

    static {
        DivideOp divideOp = new DivideOp("idiv", 7);
        idiv = divideOp;
        DivideOp divideOp2 = new DivideOp("quotient", 6);
        quotient = divideOp2;
        DivideOp divideOp3 = new DivideOp("remainder", 8);
        remainder = divideOp3;
        DivideOp divideOp4 = new DivideOp("modulo", 8);
        modulo = divideOp4;
        DivideOp divideOp5 = new DivideOp("div", 6);
        div = divideOp5;
        DivideOp divideOp6 = new DivideOp("mod", 8);
        mod = divideOp6;
        DivideOp divideOp7 = new DivideOp("div0", 6);
        div0 = divideOp7;
        DivideOp divideOp8 = new DivideOp("mod0", 8);
        mod0 = divideOp8;
        divideOp.rounding_mode = 3;
        divideOp2.rounding_mode = 3;
        divideOp3.rounding_mode = 3;
        divideOp4.rounding_mode = 1;
        divideOp5.rounding_mode = 5;
        divideOp6.rounding_mode = 5;
        divideOp7.rounding_mode = 4;
        divideOp8.rounding_mode = 4;
    }

    public DivideOp(String str, int i) {
        super(str, i);
        setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompileArith:validateApplyArithOp");
        Procedure.compilerKey.set((PropertySet) this, "*gnu.kawa.functions.CompileArith:forDiv");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0046  */
    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object applyN(java.lang.Object[] r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.functions.DivideOp.applyN(java.lang.Object[]):java.lang.Object");
    }

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return this.op == 4 ? -4095 : 8194;
    }
}
