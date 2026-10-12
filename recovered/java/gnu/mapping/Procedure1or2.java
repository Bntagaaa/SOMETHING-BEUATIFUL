package gnu.mapping;

/* loaded from: classes2.dex */
public abstract class Procedure1or2 extends Procedure {
    @Override // gnu.mapping.Procedure
    public abstract Object apply1(Object obj) throws Throwable;

    @Override // gnu.mapping.Procedure
    public abstract Object apply2(Object obj, Object obj2) throws Throwable;

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return 8193;
    }

    public Procedure1or2() {
    }

    public Procedure1or2(String str) {
        super(str);
    }

    @Override // gnu.mapping.Procedure
    public Object apply0() {
        throw new WrongArguments(this, 0);
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
        if (objArr.length == 1) {
            return apply1(objArr[0]);
        }
        if (objArr.length == 2) {
            return apply2(objArr[0], objArr[1]);
        }
        throw new WrongArguments(this, objArr.length);
    }
}
