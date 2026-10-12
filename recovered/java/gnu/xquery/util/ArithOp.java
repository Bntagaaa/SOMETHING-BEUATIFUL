package gnu.xquery.util;

import gnu.bytecode.Access;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.Target;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.Arithmetic;
import gnu.kawa.xml.KNode;
import gnu.kawa.xml.UntypedAtomic;
import gnu.kawa.xml.XDataType;
import gnu.mapping.Procedure;
import gnu.mapping.Procedure1or2;
import gnu.mapping.Values;
import gnu.math.IntNum;
import gnu.math.Numeric;
import gnu.xml.TextUtils;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;

/* loaded from: classes2.dex */
public class ArithOp extends Procedure1or2 implements Inlineable {
    public static final ArithOp add;
    public static final ArithOp div;
    public static final ArithOp idiv;
    public static final ArithOp minus;
    public static final ArithOp mod;
    public static final ArithOp mul;
    public static final ArithOp plus;
    public static final ArithOp sub;
    public final char c;

    static {
        BigInteger.valueOf(10L);
        add = new ArithOp("+", '+');
        sub = new ArithOp("-", '-');
        mul = new ArithOp("*", '*');
        div = new ArithOp("div", 'd');
        idiv = new ArithOp("idiv", 'i');
        mod = new ArithOp("mod", 'm');
        plus = new ArithOp("+", 'P');
        minus = new ArithOp("-", Access.METHOD_CONTEXT);
    }

    public ArithOp(String str, char c) {
        super(str);
        setProperty(Procedure.validateApplyKey, "gnu.xquery.util.CompileMisc:validateArithOp");
        this.c = c;
    }

    @Override // gnu.mapping.Procedure1or2, gnu.mapping.Procedure
    public Object apply1(Object obj) throws Throwable {
        if (obj == Values.empty || obj == null) {
            return obj;
        }
        if ((obj instanceof KNode) || (obj instanceof UntypedAtomic)) {
            obj = XDataType.doubleType.valueOf(TextUtils.stringValue(obj));
        }
        char c = this.c;
        if (c != 'M') {
            if (c == 'P') {
                return AddOp.apply2(1, IntNum.zero(), obj);
            }
            throw new UnsupportedOperationException(getName());
        }
        int iClassifyValue = Arithmetic.classifyValue(obj);
        if (iClassifyValue == 7) {
            return XDataType.makeFloat(-Arithmetic.asFloat(obj));
        }
        if (iClassifyValue == 8) {
            return XDataType.makeDouble(-Arithmetic.asDouble(obj));
        }
        if (obj instanceof Numeric) {
            return ((Numeric) obj).neg();
        }
        return AddOp.apply2(-1, IntNum.zero(), obj);
    }

    public static BigDecimal div(BigDecimal bigDecimal, BigDecimal bigDecimal2) {
        return bigDecimal.divide(bigDecimal2, MathContext.DECIMAL128);
    }

    /* JADX WARN: Removed duplicated region for block: B:90:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0179  */
    @Override // gnu.mapping.Procedure1or2, gnu.mapping.Procedure
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object apply2(java.lang.Object r10, java.lang.Object r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.util.ArithOp.apply2(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        ApplyExp.compile(applyExp, compilation, target);
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Type.pointer_type;
    }
}
