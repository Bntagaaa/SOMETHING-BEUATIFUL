package gnu.lists;

/* loaded from: classes2.dex */
public class GeneralArray1 extends GeneralArray implements Sequence {
    @Override // gnu.lists.GeneralArray, gnu.lists.AbstractSequence
    public int createPos(int i, boolean z) {
        return (i << 1) | (z ? 1 : 0);
    }

    @Override // gnu.lists.AbstractSequence
    public int nextIndex(int i) {
        return i == -1 ? size() : i >>> 1;
    }

    @Override // gnu.lists.AbstractSequence
    public void consumePosRange(int i, int i2, Consumer consumer) {
        if (consumer.ignoring()) {
            return;
        }
        while (!equals(i, i2)) {
            if (!hasNext(i)) {
                throw new RuntimeException();
            }
            this.base.consume((this.strides[0] * (i >>> 1)) + this.offset, 1, consumer);
            i = nextPos(i);
        }
    }
}
