package gnu.mapping;

/* loaded from: classes2.dex */
public class Setter1 extends Setter {
    @Override // gnu.mapping.Setter, gnu.mapping.Procedure
    public int numArgs() {
        return 8194;
    }

    public Setter1(Procedure procedure) {
        super(procedure);
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) throws Throwable {
        this.getter.set1(obj, obj2);
        return Values.empty;
    }

    @Override // gnu.mapping.Setter, gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        int length = objArr.length;
        if (length != 2) {
            throw new WrongArguments(this, length);
        }
        this.getter.set1(objArr[0], objArr[1]);
        return Values.empty;
    }
}
