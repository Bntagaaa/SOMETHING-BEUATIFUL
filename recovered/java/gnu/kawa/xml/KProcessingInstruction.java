package gnu.kawa.xml;

import gnu.xml.NodeTree;
import org.w3c.dom.DOMException;
import org.w3c.dom.ProcessingInstruction;

/* loaded from: classes2.dex */
public class KProcessingInstruction extends KNode implements ProcessingInstruction {
    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 7;
    }

    public KProcessingInstruction(NodeTree nodeTree, int i) {
        super(nodeTree, i);
    }

    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public String getNodeName() {
        return getTarget();
    }

    @Override // org.w3c.dom.ProcessingInstruction
    public String getData() {
        return getNodeValue();
    }

    @Override // org.w3c.dom.ProcessingInstruction
    public void setData(String str) throws DOMException {
        throw new DOMException((short) 7, "setData not supported");
    }

    @Override // org.w3c.dom.ProcessingInstruction
    public String getTarget() {
        return ((NodeTree) this.sequence).posTarget(this.ipos);
    }

    public static KProcessingInstruction valueOf(String str, String str2) {
        NodeTree nodeTree = new NodeTree();
        nodeTree.writeProcessingInstruction(str, str2, 0, str2.length());
        return new KProcessingInstruction(nodeTree, 0);
    }
}
