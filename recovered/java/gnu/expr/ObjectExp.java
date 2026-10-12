package gnu.expr;

import gnu.bytecode.CodeAttr;
import gnu.bytecode.Method;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;

/* loaded from: classes2.dex */
public class ObjectExp extends ClassExp {
    public ObjectExp() {
        super(true);
    }

    @Override // gnu.expr.ClassExp, gnu.expr.LambdaExp, gnu.expr.Expression
    public Type getType() {
        return this.type;
    }

    @Override // gnu.expr.ClassExp, gnu.expr.LambdaExp, gnu.expr.ScopeExp, gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitObjectExp(this, d);
    }

    @Override // gnu.expr.ClassExp, gnu.expr.LambdaExp, gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        Variable variable;
        compileMembers(compilation);
        CodeAttr code = compilation.getCode();
        code.emitNew(this.type);
        code.emitDup(1);
        Method constructor = Compilation.getConstructor(this.type, this);
        if (this.closureEnvField != null) {
            LambdaExp lambdaExpOuterLambda = outerLambda();
            if (Compilation.defaultCallConvention < 2) {
                variable = getOwningLambda().heapFrame;
            } else {
                Variable variable2 = lambdaExpOuterLambda.heapFrame;
                variable = variable2 != null ? variable2 : lambdaExpOuterLambda.closureEnv;
            }
            if (variable == null) {
                code.emitPushThis();
            } else {
                code.emitLoad(variable);
            }
        }
        code.emitInvokeSpecial(constructor);
        target.compileFromStack(compilation, getCompiledClassType(compilation));
    }
}
