package gnu.kawa.xml;

import gnu.lists.AbstractSequence;
import gnu.lists.NodePredicate;
import gnu.lists.PositionConsumer;

/* loaded from: classes2.dex */
public class PrecedingSiblingAxis extends TreeScanner {
    public static PrecedingSiblingAxis make(NodePredicate nodePredicate) {
        PrecedingSiblingAxis precedingSiblingAxis = new PrecedingSiblingAxis();
        precedingSiblingAxis.type = nodePredicate;
        return precedingSiblingAxis;
    }

    @Override // gnu.kawa.xml.TreeScanner
    public void scan(AbstractSequence abstractSequence, int i, PositionConsumer positionConsumer) {
        int iFirstChildPos;
        int iEndPos = abstractSequence.endPos();
        int iParentPos = abstractSequence.parentPos(i);
        if (iParentPos == iEndPos || (iFirstChildPos = abstractSequence.firstChildPos(iParentPos)) == 0) {
            return;
        }
        if (this.type.isInstancePos(abstractSequence, iFirstChildPos)) {
            positionConsumer.writePosition(abstractSequence, iFirstChildPos);
        }
        while (true) {
            iFirstChildPos = abstractSequence.nextMatching(iFirstChildPos, this.type, i, false);
            if (iFirstChildPos == 0) {
                return;
            } else {
                positionConsumer.writePosition(abstractSequence, iFirstChildPos);
            }
        }
    }
}
