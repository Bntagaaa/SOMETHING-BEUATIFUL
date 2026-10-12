package gnu.kawa.functions;

import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.InlineCalls;
import gnu.expr.QuoteExp;
import gnu.kawa.reflect.Invoke;

/* loaded from: classes2.dex */
class SetListExp extends ApplyExp {
    public SetListExp(Expression expression, Expression[] expressionArr) {
        super(expression, expressionArr);
    }

    @Override // gnu.expr.Expression
    public Expression validateApply(ApplyExp applyExp, InlineCalls inlineCalls, Type type, Declaration declaration) {
        applyExp.visitArgs(inlineCalls);
        Expression[] args = applyExp.getArgs();
        return args.length == 2 ? Compilation.makeCoercion(inlineCalls.visitApplyOnly(new ApplyExp(Invoke.invoke, getArgs()[0], QuoteExp.getInstance("set"), Compilation.makeCoercion(args[0], Type.intType), args[1]), type), Type.voidType) : applyExp;
    }
}
