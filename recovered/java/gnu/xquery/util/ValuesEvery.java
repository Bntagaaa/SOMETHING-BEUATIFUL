package gnu.xquery.util;

import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Procedure;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class ValuesEvery extends MethodProc {
    public static final ValuesEvery every = new ValuesEvery(true);
    public static final ValuesEvery some = new ValuesEvery(false);
    public final boolean c;

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return 8194;
    }

    public ValuesEvery(boolean z) {
        this.c = z;
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        boolean zBooleanValue;
        Procedure procedure = (Procedure) callContext.getNextArg();
        Object nextArg = callContext.getNextArg();
        Procedure.checkArgCount(procedure, 1);
        if (nextArg instanceof Values) {
            Values values = (Values) nextArg;
            boolean z = this.c;
            int iNextPos = 0;
            zBooleanValue = z;
            do {
                iNextPos = values.nextPos(iNextPos);
                if (iNextPos == 0) {
                    break;
                }
                procedure.check1(values.getPosPrevious(iNextPos), callContext);
                zBooleanValue = BooleanValue.booleanValue(callContext.runUntilValue());
            } while (zBooleanValue == z);
        } else {
            procedure.check1(nextArg, callContext);
            zBooleanValue = BooleanValue.booleanValue(callContext.runUntilValue());
        }
        callContext.consumer.writeBoolean(zBooleanValue);
    }
}
