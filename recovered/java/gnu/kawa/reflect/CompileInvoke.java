package gnu.kawa.reflect;

import gnu.bytecode.ClassType;
import gnu.bytecode.ObjectType;
import gnu.bytecode.Type;
import gnu.expr.ClassExp;
import gnu.expr.Expression;
import gnu.expr.InlineCalls;
import gnu.expr.Keyword;
import gnu.expr.PrimProcedure;
import gnu.mapping.MethodProc;

/* loaded from: classes2.dex */
public class CompileInvoke {
    /* JADX WARN: Code restructure failed: missing block: B:115:0x022d, code lost:
    
        if (gnu.kawa.reflect.ClassMethods.selectApplicable(gnu.kawa.reflect.ClassMethods.getMethods(r4, "add", 'V', null, r7.language), 2) > 0) goto L116;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:211:0x03e6 A[LOOP:2: B:187:0x03a9->B:211:0x03e6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:273:0x050d  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x0510  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x038f A[EDGE_INSN: B:316:0x038f->B:177:0x038f BREAK  A[LOOP:2: B:187:0x03a9->B:211:0x03e6], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00d6  */
    /* JADX WARN: Type inference failed for: r31v0, types: [gnu.expr.ExpVisitor, gnu.expr.InlineCalls] */
    /* JADX WARN: Type inference failed for: r3v39, types: [gnu.bytecode.Type] */
    /* JADX WARN: Type inference failed for: r3v40, types: [gnu.bytecode.Type] */
    /* JADX WARN: Type inference failed for: r7v19, types: [gnu.expr.LetExp, gnu.expr.ScopeExp] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gnu.expr.Expression validateApplyInvoke(gnu.expr.ApplyExp r30, gnu.expr.InlineCalls r31, gnu.bytecode.Type r32, gnu.mapping.Procedure r33) {
        /*
            Method dump skipped, instructions count: 1445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.reflect.CompileInvoke.validateApplyInvoke(gnu.expr.ApplyExp, gnu.expr.InlineCalls, gnu.bytecode.Type, gnu.mapping.Procedure):gnu.expr.Expression");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    public static Object[] checkKeywords(ObjectType objectType, Expression[] expressionArr, int i, ClassType classType) {
        int length = expressionArr.length;
        int i2 = 0;
        while (true) {
            int i3 = (i2 * 2) + i;
            if (i3 + 1 >= length || !(expressionArr[i3].valueIfConstant() instanceof Keyword)) {
                break;
            }
            i2++;
        }
        ?? r0 = new Object[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            ?? name = ((Keyword) expressionArr[(i4 * 2) + i].valueIfConstant()).getName();
            Object objLookupMember = SlotSet.lookupMember(objectType, name, classType);
            Object method = objLookupMember;
            if (objLookupMember == null) {
                method = objectType.getMethod(ClassExp.slotToMethodName("add", name), SlotSet.type1Array);
            }
            if (method != null) {
                name = method;
            }
            r0[i4] = name;
        }
        return r0;
    }

    private static String getMethodName(Expression[] expressionArr, char c) {
        if (c == 'N') {
            return "<init>";
        }
        int i = c == 'P' ? 2 : 1;
        if (expressionArr.length >= i + 1) {
            return ClassMethods.checkName(expressionArr[i], false);
        }
        return null;
    }

    private static void append(PrimProcedure[] primProcedureArr, int i, StringBuffer stringBuffer) {
        for (int i2 = 0; i2 < i; i2++) {
            stringBuffer.append("\n  candidate: ");
            stringBuffer.append(primProcedureArr[i2]);
        }
    }

    public static PrimProcedure[] getMethods(ObjectType objectType, String str, ClassType classType, Invoke invoke) {
        char c = invoke.kind;
        return ClassMethods.getMethods(objectType, str, c != 'P' ? (c == '*' || c == 'V') ? 'V' : (char) 0 : 'P', classType, invoke.language);
    }

    public static int hasKeywordArgument(int i, Expression[] expressionArr) {
        while (i < expressionArr.length) {
            if (expressionArr[i].valueIfConstant() instanceof Keyword) {
                return i;
            }
            i++;
        }
        return expressionArr.length;
    }

    private static long selectApplicable(PrimProcedure[] primProcedureArr, ObjectType objectType, Expression[] expressionArr, int i, int i2, int i3) {
        Type type;
        Type[] typeArr = new Type[i];
        int i4 = 0;
        if (i3 >= 0) {
            typeArr[0] = objectType;
            i4 = 1;
        }
        while (i2 < expressionArr.length && i4 < i) {
            Expression expression = expressionArr[i2];
            if (InlineCalls.checkIntValue(expression) != null) {
                type = Type.intType;
            } else if (InlineCalls.checkLongValue(expression) != null) {
                type = Type.longType;
            } else {
                type = expression.getType();
            }
            typeArr[i4] = type;
            i2++;
            i4++;
        }
        return ClassMethods.selectApplicable(primProcedureArr, typeArr);
    }

    public static synchronized PrimProcedure getStaticMethod(ClassType classType, String str, Expression[] expressionArr) {
        PrimProcedure primProcedure;
        try {
            primProcedure = null;
            PrimProcedure[] methods = getMethods(classType, str, null, Invoke.invokeStatic);
            long jSelectApplicable = selectApplicable(methods, classType, expressionArr, expressionArr.length, 0, -1);
            int i = (int) (jSelectApplicable >> 32);
            int i2 = (int) jSelectApplicable;
            int iMostSpecific = -1;
            if (methods != null) {
                if (i > 0) {
                    iMostSpecific = MethodProc.mostSpecific(methods, i);
                } else if (i2 == 1) {
                    iMostSpecific = 0;
                }
            }
            if (iMostSpecific >= 0) {
                primProcedure = methods[iMostSpecific];
            }
        } finally {
        }
        return primProcedure;
    }
}
