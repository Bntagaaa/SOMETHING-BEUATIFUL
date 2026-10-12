package gnu.expr;

/* loaded from: classes2.dex */
public abstract class ExpExpVisitor<D> extends ExpVisitor<Expression, D> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // gnu.expr.ExpVisitor
    public Expression defaultValue(Expression expression, D d) {
        return expression;
    }

    @Override // gnu.expr.ExpVisitor
    public Expression update(Expression expression, Expression expression2) {
        return expression2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // gnu.expr.ExpVisitor
    public /* bridge */ /* synthetic */ Expression defaultValue(Expression expression, Object obj) {
        return defaultValue(expression, (Expression) obj);
    }
}
