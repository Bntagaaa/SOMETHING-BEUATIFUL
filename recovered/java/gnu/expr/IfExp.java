package gnu.expr;

import gnu.bytecode.Type;
import gnu.mapping.CallContext;
import gnu.mapping.OutPort;
import java.io.IOException;

/* loaded from: classes2.dex */
public class IfExp extends Expression {
    Expression else_clause;
    Expression test;
    Expression then_clause;

    @Override // gnu.expr.Expression
    public boolean mustCompile() {
        return false;
    }

    public IfExp(Expression expression, Expression expression2, Expression expression3) {
        this.test = expression;
        this.then_clause = expression2;
        this.else_clause = expression3;
    }

    public Expression getTest() {
        return this.test;
    }

    public Expression getThenClause() {
        return this.then_clause;
    }

    public Expression getElseClause() {
        return this.else_clause;
    }

    public final Language getLanguage() {
        return Language.getDefaultLanguage();
    }

    @Override // gnu.expr.Expression, gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        if (getLanguage().isTrue(this.test.eval(callContext))) {
            this.then_clause.apply(callContext);
            return;
        }
        Expression expression = this.else_clause;
        if (expression != null) {
            expression.apply(callContext);
        }
    }

    public Expression select(boolean z) {
        if (z) {
            return this.then_clause;
        }
        Expression expression = this.else_clause;
        return expression == null ? QuoteExp.voidExp : expression;
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        Expression expression = this.test;
        Expression expression2 = this.then_clause;
        Expression expression3 = this.else_clause;
        if (expression3 == null) {
            expression3 = QuoteExp.voidExp;
        }
        compile(expression, expression2, expression3, compilation, target);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void compile(gnu.expr.Expression r8, gnu.expr.Expression r9, gnu.expr.Expression r10, gnu.expr.Compilation r11, gnu.expr.Target r12) {
        /*
            gnu.expr.Language r0 = r11.getLanguage()
            gnu.bytecode.CodeAttr r1 = r11.getCode()
            boolean r2 = r12 instanceof gnu.expr.ConditionalTarget
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2c
            boolean r5 = r10 instanceof gnu.expr.QuoteExp
            if (r5 == 0) goto L2c
            r5 = r10
            gnu.expr.QuoteExp r5 = (gnu.expr.QuoteExp) r5
            java.lang.Object r5 = r5.getValue()
            boolean r5 = r0.isTrue(r5)
            if (r5 == 0) goto L25
            r5 = r12
            gnu.expr.ConditionalTarget r5 = (gnu.expr.ConditionalTarget) r5
            gnu.bytecode.Label r5 = r5.ifTrue
            goto L2a
        L25:
            r5 = r12
            gnu.expr.ConditionalTarget r5 = (gnu.expr.ConditionalTarget) r5
            gnu.bytecode.Label r5 = r5.ifFalse
        L2a:
            r6 = 1
            goto L4c
        L2c:
            boolean r5 = r10 instanceof gnu.expr.ExitExp
            if (r5 == 0) goto L4a
            r5 = r10
            gnu.expr.ExitExp r5 = (gnu.expr.ExitExp) r5
            gnu.expr.Expression r6 = r5.result
            boolean r6 = r6 instanceof gnu.expr.QuoteExp
            if (r6 == 0) goto L4a
            gnu.expr.BlockExp r5 = r5.block
            gnu.expr.Target r6 = r5.exitTarget
            boolean r6 = r6 instanceof gnu.expr.IgnoreTarget
            if (r6 == 0) goto L4a
            gnu.bytecode.ExitableBlock r5 = r5.exitableBlock
            gnu.bytecode.Label r5 = r5.exitIsGoto()
            if (r5 == 0) goto L4b
            goto L2a
        L4a:
            r5 = 0
        L4b:
            r6 = 0
        L4c:
            if (r5 != 0) goto L53
            gnu.bytecode.Label r5 = new gnu.bytecode.Label
            r5.<init>(r1)
        L53:
            if (r8 != r9) goto L61
            if (r2 == 0) goto L61
            boolean r2 = r9 instanceof gnu.expr.ReferenceExp
            if (r2 == 0) goto L61
            r2 = r12
            gnu.expr.ConditionalTarget r2 = (gnu.expr.ConditionalTarget) r2
            gnu.bytecode.Label r2 = r2.ifTrue
            goto L67
        L61:
            gnu.bytecode.Label r2 = new gnu.bytecode.Label
            r2.<init>(r1)
            r4 = 0
        L67:
            gnu.expr.ConditionalTarget r7 = new gnu.expr.ConditionalTarget
            r7.<init>(r2, r5, r0)
            if (r4 == 0) goto L70
            r7.trueBranchComesFirst = r3
        L70:
            r8.compile(r11, r7)
            r1.emitIfThen()
            if (r4 != 0) goto L82
            r2.define(r1)
            gnu.bytecode.Variable r8 = r11.callContextVar
            r9.compileWithPosition(r11, r12)
            r11.callContextVar = r8
        L82:
            if (r6 != 0) goto L9a
            r1.emitElse()
            r5.define(r1)
            gnu.bytecode.Variable r8 = r11.callContextVar
            if (r10 != 0) goto L94
            gnu.mapping.Values r9 = gnu.mapping.Values.empty
            r11.compileConstant(r9, r12)
            goto L97
        L94:
            r10.compileWithPosition(r11, r12)
        L97:
            r11.callContextVar = r8
            goto L9d
        L9a:
            r1.setUnreachable()
        L9d:
            r1.emitFi()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.expr.IfExp.compile(gnu.expr.Expression, gnu.expr.Expression, gnu.expr.Expression, gnu.expr.Compilation, gnu.expr.Target):void");
    }

    @Override // gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitIfExp(this, d);
    }

    @Override // gnu.expr.Expression
    public <R, D> void visitChildren(ExpVisitor<R, D> expVisitor, D d) {
        Expression expression;
        this.test = expVisitor.visitAndUpdate(this.test, d);
        if (expVisitor.exitValue == null) {
            this.then_clause = expVisitor.visitAndUpdate(this.then_clause, d);
        }
        if (expVisitor.exitValue != null || (expression = this.else_clause) == null) {
            return;
        }
        this.else_clause = expVisitor.visitAndUpdate(expression, d);
    }

    @Override // gnu.expr.Expression
    public Type getType() {
        Type type = this.then_clause.getType();
        Expression expression = this.else_clause;
        return Language.unionType(type, expression == null ? Type.voidType : expression.getType());
    }

    @Override // gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        outPort.startLogicalBlock("(If ", false, ")");
        outPort.setIndentation(-2, false);
        this.test.print(outPort);
        outPort.writeSpaceLinear();
        this.then_clause.print(outPort);
        if (this.else_clause != null) {
            outPort.writeSpaceLinear();
            this.else_clause.print(outPort);
        }
        outPort.endLogicalBlock(")");
    }
}
