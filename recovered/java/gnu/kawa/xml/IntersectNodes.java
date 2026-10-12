package gnu.kawa.xml;

import gnu.lists.AbstractSequence;
import gnu.mapping.Procedure2;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class IntersectNodes extends Procedure2 {
    boolean isExcept;
    public static final IntersectNodes intersectNodes = new IntersectNodes(false);
    public static final IntersectNodes exceptNodes = new IntersectNodes(true);

    public IntersectNodes(boolean z) {
        this.isExcept = z;
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        SortedNodes sortedNodes = new SortedNodes();
        SortedNodes sortedNodes2 = new SortedNodes();
        SortedNodes sortedNodes3 = new SortedNodes();
        Values.writeValues(obj, sortedNodes);
        Values.writeValues(obj2, sortedNodes2);
        AbstractSequence seq = null;
        int i = 0;
        int iCompare = 0;
        int pos = 0;
        int i2 = 0;
        while (true) {
            AbstractSequence seq2 = sortedNodes.getSeq(i);
            if (seq2 == null) {
                return sortedNodes3;
            }
            int pos2 = sortedNodes.getPos(i);
            if (iCompare == -1) {
                iCompare = AbstractSequence.compare(seq2, pos2, seq, pos);
            } else if (iCompare == 0) {
                iCompare = 1;
            }
            while (true) {
                if (iCompare <= 0) {
                    break;
                }
                seq = sortedNodes2.getSeq(i2);
                if (seq == null) {
                    iCompare = -2;
                    break;
                }
                pos = sortedNodes2.getPos(i2);
                i2++;
                iCompare = AbstractSequence.compare(seq2, pos2, seq, pos);
            }
            if ((iCompare == 0) != this.isExcept) {
                sortedNodes3.writePosition(seq2, pos2);
            }
            i++;
        }
    }
}
