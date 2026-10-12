package gnu.kawa.xml;

import gnu.xml.NodeTree;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.TypeInfo;

/* loaded from: classes2.dex */
public class KAttr extends KNode implements Attr {
    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 2;
    }

    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public Node getParentNode() {
        return null;
    }

    @Override // org.w3c.dom.Attr
    public TypeInfo getSchemaTypeInfo() {
        return null;
    }

    @Override // org.w3c.dom.Attr
    public boolean getSpecified() {
        return true;
    }

    @Override // org.w3c.dom.Attr
    public boolean isId() {
        return false;
    }

    public KAttr(NodeTree nodeTree, int i) {
        super(nodeTree, i);
    }

    @Override // org.w3c.dom.Attr
    public String getName() {
        return this.sequence.getNextTypeName(this.ipos);
    }

    @Override // org.w3c.dom.Attr
    public String getValue() {
        return getNodeValue();
    }

    public static Object getObjectValue(NodeTree nodeTree, int i) {
        return nodeTree.getPosNext(i + 10);
    }

    public Object getObjectValue() {
        return getObjectValue((NodeTree) this.sequence, this.ipos);
    }

    @Override // org.w3c.dom.Attr
    public void setValue(String str) throws DOMException {
        throw new DOMException((short) 7, "setValue not supported");
    }

    @Override // org.w3c.dom.Attr
    public Element getOwnerElement() {
        return (Element) super.getParentNode();
    }
}
