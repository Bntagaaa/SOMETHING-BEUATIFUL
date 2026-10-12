package gnu.expr;

import gnu.mapping.OutPort;
import java.io.IOException;

/* loaded from: classes2.dex */
public class LangExp extends Expression {
    Object hook;

    @Override // gnu.expr.Expression
    public boolean mustCompile() {
        return false;
    }

    public Object getLangValue() {
        return this.hook;
    }

    public void setLangValue(Object obj) {
        this.hook = obj;
    }

    public LangExp() {
    }

    public LangExp(Object obj) {
        this.hook = obj;
    }

    @Override // gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        outPort.print("(LangExp ???)");
    }

    @Override // gnu.expr.Expression
    public <R, D> R visit(ExpVisitor<R, D> expVisitor, D d) {
        return expVisitor.visitLangExp(this, d);
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        throw new RuntimeException("compile called on LangExp");
    }
}
