package gnu.kawa.xml;

import gnu.lists.AbstractSequence;
import gnu.lists.NodePredicate;
import gnu.lists.PositionConsumer;

/* loaded from: classes2.dex */
public class ParentAxis extends TreeScanner {
    public static ParentAxis make(NodePredicate nodePredicate) {
        ParentAxis parentAxis = new ParentAxis();
        parentAxis.type = nodePredicate;
        return parentAxis;
    }

    @Override // gnu.kawa.xml.TreeScanner
    public void scan(AbstractSequence abstractSequence, int i, PositionConsumer positionConsumer) {
        int iParentPos = abstractSequence.parentPos(i);
        if (iParentPos == abstractSequence.endPos() || !this.type.isInstancePos(abstractSequence, iParentPos)) {
            return;
        }
        positionConsumer.writePosition(abstractSequence, iParentPos);
    }
}
