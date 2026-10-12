package gnu.expr;

import gnu.bytecode.CodeAttr;
import gnu.bytecode.Label;
import gnu.bytecode.Type;

/* loaded from: classes2.dex */
public class ConditionalTarget extends Target {
    public Label ifFalse;
    public Label ifTrue;
    Language language;
    public boolean trueBranchComesFirst = true;

    public ConditionalTarget(Label label, Label label2, Language language) {
        this.ifTrue = label;
        this.ifFalse = label2;
        this.language = language;
    }

    @Override // gnu.expr.Target
    public Type getType() {
        return Type.booleanType;
    }

    @Override // gnu.expr.Target
    public void compileFromStack(Compilation compilation, Type type) {
        CodeAttr code = compilation.getCode();
        char cCharAt = type.getSignature().charAt(0);
        if (cCharAt == 'D') {
            code.emitPushDouble(0.0d);
        } else if (cCharAt == 'F') {
            code.emitPushFloat(0.0f);
        } else if (cCharAt == 'J') {
            code.emitPushLong(0L);
        } else {
            if (cCharAt != 'L' && cCharAt != '[') {
                if (this.trueBranchComesFirst) {
                    code.emitGotoIfIntEqZero(this.ifFalse);
                    code.emitGoto(this.ifTrue);
                    return;
                } else {
                    code.emitGotoIfIntNeZero(this.ifTrue);
                    code.emitGoto(this.ifFalse);
                    return;
                }
            }
            Language language = this.language;
            compilation.compileConstant(language == null ? Boolean.FALSE : language.booleanObject(false));
        }
        if (this.trueBranchComesFirst) {
            code.emitGotoIfEq(this.ifFalse);
        } else {
            code.emitGotoIfNE(this.ifTrue);
        }
        emitGotoFirstBranch(code);
    }

    public final void emitGotoFirstBranch(CodeAttr codeAttr) {
        codeAttr.emitGoto(this.trueBranchComesFirst ? this.ifTrue : this.ifFalse);
    }
}
