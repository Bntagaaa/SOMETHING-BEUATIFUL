package gnu.kawa.xml;

import gnu.lists.AbstractSequence;
import gnu.lists.Consumable;
import gnu.lists.Consumer;
import gnu.lists.PositionConsumer;
import gnu.lists.SeqPosition;
import gnu.lists.TreePosition;
import gnu.mapping.CharArrayOutPort;
import gnu.mapping.Namespace;
import gnu.mapping.Symbol;
import gnu.text.Path;
import gnu.xml.NodeTree;
import gnu.xml.XMLPrinter;
import java.io.IOException;
import org.w3c.dom.DOMException;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.UserDataHandler;

/* loaded from: classes2.dex */
public abstract class KNode extends SeqPosition implements Node, Consumable {
    @Override // org.w3c.dom.Node
    public Object getFeature(String str, String str2) {
        return null;
    }

    public abstract short getNodeType();

    @Override // org.w3c.dom.Node
    public Object getUserData(String str) {
        return null;
    }

    public boolean hasAttributes() {
        return false;
    }

    @Override // org.w3c.dom.Node
    public boolean isSupported(String str, String str2) {
        return false;
    }

    @Override // org.w3c.dom.Node
    public void normalize() {
    }

    public KNode(NodeTree nodeTree, int i) {
        super(nodeTree, i);
    }

    public static Object atomicValue(Object obj) {
        if (!(obj instanceof KNode)) {
            return obj;
        }
        KNode kNode = (KNode) obj;
        return ((NodeTree) kNode.sequence).typedValue(kNode.ipos);
    }

    public static KNode coerce(Object obj) {
        if (obj instanceof KNode) {
            return (KNode) obj;
        }
        if (obj instanceof NodeTree) {
            NodeTree nodeTree = (NodeTree) obj;
            return make(nodeTree, nodeTree.startPos());
        }
        if (!(obj instanceof SeqPosition) || (obj instanceof TreePosition)) {
            return null;
        }
        SeqPosition seqPosition = (SeqPosition) obj;
        AbstractSequence abstractSequence = seqPosition.sequence;
        if (abstractSequence instanceof NodeTree) {
            return make((NodeTree) abstractSequence, seqPosition.ipos);
        }
        return null;
    }

    public static KNode make(NodeTree nodeTree, int i) {
        int iPosToDataIndex = nodeTree.posToDataIndex(i);
        while (true) {
            char[] cArr = nodeTree.data;
            if (iPosToDataIndex >= cArr.length || cArr[iPosToDataIndex] != 61714) {
                break;
            }
            iPosToDataIndex += 5;
            if (iPosToDataIndex == nodeTree.gapStart) {
                iPosToDataIndex = nodeTree.gapEnd;
            }
            i = iPosToDataIndex << 1;
        }
        int nextKindI = nodeTree.getNextKindI(nodeTree.posToDataIndex(i));
        if (nextKindI != 0) {
            if (nextKindI != 31) {
                switch (nextKindI) {
                    case 33:
                        return new KElement(nodeTree, i);
                    case 34:
                        return new KDocument(nodeTree, i);
                    case 35:
                        return new KAttr(nodeTree, i);
                    case 36:
                        return new KComment(nodeTree, i);
                    case 37:
                        return new KProcessingInstruction(nodeTree, i);
                }
            }
            return new KCDATASection(nodeTree, i);
        }
        if (!nodeTree.isEmpty()) {
            return null;
        }
        return new KText(nodeTree, i);
    }

    @Override // gnu.lists.SeqPosition
    public KNode copy() {
        AbstractSequence abstractSequence = this.sequence;
        return make((NodeTree) abstractSequence, abstractSequence.copyPos(getPos()));
    }

    public static KNode make(NodeTree nodeTree) {
        return make(nodeTree, 0);
    }

    public String getNodeName() {
        return this.sequence.getNextTypeName(this.ipos);
    }

    public Symbol getNodeSymbol() {
        Object nextTypeObject = ((NodeTree) this.sequence).getNextTypeObject(this.ipos);
        if (nextTypeObject == null) {
            return null;
        }
        if (nextTypeObject instanceof Symbol) {
            return (Symbol) nextTypeObject;
        }
        return Namespace.EmptyNamespace.getSymbol(nextTypeObject.toString().intern());
    }

    public Object getNodeNameObject() {
        return ((NodeTree) this.sequence).getNextTypeObject(this.ipos);
    }

    @Override // org.w3c.dom.Node
    public String getNamespaceURI() {
        return ((NodeTree) this.sequence).posNamespaceURI(this.ipos);
    }

    @Override // org.w3c.dom.Node
    public String getPrefix() {
        return ((NodeTree) this.sequence).posPrefix(this.ipos);
    }

    @Override // org.w3c.dom.Node
    public String getLocalName() {
        return ((NodeTree) this.sequence).posLocalName(this.ipos);
    }

    public static String getNodeValue(NodeTree nodeTree, int i) {
        StringBuffer stringBuffer = new StringBuffer();
        getNodeValue(nodeTree, i, stringBuffer);
        return stringBuffer.toString();
    }

    public static void getNodeValue(NodeTree nodeTree, int i, StringBuffer stringBuffer) {
        nodeTree.stringValue(nodeTree.posToDataIndex(i), stringBuffer);
    }

    public String getNodeValue() {
        StringBuffer stringBuffer = new StringBuffer();
        getNodeValue(stringBuffer);
        return stringBuffer.toString();
    }

    public void getNodeValue(StringBuffer stringBuffer) {
        getNodeValue((NodeTree) this.sequence, this.ipos, stringBuffer);
    }

    @Override // org.w3c.dom.Node
    public boolean hasChildNodes() {
        return ((NodeTree) this.sequence).posFirstChild(this.ipos) >= 0;
    }

    public String getTextContent() {
        StringBuffer stringBuffer = new StringBuffer();
        getTextContent(stringBuffer);
        return stringBuffer.toString();
    }

    public void getTextContent(StringBuffer stringBuffer) {
        getNodeValue(stringBuffer);
    }

    public Node getParentNode() {
        int iParentPos = this.sequence.parentPos(this.ipos);
        if (iParentPos == -1) {
            return null;
        }
        return make((NodeTree) this.sequence, iParentPos);
    }

    @Override // org.w3c.dom.Node
    public Node getPreviousSibling() {
        int iParentPos = this.sequence.parentPos(this.ipos);
        if (iParentPos == -1) {
            iParentPos = 0;
        }
        int iPosToDataIndex = ((NodeTree) this.sequence).posToDataIndex(this.ipos);
        int iFirstChildPos = this.sequence.firstChildPos(iParentPos);
        while (true) {
            int iNextPos = this.sequence.nextPos(iFirstChildPos);
            if (iNextPos == 0 || ((NodeTree) this.sequence).posToDataIndex(iNextPos) == iPosToDataIndex) {
                break;
            }
            iFirstChildPos = iNextPos;
        }
        if (iFirstChildPos == 0) {
            return null;
        }
        return make((NodeTree) this.sequence, iFirstChildPos);
    }

    @Override // org.w3c.dom.Node
    public Node getNextSibling() {
        int iNextPos = ((NodeTree) this.sequence).nextPos(this.ipos);
        if (iNextPos == 0) {
            return null;
        }
        return make((NodeTree) this.sequence, iNextPos);
    }

    @Override // org.w3c.dom.Node
    public Node getFirstChild() {
        return make((NodeTree) this.sequence, ((NodeTree) this.sequence).posFirstChild(this.ipos));
    }

    @Override // org.w3c.dom.Node
    public Node getLastChild() {
        int iFirstChildPos = this.sequence.firstChildPos(this.ipos);
        int i = 0;
        while (iFirstChildPos != 0) {
            i = iFirstChildPos;
            iFirstChildPos = this.sequence.nextPos(iFirstChildPos);
        }
        if (i == 0) {
            return null;
        }
        return make((NodeTree) this.sequence, i);
    }

    @Override // org.w3c.dom.Node
    public NodeList getChildNodes() {
        SortedNodes sortedNodes = new SortedNodes();
        int iFirstChildPos = this.sequence.firstChildPos(this.ipos);
        while (iFirstChildPos != 0) {
            sortedNodes.writePosition(this.sequence, iFirstChildPos);
            iFirstChildPos = this.sequence.nextPos(iFirstChildPos);
        }
        return sortedNodes;
    }

    public NodeList getElementsByTagName(String str) {
        throw new UnsupportedOperationException("getElementsByTagName not implemented yet");
    }

    @Override // org.w3c.dom.Node
    public void setNodeValue(String str) throws DOMException {
        throw new DOMException((short) 7, "setNodeValue not supported");
    }

    @Override // org.w3c.dom.Node
    public void setPrefix(String str) throws DOMException {
        throw new DOMException((short) 7, "setPrefix not supported");
    }

    @Override // org.w3c.dom.Node
    public Node insertBefore(Node node, Node node2) throws DOMException {
        throw new DOMException((short) 7, "insertBefore not supported");
    }

    @Override // org.w3c.dom.Node
    public Node replaceChild(Node node, Node node2) throws DOMException {
        throw new DOMException((short) 7, "replaceChild not supported");
    }

    @Override // org.w3c.dom.Node
    public Node removeChild(Node node) throws DOMException {
        throw new DOMException((short) 7, "removeChild not supported");
    }

    @Override // org.w3c.dom.Node
    public Node appendChild(Node node) throws DOMException {
        throw new DOMException((short) 7, "appendChild not supported");
    }

    @Override // org.w3c.dom.Node
    public void setTextContent(String str) throws DOMException {
        throw new DOMException((short) 7, "setTextContent not supported");
    }

    @Override // org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        if (!z) {
            throw new UnsupportedOperationException("shallow cloneNode not implemented");
        }
        NodeTree nodeTree = new NodeTree();
        ((NodeTree) this.sequence).consumeNext(this.ipos, nodeTree);
        return make(nodeTree);
    }

    @Override // org.w3c.dom.Node
    public org.w3c.dom.Document getOwnerDocument() {
        if (this.sequence.getNextKind(this.ipos) == 34) {
            return new KDocument((NodeTree) this.sequence, 0);
        }
        return null;
    }

    @Override // org.w3c.dom.Node
    public NamedNodeMap getAttributes() {
        throw new UnsupportedOperationException("getAttributes not implemented yet");
    }

    @Override // org.w3c.dom.Node
    public boolean isDefaultNamespace(String str) {
        return ((NodeTree) this.sequence).posIsDefaultNamespace(this.ipos, str);
    }

    @Override // org.w3c.dom.Node
    public String lookupNamespaceURI(String str) {
        return ((NodeTree) this.sequence).posLookupNamespaceURI(this.ipos, str);
    }

    @Override // org.w3c.dom.Node
    public String lookupPrefix(String str) {
        return ((NodeTree) this.sequence).posLookupPrefix(this.ipos, str);
    }

    @Override // org.w3c.dom.Node
    public String getBaseURI() {
        Path pathBaseUriOfPos = ((NodeTree) this.sequence).baseUriOfPos(this.ipos, true);
        if (pathBaseUriOfPos == null) {
            return null;
        }
        return pathBaseUriOfPos.toString();
    }

    public Path baseURI() {
        return ((NodeTree) this.sequence).baseUriOfPos(this.ipos, true);
    }

    @Override // org.w3c.dom.Node
    public short compareDocumentPosition(Node node) throws DOMException {
        if (!(node instanceof KNode)) {
            throw new DOMException((short) 9, "other Node is a ".concat(node.getClass().getName()));
        }
        KNode kNode = (KNode) node;
        AbstractSequence abstractSequence = kNode.sequence;
        AbstractSequence abstractSequence2 = this.sequence;
        return (short) (abstractSequence2 == abstractSequence ? abstractSequence.compare(this.ipos, kNode.ipos) : abstractSequence2.stableCompare(abstractSequence));
    }

    @Override // org.w3c.dom.Node
    public boolean isSameNode(Node node) {
        if (!(node instanceof KNode)) {
            return false;
        }
        KNode kNode = (KNode) node;
        AbstractSequence abstractSequence = this.sequence;
        if (abstractSequence != kNode.sequence) {
            return false;
        }
        return abstractSequence.equals(this.ipos, kNode.ipos);
    }

    @Override // org.w3c.dom.Node
    public boolean isEqualNode(Node node) {
        throw new UnsupportedOperationException("getAttributesisEqualNode not implemented yet");
    }

    @Override // gnu.lists.SeqPosition
    public String toString() throws IOException {
        CharArrayOutPort charArrayOutPort = new CharArrayOutPort();
        XMLPrinter xMLPrinter = new XMLPrinter(charArrayOutPort);
        ((NodeTree) this.sequence).consumeNext(this.ipos, xMLPrinter);
        xMLPrinter.close();
        charArrayOutPort.close();
        return charArrayOutPort.toString();
    }

    @Override // gnu.lists.Consumable
    public void consume(Consumer consumer) {
        if (consumer instanceof PositionConsumer) {
            ((PositionConsumer) consumer).consume(this);
        } else {
            ((NodeTree) this.sequence).consumeNext(this.ipos, consumer);
        }
    }

    @Override // org.w3c.dom.Node
    public Object setUserData(String str, Object obj, UserDataHandler userDataHandler) {
        throw new UnsupportedOperationException("setUserData not implemented yet");
    }
}
