package gnu.lists;

/* loaded from: classes2.dex */
public class ImmutablePair extends Pair {
    public ImmutablePair(Object obj, Object obj2) {
        this.car = obj;
        this.cdr = obj2;
    }

    public ImmutablePair() {
    }

    @Override // gnu.lists.Pair
    public void setCar(Object obj) {
        throw new UnsupportedOperationException("cannot modify read-only pair");
    }

    @Override // gnu.lists.Pair
    public void setCdr(Object obj) {
        throw new UnsupportedOperationException("cannot modify read-only pair");
    }
}
