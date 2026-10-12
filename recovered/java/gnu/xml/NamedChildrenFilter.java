package gnu.xml;

import gnu.lists.AbstractSequence;
import gnu.lists.Consumable;
import gnu.lists.Consumer;
import gnu.lists.FilterConsumer;
import gnu.lists.SeqPosition;
import gnu.lists.TreeList;
import gnu.mapping.Symbol;

/* loaded from: classes2.dex */
public class NamedChildrenFilter extends FilterConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final String f5510a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5511b;
    public int c;
    public int d;

    public static NamedChildrenFilter make(String str, String str2, Consumer consumer) {
        return new NamedChildrenFilter(str, str2, consumer);
    }

    public NamedChildrenFilter(String str, String str2, Consumer consumer) {
        super(consumer);
        this.f5510a = str;
        this.f5511b = str2;
        this.skipping = true;
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void startDocument() {
        this.c++;
        super.startDocument();
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void endDocument() {
        this.c--;
        super.endDocument();
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void startElement(Object obj) {
        String strIntern;
        String namespaceURI;
        String str;
        if (this.skipping && this.c == 1) {
            if (obj instanceof Symbol) {
                Symbol symbol = (Symbol) obj;
                namespaceURI = symbol.getNamespaceURI();
                strIntern = symbol.getLocalName();
            } else {
                strIntern = obj.toString().intern();
                namespaceURI = "";
            }
            String str2 = this.f5511b;
            if ((str2 == strIntern || str2 == null) && ((str = this.f5510a) == namespaceURI || str == null)) {
                this.skipping = false;
                this.d = this.c;
            }
        }
        super.startElement(obj);
        this.c++;
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void endElement() {
        this.c--;
        super.endElement();
        if (this.skipping || this.d != this.c) {
            return;
        }
        this.skipping = true;
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void writeObject(Object obj) {
        if (obj instanceof SeqPosition) {
            SeqPosition seqPosition = (SeqPosition) obj;
            AbstractSequence abstractSequence = seqPosition.sequence;
            if (abstractSequence instanceof TreeList) {
                ((TreeList) abstractSequence).consumeNext(seqPosition.ipos, this);
                return;
            }
        }
        if (obj instanceof Consumable) {
            ((Consumable) obj).consume(this);
        } else {
            super.writeObject(obj);
        }
    }
}
