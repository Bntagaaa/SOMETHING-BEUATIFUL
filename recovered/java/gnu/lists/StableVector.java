package gnu.lists;

/* loaded from: classes2.dex */
public class StableVector extends GapVector {
    static final int END_POSITION = 1;
    protected static final int FREE_POSITION = -2;
    static final int START_POSITION = 0;
    protected int free;
    protected int[] positions;

    @Override // gnu.lists.AbstractSequence
    public int endPos() {
        return 1;
    }

    @Override // gnu.lists.AbstractSequence
    public int startPos() {
        return 0;
    }

    public void chainFreelist() {
        this.free = -1;
        int length = this.positions.length;
        while (true) {
            length--;
            if (length <= 1) {
                return;
            }
            int[] iArr = this.positions;
            if (iArr[length] == -2) {
                iArr[length] = this.free;
                this.free = length;
            }
        }
    }

    public void unchainFreelist() {
        int i = this.free;
        while (i >= 0) {
            int[] iArr = this.positions;
            int i2 = iArr[i];
            iArr[i] = -2;
            i = i2;
        }
        this.free = -2;
    }

    public StableVector(SimpleVector simpleVector) {
        super(simpleVector);
        int[] iArr = new int[16];
        this.positions = iArr;
        iArr[0] = 0;
        iArr[1] = (simpleVector.getBufferLength() << 1) | 1;
        this.free = -1;
        int length = this.positions.length;
        while (true) {
            length--;
            if (length <= 1) {
                return;
            }
            this.positions[length] = this.free;
            this.free = length;
        }
    }

    public StableVector() {
    }

    public int allocPositionIndex() {
        if (this.free == -2) {
            chainFreelist();
        }
        if (this.free < 0) {
            int[] iArr = this.positions;
            int length = iArr.length;
            int i = length * 2;
            int[] iArr2 = new int[i];
            System.arraycopy(iArr, 0, iArr2, 0, length);
            while (true) {
                i--;
                if (i < length) {
                    break;
                }
                iArr2[i] = this.free;
                this.free = i;
            }
            this.positions = iArr2;
        }
        int i2 = this.free;
        this.free = this.positions[i2];
        return i2;
    }

    @Override // gnu.lists.GapVector, gnu.lists.AbstractSequence
    public int createPos(int i, boolean z) {
        if (i == 0 && !z) {
            return 0;
        }
        if (z && i == size()) {
            return 1;
        }
        int i2 = this.gapStart;
        if (i > i2 || (i == i2 && z)) {
            i += this.gapEnd - i2;
        }
        int iAllocPositionIndex = allocPositionIndex();
        this.positions[iAllocPositionIndex] = (i << 1) | (z ? 1 : 0);
        return iAllocPositionIndex;
    }

    @Override // gnu.lists.GapVector, gnu.lists.AbstractSequence
    public boolean isAfterPos(int i) {
        return (this.positions[i] & 1) != 0;
    }

    @Override // gnu.lists.GapVector, gnu.lists.AbstractSequence
    public boolean hasNext(int i) {
        int i2 = this.positions[i] >>> 1;
        int i3 = this.gapStart;
        if (i2 >= i3) {
            i2 += this.gapEnd - i3;
        }
        return i2 < this.base.getBufferLength();
    }

    @Override // gnu.lists.AbstractSequence
    public int nextPos(int i) {
        int i2 = this.positions[i];
        int i3 = i2 >>> 1;
        int i4 = this.gapStart;
        if (i3 >= i4) {
            i3 += this.gapEnd - i4;
        }
        if (i3 >= this.base.getBufferLength()) {
            releasePos(i);
            return 0;
        }
        if (i == 0) {
            i = createPos(0, true);
        }
        this.positions[i] = i2 | 1;
        return i;
    }

    @Override // gnu.lists.GapVector, gnu.lists.AbstractSequence
    public int nextIndex(int i) {
        int i2 = this.positions[i] >>> 1;
        int i3 = this.gapStart;
        return i2 > i3 ? i2 - (this.gapEnd - i3) : i2;
    }

    @Override // gnu.lists.AbstractSequence
    public void releasePos(int i) {
        if (i >= 2) {
            if (this.free == -2) {
                chainFreelist();
            }
            this.positions[i] = this.free;
            this.free = i;
        }
    }

    @Override // gnu.lists.AbstractSequence
    public int copyPos(int i) {
        if (i <= 1) {
            return i;
        }
        int iAllocPositionIndex = allocPositionIndex();
        int[] iArr = this.positions;
        iArr[iAllocPositionIndex] = iArr[i];
        return iAllocPositionIndex;
    }

    @Override // gnu.lists.GapVector, gnu.lists.AbstractSequence
    public void fillPosRange(int i, int i2, Object obj) {
        int[] iArr = this.positions;
        fillPosRange(iArr[i], iArr[i2], obj);
    }

    @Override // gnu.lists.GapVector
    public void shiftGap(int i) {
        int i2;
        int i3;
        int i4;
        int i5 = this.gapStart;
        int i6 = i - i5;
        if (i6 > 0) {
            int i7 = this.gapEnd;
            int i8 = i6 + i7;
            i4 = (i5 - i7) << 1;
            i2 = i7 << 1;
            i3 = (i8 << 1) - 1;
        } else {
            if (i == i5) {
                return;
            }
            i2 = (i << 1) + 1;
            i3 = i5 << 1;
            i4 = (this.gapEnd - i5) << 1;
        }
        super.shiftGap(i);
        adjustPositions(i2, i3, i4);
    }

    @Override // gnu.lists.GapVector
    public void gapReserve(int i, int i2) {
        int i3 = this.gapEnd;
        int i4 = this.gapStart;
        if (i2 <= i3 - i4) {
            if (i != i4) {
                shiftGap(i);
                return;
            }
            return;
        }
        int i5 = this.base.size;
        super.gapReserve(i, i2);
        int i6 = this.base.size;
        if (i == i4) {
            adjustPositions(i3 << 1, (i6 << 1) | 1, (i6 - i5) << 1);
            return;
        }
        adjustPositions(i3 << 1, (i5 << 1) | 1, (i4 - i3) << 1);
        int i7 = this.gapStart;
        adjustPositions(i7 << 1, (i6 << 1) | 1, (this.gapEnd - i7) << 1);
    }

    public void adjustPositions(int i, int i2, int i3) {
        int i4;
        if (this.free >= -1) {
            unchainFreelist();
        }
        int i5 = i ^ Integer.MIN_VALUE;
        int i6 = i2 ^ Integer.MIN_VALUE;
        int length = this.positions.length;
        while (true) {
            length--;
            if (length <= 0) {
                return;
            }
            int[] iArr = this.positions;
            int i7 = iArr[length];
            if (i7 != -2 && (i4 = i7 ^ Integer.MIN_VALUE) >= i5 && i4 <= i6) {
                iArr[length] = i7 + i3;
            }
        }
    }

    @Override // gnu.lists.GapVector, gnu.lists.AbstractSequence
    public int addPos(int i, Object obj) {
        int[] iArr = this.positions;
        int i2 = iArr[i];
        int i3 = i2 >>> 1;
        int i4 = this.gapStart;
        if (i3 >= i4) {
            i3 += this.gapEnd - i4;
        }
        if ((i2 & 1) == 0) {
            if (i == 0) {
                i = createPos(0, true);
            } else {
                iArr[i] = i2 | 1;
            }
        }
        add(i3, obj);
        return i;
    }

    @Override // gnu.lists.GapVector, gnu.lists.AbstractSequence
    public void removePosRange(int i, int i2) {
        int[] iArr = this.positions;
        super.removePosRange(iArr[i], iArr[i2]);
        int i3 = this.gapStart;
        int i4 = this.gapEnd;
        if (this.free >= -1) {
            unchainFreelist();
        }
        int length = this.positions.length;
        while (true) {
            length--;
            if (length <= 0) {
                return;
            }
            int[] iArr2 = this.positions;
            int i5 = iArr2[length];
            if (i5 != -2) {
                int i6 = i5 >> 1;
                if ((i5 & 1) != 0) {
                    if (i6 >= i3 && i6 < i4) {
                        iArr2[length] = (this.gapEnd << 1) | 1;
                    }
                } else if (i6 > i3 && i6 <= i4) {
                    iArr2[length] = this.gapStart << 1;
                }
            }
        }
    }

    @Override // gnu.lists.GapVector, gnu.lists.AbstractSequence
    public void consumePosRange(int i, int i2, Consumer consumer) {
        int[] iArr = this.positions;
        super.consumePosRange(iArr[i], iArr[i2], consumer);
    }
}
