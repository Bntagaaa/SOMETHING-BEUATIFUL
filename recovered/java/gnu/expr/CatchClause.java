package gnu.expr;

import gnu.bytecode.ClassType;
import gnu.bytecode.CodeAttr;
import gnu.bytecode.Variable;
import gnu.mapping.CallContext;
import gnu.mapping.OutPort;

/* loaded from: classes2.dex */
public class CatchClause extends LetExp {
    CatchClause next;

    @Override // gnu.expr.LetExp, gnu.expr.Expression
    public boolean mustCompile() {
        return false;
    }

    public CatchClause() {
        super(new Expression[]{QuoteExp.voidExp});
    }

    public CatchClause(Object obj, ClassType classType) {
        this();
        addDeclaration(obj, classType);
    }

    public CatchClause(LambdaExp lambdaExp) {
        this();
        Declaration declarationFirstDecl = lambdaExp.firstDecl();
        lambdaExp.remove(null, declarationFirstDecl);
        add(declarationFirstDecl);
        this.body = lambdaExp.body;
    }

    public final CatchClause getNext() {
        return this.next;
    }

    public final void setNext(CatchClause catchClause) {
        this.next = catchClause;
    }

    @Override // gnu.expr.LetExp
    public final Expression getBody() {
        return this.body;
    }

    @Override // gnu.expr.LetExp
    public final void setBody(Expression expression) {
        this.body = expression;
    }

    @Override // gnu.expr.LetExp
    public Object evalVariable(int i, CallContext callContext) throws Throwable {
        return callContext.value1;
    }

    @Override // gnu.expr.LetExp, gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        CodeAttr code = compilation.getCode();
        Variable variableAllocateVariable = firstDecl().allocateVariable(code);
        code.enterScope(getVarScope());
        code.emitCatchStart(variableAllocateVariable);
        this.body.compileWithPosition(compilation, target);
        code.emitCatchEnd();
        code.popScope();
    }

    @Override // gnu.expr.LetExp, gnu.expr.Expression
    public <R, D> void visitChildren(ExpVisitor<R, D> expVisitor, D d) {
        this.body = expVisitor.visitAndUpdate(this.body, d);
    }

    @Override // gnu.expr.LetExp, gnu.expr.Expression
    public void print(OutPort outPort) {
        outPort.writeSpaceLinear();
        outPort.startLogicalBlock("(Catch", ")", 2);
        outPort.writeSpaceFill();
        this.decls.printInfo(outPort);
        outPort.writeSpaceLinear();
        this.body.print(outPort);
        outPort.endLogicalBlock(")");
    }
}
