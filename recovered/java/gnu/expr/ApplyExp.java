package gnu.expr;

import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.kawa.util.IdentityHashTable;
import gnu.mapping.CallContext;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure;
import gnu.text.SourceMessages;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ApplyExp extends Expression {
    public static final int INLINE_IF_CONSTANT = 4;
    public static final int MAY_CONTAIN_BACK_JUMP = 8;
    public static final int TAILCALL = 2;
    Expression[] args;
    LambdaExp context;
    Expression func;
    public ApplyExp nextCall;
    protected Type type;

    @Override // gnu.expr.Expression
    public boolean mustCompile() {
        return false;
    }

    public final Expression getFunction() {
        return this.func;
    }

    public final Expression[] getArgs() {
        return this.args;
    }

    public final int getArgCount() {
        return this.args.length;
    }

    public void setFunction(Expression expression) {
        this.func = expression;
    }

    public void setArgs(Expression[] expressionArr) {
        this.args = expressionArr;
    }

    public Expression getArg(int i) {
        return this.args[i];
    }

    public void setArg(int i, Expression expression) {
        this.args[i] = expression;
    }

    public final boolean isTailCall() {
        return getFlag(2);
    }

    public final void setTailCall(boolean z) {
        setFlag(z, 2);
    }

    public final Object getFunctionValue() {
        Expression expression = this.func;
        if (expression instanceof QuoteExp) {
            return ((QuoteExp) expression).getValue();
        }
        return null;
    }

    public ApplyExp(Expression expression, Expression... expressionArr) {
        this.func = expression;
        this.args = expressionArr;
    }

    public ApplyExp(Procedure procedure, Expression... expressionArr) {
        this.func = new QuoteExp(procedure);
        this.args = expressionArr;
    }

    public ApplyExp(Method method, Expression... expressionArr) {
        this((Expression) new QuoteExp(new PrimProcedure(method)), expressionArr);
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        Object objEval = this.func.eval(callContext);
        int length = this.args.length;
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            objArr[i] = this.args[i].eval(callContext);
        }
        ((Procedure) objEval).checkN(objArr, callContext);
    }

    public static void compileToArray(Expression[] expressionArr, Compilation compilation) {
        CodeAttr code = compilation.getCode();
        if (expressionArr.length == 0) {
            code.emitGetStatic(Compilation.noArgsField);
            return;
        }
        code.emitPushInt(expressionArr.length);
        code.emitNewArray(Type.pointer_type);
        for (int i = 0; i < expressionArr.length; i++) {
            Expression expression = expressionArr[i];
            if (compilation.usingCPStyle() && !(expression instanceof QuoteExp) && !(expression instanceof ReferenceExp)) {
                expression.compileWithPosition(compilation, Target.pushObject);
                code.emitSwap();
                code.emitDup(1, 1);
                code.emitSwap();
                code.emitPushInt(i);
                code.emitSwap();
            } else {
                code.emitDup(Compilation.objArrayType);
                code.emitPushInt(i);
                expression.compileWithPosition(compilation, Target.pushObject);
            }
            code.emitArrayStore(Type.pointer_type);
        }
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        compile(this, compilation, target, true);
    }

    public static void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        compile(applyExp, compilation, target, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00aa A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0151  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void compile(gnu.expr.ApplyExp r11, gnu.expr.Compilation r12, gnu.expr.Target r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 669
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.ApplyExp.compile(gnu.expr.ApplyExp, gnu.expr.Compilation, gnu.expr.Target, boolean):void");
    }

    @Override // gnu.expr.Expression
    public Expression deepCopy(IdentityHashTable identityHashTable) {
        Expression expressionDeepCopy = Expression.deepCopy(this.func, identityHashTable);
        Expression[] expressionArrDeepCopy = Expression.deepCopy(this.args, identityHashTable);
        if (expressionDeepCopy == null && this.func != null) {
            return null;
        }
        if (expressionArrDeepCopy == null && this.args != null) {
            return null;
        }
        ApplyExp applyExp = new ApplyExp(expressionDeepCopy, expressionArrDeepCopy);
        applyExp.flags = getFlags();
        return applyExp;
    }

    @Override // gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitApplyExp(this, d);
    }

    public void visitArgs(InlineCalls inlineCalls) {
        Expression[] expressionArr = this.args;
        this.args = inlineCalls.visitExps(expressionArr, expressionArr.length, null);
    }

    @Override // gnu.expr.Expression
    public <R, D> void visitChildren(ExpVisitor<R, D> expVisitor, D d) {
        this.func = expVisitor.visitAndUpdate(this.func, d);
        if (expVisitor.exitValue == null) {
            Expression[] expressionArr = this.args;
            this.args = expVisitor.visitExps(expressionArr, expressionArr.length, d);
        }
    }

    @Override // gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        outPort.startLogicalBlock("(Apply", ")", 2);
        if (isTailCall()) {
            outPort.print(" [tailcall]");
        }
        Type type = this.type;
        if (type != null && type != Type.pointer_type) {
            outPort.print(" => ");
            outPort.print(this.type);
        }
        outPort.writeSpaceFill();
        printLineColumn(outPort);
        this.func.print(outPort);
        for (int i = 0; i < this.args.length; i++) {
            outPort.writeSpaceLinear();
            this.args[i].print(outPort);
        }
        outPort.endLogicalBlock(")");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void pushArgs(gnu.expr.LambdaExp r5, gnu.expr.Expression[] r6, int[] r7, gnu.expr.Compilation r8) {
        /*
            gnu.expr.Declaration r5 = r5.firstDecl()
            int r0 = r6.length
            r1 = 0
        L6:
            if (r1 >= r0) goto L35
            r2 = r6[r1]
            boolean r3 = r5.ignorable()
            if (r3 == 0) goto L16
            gnu.expr.Target r3 = gnu.expr.Target.Ignore
            r2.compile(r8, r3)
            goto L2e
        L16:
            if (r7 == 0) goto L23
            int r3 = gnu.expr.SetExp.canUseInc(r2, r5)
            r7[r1] = r3
            r4 = 65536(0x10000, float:9.1835E-41)
            if (r3 == r4) goto L23
            goto L2e
        L23:
            gnu.bytecode.Type r3 = r5.getType()
            gnu.expr.Target r3 = gnu.expr.StackTarget.getInstance(r3)
            r2.compileWithPosition(r8, r3)
        L2e:
            gnu.expr.Declaration r5 = r5.nextDecl()
            int r1 = r1 + 1
            goto L6
        L35:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.ApplyExp.pushArgs(gnu.expr.LambdaExp, gnu.expr.Expression[], int[], gnu.expr.Compilation):void");
    }

    private static void popParams(CodeAttr codeAttr, LambdaExp lambdaExp, int[] iArr, boolean z) {
        CodeAttr codeAttr2;
        Variable variableFirstVar = lambdaExp.getVarScope().firstVar();
        Declaration declarationFirstDecl = lambdaExp.firstDecl();
        if (variableFirstVar != null && variableFirstVar.getName() == "this") {
            variableFirstVar = variableFirstVar.nextVar();
        }
        if (variableFirstVar != null && variableFirstVar.getName() == "$ctx") {
            variableFirstVar = variableFirstVar.nextVar();
        }
        Variable variableNextVar = variableFirstVar;
        if (variableNextVar == null || variableNextVar.getName() != "argsArray") {
            codeAttr2 = codeAttr;
        } else if (z) {
            popParams(codeAttr, 0, 1, null, declarationFirstDecl, variableNextVar);
            return;
        } else {
            codeAttr2 = codeAttr;
            variableNextVar = variableNextVar.nextVar();
        }
        popParams(codeAttr2, 0, lambdaExp.min_args, iArr, declarationFirstDecl, variableNextVar);
    }

    private static void popParams(CodeAttr codeAttr, int i, int i2, int[] iArr, Declaration declaration, Variable variable) {
        int i3;
        if (i2 > 0) {
            popParams(codeAttr, i + 1, i2 - 1, iArr, declaration.nextDecl(), declaration.getVariable() == null ? variable : variable.nextVar());
            if (declaration.ignorable()) {
                return;
            }
            if (iArr != null && (i3 = iArr[i]) != 65536) {
                codeAttr.emitInc(variable, (short) i3);
            } else {
                codeAttr.emitStore(variable);
            }
        }
    }

    public final Type getTypeRaw() {
        return this.type;
    }

    public final void setType(Type type) {
        this.type = type;
    }

    @Override // gnu.expr.Expression
    public boolean side_effects() {
        Object objValueIfConstant = derefFunc(this.func).valueIfConstant();
        if (!(objValueIfConstant instanceof Procedure) || !((Procedure) objValueIfConstant).isSideEffectFree()) {
            return true;
        }
        for (Expression expression : this.args) {
            if (expression.side_effects()) {
                return true;
            }
        }
        return false;
    }

    public static Expression derefFunc(Expression expression) {
        Declaration declarationFollowAliases;
        return (!(expression instanceof ReferenceExp) || (declarationFollowAliases = Declaration.followAliases(((ReferenceExp) expression).binding)) == null || declarationFollowAliases.getFlag(65536L)) ? expression : declarationFollowAliases.getValue();
    }

    @Override // gnu.expr.Expression
    public final Type getType() {
        Type type = this.type;
        if (type != null) {
            return type;
        }
        Expression expressionDerefFunc = derefFunc(this.func);
        this.type = Type.objectType;
        if (expressionDerefFunc instanceof QuoteExp) {
            Object value = ((QuoteExp) expressionDerefFunc).getValue();
            if (value instanceof Procedure) {
                this.type = ((Procedure) value).getReturnType(this.args);
            }
        } else if (expressionDerefFunc instanceof LambdaExp) {
            this.type = ((LambdaExp) expressionDerefFunc).getReturnType();
        }
        return this.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Inlineable asInlineable(Procedure procedure) {
        if (procedure instanceof Inlineable) {
            return (Inlineable) procedure;
        }
        return (Inlineable) Procedure.compilerKey.get(procedure);
    }

    public static boolean inlineCompile(Procedure procedure, ApplyExp applyExp, Compilation compilation, Target target) throws Throwable {
        Inlineable inlineableAsInlineable = asInlineable(procedure);
        if (inlineableAsInlineable == null) {
            return false;
        }
        inlineableAsInlineable.compile(applyExp, compilation, target);
        return true;
    }

    public final Expression inlineIfConstant(Procedure procedure, InlineCalls inlineCalls) {
        return inlineIfConstant(procedure, inlineCalls.getMessages());
    }

    public final Expression inlineIfConstant(Procedure procedure, SourceMessages sourceMessages) {
        Declaration binding;
        int length = this.args.length;
        Object[] objArr = new Object[length];
        while (true) {
            length--;
            if (length >= 0) {
                Expression value = this.args[length];
                if (((value instanceof ReferenceExp) && (binding = ((ReferenceExp) value).getBinding()) != null && (value = binding.getValue()) == QuoteExp.undefined_exp) || !(value instanceof QuoteExp)) {
                    break;
                }
                objArr[length] = ((QuoteExp) value).getValue();
            } else {
                try {
                    return new QuoteExp(procedure.applyN(objArr), this.type);
                } catch (Throwable th) {
                    if (sourceMessages != null) {
                        sourceMessages.error('w', "call to " + procedure + " throws " + th);
                    }
                }
            }
        }
        return this;
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public String toString() {
        if (this == LambdaExp.unknownContinuation) {
            return "ApplyExp[unknownContinuation]";
        }
        StringBuilder sb = new StringBuilder("ApplyExp/");
        Expression[] expressionArr = this.args;
        sb.append(expressionArr == null ? 0 : expressionArr.length);
        sb.append('[');
        sb.append(this.func);
        sb.append(']');
        return sb.toString();
    }
}
