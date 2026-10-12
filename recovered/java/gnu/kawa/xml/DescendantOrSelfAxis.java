package gnu.kawa.xml;

import gnu.lists.AbstractSequence;
import gnu.lists.NodePredicate;
import gnu.lists.PositionConsumer;
import gnu.lists.TreeList;

/* loaded from: classes2.dex */
public class DescendantOrSelfAxis extends TreeScanner {
    public static final DescendantOrSelfAxis anyNode = new DescendantOrSelfAxis(NodeType.anyNodeTest);

    private DescendantOrSelfAxis(NodePredicate nodePredicate) {
        this.type = nodePredicate;
    }

    public static DescendantOrSelfAxis make(NodePredicate nodePredicate) {
        if (nodePredicate == NodeType.anyNodeTest) {
            return anyNode;
        }
        return new DescendantOrSelfAxis(nodePredicate);
    }

    @Override // gnu.kawa.xml.TreeScanner
    public void scan(AbstractSequence abstractSequence, int i, PositionConsumer positionConsumer) {
        if (this.type.isInstancePos(abstractSequence, i)) {
            positionConsumer.writePosition(abstractSequence, i);
        }
        if (!(abstractSequence instanceof TreeList)) {
            int iFirstChildPos = abstractSequence.firstChildPos(i);
            while (iFirstChildPos != 0) {
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
