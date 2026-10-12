package gnu.lists;

/* loaded from: classes2.dex */
public class ExtPosition extends SeqPosition {
    int position = -1;

    @Override // gnu.lists.SeqPosition
    public int getPos() {
        if (this.position < 0) {
            this.position = PositionManager.manager.register(this);
        }
        return this.position;
    }

    @Override // gnu.lists.SeqPosition
    public void setPos(AbstractSequence abstractSequence, int i) {
        throw abstractSequence.unsupported("setPos");
    }

    @Override // gnu.lists.SeqPosition
    public final boolean isAfter() {
        return (this.ipos & 1) != 0;
    }

    @Override // gnu.lists.SeqPosition
    public void release() {
        int i = this.position;
        if (i >= 0) {
            PositionManager.manager.release(i);
        }
        this.sequence = null;
    }
}
