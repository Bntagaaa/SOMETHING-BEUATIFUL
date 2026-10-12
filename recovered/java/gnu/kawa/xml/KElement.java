package gnu.kawa.xml;

import gnu.xml.NodeTree;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.w3c.dom.TypeInfo;

/* loaded from: classes2.dex */
public class KElement extends KNode implements Element {
    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 1;
    }

    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public String getNodeValue() {
        return null;
    }

    @Override // org.w3c.dom.Element
    public TypeInfo getSchemaTypeInfo() {
        return null;
    }

    public KElement(NodeTree nodeTree, int i) {
        super(nodeTree, i);
    }

    @Override // org.w3c.dom.Element
    public String getTagName() {
        return this.sequence.getNextTypeName(this.ipos);
    }

    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public boolean hasAttributes() {
        return ((NodeTree) this.sequence).posHasAttributes(this.ipos);
    }

    @Override // org.w3c.dom.Element
    public String getAttribute(String str) {
        if (str == null) {
            str = "";
        }
        NodeTree nodeTree = (NodeTree) this.sequence;
        int attribute = nodeTree.getAttribute(this.ipos, null, str);
        if (attribute == 0) {
            return "";
        }
        return KNode.getNodeValue(nodeTree, attribute);
    }

    @Override // org.w3c.dom.Element
    public void setAttribute(String str, String str2) throws DOMException {
        throw new DOMException((short) 7, "setAttribute not supported");
    }

    @Override // org.w3c.dom.Element
    public void setIdAttribute(String str, boolean z) throws DOMException {
        throw new DOMException((short) 7, "setIdAttribute not supported");
    }

    @Override // org.w3c.dom.Element
    public void setIdAttributeNS(String str, String str2, boolean z) throws DOMException {
        throw new DOMException((short) 7, "setIdAttributeNS not supported");
    }

    @Override // org.w3c.dom.Element
    public void setIdAttributeNode(Attr attr, boolean z) throws DOMException {
        throw new DOMException((short) 7, "setIdAttributeNode not supported");
    }

    @Override // org.w3c.dom.Element
    public void removeAttribute(String str) throws DOMException {
        throw new DOMException((short) 7, "removeAttribute not supported");
    }

    @Override // org.w3c.dom.Element
    public KAttr getAttributeNode(String str) {
        if (str == null) {
            str = "";
        }
        NodeTree nodeTree = (NodeTree) this.sequence;
        int attribute = nodeTree.getAttribute(this.ipos, null, str);
        if (attribute == 0) {
            return null;
        }
        return new KAttr(nodeTree, attribute);
    }

    @Override // org.w3c.dom.Element
    public Attr setAttributeNode(Attr attr) throws DOMException {
        throw new DOMException((short) 7, "setAttributeNode not supported");
    }

    @Override // org.w3c.dom.Element
    public Attr removeAttributeNode(Attr attr) throws DOMException {
        throw new DOMException((short) 7, "removeAttributeNode not supported");
    }

    @Override // org.w3c.dom.Element
    public String getAttributeNS(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        NodeTree nodeTree = (NodeTree) this.sequence;
        int attribute = nodeTree.getAttribute(this.ipos, str, str2);
        if (attribute == 0) {
            return "";
        }
        return KNode.getNodeValue(nodeTree, attribute);
    }

    @Override // org.w3c.dom.Element
    public void setAttributeNS(String str, String str2, String str3) throws DOMException {
        throw new DOMException((short) 7, "setAttributeNS not supported");
    }

    @Override // org.w3c.dom.Element
    public void removeAttributeNS(String str, String str2) throws DOMException {
        throw new DOMException((short) 7, "removeAttributeNS not supported");
    }

    @Override // org.w3c.dom.Element
    public KAttr getAttributeNodeNS(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        NodeTree nodeTree = (NodeTree) this.sequence;
        int attribute = nodeTree.getAttribute(this.ipos, str, str2);
        if (attribute == 0) {
            return null;
        }
        return new KAttr(nodeTree, attribute);
    }

    @Override // org.w3c.dom.Element
    public Attr setAttributeNodeNS(Attr attr) throws DOMException {
        throw new DOMException((short) 7, "setAttributeNodeNS not supported");
    }

    @Override // org.w3c.dom.Element
    public NodeList getElementsByTagNameNS(String str, String str2) {
        throw new UnsupportedOperationException("getElementsByTagNameNS not implemented yet");
    }

    @Override // org.w3c.dom.Element
    public boolean hasAttribute(String str) {
        NodeTree nodeTree = (NodeTree) this.sequence;
        int i = this.ipos;
        if (str == null) {
            str = "";
        }
        return nodeTree.getAttribute(i, null, str) != 0;
    }

    @Override // org.w3c.dom.Element
    public boolean hasAttributeNS(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        return ((NodeTree) this.sequence).getAttribute(this.ipos, str, str2) != 0;
    }
}
