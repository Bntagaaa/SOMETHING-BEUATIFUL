package gnu.lists;

/* loaded from: classes2.dex */
public abstract class ExtSequence extends AbstractSequence {
    @Override // gnu.lists.AbstractSequence
    public int copyPos(int i) {
        return i <= 0 ? i : PositionManager.manager.register(PositionManager.getPositionObject(i).copy());
    }

    @Override // gnu.lists.AbstractSequence
    public void releasePos(int i) {
        if (i > 0) {
            PositionManager.manager.release(i);
        }
    }

    @Override // gnu.lists.AbstractSequence
    public boolean isAfterPos(int i) {
        return i <= 0 ? i < 0 : (PositionManager.getPositionObject(i).ipos & 1) != 0;
    }

    @Override // gnu.lists.AbstractSequence
    public int nextIndex(int i) {
        if (i == -1) {
            return size();
        }
        if (i == 0) {
            return 0;
        }
        return PositionManager.getPositionObject(i).nextIndex();
    }
}
