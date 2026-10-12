package gnu.kawa.xml;

import gnu.lists.AbstractSequence;
import gnu.lists.NodePredicate;
import gnu.lists.PositionConsumer;

/* loaded from: classes2.dex */
public class AttributeAxis extends TreeScanner {
    public static AttributeAxis make(NodePredicate nodePredicate) {
        AttributeAxis attributeAxis = new AttributeAxis();
        attributeAxis.type = nodePredicate;
        return attributeAxis;
    }

    @Override // gnu.kawa.xml.TreeScanner
    public void scan(AbstractSequence abstractSequence, int i, PositionConsumer positionConsumer) {
        int iFirstAttributePos = abstractSequence.firstAttributePos(i);
        while (iFirstAttributePos != 0 && abstractSequence.getNextKind(iFirstAttributePos) == 35) {
            if (this.type.isInstancePos(abstractSequence, iFirstAttributePos)) {
                positionConsumer.writePosition(abstractSequence, iFirstAttributePos);
            } else if (abstractSequence.getNextKind(iFirstAttributePos) != 35) {
                return;
            }
            iFirstAttributePos = abstractSequence.nextPos(iFirstAttributePos);
        }
    }
}
