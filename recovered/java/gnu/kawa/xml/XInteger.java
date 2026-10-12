package gnu.kawa.xml;

import gnu.math.IntNum;

/* loaded from: classes2.dex */
public class XInteger extends IntNum {
    private XIntegerType type;

    public XIntegerType getIntegerType() {
        return this.type;
    }

    public XInteger(IntNum intNum, XIntegerType xIntegerType) {
        this.words = intNum.words;
        this.ival = intNum.ival;
        this.type = xIntegerType;
    }
}
