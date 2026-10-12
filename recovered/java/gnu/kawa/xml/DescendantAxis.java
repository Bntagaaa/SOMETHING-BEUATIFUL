package gnu.kawa.xml;

import gnu.lists.AbstractSequence;
import gnu.lists.NodePredicate;
import gnu.lists.PositionConsumer;
import gnu.lists.TreeList;

/* loaded from: classes2.dex */
public class DescendantAxis extends TreeScanner {
    public static DescendantAxis make(NodePredicate nodePredicate) {
        DescendantAxis descendantAxis = new DescendantAxis();
        descendantAxis.type = nodePredicate;
        return descendantAxis;
    }

    @Override // gnu.kawa.xml.TreeScanner
    public void scan(AbstractSequence abstractSequence, int i, PositionConsumer positionConsumer) {
        if (!(abstractSequence instanceof TreeList)) {
            int iFirstChildPos = abstractSequence.firstChildPos(i);
            while (iFirstChildPos != 0) {
                if (this.type.isInstancePos(abstractSequence, iFirstChildPos)) {
                    positionConsumer.writePosition(abstractSequence, iFirstChildPos);
                }
                scan(abstractSequence, iFirstChildPos, positionConsumer);
                iFirstChildPos = abstractSequence.nextPos(iFirstChildPos);
            }
            return;
        }
        int iNextPos = abstractSequence.nextPos(i);
        while (true) {
            i = abstractSequence.nextMatching(i, this.type, iNextPos, true);
            if (i == 0) {
                return;
            } else {
                positionConsumer.writePosition(abstractSequence, i);
            }
        }
    }
}
