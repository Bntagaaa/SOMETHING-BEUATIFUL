package gnu.expr;

import gnu.mapping.OutPort;
import gnu.text.SourceMessages;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ErrorExp extends Expression {
    String message;

    @Override // gnu.expr.Expression
    public boolean mustCompile() {
        return false;
    }

    public ErrorExp(String str) {
        this.message = str;
    }

    public ErrorExp(String str, SourceMessages sourceMessages) {
        sourceMessages.error('e', str);
        this.message = str;
    }

    public ErrorExp(String str, Compilation compilation) {
        compilation.getMessages().error('e', str);
        this.message = str;
    }

    @Override // gnu.expr.Expression
    public void print(OutPort outPort) throws IOException {
        outPort.startLogicalBlock("(Error", false, ")");
        outPort.writeSpaceLinear();
        outPort.print(this.message);
        outPort.endLogicalBlock(")");
    }

    @Override // gnu.expr.Expression
    public void compile(Compilation compilation, Target target) {
        throw new Error(compilation.getFileName() + ":" + compilation.getLineNumber() + ": internal error: compiling error expression: " + this.message);
    }
}
