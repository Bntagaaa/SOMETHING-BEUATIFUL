package gnu.kawa.functions;

import gnu.bytecode.ExitableBlock;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.ConsumerTarget;
import gnu.expr.Expression;
import gnu.expr.IgnoreTarget;
import gnu.expr.Inlineable;
import gnu.expr.Target;
import gnu.mapping.ProcedureN;

/* loaded from: classes2.dex */
class CompileTimeContinuation extends ProcedureN implements Inlineable {
    Target blockTarget;
    ExitableBlock exitableBlock;

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        throw new Error("internal error");
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        compilation.getCode();
        Expression[] args = applyExp.getArgs();
        int length = args.length;
        Target target2 = this.blockTarget;
        boolean z = (target2 instanceof IgnoreTarget) || (target2 instanceof ConsumerTarget);
        if (!z) {
            target.getType();
        }
        if (z || length == 1) {
            for (Expression expression : args) {
                expression.compileWithPosition(compilation, this.blockTarget);
            }
        } else {
            AppendValues appendValues = AppendValues.appendValues;
            appendValues.compile(new ApplyExp(appendValues, args), compilation, this.blockTarget);
        }
        this.exitableBlock.exit();
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Type.neverReturnsType;
    }
}
