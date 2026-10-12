package gnu.kawa.xml;

import gnu.lists.AbstractSequence;
import gnu.lists.NodePredicate;
import gnu.lists.PositionConsumer;

/* loaded from: classes2.dex */
public class PrecedingAxis extends TreeScanner {
    public static PrecedingAxis make(NodePredicate nodePredicate) {
        PrecedingAxis precedingAxis = new PrecedingAxis();
        precedingAxis.type = nodePredicate;
        return precedingAxis;
    }

    private static void scan(AbstractSequence abstractSequence, int i, int i2, NodePredicate nodePredicate, PositionConsumer positionConsumer) {
        int iParentPos = abstractSequence.parentPos(i);
        if (iParentPos == i2) {
            return;
        }
        scan(abstractSequence, iParentPos, i2, nodePredicate, positionConsumer);
        int iFirstChildPos = abstractSequence.firstChildPos(iParentPos);
        if (iFirstChildPos == 0) {
            return;
        }
        if (nodePredicate.isInstancePos(abstractSequence, iFirstChildPos)) {
            positionConsumer.writePosition(abstractSequence, iFirstChildPos);
        }
        while (true) {
            iFirstChildPos = abstractSequence.nextMatching(iFirstChildPos, nodePredicate, i, true);
            if (iFirstChildPos == 0) {
                return;
            } else {
                positionConsumer.writePosition(abstractSequence, iFirstChildPos);
            }
        }
    }

    @Override // gnu.kawa.xml.TreeScanner
    public void scan(AbstractSequence abstractSequence, int i, PositionConsumer positionConsumer) {
        scan(abstractSequence, i, abstractSequence.endPos(), this.type, positionConsumer);
    }
}
