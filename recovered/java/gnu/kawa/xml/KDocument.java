package gnu.kawa.xml;

import gnu.xml.NodeTree;
import org.w3c.dom.Attr;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Comment;
import org.w3c.dom.DOMConfiguration;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.EntityReference;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;

/* loaded from: classes2.dex */
public class KDocument extends KNode implements org.w3c.dom.Document {
    @Override // org.w3c.dom.Document
    public DocumentType getDoctype() {
        return null;
    }

    @Override // org.w3c.dom.Document
    public String getDocumentURI() {
        return null;
    }

    @Override // org.w3c.dom.Document
    public Element getElementById(String str) {
        return null;
    }

    @Override // org.w3c.dom.Document
    public String getInputEncoding() {
        return null;
    }

    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 9;
    }

    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public String getNodeValue() {
        return null;
    }

    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public Node getParentNode() {
        return null;
    }

    @Override // org.w3c.dom.Document
    public boolean getStrictErrorChecking() {
        return false;
    }

    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public String getTextContent() {
        return null;
    }

    @Override // gnu.kawa.xml.KNode
    public void getTextContent(StringBuffer stringBuffer) {
    }

    @Override // org.w3c.dom.Document
    public String getXmlEncoding() {
        return null;
    }

    @Override // org.w3c.dom.Document
    public boolean getXmlStandalone() {
        return false;
    }

    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public boolean hasAttributes() {
        return false;
    }

    @Override // org.w3c.dom.Document
    public void normalizeDocument() {
    }

    @Override // org.w3c.dom.Document
    public void setDocumentURI(String str) {
    }

    @Override // org.w3c.dom.Document
    public void setStrictErrorChecking(boolean z) {
    }

    @Override // org.w3c.dom.Document
    public void setXmlStandalone(boolean z) {
    }

    @Override // org.w3c.dom.Document
    public void setXmlVersion(String str) {
    }

    public KDocument(NodeTree nodeTree, int i) {
        super(nodeTree, i);
    }

    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public String getNodeName() {
        return "#document";
    }

    @Override // org.w3c.dom.Document
    public DOMImplementation getImplementation() {
        throw new UnsupportedOperationException("getImplementation not implemented");
    }

    @Override // org.w3c.dom.Document
    public KElement getDocumentElement() {
        int iPosFirstChild = ((NodeTree) this.sequence).posFirstChild(this.ipos);
        while (iPosFirstChild != -1) {
            if (this.sequence.getNextKind(iPosFirstChild) == 36) {
                iPosFirstChild = this.sequence.nextPos(iPosFirstChild);
            } else {
                return (KElement) KNode.make((NodeTree) this.sequence, iPosFirstChild);
            }
        }
        return null;
    }

    @Override // org.w3c.dom.Document
    public Element createElement(String str) {
        throw new UnsupportedOperationException("createElement not implemented");
    }

    @Override // org.w3c.dom.Document
    public DocumentFragment createDocumentFragment() {
        throw new UnsupportedOperationException("createDocumentFragment not implemented");
    }

    @Override // org.w3c.dom.Document
    public Text createTextNode(String str) {
        throw new UnsupportedOperationException("createTextNode not implemented");
    }

    @Override // org.w3c.dom.Document
    public Comment createComment(String str) {
        throw new UnsupportedOperationException("createComment not implemented");
    }

    @Override // org.w3c.dom.Document
    public CDATASection createCDATASection(String str) {
        throw new UnsupportedOperationException("createCDATASection not implemented");
    }

    @Override // org.w3c.dom.Document
    public ProcessingInstruction createProcessingInstruction(String str, String str2) {
        throw new UnsupportedOperationException("createProcessingInstruction not implemented");
    }

    @Override // org.w3c.dom.Document
    public Attr createAttribute(String str) {
        throw new UnsupportedOperationException("createAttribute not implemented");
    }

    @Override // org.w3c.dom.Document
    public EntityReference createEntityReference(String str) {
        throw new UnsupportedOperationException("createEntityReference implemented");
    }

    @Override // org.w3c.dom.Document
    public Node importNode(Node node, boolean z) {
        throw new UnsupportedOperationException("importNode not implemented");
    }

    @Override // org.w3c.dom.Document
    public Element createElementNS(String str, String str2) {
        throw new UnsupportedOperationException("createElementNS not implemented");
    }

    @Override // org.w3c.dom.Document
    public Attr createAttributeNS(String str, String str2) {
        throw new UnsupportedOperationException("createAttributeNS not implemented");
    }

    @Override // org.w3c.dom.Document
    public NodeList getElementsByTagNameNS(String str, String str2) {
        throw new UnsupportedOperationException("getElementsByTagNameNS not implemented yet");
    }

    @Override // org.w3c.dom.Document
    public String getXmlVersion() {
        return "1.1";
    }

    @Override // org.w3c.dom.Document
    public Node renameNode(Node node, String str, String str2) throws DOMException {
        throw new DOMException((short) 9, "renameNode not implemented");
    }

    @Override // org.w3c.dom.Document
    public Node adoptNode(Node node) throws DOMException {
        throw new DOMException((short) 9, "adoptNode not implemented");
    }

    @Override // org.w3c.dom.Document
    public DOMConfiguration getDomConfig() {
        throw new DOMException((short) 9, "getDomConfig not implemented");
    }
}
