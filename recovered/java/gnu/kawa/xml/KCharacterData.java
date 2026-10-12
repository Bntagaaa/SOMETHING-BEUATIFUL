package gnu.kawa.xml;

import gnu.xml.NodeTree;
import org.w3c.dom.CharacterData;
import org.w3c.dom.DOMException;

/* loaded from: classes2.dex */
public abstract class KCharacterData extends KNode implements CharacterData {
    public KCharacterData(NodeTree nodeTree, int i) {
        super(nodeTree, i);
    }

    public int getLength() {
        StringBuffer stringBuffer = new StringBuffer();
        NodeTree nodeTree = (NodeTree) this.sequence;
        nodeTree.stringValue(nodeTree.posToDataIndex(this.ipos), stringBuffer);
        return stringBuffer.length();
    }

    public String getData() {
        return getNodeValue();
    }

    @Override // org.w3c.dom.CharacterData
    public void setData(String str) throws DOMException {
        throw new DOMException((short) 7, "setData not supported");
    }

    @Override // org.w3c.dom.CharacterData
    public String substringData(int i, int i2) throws DOMException {
        String data = getData();
        if (i < 0 || i2 < 0 || i + i2 >= data.length()) {
            throw new DOMException((short) 1, "invalid index to substringData");
        }
        return data.substring(i, i2);
    }

    @Override // org.w3c.dom.CharacterData
    public void appendData(String str) throws DOMException {
        throw new DOMException((short) 7, "appendData not supported");
    }

    @Override // org.w3c.dom.CharacterData
    public void insertData(int i, String str) throws DOMException {
        replaceData(i, 0, str);
    }

    @Override // org.w3c.dom.CharacterData
    public void deleteData(int i, int i2) throws DOMException {
        replaceData(i, i2, "");
    }

    @Override // org.w3c.dom.CharacterData
    public void replaceData(int i, int i2, String str) throws DOMException {
        throw new DOMException((short) 7, "replaceData not supported");
    }
}
