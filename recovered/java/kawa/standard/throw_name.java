package kawa.standard;

import gnu.mapping.ProcedureN;
import gnu.mapping.Symbol;
import kawa.lang.GenericError;
import kawa.lang.NamedException;

/* loaded from: classes2.dex */
public class throw_name extends ProcedureN {
    public static final throw_name throwName = new throw_name();

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        if (objArr.length > 0) {
            Object obj = objArr[0];
            if (obj instanceof Throwable) {
                if (objArr.length == 1) {
                    prim_throw.throw_it(obj);
                }
            } else if (obj instanceof Symbol) {
                throw new NamedException((Symbol) obj, objArr);
            }
        }
        throw new GenericError("bad arguments to throw");
    }
}
