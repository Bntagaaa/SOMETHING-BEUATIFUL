package gnu.kawa.functions;

import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.ConsumerTarget;
import gnu.expr.Expression;
import gnu.expr.IgnoreTarget;
import gnu.expr.Inlineable;
import gnu.expr.Special;
import gnu.expr.Target;
import gnu.lists.Consumable;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Procedure;

/* loaded from: classes2.dex */
public class AppendValues extends MethodProc implements Inlineable {
    public static final AppendValues appendValues = new AppendValues();

    public AppendValues() {
        setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompileMisc:validateApplyAppendValues");
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        Special special = Special.dfault;
        while (true) {
            Object nextArg = callContext.getNextArg(special);
            if (nextArg == special) {
                return;
            }
            if (nextArg instanceof Consumable) {
                ((Consumable) nextArg).consume(callContext.consumer);
            } else {
                callContext.writeValue(nextArg);
            }
        }
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        Expression[] args = applyExp.getArgs();
        if (!(target instanceof ConsumerTarget) && !(target instanceof IgnoreTarget)) {
            ConsumerTarget.compileUsingConsumer(applyExp, compilation, target);
            return;
        }
        for (Expression expression : args) {
            expression.compileWithPosition(compilation, target);
        }
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Compilation.typeObject;
    }
}
