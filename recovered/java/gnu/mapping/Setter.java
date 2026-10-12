package gnu.mapping;

import androidx.fragment.app.FragmentTransaction;

/* loaded from: classes2.dex */
public class Setter extends ProcedureN {
    protected Procedure getter;

    public Setter(Procedure procedure) {
        this.getter = procedure;
        String name = procedure.getName();
        if (name != null) {
            setName("(setter " + name + ")");
        }
    }

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        int iNumArgs = this.getter.numArgs();
        return iNumArgs < 0 ? iNumArgs + 1 : iNumArgs + FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        this.getter.setN(objArr);
        return Values.empty;
    }
}
