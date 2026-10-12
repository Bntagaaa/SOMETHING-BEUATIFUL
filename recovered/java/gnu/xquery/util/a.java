package gnu.xquery.util;

import gnu.kawa.xml.KNode;
import gnu.lists.AbstractSequence;
import gnu.lists.Consumer;
import gnu.lists.FilterConsumer;
import gnu.lists.PositionConsumer;
import gnu.lists.SeqPosition;
import gnu.mapping.Values;
import gnu.xml.NodeTree;

/* loaded from: classes2.dex */
class a extends FilterConsumer implements PositionConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final b f5538a;

    public a(NamedCollator namedCollator, Consumer consumer) {
        super(consumer);
        this.f5538a = new b(namedCollator);
    }

    @Override // gnu.lists.PositionConsumer
    public void consume(SeqPosition seqPosition) {
        writeObject(seqPosition);
    }

    @Override // gnu.lists.PositionConsumer
    public void writePosition(AbstractSequence abstractSequence, int i) {
        writeObject(((NodeTree) abstractSequence).typedValue(i));
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void writeBoolean(boolean z) {
        writeObject(z ? Boolean.TRUE : Boolean.FALSE);
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void writeObject(Object obj) {
        if (obj instanceof Values) {
            Values.writeValues(obj, this);
            return;
        }
        if (obj instanceof KNode) {
            KNode kNode = (KNode) obj;
            writeObject(((NodeTree) kNode.sequence).typedValue(kNode.ipos));
            return;
        }
        b bVar = this.f5538a;
        if (bVar.get(obj, null) != 0) {
            return;
        }
        bVar.put(obj, obj);
        this.base.writeObject(obj);
    }
}
