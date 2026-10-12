package gnu.xquery.util;

import gnu.kawa.xml.SortedNodes;
import gnu.lists.AbstractSequence;
import gnu.lists.Consumer;
import gnu.lists.FilterConsumer;
import gnu.lists.PositionConsumer;
import gnu.lists.SeqPosition;

/* loaded from: classes2.dex */
public class RelativeStepFilter extends FilterConsumer implements PositionConsumer {

    /* renamed from: a, reason: collision with root package name */
    public char f5535a;

    /* renamed from: b, reason: collision with root package name */
    public SortedNodes f5536b;

    public RelativeStepFilter(Consumer consumer) {
        super(consumer);
    }

    @Override // gnu.lists.PositionConsumer
    public void consume(SeqPosition seqPosition) {
        writePosition(seqPosition.sequence, seqPosition.ipos);
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void writeObject(Object obj) {
        if (obj instanceof SeqPosition) {
            SeqPosition seqPosition = (SeqPosition) obj;
            writePosition(seqPosition.sequence, seqPosition.ipos);
        } else {
            super.writeObject(obj);
        }
    }

    @Override // gnu.lists.FilterConsumer
    public void beforeContent() {
        if (this.f5535a == 'N') {
            throw new Error("path returns mix of atoms and nodes");
        }
        this.f5535a = 'A';
    }

    @Override // gnu.lists.PositionConsumer
    public void writePosition(AbstractSequence abstractSequence, int i) {
        if (this.f5535a == 'A') {
            throw new Error("path returns mix of atoms and nodes");
        }
        this.f5535a = 'N';
        if (this.f5536b == null) {
            this.f5536b = new SortedNodes();
        }
        this.f5536b.writePosition(abstractSequence, i);
    }

    public void finish() {
        SortedNodes sortedNodes = this.f5536b;
        if (sortedNodes != null) {
            sortedNodes.consume(this.base);
        }
        this.f5536b = null;
    }
}
