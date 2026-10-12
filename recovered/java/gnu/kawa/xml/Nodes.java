package gnu.kawa.xml;

import gnu.lists.AbstractSequence;
import gnu.lists.Consumer;
import gnu.lists.SeqPosition;
import gnu.lists.Sequence;
import gnu.lists.TreeList;
import gnu.mapping.Values;
import gnu.xml.NodeTree;
import gnu.xml.XMLFilter;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes2.dex */
public class Nodes extends Values implements NodeList {
    static final int POS_SIZE = 5;
    int count;
    XMLFilter curFragment;
    NodeTree curNode;
    boolean inAttribute;
    int nesting = 0;

    @Override // gnu.lists.TreeList, gnu.lists.PositionConsumer
    public void writePosition(AbstractSequence abstractSequence, int i) {
        this.count++;
        super.writePosition(abstractSequence, i);
    }

    @Override // gnu.lists.TreeList
    public int find(Object obj) {
        int i = this.gapStart;
        if (i > 0) {
            int intN = getIntN(i - 4);
            if (this.objects[intN] == obj) {
                return intN;
            }
        }
        int i2 = this.gapEnd;
        if (i2 < this.data.length) {
            int intN2 = getIntN(i2 + 1);
            if (this.objects[intN2] == obj) {
                return intN2;
            }
        }
        return super.find(obj);
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void writeObject(Object obj) {
        XMLFilter xMLFilter = this.curFragment;
        if (xMLFilter != null) {
            if (this.nesting == 0 && ((obj instanceof SeqPosition) || (obj instanceof TreeList))) {
                finishFragment();
            } else {
                xMLFilter.writeObject(obj);
                return;
            }
        }
        if (obj instanceof SeqPosition) {
            SeqPosition seqPosition = (SeqPosition) obj;
            writePosition(seqPosition.sequence, seqPosition.ipos);
        } else if (obj instanceof TreeList) {
            writePosition((TreeList) obj, 0);
        } else {
            handleNonNode();
            this.curFragment.writeObject(obj);
        }
    }

    public void maybeStartTextNode() {
        if (this.curFragment == null) {
            throw new IllegalArgumentException("non-node where node required");
        }
    }

    public void handleNonNode() {
        if (this.curFragment == null) {
            throw new ClassCastException("atomic value where node is required");
        }
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void writeFloat(float f) {
        handleNonNode();
        this.curFragment.writeFloat(f);
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void writeDouble(double d) {
        handleNonNode();
        this.curFragment.writeDouble(d);
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void writeLong(long j) {
        handleNonNode();
        this.curFragment.writeLong(j);
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void writeInt(int i) {
        handleNonNode();
        this.curFragment.writeInt(i);
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void writeBoolean(boolean z) {
        handleNonNode();
        this.curFragment.writeBoolean(z);
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void write(int i) {
        maybeStartTextNode();
        this.curFragment.write(i);
    }

    @Override // gnu.lists.TreeList, java.lang.Appendable
    public Consumer append(CharSequence charSequence, int i, int i2) {
        maybeStartTextNode();
        this.curFragment.write(charSequence, i, i2);
        return this;
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void write(char[] cArr, int i, int i2) {
        maybeStartTextNode();
        this.curFragment.write(cArr, i, i2);
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void write(CharSequence charSequence, int i, int i2) {
        maybeStartTextNode();
        this.curFragment.write(charSequence, i, i2);
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void write(String str) {
        maybeStartTextNode();
        this.curFragment.write(str);
    }

    private void maybeStartNonTextNode() {
        if (this.curFragment != null && this.nesting == 0) {
            finishFragment();
        }
        if (this.curFragment == null) {
            startFragment();
        }
        this.nesting++;
    }

    private void maybeEndNonTextNode() {
        int i = this.nesting - 1;
        this.nesting = i;
        if (i == 0) {
            finishFragment();
        }
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void startElement(Object obj) {
        maybeStartNonTextNode();
        this.curFragment.startElement(obj);
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void endElement() {
        this.curFragment.endElement();
        maybeEndNonTextNode();
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void startAttribute(Object obj) {
        maybeStartNonTextNode();
        this.curFragment.startAttribute(obj);
        this.inAttribute = true;
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void endAttribute() {
        if (this.inAttribute) {
            this.inAttribute = false;
            this.curFragment.endAttribute();
            maybeEndNonTextNode();
        }
    }

    @Override // gnu.lists.TreeList, gnu.lists.XConsumer
    public void writeComment(char[] cArr, int i, int i2) {
        maybeStartNonTextNode();
        this.curFragment.writeComment(cArr, i, i2);
        maybeEndNonTextNode();
    }

    @Override // gnu.lists.TreeList, gnu.lists.XConsumer
    public void writeCDATA(char[] cArr, int i, int i2) {
        maybeStartNonTextNode();
        this.curFragment.writeCDATA(cArr, i, i2);
    }

    @Override // gnu.lists.TreeList, gnu.lists.XConsumer
    public void writeProcessingInstruction(String str, char[] cArr, int i, int i2) {
        maybeStartNonTextNode();
        this.curFragment.writeProcessingInstruction(str, cArr, i, i2);
        maybeEndNonTextNode();
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void startDocument() {
        maybeStartNonTextNode();
        this.curFragment.startDocument();
    }

    @Override // gnu.lists.TreeList, gnu.lists.Consumer
    public void endDocument() {
        this.curFragment.endDocument();
        maybeEndNonTextNode();
    }

    @Override // gnu.lists.TreeList, gnu.lists.XConsumer
    public void beginEntity(Object obj) {
        maybeStartNonTextNode();
        this.curFragment.beginEntity(obj);
    }

    @Override // gnu.lists.TreeList, gnu.lists.XConsumer
    public void endEntity() {
        this.curFragment.endEntity();
        maybeEndNonTextNode();
    }

    public void startFragment() {
        NodeTree nodeTree = new NodeTree();
        this.curNode = nodeTree;
        this.curFragment = new XMLFilter(nodeTree);
        writePosition(this.curNode, 0);
    }

    public void finishFragment() {
        this.curNode = null;
        this.curFragment = null;
    }

    @Override // gnu.lists.TreeList, gnu.lists.AbstractSequence, gnu.lists.Sequence, java.util.List, java.util.Collection, com.google.appinventor.components.runtime.util.YailObject
    public int size() {
        return this.count;
    }

    @Override // org.w3c.dom.NodeList
    public int getLength() {
        return this.count;
    }

    @Override // gnu.lists.TreeList, gnu.lists.AbstractSequence
    public Object get(int i) {
        int i2 = i * 5;
        int i3 = this.gapStart;
        if (i2 >= i3) {
            i2 += this.gapEnd - i3;
        }
        if (i2 >= 0) {
            char[] cArr = this.data;
            if (i2 < cArr.length) {
                if (cArr[i2] != 61711) {
                    throw new RuntimeException("internal error - unexpected data");
                }
                return KNode.make((NodeTree) this.objects[getIntN(i2 + 1)], getIntN(i2 + 3));
            }
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // org.w3c.dom.NodeList
    public Node item(int i) {
        if (i >= this.count) {
            return null;
        }
        return (Node) get(i);
    }

    @Override // gnu.lists.TreeList, gnu.lists.AbstractSequence
    public Object getPosNext(int i) {
        int iPosToDataIndex = posToDataIndex(i);
        char[] cArr = this.data;
        if (iPosToDataIndex == cArr.length) {
            return Sequence.eofValue;
        }
        if (cArr[iPosToDataIndex] != 61711) {
            throw new RuntimeException("internal error - unexpected data");
        }
        return KNode.make((NodeTree) this.objects[getIntN(iPosToDataIndex + 1)], getIntN(iPosToDataIndex + 3));
    }

    public AbstractSequence getSeq(int i) {
        int i2 = i * 5;
        int i3 = this.gapStart;
        if (i2 >= i3) {
            i2 += this.gapEnd - i3;
        }
        if (i2 < 0) {
            return null;
        }
        char[] cArr = this.data;
        if (i2 >= cArr.length) {
            return null;
        }
        if (cArr[i2] != 61711) {
            throw new RuntimeException("internal error - unexpected data");
        }
        return (AbstractSequence) this.objects[getIntN(i2 + 1)];
    }

    public int getPos(int i) {
        int i2 = i * 5;
        int i3 = this.gapStart;
        if (i2 >= i3) {
            i2 += this.gapEnd - i3;
        }
        if (this.data[i2] != 61711) {
            throw new RuntimeException("internal error - unexpected data");
        }
        return getIntN(i2 + 3);
    }

    public static KNode root(NodeTree nodeTree, int i) {
        int i2 = 0;
        if (nodeTree.gapStart > 5 && nodeTree.data[0] == 61714) {
            i2 = 10;
        }
        return KNode.make(nodeTree, i2);
    }
}
