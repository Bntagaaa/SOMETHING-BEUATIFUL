package gnu.expr;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Type;
import gnu.mapping.CallContext;
import gnu.mapping.OutPort;
import java.io.IOException;

/* loaded from: classes2.dex */
public class TryExp extends Expression {
    CatchClause catch_clauses;
    Expression finally_clause;
    Expression try_clause;

    @Override // gnu.expr.Expression
    public boolean mustCompile() {
        return false;
    }

    public final CatchClause getCatchClauses() {
        return this.catch_clauses;
    }

    public final Expression getFinallyClause() {
        return this.finally_clause;
    }

    public final void setCatchClauses(CatchClause catchClause) {
        this.catch_clauses = catchClause;
    }

    public TryExp(Expression expression, Expression expression2) {
        this.try_clause = expression;
        this.finally_clause = expression2;
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        try {
            this.try_clause.apply(callContext);
            callContext.runUntilDone();
        } catch (Throwable th) {
            try {
                for (CatchClause catchClause = this.catch_clauses; catchClause != null; catchClause = catchClause.next) {
                    if (((ClassType) catchClause.firstDecl().getTypeExp().eval(callContext)).isInstance(th)) {
                        callContext.value1 = th;
                        catchClause.apply(callContext);
                        Expression expression = this.finally_clause;
                        if (expression != null) {
                            expression.eval(callContext);
                            return;
                        }
                        return;
                    }
                }
                throw th;
            } finally {
                Expression expression2 = this.finally_clause;
                if (expression2 != null) {
                    expression2.eval(callContext);
                }
            }
        }
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        CodeAttr code = compilation.getCode();
        Expression expression = this.finally_clause;
        boolean z = expression != null;
        Target targetPushValue = ((target instanceof StackTarget) || (target instanceof ConsumerTarget) || (target instanceof IgnoreTarget) || ((target instanceof ConditionalTarget) && expression == null)) ? target : Target.pushValue(target.getType());
        code.emitTryStart(z, targetPushValue instanceof StackTarget ? targetPushValue.getType() : null);
        this.try_clause.compileWithPosition(compilation, targetPushValue);
        for (CatchClause next = this.catch_clauses; next != null; next = next.getNext()) {
            next.compile(compilation, targetPushValue);
        }
        if (this.finally_clause != null) {
            code.emitFinallyStart();
            this.finally_clause.compileWithPosition(compilation, Target.Ignore);
            code.emitFinallyEnd();
        }
        code.emitTryCatchEnd();
        if (targetPushValue != target) {
            target.compileFromStack(compilation, target.getType());
        }
    }

    @Override // gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitTryExp(this, d);
    }

    @Override // gnu.expr.Expression
    public <R, D> void visitChildren(ExpVisitor<R, D> expVisitor, D d) {
        Object obj;
        Expression expression;
        this.try_clause = expVisitor.visitAndUpdate(this.try_clause, d);
        CatchClause next = this.catch_clauses;
        while (true) {
            obj = expVisitor.exitValue;
            if (obj != null || next == null) {
                break;
            }
            expVisitor.visit(next, d);
            next = next.getNext();
        }
        if (obj != null || (expression = this.finally_clause) == null) {
            return;
        }
        this.finally_clause = expVisitor.visitAndUpdate(expression, d);
    }

    @Override // gnu.expr.Expression
    public Type getType() {
        if (this.catch_clauses == null) {
            return this.try_clause.getType();
        }
        return super.getType();
    }

    @Override // gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        outPort.startLogicalBlock("(Try", ")", 2);
        outPort.writeSpaceFill();
        this.try_clause.print(outPort);
        for (CatchClause next = this.catch_clauses; next != null; next = next.getNext()) {
            next.print(outPort);
        }
        if (this.finally_clause != null) {
            outPort.writeSpaceLinear();
            outPort.print(" finally: ");
            this.finally_clause.print(outPort);
        }
        outPort.endLogicalBlock(")");
    }
}
