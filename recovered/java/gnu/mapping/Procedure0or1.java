package gnu.mapping;

/* loaded from: classes2.dex */
public abstract class Procedure0or1 extends Procedure {
    @Override // gnu.mapping.Procedure
    public abstract Object apply0() throws Throwable;

    @Override // gnu.mapping.Procedure
    public abstract Object apply1(Object obj) throws Throwable;

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return 4096;
    }

    public Procedure0or1() {
    }

    public Procedure0or1(String str) {
        super(str);
    }

    @Override // gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        throw new WrongArguments(this, 2);
    }

    @Override // gnu.mapping.Procedure
    public Object apply3(Object obj, Object obj2, Object obj3) {
        throw new WrongArguments(this, 3);
    }

    @Override // gnu.mapping.Procedure
    public Object apply4(Object obj, Object obj2, Object obj3, Object obj4) {
        throw new WrongArguments(this, 4);
    }

    @Override // gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        if (objArr.length == 0) {
            return apply0();
        }
        if (objArr.length == 1) {
            return apply1(objArr[0]);
        }
        throw new WrongArguments(this, objArr.length);
    }
}
