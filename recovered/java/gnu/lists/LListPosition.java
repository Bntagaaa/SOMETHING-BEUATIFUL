package gnu.lists;

/* loaded from: classes2.dex */
class LListPosition extends ExtPosition {
    Object xpos;

    public LListPosition(LListPosition lListPosition) {
        this.sequence = lListPosition.sequence;
        this.ipos = lListPosition.ipos;
        this.xpos = lListPosition.xpos;
    }

    @Override // gnu.lists.SeqPosition
    public SeqPosition copy() {
        return new LListPosition(this);
    }

    public LListPosition(LList lList, int i, boolean z) {
        set(lList, i, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [gnu.lists.AbstractSequence, gnu.lists.LList] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object] */
    public void set(LList lList, int i, boolean z) {
        this.sequence = lList;
        this.ipos = (i << 1) | (z ? 1 : 0);
        int i2 = z ? i - 2 : i - 1;
        if (i2 < 0) {
            this.xpos = null;
            return;
        }
        while (true) {
            i2--;
            if (i2 >= 0) {
                lList = ((Pair) lList).cdr;
            } else {
                this.xpos = lList;
                return;
            }
        }
    }

    @Override // gnu.lists.SeqPosition
    public void set(AbstractSequence abstractSequence, int i, boolean z) {
        set((LList) abstractSequence, i, z);
    }

    @Override // gnu.lists.SeqPosition, java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        Object obj = this.xpos;
        if (obj == null) {
            return (this.ipos >> 1) == 0 ? this.sequence != LList.Empty : ((Pair) this.sequence).cdr != LList.Empty;
        }
        Object obj2 = ((Pair) obj).cdr;
        if ((this.ipos & 1) > 0) {
            obj2 = ((Pair) obj2).cdr;
        }
        return obj2 != LList.Empty;
    }

    @Override // gnu.lists.SeqPosition, java.util.ListIterator
    public boolean hasPrevious() {
        return (this.ipos >>> 1) != 0;
    }

    public Pair getNextPair() {
        Object obj;
        int i = this.ipos;
        if ((i & 1) > 0) {
            Object obj2 = this.xpos;
            if (obj2 == null) {
                obj = this.sequence;
                if ((i >> 1) != 0) {
                    obj = ((Pair) obj).cdr;
                }
            } else {
                obj = ((Pair) ((Pair) obj2).cdr).cdr;
            }
        } else {
            Object obj3 = this.xpos;
            if (obj3 == null) {
                obj = this.sequence;
            } else {
                obj = ((Pair) obj3).cdr;
            }
        }
        if (obj == LList.Empty) {
            return null;
        }
        return (Pair) obj;
    }

    @Override // gnu.lists.SeqPosition
    public Object getNext() {
        Pair nextPair = getNextPair();
        return nextPair == null ? Sequence.eofValue : nextPair.car;
    }

    @Override // gnu.lists.SeqPosition
    public void setNext(Object obj) {
        getNextPair().car = obj;
    }

    public Pair getPreviousPair() {
        int i = this.ipos & 1;
        Object obj = this.xpos;
        if (i > 0) {
            obj = obj == null ? this.sequence : ((Pair) obj).cdr;
        } else if (obj == null) {
            return null;
        }
        if (obj == LList.Empty) {
            return null;
        }
        return (Pair) obj;
    }

    @Override // gnu.lists.SeqPosition
    public Object getPrevious() {
        Pair previousPair = getPreviousPair();
        return previousPair == null ? Sequence.eofValue : previousPair.car;
    }

    @Override // gnu.lists.SeqPosition
    public void setPrevious(Object obj) {
        getPreviousPair().car = obj;
    }

    @Override // gnu.lists.SeqPosition, java.util.ListIterator
    public int nextIndex() {
        return this.ipos >> 1;
    }

    @Override // gnu.lists.SeqPosition
    public boolean gotoNext() {
        int i = this.ipos;
        boolean z = (i & 1) != 0;
        Object obj = this.xpos;
        if (obj != null) {
            if (z) {
                obj = ((Pair) obj).cdr;
            }
            if (((Pair) obj).cdr == LList.Empty) {
                return false;
            }
            this.xpos = obj;
            this.ipos = (i | 1) + 2;
        } else if ((i >> 1) == 0) {
            if (this.sequence == LList.Empty) {
                return false;
            }
            this.ipos = 3;
        } else {
            AbstractSequence abstractSequence = this.sequence;
            if (((Pair) abstractSequence).cdr == LList.Empty) {
                return false;
            }
            this.ipos = 5;
            this.xpos = abstractSequence;
        }
        return true;
    }

    @Override // gnu.lists.SeqPosition
    public boolean gotoPrevious() {
        int i = this.ipos;
        if ((i >>> 1) == 0) {
            return false;
        }
        if ((i & 1) != 0) {
            this.ipos = i - 3;
            return true;
        }
        set((LList) this.sequence, nextIndex() - 1, false);
        return true;
    }

    @Override // gnu.lists.SeqPosition
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("LListPos[index:");
        stringBuffer.append(this.ipos);
        if (isAfter()) {
            stringBuffer.append(" after");
        }
        if (this.position >= 0) {
            stringBuffer.append(" position:");
            stringBuffer.append(this.position);
        }
        stringBuffer.append(']');
        return stringBuffer.toString();
    }
}
