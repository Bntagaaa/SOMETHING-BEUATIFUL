package gnu.kawa.xml;

import gnu.xml.NodeTree;
import org.w3c.dom.CDATASection;

/* loaded from: classes2.dex */
public class KCDATASection extends KText implements CDATASection {
    @Override // gnu.kawa.xml.KText, gnu.kawa.xml.KNode, org.w3c.dom.Node
    public short getNodeType() {
        return (short) 4;
    }

    public KCDATASection(NodeTree nodeTree, int i) {
        super(nodeTree, i);
    }

    @Override // gnu.kawa.xml.KText, gnu.kawa.xml.KNode, org.w3c.dom.Node
    public String getNodeName() {
        return "#cdata-section";
    }

    @Override // gnu.kawa.xml.KCharacterData, org.w3c.dom.CharacterData
    public String getData() {
        return getNodeValue();
    }

    @Override // gnu.kawa.xml.KCharacterData, org.w3c.dom.CharacterData
    public int getLength() {
        StringBuffer stringBuffer = new StringBuffer();
        NodeTree nodeTree = (NodeTree) this.sequence;
        nodeTree.stringValue(nodeTree.posToDataIndex(this.ipos), stringBuffer);
        return stringBuffer.length();
    }
}
