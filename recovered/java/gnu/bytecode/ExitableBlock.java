package gnu.bytecode;

/* loaded from: classes2.dex */
public class ExitableBlock {
    CodeAttr code;
    TryState currentTryState;
    Label endLabel;
    TryState initialTryState;
    ExitableBlock nextCase;
    ExitableBlock outer;
    Type resultType;
    Variable resultVariable;
    int switchCase;

    public ExitableBlock(Type type, CodeAttr codeAttr, boolean z) {
        this.code = codeAttr;
        this.resultType = type;
        this.initialTryState = codeAttr.try_stack;
        if (z && type != null) {
            codeAttr.pushScope();
            Variable variableAddLocal = codeAttr.addLocal(type);
            this.resultVariable = variableAddLocal;
            codeAttr.emitStoreDefaultValue(variableAddLocal);
            int i = codeAttr.exitableBlockLevel + 1;
            codeAttr.exitableBlockLevel = i;
            this.switchCase = i;
        }
        this.endLabel = new Label(codeAttr);
    }

    public void finish() {
        if (this.resultVariable != null && this.code.reachableHere()) {
            this.code.emitStore(this.resultVariable);
        }
        this.endLabel.define(this.code);
        Variable variable = this.resultVariable;
        if (variable != null) {
            this.code.emitLoad(variable);
            this.code.popScope();
            CodeAttr codeAttr = this.code;
            codeAttr.exitableBlockLevel--;
        }
    }

    public void exit() {
        Variable variable = this.resultVariable;
        if (variable != null) {
            this.code.emitStore(variable);
        }
        exit(TryState.outerHandler(this.code.try_stack, this.initialTryState));
    }

    public Label exitIsGoto() {
        if (TryState.outerHandler(this.code.try_stack, this.initialTryState) == this.initialTryState) {
            return this.endLabel;
        }
        return null;
    }

    public void exit(TryState tryState) {
        if (tryState == this.initialTryState) {
            this.code.emitGoto(this.endLabel);
            return;
        }
        if (this.code.useJsr()) {
            for (TryState tryState2 = this.code.try_stack; tryState2 != this.initialTryState; tryState2 = tryState2.previous) {
                Label label = tryState2.finally_subr;
                if (label != null && tryState2.finally_ret_addr == null) {
                    this.code.emitJsr(label);
                }
            }
            this.code.emitGoto(this.endLabel);
            return;
        }
        if (this.currentTryState == null) {
            linkCase(tryState);
        }
        Variable variable = tryState.saved_result;
        if (variable != null) {
            this.code.emitStoreDefaultValue(variable);
        }
        this.code.emitPushInt(this.switchCase);
        this.code.emitPushNull();
        this.code.emitGoto(tryState.finally_subr);
    }

    public void linkCase(TryState tryState) {
        TryState tryState2 = this.currentTryState;
        if (tryState2 != tryState) {
            if (tryState2 != null) {
                throw new Error();
            }
            this.nextCase = tryState.exitCases;
            tryState.exitCases = this;
            this.currentTryState = tryState;
        }
    }
}
