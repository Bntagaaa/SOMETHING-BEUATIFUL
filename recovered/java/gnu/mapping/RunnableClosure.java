package gnu.mapping;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public class RunnableClosure implements Callable<Object>, Runnable {
    static int nrunnables;
    Procedure action;
    CallContext context;
    private OutPort err;
    Throwable exception;
    private InPort in;
    String name;
    private OutPort out;
    Object result;

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public RunnableClosure(Procedure procedure, CallContext callContext) {
        StringBuilder sb = new StringBuilder("r");
        int i = nrunnables;
        nrunnables = i + 1;
        sb.append(i);
        setName(sb.toString());
        this.action = procedure;
    }

    public RunnableClosure(Procedure procedure, InPort inPort, OutPort outPort, OutPort outPort2) {
        this(procedure, CallContext.getInstance());
        this.in = inPort;
        this.out = outPort;
        this.err = outPort2;
    }

    public RunnableClosure(Procedure procedure) {
        this(procedure, CallContext.getInstance());
    }

    public final CallContext getCallContext() {
        return this.context;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Environment current = Environment.getCurrent();
            String name = getName();
            if (current != null && current.getSymbol() == null && name != null) {
                current.setName(name);
            }
            CallContext callContext = this.context;
            if (callContext == null) {
                this.context = CallContext.getInstance();
            } else {
                CallContext.setInstance(callContext);
            }
            InPort inPort = this.in;
            if (inPort != null) {
                InPort.setInDefault(inPort);
            }
            OutPort outPort = this.out;
            if (outPort != null) {
                OutPort.setOutDefault(outPort);
            }
            OutPort outPort2 = this.err;
            if (outPort2 != null) {
                OutPort.setErrDefault(outPort2);
            }
            this.result = this.action.apply0();
        } catch (Throwable th) {
            this.exception = th;
        }
    }

    public Object getResult() throws Throwable {
        Throwable th = this.exception;
        if (th != null) {
            throw th;
        }
        return this.result;
    }

    @Override // java.util.concurrent.Callable
    public Object call() throws Exception {
        run();
        Throwable th = this.exception;
        if (th != null) {
            if (th instanceof Exception) {
                throw ((Exception) th);
            }
            if (th instanceof Error) {
                throw ((Error) th);
            }
            throw new RuntimeException(th);
        }
        return this.result;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("#<runnable ");
        stringBuffer.append(getName());
        stringBuffer.append(">");
        return stringBuffer.toString();
    }
}
