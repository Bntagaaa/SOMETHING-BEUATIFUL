package gnu.kawa.xml;

import gnu.lists.AbstractSequence;
import gnu.lists.NodePredicate;
import gnu.lists.PositionConsumer;

/* loaded from: classes2.dex */
public class FollowingAxis extends TreeScanner {
    public static FollowingAxis make(NodePredicate nodePredicate) {
        FollowingAxis followingAxis = new FollowingAxis();
        followingAxis.type = nodePredicate;
        return followingAxis;
    }

    @Override // gnu.kawa.xml.TreeScanner
    public void scan(AbstractSequence abstractSequence, int i, PositionConsumer positionConsumer) {
        int iEndPos = abstractSequence.endPos();
        int iNextPos = abstractSequence.nextPos(i);
        if (iNextPos != 0 && this.type.isInstancePos(abstractSequence, iNextPos)) {
            positionConsumer.writePosition(abstractSequence, iNextPos);
        }
        while (true) {
            iNextPos = abstractSequence.nextMatching(iNextPos, this.type, iEndPos, true);
            if (iNextPos == 0) {
                return;
            } else {
                positionConsumer.writePosition(abstractSequence, iNextPos);
            }
        }
    }
}
