package kawa.lang;

import gnu.mapping.CallContext;

/* loaded from: classes2.dex */
public class CalledContinuation extends RuntimeException {
    public Continuation continuation;
    public CallContext ctx;
    public Object[] values;

    public CalledContinuation(Object[] objArr, Continuation continuation, CallContext callContext) {
        super("call/cc called");
        this.values = objArr;
        this.continuation = continuation;
        this.ctx = callContext;
    }
}
