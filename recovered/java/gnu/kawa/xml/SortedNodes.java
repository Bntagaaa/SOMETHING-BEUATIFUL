package gnu.kawa.xml;

import gnu.lists.AbstractSequence;

/* loaded from: classes2.dex */
public class SortedNodes extends Nodes {
    int nesting = 0;

    public int compareIndex(int i, AbstractSequence abstractSequence, int i2) {
        if (this.data[i] != 61711) {
            throw new RuntimeException("invalid kind of value to compare");
        }
        return AbstractSequence.compare((AbstractSequence) this.objects[getIntN(i + 1)], getIntN(i + 3), abstractSequence, i2);
    }

    public int find(int i, int i2, AbstractSequence abstractSequence, int i3) {
        int i4 = 0;
        while (i4 < i2) {
            int i5 = (i4 + i2) >>> 1;
            int iCompareIndex = compareIndex((i5 * 5) + i, abstractSequence, i3);
            if (iCompareIndex == 0) {
                return -1;
            }
            if (iCompareIndex > 0) {
                i2 = i5;
            } else {
                i4 = i5 + 1;
            }
        }
        return (i4 * 5) + i;
    }

    @Override // gnu.kawa.xml.Nodes, gnu.lists.TreeList, gnu.lists.PositionConsumer
    public void writePosition(AbstractSequence abstractSequence, int i) {
        int iFind;
        if (this.count > 0) {
            int i2 = this.gapStart - 5;
            int iCompareIndex = compareIndex(i2, abstractSequence, i);
            if (iCompareIndex < 0) {
                int i3 = this.gapEnd;
                int iFind2 = find(i3, (this.data.length - i3) / 5, abstractSequence, i);
                if (iFind2 < 0) {
                    return;
                }
                int i4 = this.gapEnd;
                int i5 = iFind2 - i4;
                if (i5 > 0) {
                    char[] cArr = this.data;
                    System.arraycopy(cArr, i4, cArr, this.gapStart, i5);
                    this.gapEnd = iFind2;
                    this.gapStart += i5;
                }
            } else {
                if (iCompareIndex == 0 || (iFind = find(0, i2 / 5, abstractSequence, i)) < 0) {
                    return;
                }
                int i6 = this.gapStart - iFind;
                if (i6 > 0) {
                    char[] cArr2 = this.data;
                    System.arraycopy(cArr2, iFind, cArr2, this.gapEnd - i6, i6);
                    this.gapStart = iFind;
                    this.gapEnd -= i6;
                }
            }
        }
        super.writePosition(abstractSequence, i);
    }
}
