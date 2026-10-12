package gnu.expr;

import gnu.bytecode.Type;
import gnu.kawa.util.IdentityHashTable;
import gnu.mapping.CallContext;
import gnu.mapping.OutPort;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ExitExp extends Expression {
    BlockExp block;
    Expression result;

    @Override // gnu.expr.Expression
    public boolean mustCompile() {
        return false;
    }

    public ExitExp(Expression expression, BlockExp blockExp) {
        this.result = expression;
        this.block = blockExp;
    }

    public ExitExp(BlockExp blockExp) {
        this.result = QuoteExp.voidExp;
        this.block = blockExp;
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        throw new BlockExitException(this, this.result.eval(callContext));
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        compilation.getCode();
        Expression expression = this.result;
        if (expression == null) {
            expression = QuoteExp.voidExp;
        }
        expression.compileWithPosition(compilation, this.block.exitTarget);
        this.block.exitableBlock.exit();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // gnu.expr.Expression
    public Expression deepCopy(IdentityHashTable identityHashTable) {
        Expression expressionDeepCopy = Expression.deepCopy(this.result, identityHashTable);
        if (expressionDeepCopy == null && this.result != null) {
            return null;
        }
        V v = identityHashTable.get(this.block);
        ExitExp exitExp = new ExitExp(expressionDeepCopy, v == 0 ? this.block : (BlockExp) v);
        exitExp.flags = getFlags();
        return exitExp;
    }

    @Override // gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitExitExp(this, d);
    }

    @Override // gnu.expr.Expression
    public <R, D> void visitChildren(ExpVisitor<R, D> expVisitor, D d) {
        this.result = expVisitor.visitAndUpdate(this.result, d);
    }

    @Override // gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        Declaration declaration;
        outPort.startLogicalBlock("(Exit", false, ")");
        outPort.writeSpaceFill();
        BlockExp blockExp = this.block;
        if (blockExp == null || (declaration = blockExp.label) == null) {
            outPort.print("<unknown>");
        } else {
            outPort.print(declaration.getName());
        }
        if (this.result != null) {
            outPort.writeSpaceLinear();
            this.result.print(outPort);
        }
        outPort.endLogicalBlock(")");
    }

    @Override // gnu.expr.Expression
    public Type getType() {
        return Type.neverReturnsType;
    }
}
