package gnu.xquery.util;

import gnu.lists.Consumer;
import gnu.lists.Sequence;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class SubList extends MethodProc {
    public static final SubList subList = new SubList();

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return 12290;
    }

    public static void subList(Object obj, double d, double d2, Consumer consumer) {
        int iNextDataIndex;
        if (!(obj instanceof Values)) {
            if (d > 1.0d || d2 < 2.0d) {
                return;
            }
            consumer.writeObject(obj);
            return;
        }
        Values values = (Values) obj;
        int i = 0;
        int iNextDataIndex2 = 0;
        do {
            i++;
            if (i < d) {
                iNextDataIndex2 = values.nextDataIndex(iNextDataIndex2);
            } else {
                int i2 = iNextDataIndex2;
                while (true) {
                    int i3 = i + 1;
                    if (i >= d2 || (iNextDataIndex = values.nextDataIndex(i2)) < 0) {
                        break;
                    }
                    i2 = iNextDataIndex;
                    i = i3;
                }
                values.consumeIRange(iNextDataIndex2, i2, consumer);
                return;
            }
        } while (iNextDataIndex2 >= 0);
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        Object nextArg = callContext.getNextArg();
        double dRound = Math.round(StringUtils.b(callContext.getNextArg()));
        Object obj = Sequence.eofValue;
        Object nextArg2 = callContext.getNextArg(obj);
        callContext.lastArg();
        subList(nextArg, dRound, (nextArg2 != obj ? Math.round(StringUtils.b(nextArg2)) : Double.POSITIVE_INFINITY) + dRound, consumer);
    }
}
