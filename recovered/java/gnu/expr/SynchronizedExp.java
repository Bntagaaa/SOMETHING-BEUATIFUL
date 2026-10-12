package gnu.expr;

import gnu.bytecode.CodeAttr;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.mapping.CallContext;
import gnu.mapping.OutPort;
import java.io.IOException;

/* loaded from: classes2.dex */
public class SynchronizedExp extends Expression {
    Expression body;
    Expression object;

    @Override // gnu.expr.Expression
    public boolean mustCompile() {
        return false;
    }

    public SynchronizedExp(Expression expression, Expression expression2) {
        this.object = expression;
        this.body = expression2;
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        Object objEval;
        synchronized (this.object.eval(callContext)) {
            objEval = this.body.eval(callContext);
        }
        callContext.writeValue(objEval);
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        CodeAttr code = compilation.getCode();
        this.object.compile(compilation, Target.pushObject);
        code.emitDup(1);
        Variable variableAddVariable = code.pushScope().addVariable(code, Type.pointer_type, null);
        code.emitStore(variableAddVariable);
        code.emitMonitorEnter();
        code.emitTryStart(false, ((target instanceof IgnoreTarget) || (target instanceof ConsumerTarget)) ? null : target.getType());
        this.body.compileWithPosition(compilation, target);
        code.emitLoad(variableAddVariable);
        code.emitMonitorExit();
        code.emitTryEnd();
        code.emitCatchStart(null);
        code.emitLoad(variableAddVariable);
        code.emitMonitorExit();
        code.emitThrow();
        code.emitCatchEnd();
        code.emitTryCatchEnd();
        code.popScope();
    }

    @Override // gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitSynchronizedExp(this, d);
    }

    @Override // gnu.expr.Expression
    public <R, D> void visitChildren(ExpVisitor<R, D> expVisitor, D d) {
        this.object = expVisitor.visitAndUpdate(this.object, d);
        if (expVisitor.exitValue == null) {
            this.body = expVisitor.visitAndUpdate(this.body, d);
        }
    }

    @Override // gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        outPort.print("(Synchronized ");
        this.object.print(outPort);
        outPort.print(" ");
        this.body.print(outPort);
        outPort.print(")");
    }
}
