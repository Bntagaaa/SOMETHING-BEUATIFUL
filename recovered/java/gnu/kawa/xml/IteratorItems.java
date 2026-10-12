package gnu.kawa.xml;

import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Values;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class IteratorItems extends MethodProc {
    public static IteratorItems iteratorItems = new IteratorItems();

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        Object nextArg = callContext.getNextArg();
        callContext.lastArg();
        Iterator it = (Iterator) nextArg;
        while (it.hasNext()) {
            Values.writeValues(it.next(), consumer);
        }
    }
}
