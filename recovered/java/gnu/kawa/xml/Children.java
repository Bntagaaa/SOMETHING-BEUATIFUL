package gnu.kawa.xml;

import androidx.fragment.app.FragmentTransaction;
import gnu.lists.AbstractSequence;
import gnu.lists.Consumer;
import gnu.lists.PositionConsumer;
import gnu.lists.SeqPosition;
import gnu.lists.TreeList;
import gnu.lists.TreePosition;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class Children extends MethodProc {
    public static final Children children = new Children();

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
    }

    public static void children(TreeList treeList, int i, Consumer consumer) {
        int iGotoChildrenStart = treeList.gotoChildrenStart(i);
        if (iGotoChildrenStart < 0) {
            return;
        }
        int iNextDataIndex = treeList.nextDataIndex(i);
        while (true) {
            int i2 = iGotoChildrenStart << 1;
            int iNextNodeIndex = treeList.nextNodeIndex(iGotoChildrenStart, iNextDataIndex);
            if (iNextNodeIndex == iGotoChildrenStart) {
                iNextNodeIndex = treeList.nextDataIndex(iGotoChildrenStart);
            }
            if (iNextNodeIndex < 0) {
                return;
            }
            if (consumer instanceof PositionConsumer) {
                ((PositionConsumer) consumer).writePosition(treeList, i2);
            } else {
                treeList.consumeIRange(iGotoChildrenStart, iNextNodeIndex, consumer);
            }
            iGotoChildrenStart = iNextNodeIndex;
        }
    }

    public static void children(Object obj, Consumer consumer) {
        if (obj instanceof TreeList) {
            children((TreeList) obj, 0, consumer);
            return;
        }
        if (!(obj instanceof SeqPosition) || (obj instanceof TreePosition)) {
            return;
        }
        SeqPosition seqPosition = (SeqPosition) obj;
        AbstractSequence abstractSequence = seqPosition.sequence;
        if (abstractSequence instanceof TreeList) {
            children((TreeList) abstractSequence, seqPosition.ipos >> 1, consumer);
        }
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) {
        Consumer consumer = callContext.consumer;
        Object nextArg = callContext.getNextArg();
        callContext.lastArg();
        if (nextArg instanceof Values) {
            TreeList treeList = (TreeList) nextArg;
            int iNextDataIndex = 0;
            while (true) {
                int i = iNextDataIndex << 1;
                int nextKind = treeList.getNextKind(i);
                if (nextKind == 0) {
                    return;
                }
                if (nextKind == 32) {
                    children(treeList.getPosNext(i), consumer);
                } else {
                    children(treeList, iNextDataIndex, consumer);
                }
                iNextDataIndex = treeList.nextDataIndex(iNextDataIndex);
            }
        } else {
            children(nextArg, consumer);
        }
    }
}
