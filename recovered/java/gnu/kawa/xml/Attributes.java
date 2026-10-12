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
public class Attributes extends MethodProc {
    public static final Attributes attributes = new Attributes();

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
    }

    public static void attributes(TreeList treeList, int i, Consumer consumer) {
        int iGotoAttributesStart = treeList.gotoAttributesStart(i);
        System.out.print("Attributes called, at:" + iGotoAttributesStart + " ");
        treeList.dump();
        while (iGotoAttributesStart >= 0) {
            int i2 = iGotoAttributesStart << 1;
            if (treeList.getNextKind(i2) != 35) {
                return;
            }
            int iNextDataIndex = treeList.nextDataIndex(iGotoAttributesStart);
            if (consumer instanceof PositionConsumer) {
                ((PositionConsumer) consumer).writePosition(treeList, i2);
            } else {
                treeList.consumeIRange(iGotoAttributesStart, iNextDataIndex, consumer);
            }
            iGotoAttributesStart = iNextDataIndex;
        }
    }

    public static void attributes(Object obj, Consumer consumer) {
        if (obj instanceof TreeList) {
            attributes((TreeList) obj, 0, consumer);
            return;
        }
        if (!(obj instanceof SeqPosition) || (obj instanceof TreePosition)) {
            return;
        }
        SeqPosition seqPosition = (SeqPosition) obj;
        AbstractSequence abstractSequence = seqPosition.sequence;
        if (abstractSequence instanceof TreeList) {
            attributes((TreeList) abstractSequence, seqPosition.ipos >> 1, consumer);
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
                    attributes(treeList.getPosNext(i), consumer);
                } else {
                    attributes(treeList, iNextDataIndex, consumer);
                }
                iNextDataIndex = treeList.nextDataIndex(iNextDataIndex);
            }
        } else {
            attributes(nextArg, consumer);
        }
    }
}
