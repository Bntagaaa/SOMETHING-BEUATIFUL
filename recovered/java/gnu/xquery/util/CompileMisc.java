package gnu.xquery.util;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.Scope;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.ConsumerTarget;
import gnu.expr.Declaration;
import gnu.expr.ErrorExp;
import gnu.expr.Expression;
import gnu.expr.IfExp;
import gnu.expr.InlineCalls;
import gnu.expr.LambdaExp;
import gnu.expr.LetExp;
import gnu.expr.PrimProcedure;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.expr.Target;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.ValuesMap;
import gnu.kawa.reflect.CompileReflect;
import gnu.kawa.xml.CoerceNodes;
import gnu.kawa.xml.SortNodes;
import gnu.kawa.xml.XDataType;
import gnu.mapping.Procedure;
import gnu.math.IntNum;
import gnu.xquery.lang.XQuery;

/* loaded from: classes2.dex */
public class CompileMisc {

    /* renamed from: a, reason: collision with root package name */
    public static final ClassType f5530a = ClassType.make("gnu.xquery.util.OrderedTuples");

    /* renamed from: b, reason: collision with root package name */
    public static final Method f5531b;
    public static final Method c;

    public static Expression validateCompare(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        Expression expressionInlineIfConstant = applyExp.inlineIfConstant(procedure, inlineCalls);
        if (expressionInlineIfConstant != applyExp) {
            return expressionInlineIfConstant;
        }
        Compare compare = (Compare) procedure;
        if ((compare.c & 32) == 0) {
            applyExp = new ApplyExp(ClassType.make("gnu.xquery.util.Compare").getDeclaredMethod("apply", 4), new QuoteExp(IntNum.make(compare.c)), applyExp.getArg(0), applyExp.getArg(1), QuoteExp.nullExp);
        }
        if (applyExp.getTypeRaw() == null) {
            applyExp.setType(XDataType.booleanType);
        }
        return applyExp;
    }

    public static Expression validateBooleanValue(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        Expression[] args = applyExp.getArgs();
        if (args.length != 1) {
            return applyExp;
        }
        Expression expression = args[0];
        Type type2 = expression.getType();
        XDataType xDataType = XDataType.booleanType;
        if (type2 == xDataType) {
            return expression;
        }
        if (type2 == null) {
            applyExp.setType(xDataType);
        }
        if (!(expression instanceof QuoteExp)) {
            return applyExp;
        }
        try {
            return BooleanValue.booleanValue(((QuoteExp) expression).getValue()) ? XQuery.trueExp : XQuery.falseExp;
        } catch (Throwable unused) {
            inlineCalls.getMessages().error('e', "cannot convert to a boolean");
            return new ErrorExp("cannot convert to a boolean");
        }
    }

    public static Expression validateArithOp(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        return applyExp;
    }

    public static Expression validateApplyValuesFilter(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        Type type2;
        Method declaredMethod;
        char c2;
        ValuesFilter valuesFilter = (ValuesFilter) procedure;
        applyExp.visitArgs(inlineCalls);
        Expression[] args = applyExp.getArgs();
        Expression expression = args[1];
        if (!(expression instanceof LambdaExp)) {
            return applyExp;
        }
        LambdaExp lambdaExp = (LambdaExp) expression;
        if (lambdaExp.min_args != 3 || lambdaExp.max_args != 3) {
            return applyExp;
        }
        applyExp.setType(args[0].getType());
        Compilation compilation = inlineCalls.getCompilation();
        Declaration declarationFirstDecl = lambdaExp.firstDecl();
        Declaration declarationNextDecl = declarationFirstDecl.nextDecl();
        Declaration declarationNextDecl2 = declarationNextDecl.nextDecl();
        lambdaExp.setInlineOnly(true);
        lambdaExp.returnContinuation = applyExp;
        lambdaExp.inlineHome = inlineCalls.getCurrentLambda();
        lambdaExp.remove(declarationNextDecl, declarationNextDecl2);
        lambdaExp.min_args = 2;
        lambdaExp.max_args = 2;
        if (!declarationNextDecl2.getCanRead() && valuesFilter.c != 'R') {
            return applyExp;
        }
        compilation.letStart();
        Expression expression2 = args[0];
        if (valuesFilter.c == 'P') {
            type2 = expression2.getType();
            declaredMethod = Compilation.typeValues.getDeclaredMethod("countValues", 1);
        } else {
            type2 = SortNodes.typeSortedNodes;
            ApplyExp applyExp2 = new ApplyExp(SortNodes.sortNodes, expression2);
            declaredMethod = CoerceNodes.typeNodes.getDeclaredMethod("size", 0);
            expression2 = applyExp2;
        }
        Declaration declarationLetVariable = compilation.letVariable("sequence", type2, expression2);
        compilation.letEnter();
        Expression applyExp3 = lambdaExp.body;
        if (applyExp3.getType() != XDataType.booleanType) {
            c2 = 0;
            applyExp3 = new ApplyExp(ValuesFilter.matchesMethod, applyExp3, new ReferenceExp(declarationNextDecl));
        } else {
            c2 = 0;
        }
        if (valuesFilter.c == 'R') {
            Declaration declaration = new Declaration((Object) null, Type.intType);
            AddOp addOp = AddOp.$Mn;
            ReferenceExp referenceExp = new ReferenceExp(declarationNextDecl2);
            ReferenceExp referenceExp2 = new ReferenceExp(declaration);
            Expression[] expressionArr = new Expression[2];
            expressionArr[c2] = referenceExp;
            expressionArr[1] = referenceExp2;
            ApplyExp applyExp4 = new ApplyExp(addOp, expressionArr);
            AddOp addOp2 = AddOp.$Pl;
            QuoteExp quoteExp = new QuoteExp(IntNum.one());
            Expression[] expressionArr2 = new Expression[2];
            expressionArr2[c2] = applyExp4;
            expressionArr2[1] = quoteExp;
            ApplyExp applyExp5 = new ApplyExp(addOp2, expressionArr2);
            Expression[] expressionArr3 = new Expression[1];
            expressionArr3[c2] = applyExp5;
            LetExp letExp = new LetExp(expressionArr3);
            lambdaExp.replaceFollowing(declarationFirstDecl, declaration);
            letExp.add(declarationNextDecl);
            letExp.body = applyExp3;
            applyExp3 = letExp;
        }
        lambdaExp.body = new IfExp(applyExp3, new ReferenceExp(declarationFirstDecl), QuoteExp.voidExp);
        ValuesMap valuesMap = ValuesMap.valuesMapWithPos;
        ReferenceExp referenceExp3 = new ReferenceExp(declarationLetVariable);
        Expression[] expressionArr4 = new Expression[2];
        expressionArr4[c2] = lambdaExp;
        expressionArr4[1] = referenceExp3;
        ApplyExp applyExp6 = new ApplyExp(valuesMap, expressionArr4);
        applyExp6.setType(declarationFirstDecl.getType());
        lambdaExp.returnContinuation = applyExp6;
        ReferenceExp referenceExp4 = new ReferenceExp(declarationLetVariable);
        Expression[] expressionArr5 = new Expression[1];
        expressionArr5[c2] = referenceExp4;
        Expression[] expressionArr6 = new Expression[1];
        expressionArr6[c2] = new ApplyExp(declaredMethod, expressionArr5);
        LetExp letExp2 = new LetExp(expressionArr6);
        letExp2.add(declarationNextDecl2);
        letExp2.body = gnu.kawa.functions.CompileMisc.validateApplyValuesMap(applyExp6, inlineCalls, type, valuesMap);
        return compilation.letDone(letExp2);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x015e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gnu.expr.Expression validateApplyRelativeStep(gnu.expr.ApplyExp r10, gnu.expr.InlineCalls r11, gnu.bytecode.Type r12, gnu.mapping.Procedure r13) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.util.CompileMisc.validateApplyRelativeStep(gnu.expr.ApplyExp, gnu.expr.InlineCalls, gnu.bytecode.Type, gnu.mapping.Procedure):gnu.expr.Expression");
    }

    public static Expression validateApplyOrderedMap(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        Expression[] args = applyExp.getArgs();
        if (args.length <= 2) {
            return applyExp;
        }
        int length = args.length - 1;
        Expression[] expressionArr = new Expression[length];
        System.arraycopy(args, 1, expressionArr, 0, length);
        return new ApplyExp(procedure, args[0], new ApplyExp(f5530a.getDeclaredMethod("make$V", 2), expressionArr));
    }

    static {
        ClassType classTypeMake = ClassType.make("gnu.kawa.xml.XDataType");
        f5531b = classTypeMake.getDeclaredMethod("cast", 1);
        c = classTypeMake.getDeclaredMethod("castable", 1);
    }

    public static void compileOrderedMap(ApplyExp applyExp, Compilation compilation, Target target, Procedure procedure) {
        Expression[] args = applyExp.getArgs();
        if (args.length != 2) {
            ApplyExp.compile(applyExp, compilation, target);
            return;
        }
        CodeAttr code = compilation.getCode();
        Scope scopePushScope = code.pushScope();
        ClassType classType = f5530a;
        Variable variableAddVariable = scopePushScope.addVariable(code, classType, null);
        args[1].compile(compilation, Target.pushValue(classType));
        code.emitStore(variableAddVariable);
        args[0].compile(compilation, new ConsumerTarget(variableAddVariable));
        Method declaredMethod = classType.getDeclaredMethod("run$X", 1);
        code.emitLoad(variableAddVariable);
        PrimProcedure.compileInvoke(compilation, declaredMethod, target, applyExp.isTailCall(), 182, Type.pointer_type);
        code.popScope();
    }

    public static Expression validateApplyCastAs(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        ApplyExp applyExpInlineClassName = CompileReflect.inlineClassName(applyExp, 0, inlineCalls);
        Expression[] args = applyExpInlineClassName.getArgs();
        if (args.length != 2) {
            return applyExpInlineClassName;
        }
        Expression expression = args[0];
        return ((expression instanceof QuoteExp) && (((QuoteExp) expression).getValue() instanceof XDataType)) ? new ApplyExp(f5531b, args) : applyExpInlineClassName;
    }

    public static Expression validateApplyCastableAs(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        ApplyExp applyExpInlineClassName = CompileReflect.inlineClassName(applyExp, 1, inlineCalls);
        Expression[] args = applyExpInlineClassName.getArgs();
        if (args.length != 2) {
            return applyExpInlineClassName;
        }
        Expression expression = args[1];
        return ((expression instanceof QuoteExp) && (((QuoteExp) expression).getValue() instanceof XDataType)) ? new ApplyExp(c, args[1], args[0]) : applyExpInlineClassName;
    }
}
