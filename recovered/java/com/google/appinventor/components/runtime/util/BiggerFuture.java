package com.google.appinventor.components.runtime.util;

import gnu.mapping.InPort;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure;
import gnu.mapping.RunnableClosure;

/* loaded from: classes.dex */
public class BiggerFuture extends Thread {
    public BiggerFuture(Procedure procedure, InPort inPort, OutPort outPort, OutPort outPort2, String str, long j) {
        super(new ThreadGroup("biggerthreads"), new RunnableClosure(procedure, inPort, outPort, outPort2), str, j);
    }

    @Override // java.lang.Thread
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("#<future ");
        stringBuffer.append(getName());
        stringBuffer.append(">");
        return stringBuffer.toString();
    }
}
