package gnu.mapping;

import androidx.fragment.app.FragmentTransaction;

/* loaded from: classes2.dex */
public class Setter0 extends Setter {
    @Override // gnu.mapping.Setter, gnu.mapping.Procedure
    public int numArgs() {
        return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
    }

    public Setter0(Procedure procedure) {
        super(procedure);
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object apply1(Object obj) throws Throwable {
        this.getter.set0(obj);
        return Values.empty;
    }

    @Override // gnu.mapping.Setter, gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        int length = objArr.length;
        if (length != 1) {
            throw new WrongArguments(this, length);
        }
        this.getter.set0(objArr[0]);
        return Values.empty;
    }
}
