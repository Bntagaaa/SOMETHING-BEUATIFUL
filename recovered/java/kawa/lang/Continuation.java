package kawa.lang;

import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class Continuation extends MethodProc {
    static int counter;
    int id;
    public boolean invoked;

    public Continuation(CallContext callContext) {
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        if (this.invoked) {
            throw new GenericError("implementation restriction: continuation can only be used once");
        }
        throw new CalledContinuation(callContext.values, this, callContext);
    }

    public static void handleException$X(Throwable th, Continuation continuation, CallContext callContext) throws Throwable {
        if (!(th instanceof CalledContinuation)) {
            throw th;
        }
        CalledContinuation calledContinuation = (CalledContinuation) th;
        if (calledContinuation.continuation != continuation) {
            throw th;
        }
        continuation.invoked = true;
        Object[] objArr = calledContinuation.values;
        for (Object obj : objArr) {
            callContext.consumer.writeObject(obj);
        }
    }

    public static Object handleException(Throwable th, Continuation continuation) throws Throwable {
        if (!(th instanceof CalledContinuation)) {
            throw th;
        }
        CalledContinuation calledContinuation = (CalledContinuation) th;
        if (calledContinuation.continuation != continuation) {
            throw th;
        }
        continuation.invoked = true;
        return Values.make(calledContinuation.values);
    }

    @Override // gnu.mapping.Procedure
    public final String toString() {
        StringBuilder sb = new StringBuilder("#<continuation ");
        sb.append(this.id);
        sb.append(this.invoked ? " (invoked)>" : ">");
        return sb.toString();
    }
}
