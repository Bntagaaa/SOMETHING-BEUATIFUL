package gnu.kawa.functions;

import androidx.fragment.app.FragmentTransaction;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.Target;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Procedure;
import kawa.lang.Continuation;

/* loaded from: classes2.dex */
public class CallCC extends MethodProc implements Inlineable {
    public static final CallCC callcc = new CallCC();

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
    }

    public CallCC() {
        setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompileMisc:validateApplyCallCC");
    }

    @Override // gnu.mapping.Procedure
    public int match1(Object obj, CallContext callContext) {
        return !(obj instanceof Procedure) ? MethodProc.NO_MATCH_BAD_TYPE : super.match1(obj, callContext);
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        Procedure procedure = (Procedure) callContext.value1;
        Continuation continuation = new Continuation(callContext);
        procedure.check1(continuation, callContext);
        Procedure procedure2 = callContext.proc;
        callContext.proc = null;
        try {
            procedure2.apply(callContext);
            callContext.runUntilDone();
            continuation.invoked = true;
        } catch (Throwable th) {
            Continuation.handleException$X(th, continuation, callContext);
        }
    }

    @Override // gnu.expr.Inlineable
    public void compile(ApplyExp applyExp, Compilation compilation, Target target) {
        CompileMisc.compileCallCC(applyExp, compilation, target, this);
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Type.pointer_type;
    }
}
