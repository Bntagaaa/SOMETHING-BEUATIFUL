package gnu.kawa.xml;

import gnu.lists.AbstractSequence;
import gnu.lists.NodePredicate;
import gnu.lists.PositionConsumer;

/* loaded from: classes2.dex */
public class ChildAxis extends TreeScanner {
    public static ChildAxis make(NodePredicate nodePredicate) {
        ChildAxis childAxis = new ChildAxis();
        childAxis.type = nodePredicate;
        return childAxis;
    }

    @Override // gnu.kawa.xml.TreeScanner
    public void scan(AbstractSequence abstractSequence, int i, PositionConsumer positionConsumer) {
        int iFirstChildPos = abstractSequence.firstChildPos(i, this.type);
        while (iFirstChildPos != 0) {
            positionConsumer.writePosition(abstractSequence, iFirstChildPos);
            iFirstChildPos = abstractSequence.nextMatching(iFirstChildPos, this.type, -1, false);
        }
    }
}
