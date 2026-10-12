package gnu.kawa.functions;

import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.Procedure1;
import gnu.mapping.Values;
import gnu.math.IntNum;

/* loaded from: classes2.dex */
public class CountValues extends Procedure1 {
    public static final CountValues countValues = new CountValues();

    public static int countValues(Object obj) {
        if (obj instanceof Values) {
            return ((Values) obj).size();
        }
        return 1;
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) {
        return IntNum.make(countValues(obj));
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        Object nextArg = callContext.getNextArg();
        callContext.lastArg();
        consumer.writeInt(countValues(nextArg));
    }
}
