package kawa.standard;

import gnu.mapping.CallContext;
import gnu.mapping.Procedure;
import gnu.mapping.Procedure2;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class call_with_values extends Procedure2 {
    public static final call_with_values callWithValues;

    static {
        call_with_values call_with_valuesVar = new call_with_values();
        callWithValues = call_with_valuesVar;
        call_with_valuesVar.setName("call-with-values");
    }

    public static Object callWithValues(Procedure procedure, Procedure procedure2) throws Throwable {
        Object objApply0 = procedure.apply0();
        if (objApply0 instanceof Values) {
            return ((Values) objApply0).call_with(procedure2);
        }
        return procedure2.apply1(objApply0);
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) throws Throwable {
        return callWithValues((Procedure) obj, (Procedure) obj2);
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        Procedure.checkArgCount(this, 2);
        Object[] args = callContext.getArgs();
        Object objApply0 = ((Procedure) args[0]).apply0();
        Procedure procedure = (Procedure) args[1];
        if (objApply0 instanceof Values) {
            procedure.checkN(((Values) objApply0).getValues(), callContext);
        } else {
            procedure.check1(objApply0, callContext);
        }
    }
}
