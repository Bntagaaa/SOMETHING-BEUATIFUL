package gnu.mapping;

/* loaded from: classes2.dex */
public abstract class Procedure2 extends Procedure {
    @Override // gnu.mapping.Procedure
    public abstract Object apply2(Object obj, Object obj2) throws Throwable;

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return 8194;
    }

    public Procedure2(String str) {
        super(str);
    }

    public Procedure2() {
    }

    @Override // gnu.mapping.Procedure
    public Object apply0() throws Throwable {
        throw new WrongArguments(getName(), 2, "(?)");
    }

    @Override // gnu.mapping.Procedure
    public Object apply1(Object obj) throws Throwable {
        throw new WrongArguments(this, 1);
    }

    @Override // gnu.mapping.Procedure
    public Object apply3(Object obj, Object obj2, Object obj3) {
        throw new WrongArguments(this, 3);
    }

    @Override // gnu.mapping.Procedure
    public Object apply4(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
        throw new WrongArguments(this, 4);
    }

    @Override // gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        if (objArr.length != 2) {
            throw new WrongArguments(this, objArr.length);
        }
        return apply2(objArr[0], objArr[1]);
    }
}
