package gnu.expr;

import gnu.bytecode.CodeAttr;
import gnu.bytecode.ExitableBlock;
import gnu.bytecode.Label;
import gnu.mapping.CallContext;
import gnu.mapping.OutPort;
import java.io.IOException;

/* loaded from: classes2.dex */
public class BlockExp extends Expression {
    Expression body;
    Expression exitBody;
    Target exitTarget;
    ExitableBlock exitableBlock;
    Declaration label;

    @Override // gnu.expr.Expression
    public boolean mustCompile() {
        return false;
    }

    public void setBody(Expression expression) {
        this.body = expression;
    }

    public void setBody(Expression expression, Expression expression2) {
        this.body = expression;
        this.exitBody = expression2;
    }

    public void setLabel(Declaration declaration) {
        this.label = declaration;
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        Object objEval;
        try {
            objEval = this.body.eval(callContext);
        } catch (BlockExitException e) {
            ExitExp exitExp = e.exit;
            if (exitExp.block != this) {
                throw e;
            }
            objEval = exitExp.result;
            Expression expression = this.exitBody;
            if (expression != null) {
                objEval = expression.eval(callContext);
            }
        }
        callContext.writeValue(objEval);
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        CodeAttr code = compilation.getCode();
        this.exitableBlock = code.startExitableBlock((this.exitBody == null && (target instanceof StackTarget)) ? target.getType() : null, true);
        this.exitTarget = this.exitBody == null ? target : Target.Ignore;
        this.body.compileWithPosition(compilation, target);
        if (this.exitBody != null) {
            Label label = new Label(code);
            code.emitGoto(label);
            code.endExitableBlock();
            this.exitBody.compileWithPosition(compilation, target);
            label.define(code);
        } else {
            code.endExitableBlock();
        }
        this.exitableBlock = null;
    }

    @Override // gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitBlockExp(this, d);
    }

    @Override // gnu.expr.Expression
    public <R, D> void visitChildren(ExpVisitor<R, D> expVisitor, D d) {
        Expression expression;
        this.body = expVisitor.visitAndUpdate(this.body, d);
        if (expVisitor.exitValue != null || (expression = this.exitBody) == null) {
            return;
        }
        this.exitBody = expVisitor.visitAndUpdate(expression, d);
    }

    @Override // gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        outPort.startLogicalBlock("(Block", ")", 2);
        if (this.label != null) {
            outPort.print(' ');
            outPort.print(this.label.getName());
        }
        outPort.writeSpaceLinear();
        this.body.print(outPort);
        if (this.exitBody != null) {
            outPort.writeSpaceLinear();
            outPort.print("else ");
            this.exitBody.print(outPort);
        }
        outPort.endLogicalBlock(")");
    }
}
