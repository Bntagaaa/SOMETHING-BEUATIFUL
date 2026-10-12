package gnu.expr;

import gnu.bytecode.Type;
import gnu.lists.Consumer;
import gnu.lists.VoidConsumer;
import gnu.mapping.CallContext;
import gnu.mapping.OutPort;
import java.io.IOException;
import java.util.Vector;

/* loaded from: classes2.dex */
public class BeginExp extends Expression {
    Vector compileOptions;
    Expression[] exps;
    int length;

    @Override // gnu.expr.Expression
    public boolean mustCompile() {
        return false;
    }

    public BeginExp() {
    }

    public BeginExp(Expression[] expressionArr) {
        this.exps = expressionArr;
        this.length = expressionArr.length;
    }

    public BeginExp(Expression expression, Expression expression2) {
        this.exps = new Expression[]{expression, expression2};
        this.length = 2;
    }

    public static final Expression canonicalize(Expression expression) {
        if (!(expression instanceof BeginExp)) {
            return expression;
        }
        BeginExp beginExp = (BeginExp) expression;
        if (beginExp.compileOptions != null) {
            return expression;
        }
        int i = beginExp.length;
        if (i == 0) {
            return QuoteExp.voidExp;
        }
        return i == 1 ? canonicalize(beginExp.exps[0]) : expression;
    }

    public static final Expression canonicalize(Expression[] expressionArr) {
        int length = expressionArr.length;
        if (length == 0) {
            return QuoteExp.voidExp;
        }
        if (length == 1) {
            return canonicalize(expressionArr[0]);
        }
        return new BeginExp(expressionArr);
    }

    public final void add(Expression expression) {
        if (this.exps == null) {
            this.exps = new Expression[8];
        }
        int i = this.length;
        Expression[] expressionArr = this.exps;
        if (i == expressionArr.length) {
            Expression[] expressionArr2 = new Expression[i * 2];
            System.arraycopy(expressionArr, 0, expressionArr2, 0, i);
            this.exps = expressionArr2;
        }
        Expression[] expressionArr3 = this.exps;
        int i2 = this.length;
        this.length = i2 + 1;
        expressionArr3[i2] = expression;
    }

    public final Expression[] getExpressions() {
        return this.exps;
    }

    public final int getExpressionCount() {
        return this.length;
    }

    public final void setExpressions(Expression[] expressionArr) {
        this.exps = expressionArr;
        this.length = expressionArr.length;
    }

    public void setCompileOptions(Vector vector) {
        this.compileOptions = vector;
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        int i = this.length;
        Consumer consumer = callContext.consumer;
        callContext.consumer = VoidConsumer.instance;
        int i2 = 0;
        while (i2 < i - 1) {
            try {
                this.exps[i2].eval(callContext);
                i2++;
            } catch (Throwable th) {
                callContext.consumer = consumer;
                throw th;
            }
        }
        callContext.consumer = consumer;
        this.exps[i2].apply(callContext);
    }

    public void pushOptions(Compilation compilation) {
        Vector vector = this.compileOptions;
        if (vector == null || compilation == null) {
            return;
        }
        compilation.currentOptions.pushOptionValues(vector);
    }

    public void popOptions(Compilation compilation) {
        Vector vector = this.compileOptions;
        if (vector == null || compilation == null) {
            return;
        }
        compilation.currentOptions.popOptionValues(vector);
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        pushOptions(compilation);
        try {
            int i = this.length;
            int i2 = 0;
            while (i2 < i - 1) {
                this.exps[i2].compileWithPosition(compilation, Target.Ignore);
                i2++;
            }
            this.exps[i2].compileWithPosition(compilation, target);
            popOptions(compilation);
        } catch (Throwable th) {
            popOptions(compilation);
            throw th;
        }
    }

    @Override // gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        pushOptions(expVisitor.comp);
        try {
            return expVisitor.visitBeginExp(this, d);
        } finally {
            popOptions(expVisitor.comp);
        }
    }

    @Override // gnu.expr.Expression
    public <R, D> void visitChildren(ExpVisitor<R, D> expVisitor, D d) {
        this.exps = expVisitor.visitExps(this.exps, this.length, d);
    }

    @Override // gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        outPort.startLogicalBlock("(Begin", ")", 2);
        outPort.writeSpaceFill();
        printLineColumn(outPort);
        if (this.compileOptions != null) {
            outPort.writeSpaceFill();
            outPort.startLogicalBlock("(CompileOptions", ")", 2);
            int size = this.compileOptions.size();
            for (int i = 0; i < size; i += 3) {
                Object objElementAt = this.compileOptions.elementAt(i);
                Object objElementAt2 = this.compileOptions.elementAt(i + 2);
                outPort.writeSpaceFill();
                outPort.startLogicalBlock("", "", 2);
                outPort.print(objElementAt);
                outPort.print(':');
                outPort.writeSpaceLinear();
                outPort.print(objElementAt2);
                outPort.endLogicalBlock("");
            }
            outPort.endLogicalBlock(")");
        }
        int i2 = this.length;
        for (int i3 = 0; i3 < i2; i3++) {
            outPort.writeSpaceLinear();
            this.exps[i3].print(outPort);
        }
        outPort.endLogicalBlock(")");
    }

    @Override // gnu.expr.Expression
    public Type getType() {
        return this.exps[this.length - 1].getType();
    }
}
