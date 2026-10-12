package gnu.kawa.xml;

import gnu.lists.AbstractSequence;
import gnu.lists.NodePredicate;
import gnu.lists.PositionConsumer;

/* loaded from: classes2.dex */
public class FollowingSiblingAxis extends TreeScanner {
    public static FollowingSiblingAxis make(NodePredicate nodePredicate) {
        FollowingSiblingAxis followingSiblingAxis = new FollowingSiblingAxis();
        followingSiblingAxis.type = nodePredicate;
        return followingSiblingAxis;
    }

    @Override // gnu.kawa.xml.TreeScanner
    public void scan(AbstractSequence abstractSequence, int i, PositionConsumer positionConsumer) {
        int iEndPos = abstractSequence.endPos();
        while (true) {
            i = abstractSequence.nextMatching(i, this.type, iEndPos, false);
            if (i == 0) {
                return;
            } else {
                positionConsumer.writePosition(abstractSequence, i);
            }
        }
    }
}
