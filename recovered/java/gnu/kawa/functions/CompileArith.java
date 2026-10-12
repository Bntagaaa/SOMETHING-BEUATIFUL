package gnu.kawa.functions;

import gnu.bytecode.ClassType;
import gnu.bytecode.PrimType;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Expression;
import gnu.expr.InlineCalls;
import gnu.expr.Inlineable;
import gnu.expr.PrimProcedure;
import gnu.expr.QuoteExp;
import gnu.kawa.lispexpr.LangObjType;
import gnu.kawa.lispexpr.LangPrimType;
import gnu.mapping.Procedure;
import gnu.math.IntNum;

/* loaded from: classes2.dex */
public class CompileArith implements Inlineable {
    int op;
    Procedure proc;
    public static CompileArith $Pl = new CompileArith(AddOp.$Pl, 1);
    public static CompileArith $Mn = new CompileArith(AddOp.$Mn, 2);

    public static int adjustReturnKind(int i, int i2) {
        if (i2 < 4 || i2 > 7 || i <= 0) {
            return i;
        }
        if (i2 == 4) {
            if (i <= 4) {
                return 6;
            }
            return i;
        }
        if (i2 != 5) {
            if (i2 == 7 && i <= 10) {
                return 4;
            }
            return i;
        }
        if (i > 10 || i == 7) {
            return i;
        }
        return 8;
    }

    public static int getReturnKind(int i, int i2, int i3) {
        return ((i3 < 9 || i3 > 12) && i > 0 && (i <= i2 || i2 <= 0)) ? i2 : i;
    }

    public CompileArith(Object obj, int i) {
        this.proc = (Procedure) obj;
        this.op = i;
    }

    public static CompileArith forMul(Object obj) {
        return new CompileArith(obj, 3);
    }

    public static CompileArith forDiv(Object obj) {
        return new CompileArith(obj, ((DivideOp) obj).op);
    }

    public static CompileArith forBitwise(Object obj) {
        return new CompileArith(obj, ((BitwiseOp) obj).op);
    }

    public static boolean appropriateIntConstant(Expression[] expressionArr, int i, InlineCalls inlineCalls) {
        QuoteExp quoteExpFixIntValue = inlineCalls.fixIntValue(expressionArr[i]);
        if (quoteExpFixIntValue == null) {
            return false;
        }
        expressionArr[i] = quoteExpFixIntValue;
        return true;
    }

    public static boolean appropriateLongConstant(Expression[] expressionArr, int i, InlineCalls inlineCalls) {
        QuoteExp quoteExpFixLongValue = inlineCalls.fixLongValue(expressionArr[i]);
        if (quoteExpFixLongValue == null) {
            return false;
        }
        expressionArr[i] = quoteExpFixLongValue;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gnu.expr.Expression validateApplyArithOp(gnu.expr.ApplyExp r8, gnu.expr.InlineCalls r9, gnu.bytecode.Type r10, gnu.mapping.Procedure r11) {
        /*
            r10 = r11
            gnu.kawa.functions.ArithOp r10 = (gnu.kawa.functions.ArithOp) r10
            int r10 = r10.op
            r8.visitArgs(r9)
            gnu.expr.Expression[] r0 = r8.getArgs()
            int r1 = r0.length
            r2 = 2
            if (r1 <= r2) goto L19
            gnu.expr.Expression r8 = r8.getFunction()
            gnu.expr.Expression r8 = pairwise(r11, r8, r0, r9)
            return r8
        L19:
            gnu.expr.Expression r1 = r8.inlineIfConstant(r11, r9)
            if (r1 == r8) goto L20
            return r1
        L20:
            int r1 = r0.length
            r3 = 0
            r4 = 1
            if (r1 == r2) goto L28
            int r1 = r0.length
            if (r1 != r4) goto L80
        L28:
            r1 = r0[r3]
            gnu.bytecode.Type r1 = r1.getType()
            int r1 = gnu.kawa.functions.Arithmetic.classifyType(r1)
            int r5 = r0.length
            if (r5 != r2) goto L75
            r5 = 9
            if (r10 < r5) goto L3d
            r5 = 12
            if (r10 <= r5) goto L75
        L3d:
            r5 = r0[r4]
            gnu.bytecode.Type r5 = r5.getType()
            int r5 = gnu.kawa.functions.Arithmetic.classifyType(r5)
            int r6 = getReturnKind(r1, r5, r10)
            r7 = 4
            if (r6 != r7) goto L74
            if (r1 != r4) goto L58
            boolean r7 = appropriateIntConstant(r0, r4, r9)
            if (r7 == 0) goto L58
        L56:
            r1 = 1
            goto L75
        L58:
            if (r5 != r4) goto L61
            boolean r7 = appropriateIntConstant(r0, r3, r9)
            if (r7 == 0) goto L61
            goto L56
        L61:
            if (r1 != r2) goto L6b
            boolean r1 = appropriateLongConstant(r0, r4, r9)
            if (r1 == 0) goto L6b
        L69:
            r1 = 2
            goto L75
        L6b:
            if (r5 != r2) goto L74
            boolean r0 = appropriateLongConstant(r0, r3, r9)
            if (r0 == 0) goto L74
            goto L69
        L74:
            r1 = r6
        L75:
            int r3 = adjustReturnKind(r1, r10)
            gnu.bytecode.Type r0 = gnu.kawa.functions.Arithmetic.kindType(r3)
            r8.setType(r0)
        L80:
            gnu.expr.Compilation r0 = r9.getCompilation()
            boolean r0 = r0.mustCompile
            if (r0 != 0) goto L89
            goto La2
        L89:
            if (r10 == r4) goto La3
            if (r10 == r2) goto La3
            r0 = 16
            if (r10 == r0) goto L9c
            switch(r10) {
                case 4: goto L95;
                case 5: goto L95;
                case 6: goto L95;
                case 7: goto L95;
                case 8: goto L95;
                default: goto L94;
            }
        L94:
            goto La2
        L95:
            gnu.kawa.functions.DivideOp r11 = (gnu.kawa.functions.DivideOp) r11
            gnu.expr.Expression r8 = validateApplyDiv(r11, r8, r9)
            return r8
        L9c:
            if (r3 <= 0) goto La2
            gnu.expr.Expression r8 = validateApplyNot(r8, r3, r9)
        La2:
            return r8
        La3:
            gnu.kawa.functions.AddOp r11 = (gnu.kawa.functions.AddOp) r11
            gnu.expr.Expression r8 = validateApplyAdd(r11, r8, r9)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.functions.CompileArith.validateApplyArithOp(gnu.expr.ApplyExp, gnu.expr.InlineCalls, gnu.bytecode.Type, gnu.mapping.Procedure):gnu.expr.Expression");
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0123  */
    @Override // gnu.expr.Inlineable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void compile(gnu.expr.ApplyExp r19, gnu.expr.Compilation r20, gnu.expr.Target r21) {
        /*
            Method dump skipped, instructions count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.functions.CompileArith.compile(gnu.expr.ApplyExp, gnu.expr.Compilation, gnu.expr.Target):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean compileIntNum(gnu.expr.Expression r15, gnu.expr.Expression r16, int r17, int r18, gnu.expr.Compilation r19) {
        /*
            Method dump skipped, instructions count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.functions.CompileArith.compileIntNum(gnu.expr.Expression, gnu.expr.Expression, int, int, gnu.expr.Compilation):boolean");
    }

    public int getReturnKind(Expression[] expressionArr) {
        int length = expressionArr.length;
        if (length == 0) {
            return 4;
        }
        PrimType primType = Type.byteType;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int iClassifyType = Arithmetic.classifyType(expressionArr[i2].getType());
            if (i2 == 0 || iClassifyType == 0 || iClassifyType > i) {
                i = iClassifyType;
            }
        }
        return i;
    }

    public Type getReturnType(Expression[] expressionArr) {
        return Arithmetic.kindType(adjustReturnKind(getReturnKind(expressionArr), this.op));
    }

    public static Expression validateApplyAdd(AddOp addOp, ApplyExp applyExp, InlineCalls inlineCalls) {
        PrimType primType;
        int i;
        Expression[] args = applyExp.getArgs();
        if (args.length != 1 || addOp.plusOrMinus >= 0) {
            return applyExp;
        }
        Type type = args[0].getType();
        if (!(type instanceof PrimType)) {
            return applyExp;
        }
        char cCharAt = type.getSignature().charAt(0);
        if (cCharAt == 'V' || cCharAt == 'Z' || cCharAt == 'C') {
            primType = null;
            i = 0;
        } else if (cCharAt == 'D') {
            primType = LangPrimType.doubleType;
            i = 119;
        } else if (cCharAt == 'F') {
            primType = LangPrimType.floatType;
            i = 118;
        } else if (cCharAt == 'J') {
            primType = LangPrimType.longType;
            i = 117;
        } else {
            primType = LangPrimType.intType;
            i = 116;
        }
        return primType != null ? new ApplyExp(PrimProcedure.makeBuiltinUnary(i, primType), args) : applyExp;
    }

    public static Expression validateApplyDiv(DivideOp divideOp, ApplyExp applyExp, InlineCalls inlineCalls) {
        Expression[] args = applyExp.getArgs();
        return args.length == 1 ? new ApplyExp(applyExp.getFunction(), QuoteExp.getInstance(IntNum.one()), args[0]) : applyExp;
    }

    public static Expression validateApplyNot(ApplyExp applyExp, int i, InlineCalls inlineCalls) {
        if (applyExp.getArgCount() != 1) {
            return applyExp;
        }
        Expression arg = applyExp.getArg(0);
        String str = null;
        if (i == 1 || i == 2) {
            return inlineCalls.visitApplyOnly(new ApplyExp(BitwiseOp.xor, arg, QuoteExp.getInstance(IntNum.minusOne())), null);
        }
        if (i == 4) {
            str = "gnu.math.BitOps";
        } else if (i == 3) {
            str = "java.meth.BigInteger";
        }
        return str != null ? new ApplyExp(ClassType.make(str).getDeclaredMethod("not", 1), applyExp.getArgs()) : applyExp;
    }

    public static Expression validateApplyNumberCompare(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        Expression expressionInlineIfConstant = applyExp.inlineIfConstant(procedure, inlineCalls);
        return expressionInlineIfConstant != applyExp ? expressionInlineIfConstant : applyExp;
    }

    public int primitiveOpcode() {
        switch (this.op) {
            case 1:
                return 96;
            case 2:
                return 100;
            case 3:
                return 104;
            case 4:
            case 5:
            case 6:
            case 7:
                return 108;
            case 8:
                return 112;
            case 9:
            default:
                return -1;
            case 10:
                return 120;
            case 11:
                return 122;
            case 12:
                return 124;
            case 13:
                return 126;
            case 14:
                return 128;
            case 15:
                return 130;
        }
    }

    public static Expression pairwise(Procedure procedure, Expression expression, Expression[] expressionArr, InlineCalls inlineCalls) {
        int length = expressionArr.length;
        int i = 1;
        Expression expression2 = expressionArr[0];
        while (i < length) {
            ApplyExp applyExp = new ApplyExp(expression, expression2, expressionArr[i]);
            Expression expressionMaybeInline = inlineCalls.maybeInline(applyExp, null, procedure);
            if (expressionMaybeInline != null) {
                applyExp = expressionMaybeInline;
            }
            i++;
            expression2 = applyExp;
        }
        return expression2;
    }

    public static Expression validateApplyNumberPredicate(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        int i = ((NumberPredicate) procedure).op;
        Expression[] args = applyExp.getArgs();
        args[0] = inlineCalls.visit(args[0], (Type) LangObjType.integerType);
        applyExp.setType(Type.booleanType);
        return applyExp;
    }
}
