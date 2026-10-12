package gnu.kawa.xml;

import gnu.lists.AbstractSequence;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Values;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ListItems extends MethodProc {
    public static ListItems listItems = new ListItems();

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        Object nextArg = callContext.getNextArg();
        callContext.lastArg();
        List list = (List) nextArg;
        if (nextArg instanceof AbstractSequence) {
            ((AbstractSequence) nextArg).consumePosRange(0, -1, consumer);
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Values.writeValues(it.next(), consumer);
        }
    }
}
