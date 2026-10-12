package gnu.kawa.xml;

import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;

/* loaded from: classes2.dex */
public class MakeResponseHeader extends MethodProc {
    public static MakeResponseHeader makeResponseHeader = new MakeResponseHeader();

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        String string = callContext.getNextArg().toString();
        Object nextArg = callContext.getNextArg();
        callContext.lastArg();
        Consumer consumer = callContext.consumer;
        consumer.startAttribute(string);
        consumer.write(nextArg.toString());
        consumer.endAttribute();
    }
}
