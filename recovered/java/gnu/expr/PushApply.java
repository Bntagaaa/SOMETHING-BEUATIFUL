package gnu.expr;

/* loaded from: classes2.dex */
public class PushApply extends ExpVisitor<Expression, Void> {
    @Override // gnu.expr.ExpVisitor
    public Expression defaultValue(Expression expression, Void r2) {
        return expression;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression update(Expression expression, Expression expression2) {
        return expression2;
    }

    public static void pushApply(Expression expression) {
        new PushApply().visit(expression, null);
    }

    @Override // gnu.expr.ExpVisitor
    public Expression visitApplyExp(ApplyExp applyExp, Void r6) {
        Expression expression = applyExp.func;
        if ((expression instanceof LetExp) && !(expression instanceof FluidLetExp)) {
            LetExp letExp = (LetExp) expression;
            Expression expression2 = letExp.body;
            letExp.body = applyExp;
            applyExp.func = expression2;
            return (Expression) visit(letExp, r6);
        }
        if (expression instanceof BeginExp) {
            BeginExp beginExp = (BeginExp) expression;
            Expression[] expressionArr = beginExp.exps;
            int length = expressionArr.length - 1;
            applyExp.func = expressionArr[length];
            expressionArr[length] = applyExp;
            return (Expression) visit(beginExp, r6);
        }
        applyExp.visitChildren(this, r6);
        return applyExp;
    }
}
