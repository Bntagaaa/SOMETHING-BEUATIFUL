package gnu.lists;

/* loaded from: classes2.dex */
public class SubSequence extends AbstractSequence implements Sequence {
    AbstractSequence base;
    int ipos0;
    int ipos1;

    public SubSequence() {
    }

    public SubSequence(AbstractSequence abstractSequence, int i, int i2) {
        this.base = abstractSequence;
        this.ipos0 = i;
        this.ipos1 = i2;
    }

    public SubSequence(AbstractSequence abstractSequence) {
        this.base = abstractSequence;
    }

    @Override // gnu.lists.AbstractSequence
    public Object get(int i) {
        if (i < 0 || i >= size()) {
            throw new IndexOutOfBoundsException();
        }
        return this.base.get(this.base.nextIndex(this.ipos0) + i);
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Sequence, java.util.List, java.util.Collection, com.google.appinventor.components.runtime.util.YailObject
    public int size() {
        return this.base.getIndexDifference(this.ipos1, this.ipos0);
    }

    @Override // gnu.lists.AbstractSequence
    public void removePosRange(int i, int i2) {
        AbstractSequence abstractSequence = this.base;
        if (i == 0) {
            i = this.ipos0;
        } else if (i == -1) {
            i = this.ipos1;
        }
        if (i2 == -1) {
            i2 = this.ipos1;
        } else if (i2 == 0) {
            i2 = this.ipos0;
        }
        abstractSequence.removePosRange(i, i2);
    }

    @Override // gnu.lists.AbstractSequence
    public boolean isAfterPos(int i) {
        return this.base.isAfterPos(i);
    }

    @Override // gnu.lists.AbstractSequence
    public int createPos(int i, boolean z) {
        return this.base.createRelativePos(this.ipos0, i, z);
    }

    @Override // gnu.lists.AbstractSequence
    public int createRelativePos(int i, int i2, boolean z) {
        return this.base.createRelativePos(i, i2, z);
    }

    @Override // gnu.lists.AbstractSequence
    public int getIndexDifference(int i, int i2) {
        return this.base.getIndexDifference(i, i2);
    }

    @Override // gnu.lists.AbstractSequence
    public void releasePos(int i) {
        this.base.releasePos(i);
    }

    @Override // gnu.lists.AbstractSequence
    public int nextIndex(int i) {
        return getIndexDifference(i, this.ipos0);
    }

    @Override // gnu.lists.AbstractSequence
    public int compare(int i, int i2) {
        return this.base.compare(i, i2);
    }

    @Override // gnu.lists.AbstractSequence
    public Object getPosNext(int i) {
        if (this.base.compare(i, this.ipos1) >= 0) {
            return Sequence.eofValue;
        }
        return this.base.getPosNext(i);
    }

    @Override // gnu.lists.AbstractSequence
    public int getNextKind(int i) {
        if (this.base.compare(i, this.ipos1) >= 0) {
            return 0;
        }
        return this.base.getNextKind(i);
    }

    @Override // gnu.lists.AbstractSequence
    public int startPos() {
        return this.ipos0;
    }

    @Override // gnu.lists.AbstractSequence
    public int endPos() {
        return this.ipos1;
    }

    @Override // gnu.lists.AbstractSequence
    public Object getPosPrevious(int i) {
        if (this.base.compare(i, this.ipos0) <= 0) {
            return Sequence.eofValue;
        }
        return this.base.getPosPrevious(i);
    }

    @Override // gnu.lists.AbstractSequence
    public Sequence subSequencePos(int i, int i2) {
        return new SubSequence(this.base, i, i2);
    }

    @Override // gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public void clear() {
        removePosRange(this.ipos0, this.ipos1);
    }

    public void finalize() {
        this.base.releasePos(this.ipos0);
        this.base.releasePos(this.ipos1);
    }
}
