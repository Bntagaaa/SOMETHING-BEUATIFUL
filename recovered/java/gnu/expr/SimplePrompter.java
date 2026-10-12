package gnu.expr;

import gnu.mapping.InPort;
import gnu.mapping.Procedure1;

/* loaded from: classes2.dex */
class SimplePrompter extends Procedure1 {
    public String prefix = "[";
    public String suffix = "] ";

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) {
        int lineNumber;
        if ((obj instanceof InPort) && (lineNumber = ((InPort) obj).getLineNumber() + 1) >= 0) {
            return this.prefix + lineNumber + this.suffix;
        }
        return this.suffix;
    }
}
