package gnu.kawa.functions;

import _COROUTINE.a;
import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.Scope;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.expr.ApplyExp;
import gnu.expr.BeginExp;
import gnu.expr.Compilation;
import gnu.expr.ConditionalTarget;
import gnu.expr.ConsumerTarget;
import gnu.expr.Declaration;
import gnu.expr.ExpVisitor;
import gnu.expr.Expression;
import gnu.expr.IfExp;
import gnu.expr.IgnoreTarget;
import gnu.expr.InlineCalls;
import gnu.expr.Inlineable;
import gnu.expr.LambdaExp;
import gnu.expr.Language;
import gnu.expr.LetExp;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.expr.StackTarget;
import gnu.expr.Target;
import gnu.expr.TryExp;
import gnu.kawa.lispexpr.LangObjType;
import gnu.kawa.reflect.CompileReflect;
import gnu.kawa.reflect.Invoke;
import gnu.kawa.reflect.SlotGet;
import gnu.lists.LList;
import gnu.mapping.Procedure;
import gnu.mapping.WrongArguments;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class CompileMisc implements Inlineable {
    static final int CONVERT = 2;
    static final int NOT = 3;
    static Method coerceMethod;
    public static final ClassType typeContinuation = ClassType.make("kawa.lang.Continuation");
    static ClassType typeType;
    int code;
    Procedure proc;

    public CompileMisc(Procedure procedure, int i) {
        this.proc = procedure;
        this.code = i;
    }

    public static CompileMisc forConvert(Object obj) {
        return new CompileMisc((Procedure) obj, 2);
    }

    public static CompileMisc forNot(Object obj) {
        return new CompileMisc((Procedure) obj, 3);
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        int i = this.code;
        if (i == 2) {
            compileConvert((Convert) this.proc, applyExp, compilation, target);
        } else {
            if (i == 3) {
                compileNot((Not) this.proc, applyExp, compilation, target);
                return;
            }
            throw new Error();
        }
    }

    public static Expression validateApplyConstantFunction0(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        int argCount = applyExp.getArgCount();
        if (argCount != 0 && inlineCalls != null) {
            return inlineCalls.noteError(WrongArguments.checkArgCount(procedure, argCount));
        }
        return ((ConstantFunction0) procedure).constant;
    }

    public static Expression validateApplyConvert(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        Compilation compilation = inlineCalls.getCompilation();
        Language language = compilation.getLanguage();
        Expression[] args = applyExp.getArgs();
        if (args.length == 2) {
            Expression expressionVisit = inlineCalls.visit(args[0], (Type) null);
            args[0] = expressionVisit;
            Type typeFor = language.getTypeFor(expressionVisit);
            if (typeFor != null) {
                args[0] = new QuoteExp(typeFor);
                args[1] = inlineCalls.visit(args[1], typeFor);
                CompileReflect.checkKnownClass(typeFor, compilation);
                applyExp.setType(typeFor);
                return applyExp;
            }
        }
        applyExp.visitArgs(inlineCalls);
        return applyExp;
    }

    public static Expression validateApplyNot(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        applyExp.setType(inlineCalls.getCompilation().getLanguage().getTypeFor(Boolean.TYPE));
        return applyExp.inlineIfConstant(procedure, inlineCalls);
    }

    public static Expression validateApplyFormat(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        Type type2 = Type.objectType;
        Expression[] args = applyExp.getArgs();
        if (args.length > 0) {
            ClassType classTypeMake = ClassType.make("gnu.kawa.functions.Format");
            Object objValueIfConstant = args[0].valueIfConstant();
            Type type3 = args[0].getType();
            Boolean bool = Boolean.FALSE;
            if (objValueIfConstant == bool || type3.isSubtype(LangObjType.stringType)) {
                int i = objValueIfConstant == bool ? 1 : 0;
                int length = (args.length + 1) - i;
                Expression[] expressionArr = new Expression[length];
                expressionArr[0] = new QuoteExp(0, Type.intType);
                System.arraycopy(args, i, expressionArr, 1, length - 1);
                ApplyExp applyExp2 = new ApplyExp(classTypeMake.getDeclaredMethod("formatToString", 2), expressionArr);
                applyExp2.setType(Type.javalangStringType);
                return applyExp2;
            }
            Boolean bool2 = Boolean.TRUE;
            if (objValueIfConstant == bool2 || type3.isSubtype(ClassType.make("java.io.Writer"))) {
                if (objValueIfConstant == bool2) {
                    Expression[] expressionArr2 = new Expression[args.length];
                    expressionArr2[0] = QuoteExp.nullExp;
                    System.arraycopy(args, 1, expressionArr2, 1, args.length - 1);
                    args = expressionArr2;
                }
                ApplyExp applyExp3 = new ApplyExp(classTypeMake.getDeclaredMethod("formatToWriter", 3), args);
                applyExp3.setType(Type.voidType);
                return applyExp3;
            }
            if (type3.isSubtype(ClassType.make("java.io.OutputStream"))) {
                type2 = Type.voidType;
            }
        }
        applyExp.setType(type2);
        return null;
    }

    public static Expression validateApplyAppendValues(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        Expression[] args = applyExp.getArgs();
        if (args.length == 1) {
            return args[0];
        }
        if (args.length == 0) {
            return QuoteExp.voidExp;
        }
        Expression expressionInlineIfConstant = applyExp.inlineIfConstant(procedure, inlineCalls);
        return expressionInlineIfConstant != applyExp ? expressionInlineIfConstant : applyExp;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gnu.expr.Expression validateApplyMakeProcedure(gnu.expr.ApplyExp r10, gnu.expr.InlineCalls r11, gnu.bytecode.Type r12, gnu.mapping.Procedure r13) {
        /*
            r10.visitArgs(r11)
            gnu.expr.Expression[] r11 = r10.getArgs()
            int r12 = r11.length
            r13 = 0
            r0 = 0
            r1 = r13
            r2 = 0
            r3 = 0
        Ld:
            java.lang.String r4 = "method"
            java.lang.String r5 = "name"
            r6 = 1
            if (r2 >= r12) goto L4b
            r7 = r11[r2]
            boolean r8 = r7 instanceof gnu.expr.QuoteExp
            if (r8 == 0) goto L46
            r8 = r7
            gnu.expr.QuoteExp r8 = (gnu.expr.QuoteExp) r8
            java.lang.Object r8 = r8.getValue()
            boolean r9 = r8 instanceof gnu.expr.Keyword
            if (r9 == 0) goto L46
            gnu.expr.Keyword r8 = (gnu.expr.Keyword) r8
            java.lang.String r7 = r8.getName()
            int r2 = r2 + 1
            r8 = r11[r2]
            if (r7 != r5) goto L40
            boolean r4 = r8 instanceof gnu.expr.QuoteExp
            if (r4 == 0) goto L49
            gnu.expr.QuoteExp r8 = (gnu.expr.QuoteExp) r8
            java.lang.Object r1 = r8.getValue()
            java.lang.String r1 = r1.toString()
            goto L49
        L40:
            if (r7 != r4) goto L49
            int r3 = r3 + 1
            r13 = r8
            goto L49
        L46:
            int r3 = r3 + 1
            r13 = r7
        L49:
            int r2 = r2 + r6
            goto Ld
        L4b:
            if (r3 != r6) goto L85
            boolean r2 = r13 instanceof gnu.expr.LambdaExp
            if (r2 == 0) goto L85
            r10 = r13
            gnu.expr.LambdaExp r10 = (gnu.expr.LambdaExp) r10
        L54:
            if (r0 >= r12) goto L84
            r2 = r11[r0]
            boolean r3 = r2 instanceof gnu.expr.QuoteExp
            if (r3 == 0) goto L82
            gnu.expr.QuoteExp r2 = (gnu.expr.QuoteExp) r2
            java.lang.Object r2 = r2.getValue()
            boolean r3 = r2 instanceof gnu.expr.Keyword
            if (r3 == 0) goto L82
            gnu.expr.Keyword r2 = (gnu.expr.Keyword) r2
            java.lang.String r2 = r2.getName()
            int r0 = r0 + 1
            r3 = r11[r0]
            if (r2 != r5) goto L76
            r10.setName(r1)
            goto L82
        L76:
            if (r2 != r4) goto L79
            goto L82
        L79:
            gnu.mapping.Namespace r7 = gnu.mapping.Namespace.EmptyNamespace
            gnu.mapping.Symbol r2 = r7.getSymbol(r2)
            r10.setProperty(r2, r3)
        L82:
            int r0 = r0 + r6
            goto L54
        L84:
            return r13
        L85:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.functions.CompileMisc.validateApplyMakeProcedure(gnu.expr.ApplyExp, gnu.expr.InlineCalls, gnu.bytecode.Type, gnu.mapping.Procedure):gnu.expr.Expression");
    }

    public static Expression validateApplyValuesMap(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        applyExp.visitArgs(inlineCalls);
        LambdaExp lambdaExpCanInline = ValuesMap.canInline(applyExp, (ValuesMap) procedure);
        if (lambdaExpCanInline != null) {
            lambdaExpCanInline.setInlineOnly(true);
            lambdaExpCanInline.returnContinuation = applyExp;
            lambdaExpCanInline.inlineHome = inlineCalls.getCurrentLambda();
        }
        return applyExp;
    }

    public static void compileConvert(Convert convert, ApplyExp applyExp, Compilation compilation, Target target) {
        Expression[] args = applyExp.getArgs();
        if (args.length != 2) {
            throw new Error("wrong number of arguments to " + convert.getName());
        }
        CodeAttr code = compilation.getCode();
        Type typeValue = Scheme.getTypeValue(args[0]);
        if (typeValue != null) {
            args[1].compile(compilation, Target.pushValue(typeValue));
            if (code.reachableHere()) {
                target.compileFromStack(compilation, typeValue);
                return;
            }
            return;
        }
        if (typeType == null) {
            typeType = ClassType.make("gnu.bytecode.Type");
        }
        if (coerceMethod == null) {
            coerceMethod = typeType.addMethod("coerceFromObject", Compilation.apply1args, Type.pointer_type, 1);
        }
        args[0].compile(compilation, LangObjType.typeClassType);
        args[1].compile(compilation, Target.pushObject);
        code.emitInvokeVirtual(coerceMethod);
        target.compileFromStack(compilation, Type.pointer_type);
    }

    public void compileNot(Not not, ApplyExp applyExp, Compilation compilation, Target target) {
        Expression expression = applyExp.getArgs()[0];
        Language language = not.language;
        if (target instanceof ConditionalTarget) {
            ConditionalTarget conditionalTarget = (ConditionalTarget) target;
            ConditionalTarget conditionalTarget2 = new ConditionalTarget(conditionalTarget.ifFalse, conditionalTarget.ifTrue, language);
            conditionalTarget2.trueBranchComesFirst = !conditionalTarget.trueBranchComesFirst;
            expression.compile(compilation, conditionalTarget2);
            return;
        }
        CodeAttr code = compilation.getCode();
        Type type = target.getType();
        if ((target instanceof StackTarget) && type.getSignature().charAt(0) == 'Z') {
            expression.compile(compilation, target);
            code.emitNot(target.getType());
        } else {
            IfExp.compile(expression, QuoteExp.getInstance(language.booleanObject(false)), QuoteExp.getInstance(language.booleanObject(true)), compilation, target);
        }
    }

    public static Expression validateApplyCallCC(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        LambdaExp lambdaExpCanInlineCallCC = canInlineCallCC(applyExp);
        if (lambdaExpCanInlineCallCC != null) {
            lambdaExpCanInlineCallCC.setInlineOnly(true);
            lambdaExpCanInlineCallCC.returnContinuation = applyExp;
            lambdaExpCanInlineCallCC.inlineHome = inlineCalls.getCurrentLambda();
            Declaration declarationFirstDecl = lambdaExpCanInlineCallCC.firstDecl();
            if (!declarationFirstDecl.getFlag(8192L)) {
                declarationFirstDecl.setType(typeContinuation);
            }
        }
        applyExp.visitArgs(inlineCalls);
        return applyExp;
    }

    public static void compileCallCC(ApplyExp applyExp, Compilation compilation, Target target, Procedure procedure) {
        LambdaExp lambdaExpCanInlineCallCC = canInlineCallCC(applyExp);
        if (lambdaExpCanInlineCallCC == null) {
            ApplyExp.compile(applyExp, compilation, target);
            return;
        }
        CodeAttr code = compilation.getCode();
        Declaration declarationFirstDecl = lambdaExpCanInlineCallCC.firstDecl();
        if (declarationFirstDecl.isSimple() && !declarationFirstDecl.getCanRead() && !declarationFirstDecl.getCanWrite()) {
            declarationFirstDecl.setCanCall(false);
            CompileTimeContinuation compileTimeContinuation = new CompileTimeContinuation();
            compileTimeContinuation.exitableBlock = code.startExitableBlock(target instanceof StackTarget ? target.getType() : null, ExitThroughFinallyChecker.check(declarationFirstDecl, lambdaExpCanInlineCallCC.body));
            compileTimeContinuation.blockTarget = target;
            declarationFirstDecl.setValue(new QuoteExp(compileTimeContinuation));
            new ApplyExp((Expression) lambdaExpCanInlineCallCC, QuoteExp.nullExp).compile(compilation, target);
            code.endExitableBlock();
            return;
        }
        Scope scopePushScope = code.pushScope();
        ClassType classType = typeContinuation;
        Variable variableAddVariable = scopePushScope.addVariable(code, classType, null);
        Declaration declaration = new Declaration(variableAddVariable);
        code.emitNew(classType);
        code.emitDup(classType);
        compilation.loadCallContext();
        code.emitInvokeSpecial(classType.getDeclaredMethod("<init>", 1));
        code.emitStore(variableAddVariable);
        code.emitTryStart(false, ((target instanceof IgnoreTarget) || (target instanceof ConsumerTarget)) ? null : Type.objectType);
        new ApplyExp((Expression) lambdaExpCanInlineCallCC, new ReferenceExp(declaration)).compile(compilation, target);
        if (code.reachableHere()) {
            code.emitLoad(variableAddVariable);
            code.emitPushInt(1);
            code.emitPutField(classType.getField("invoked"));
        }
        code.emitTryEnd();
        code.emitCatchStart(null);
        code.emitLoad(variableAddVariable);
        if (target instanceof ConsumerTarget) {
            compilation.loadCallContext();
            code.emitInvokeStatic(classType.getDeclaredMethod("handleException$X", 3));
        } else {
            code.emitInvokeStatic(classType.getDeclaredMethod("handleException", 2));
            target.compileFromStack(compilation, Type.objectType);
        }
        code.emitCatchEnd();
        code.emitTryCatchEnd();
        code.popScope();
    }

    private static LambdaExp canInlineCallCC(ApplyExp applyExp) {
        Expression[] args = applyExp.getArgs();
        if (args.length != 1) {
            return null;
        }
        Expression expression = args[0];
        if (!(expression instanceof LambdaExp)) {
            return null;
        }
        LambdaExp lambdaExp = (LambdaExp) expression;
        if (lambdaExp.min_args == 1 && lambdaExp.max_args == 1 && !lambdaExp.firstDecl().getCanWrite()) {
            return lambdaExp;
        }
        return null;
    }

    public static class ExitThroughFinallyChecker extends ExpVisitor<Expression, TryExp> {
        Declaration decl;

        @Override // gnu.expr.ExpVisitor
        public Expression defaultValue(Expression expression, TryExp tryExp) {
            return expression;
        }

        public static boolean check(Declaration declaration, Expression expression) {
            ExitThroughFinallyChecker exitThroughFinallyChecker = new ExitThroughFinallyChecker();
            exitThroughFinallyChecker.decl = declaration;
            exitThroughFinallyChecker.visit(expression, null);
            return exitThroughFinallyChecker.exitValue != null;
        }

        @Override // gnu.expr.ExpVisitor
        public Expression visitReferenceExp(ReferenceExp referenceExp, TryExp tryExp) {
            if (this.decl == referenceExp.getBinding() && tryExp != null) {
                this.exitValue = Boolean.TRUE;
            }
            return referenceExp;
        }

        @Override // gnu.expr.ExpVisitor
        public Expression visitTryExp(TryExp tryExp, TryExp tryExp2) {
            if (tryExp.getFinallyClause() != null) {
                tryExp2 = tryExp;
            }
            visitExpression(tryExp, tryExp2);
            return tryExp;
        }
    }

    public static Expression validateApplyMap(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Procedure procedure) {
        Map map = (Map) procedure;
        boolean z = map.collect;
        applyExp.visitArgs(inlineCalls);
        Expression[] args = applyExp.getArgs();
        int length = args.length;
        if (length < 2) {
            return applyExp;
        }
        int i = length - 1;
        Expression referenceExp = args[0];
        boolean zSide_effects = referenceExp.side_effects();
        LetExp letExp = new LetExp(new Expression[]{referenceExp});
        Declaration declarationAddDeclaration = letExp.addDeclaration("%proc", Compilation.typeProcedure);
        declarationAddDeclaration.noteValue(args[0]);
        Expression[] expressionArr = new Expression[1];
        LetExp letExp2 = new LetExp(expressionArr);
        letExp.setBody(letExp2);
        LambdaExp lambdaExp = new LambdaExp(z ? length : i);
        expressionArr[0] = lambdaExp;
        Declaration declarationAddDeclaration2 = letExp2.addDeclaration("%loop");
        declarationAddDeclaration2.noteValue(lambdaExp);
        Expression[] expressionArr2 = new Expression[i];
        LetExp letExp3 = new LetExp(expressionArr2);
        Declaration[] declarationArr = new Declaration[i];
        Declaration[] declarationArr2 = new Declaration[i];
        int i2 = 0;
        while (i2 < i) {
            Expression[] expressionArr3 = args;
            String strD = a.d(i2, "arg");
            declarationArr[i2] = lambdaExp.addDeclaration(strD);
            int i3 = i2;
            declarationArr2[i3] = letExp3.addDeclaration(strD, Compilation.typePair);
            ReferenceExp referenceExp2 = new ReferenceExp(declarationArr[i3]);
            expressionArr2[i3] = referenceExp2;
            declarationArr2[i3].noteValue(referenceExp2);
            i2 = i3 + 1;
            args = expressionArr3;
        }
        Expression[] expressionArr4 = args;
        Declaration declarationAddDeclaration3 = z ? lambdaExp.addDeclaration("result") : null;
        Expression[] expressionArr5 = new Expression[length];
        Expression[] expressionArr6 = new Expression[z ? length : i];
        int i4 = 0;
        while (i4 < i) {
            int i5 = i4 + 1;
            int i6 = i4;
            expressionArr5[i5] = inlineCalls.visitApplyOnly(SlotGet.makeGetField(new ReferenceExp(declarationArr2[i6]), "car"), null);
            expressionArr6[i6] = inlineCalls.visitApplyOnly(SlotGet.makeGetField(new ReferenceExp(declarationArr2[i6]), "cdr"), null);
            i4 = i5;
            declarationArr = declarationArr;
        }
        Declaration[] declarationArr3 = declarationArr;
        if (zSide_effects) {
            referenceExp = new ReferenceExp(declarationAddDeclaration);
        }
        expressionArr5[0] = referenceExp;
        Expression expressionVisitApplyOnly = inlineCalls.visitApplyOnly(new ApplyExp((Expression) new ReferenceExp(map.applyFieldDecl), expressionArr5), null);
        if (z) {
            expressionArr6[i] = Invoke.makeInvokeStatic(Compilation.typePair, "make", new Expression[]{expressionVisitApplyOnly, new ReferenceExp(declarationAddDeclaration3)});
        }
        Expression expressionVisitApplyOnly2 = inlineCalls.visitApplyOnly(new ApplyExp((Expression) new ReferenceExp(declarationAddDeclaration2), expressionArr6), null);
        if (!z) {
            expressionVisitApplyOnly2 = new BeginExp(expressionVisitApplyOnly, expressionVisitApplyOnly2);
        }
        lambdaExp.body = expressionVisitApplyOnly2;
        letExp3.setBody(expressionVisitApplyOnly2);
        lambdaExp.body = letExp3;
        Expression[] expressionArr7 = new Expression[z ? length : i];
        QuoteExp quoteExp = new QuoteExp(LList.Empty);
        int i7 = i;
        while (true) {
            int i8 = i7 - 1;
            if (i8 < 0) {
                break;
            }
            lambdaExp.body = new IfExp(inlineCalls.visitApplyOnly(new ApplyExp(map.isEq, new ReferenceExp(declarationArr3[i8]), quoteExp), null), z ? new ReferenceExp(declarationAddDeclaration3) : QuoteExp.voidExp, lambdaExp.body);
            expressionArr7[i8] = expressionArr4[i7];
            quoteExp = quoteExp;
            i7 = i8;
            declarationAddDeclaration3 = declarationAddDeclaration3;
        }
        QuoteExp quoteExp2 = quoteExp;
        if (z) {
            expressionArr7[i] = quoteExp2;
        }
        Expression expressionVisitApplyOnly3 = inlineCalls.visitApplyOnly(new ApplyExp((Expression) new ReferenceExp(declarationAddDeclaration2), expressionArr7), null);
        if (z) {
            expressionVisitApplyOnly3 = Invoke.makeInvokeStatic(Compilation.scmListType, "reverseInPlace", new Expression[]{expressionVisitApplyOnly3});
        }
        letExp2.setBody(expressionVisitApplyOnly3);
        return !zSide_effects ? letExp2 : letExp;
    }
}
