package gnu.expr;

import gnu.bytecode.Type;

/* loaded from: classes2.dex */
public class IgnoreTarget extends Target {
    @Override // gnu.expr.Target
    public Type getType() {
        return Type.voidType;
    }

    @Override // gnu.expr.Target
    public void compileFromStack(Compilation compilation, Type type) {
        if (type.isVoid()) {
            return;
        }
        compilation.getCode().emitPop(1);
    }
}
