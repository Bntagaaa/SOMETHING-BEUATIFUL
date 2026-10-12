package gnu.mapping;

import androidx.fragment.app.FragmentTransaction;

/* loaded from: classes2.dex */
public abstract class Procedure1 extends Procedure {
    @Override // gnu.mapping.Procedure
    public abstract Object apply1(Object obj) throws Throwable;

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
    }

    public Procedure1() {
    }

    public Procedure1(String str) {
        super(str);
    }

    @Override // gnu.mapping.Procedure
    public Object apply0() throws Throwable {
        throw new WrongArguments(this, 0);
    }

    @Override // gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) throws Throwable {
        throw new WrongArguments(this, 2);
    }

    @Override // gnu.mapping.Procedure
    public Object apply3(Object obj, Object obj2, Object obj3) throws Throwable {
        throw new WrongArguments(this, 3);
    }

    @Override // gnu.mapping.Procedure
    public Object apply4(Object obj, Object obj2, Object obj3, Object obj4) throws Throwable {
        throw new WrongArguments(this, 4);
    }

    @Override // gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        if (objArr.length != 1) {
            throw new WrongArguments(this, objArr.length);
        }
        return apply1(objArr[0]);
    }
}
