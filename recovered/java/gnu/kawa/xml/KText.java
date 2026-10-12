package gnu.kawa.xml;

import gnu.xml.NodeTree;
import org.w3c.dom.DOMException;
import org.w3c.dom.Text;

/* loaded from: classes2.dex */
public class KText extends KCharacterData implements Text {
    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 3;
    }

    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public boolean hasAttributes() {
        return false;
    }

    @Override // org.w3c.dom.Text
    public boolean isElementContentWhitespace() {
        return false;
    }

    public KText(NodeTree nodeTree, int i) {
        super(nodeTree, i);
    }

    public static KText make(String str) {
        NodeTree nodeTree = new NodeTree();
        nodeTree.append((CharSequence) str);
        return new KText(nodeTree, 0);
    }

    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public String getNodeName() {
        return "#text";
    }

    @Override // org.w3c.dom.Text
    public Text splitText(int i) throws DOMException {
        throw new DOMException((short) 7, "splitText not supported");
    }

    @Override // org.w3c.dom.Text
    public String getWholeText() {
        throw new UnsupportedOperationException("getWholeText not implemented yet");
    }

    @Override // org.w3c.dom.Text
    public Text replaceWholeText(String str) throws DOMException {
        throw new DOMException((short) 7, "splitText not supported");
    }
}
