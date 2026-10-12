package gnu.mapping;

/* loaded from: classes2.dex */
public abstract class Procedure3 extends Procedure {
    @Override // gnu.mapping.Procedure
    public abstract Object apply3(Object obj, Object obj2, Object obj3) throws Throwable;

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return 12291;
    }

    public Procedure3() {
    }

    public Procedure3(String str) {
        super(str);
    }

    @Override // gnu.mapping.Procedure
    public Object apply0() {
        throw new WrongArguments(this, 0);
    }

    @Override // gnu.mapping.Procedure
    public Object apply1(Object obj) {
        throw new WrongArguments(this, 1);
    }

    @Override // gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        throw new WrongArguments(this, 2);
    }

    @Override // gnu.mapping.Procedure
    public Object apply4(Object obj, Object obj2, Object obj3, Object obj4) {
        throw new WrongArguments(this, 4);
    }

    @Override // gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        if (objArr.length != 3) {
            throw new WrongArguments(this, objArr.length);
        }
        return apply3(objArr[0], objArr[1], objArr[2]);
    }
}
