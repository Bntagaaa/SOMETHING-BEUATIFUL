package gnu.expr;

import gnu.bytecode.CodeAttr;
import gnu.bytecode.Scope;
import gnu.bytecode.Type;
import gnu.bytecode.Variable;
import gnu.mapping.OutPort;
import java.io.IOException;

/* loaded from: classes2.dex */
public class FluidLetExp extends LetExp {
    @Override // gnu.expr.LetExp, gnu.expr.Expression
    public boolean mustCompile() {
        return true;
    }

    public FluidLetExp(Expression[] expressionArr) {
        super(expressionArr);
    }

    @Override // gnu.expr.LetExp, gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        Target stackTarget;
        CodeAttr code = compilation.getCode();
        Type type = target instanceof IgnoreTarget ? null : getType();
        if (type == null) {
            stackTarget = Target.Ignore;
        } else if (type == Type.pointer_type) {
            stackTarget = Target.pushObject;
        } else {
            stackTarget = new StackTarget(type);
        }
        Scope varScope = getVarScope();
        code.enterScope(varScope);
        Variable variableAddVariable = varScope.addVariable(code, Compilation.typeCallContext, null);
        compilation.loadCallContext();
        code.emitStore(variableAddVariable);
        Variable[] variableArr = new Variable[this.inits.length];
        Declaration declarationFirstDecl = firstDecl();
        doInits(declarationFirstDecl, 0, variableArr, compilation, variableAddVariable);
        code.emitTryStart(true, type);
        this.body.compileWithPosition(compilation, stackTarget);
        code.emitFinallyStart();
        int i = 0;
        while (i < this.inits.length) {
            declarationFirstDecl.load(null, 2, compilation, Target.pushObject);
            code.emitLoad(variableArr[i]);
            code.emitInvokeVirtual(Compilation.typeLocation.getDeclaredMethod("setRestore", 1));
            i++;
            declarationFirstDecl = declarationFirstDecl.nextDecl();
        }
        code.emitTryCatchEnd();
        popScope(code);
        if (type != null) {
            target.compileFromStack(compilation, type);
        }
    }

    private void doInits(Declaration declaration, int i, Variable[] variableArr, Compilation compilation, Variable variable) {
        if (i >= this.inits.length) {
            return;
        }
        CodeAttr code = compilation.getCode();
        variableArr[i] = code.addLocal(Type.pointer_type);
        declaration.allocateVariable(code);
        Declaration declaration2 = declaration.base;
        Target target = Target.pushObject;
        declaration2.load(null, 2, compilation, target);
        code.emitDup();
        code.emitStore(declaration.getVariable());
        this.inits[i].compile(compilation, target);
        doInits(declaration.nextDecl(), i + 1, variableArr, compilation, variable);
        code.emitInvokeVirtual(Compilation.typeLocation.getDeclaredMethod("setWithSave", 1));
        code.emitStore(variableArr[i]);
    }

    @Override // gnu.expr.LetExp, gnu.expr.ScopeExp, gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitFluidLetExp(this, d);
    }

    @Override // gnu.expr.LetExp, gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        print(outPort, "(FluidLet", ")");
    }
}
