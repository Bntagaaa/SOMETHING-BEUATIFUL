package gnu.kawa.xml;

import gnu.xml.NodeTree;
import org.w3c.dom.Comment;

/* loaded from: classes2.dex */
public class KComment extends KCharacterData implements Comment {
    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 8;
    }

    public KComment(NodeTree nodeTree, int i) {
        super(nodeTree, i);
    }

    @Override // gnu.kawa.xml.KNode, org.w3c.dom.Node
    public String getNodeName() {
        return "#comment";
    }

    public static KComment valueOf(String str) {
        NodeTree nodeTree = new NodeTree();
        nodeTree.writeComment(str, 0, str.length());
        return new KComment(nodeTree, 0);
    }
}
