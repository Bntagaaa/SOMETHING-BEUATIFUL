package gnu.lists;

import _COROUTINE.a;
import gnu.text.Char;
import java.io.PrintWriter;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class TreeList extends AbstractSequence implements Appendable, XConsumer, PositionConsumer, Consumable {
    protected static final int BEGIN_ATTRIBUTE_LONG = 61705;
    public static final int BEGIN_ATTRIBUTE_LONG_SIZE = 5;
    protected static final int BEGIN_DOCUMENT = 61712;
    protected static final int BEGIN_ELEMENT_LONG = 61704;
    protected static final int BEGIN_ELEMENT_SHORT = 40960;
    protected static final int BEGIN_ELEMENT_SHORT_INDEX_MAX = 4095;
    public static final int BEGIN_ENTITY = 61714;
    public static final int BEGIN_ENTITY_SIZE = 5;
    static final char BOOL_FALSE = 61696;
    static final char BOOL_TRUE = 61697;
    static final int BYTE_PREFIX = 61440;
    static final int CDATA_SECTION = 61717;
    static final int CHAR_FOLLOWS = 61702;
    static final int COMMENT = 61719;
    protected static final int DOCUMENT_URI = 61720;
    static final int DOUBLE_FOLLOWS = 61701;
    static final int END_ATTRIBUTE = 61706;
    public static final int END_ATTRIBUTE_SIZE = 1;
    protected static final int END_DOCUMENT = 61713;
    protected static final int END_ELEMENT_LONG = 61708;
    protected static final int END_ELEMENT_SHORT = 61707;
    protected static final int END_ENTITY = 61715;
    static final int FLOAT_FOLLOWS = 61700;
    public static final int INT_FOLLOWS = 61698;
    static final int INT_SHORT_ZERO = 49152;
    static final int JOINER = 61718;
    static final int LONG_FOLLOWS = 61699;
    public static final int MAX_CHAR_SHORT = 40959;
    static final int MAX_INT_SHORT = 8191;
    static final int MIN_INT_SHORT = -4096;
    static final char OBJECT_REF_FOLLOWS = 61709;
    static final int OBJECT_REF_SHORT = 57344;
    static final int OBJECT_REF_SHORT_INDEX_MAX = 4095;
    protected static final char POSITION_PAIR_FOLLOWS = 61711;
    static final char POSITION_REF_FOLLOWS = 61710;
    protected static final int PROCESSING_INSTRUCTION = 61716;
    public int attrStart;
    int currentParent;
    public char[] data;
    public int docStart;
    public int gapEnd;
    public int gapStart;
    public Object[] objects;
    public int oindex;

    @Override // gnu.lists.Consumer
    public boolean ignoring() {
        return false;
    }

    public TreeList() {
        this.currentParent = -1;
        resizeObjects();
        this.gapEnd = 200;
        this.data = new char[200];
    }

    public TreeList(TreeList treeList, int i, int i2) {
        this();
        treeList.consumeIRange(i, i2, this);
    }

    public TreeList(TreeList treeList) {
        this(treeList, 0, treeList.data.length);
    }

    @Override // gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public void clear() {
        this.gapStart = 0;
        int length = this.data.length;
        this.gapEnd = length;
        this.attrStart = 0;
        if (length > 1500) {
            this.gapEnd = 200;
            this.data = new char[200];
        }
        this.objects = null;
        this.oindex = 0;
        resizeObjects();
    }

    public void ensureSpace(int i) {
        int i2 = this.gapEnd;
        int i3 = this.gapStart;
        int i4 = i2 - i3;
        if (i > i4) {
            char[] cArr = this.data;
            int length = cArr.length;
            int i5 = (length - i4) + i;
            int i6 = length * 2;
            if (i6 >= i5) {
                i5 = i6;
            }
            char[] cArr2 = new char[i5];
            if (i3 > 0) {
                System.arraycopy(cArr, 0, cArr2, 0, i3);
            }
            int i7 = this.gapEnd;
            int i8 = length - i7;
            if (i8 > 0) {
                System.arraycopy(this.data, i7, cArr2, i5 - i8, i8);
            }
            this.gapEnd = i5 - i8;
            this.data = cArr2;
        }
    }

    public final void resizeObjects() {
        Object[] objArr;
        Object[] objArr2 = this.objects;
        if (objArr2 == null) {
            objArr = new Object[100];
        } else {
            int length = objArr2.length;
            Object[] objArr3 = new Object[length * 2];
            System.arraycopy(objArr2, 0, objArr3, 0, length);
            objArr = objArr3;
        }
        this.objects = objArr;
    }

    public int find(Object obj) {
        if (this.oindex == this.objects.length) {
            resizeObjects();
        }
        Object[] objArr = this.objects;
        int i = this.oindex;
        objArr[i] = obj;
        this.oindex = i + 1;
        return i;
    }

    public final int getIntN(int i) {
        char[] cArr = this.data;
        return (cArr[i + 1] & 65535) | (cArr[i] << 16);
    }

    public final long getLongN(int i) {
        char[] cArr = this.data;
        return ((cArr[i] & 65535) << 48) | ((cArr[i + 1] & 65535) << 32) | ((cArr[i + 2] & 65535) << 16) | (65535 & cArr[i + 3]);
    }

    public final void setIntN(int i, int i2) {
        char[] cArr = this.data;
        cArr[i] = (char) (i2 >> 16);
        cArr[i + 1] = (char) i2;
    }

    @Override // gnu.lists.PositionConsumer
    public void consume(SeqPosition seqPosition) {
        ensureSpace(3);
        int iFind = find(seqPosition.copy());
        char[] cArr = this.data;
        int i = this.gapStart;
        int i2 = i + 1;
        this.gapStart = i2;
        cArr[i] = POSITION_REF_FOLLOWS;
        setIntN(i2, iFind);
        this.gapStart += 2;
    }

    public void writePosition(AbstractSequence abstractSequence, int i) {
        ensureSpace(5);
        this.data[this.gapStart] = POSITION_PAIR_FOLLOWS;
        setIntN(this.gapStart + 1, find(abstractSequence));
        setIntN(this.gapStart + 3, i);
        this.gapStart += 5;
    }

    public void writeObject(Object obj) {
        ensureSpace(3);
        int iFind = find(obj);
        if (iFind < 4096) {
            char[] cArr = this.data;
            int i = this.gapStart;
            this.gapStart = i + 1;
            cArr[i] = (char) (iFind | OBJECT_REF_SHORT);
            return;
        }
        char[] cArr2 = this.data;
        int i2 = this.gapStart;
        int i3 = i2 + 1;
        this.gapStart = i3;
        cArr2[i2] = OBJECT_REF_FOLLOWS;
        setIntN(i3, iFind);
        this.gapStart += 2;
    }

    public void writeDocumentUri(Object obj) {
        ensureSpace(3);
        int iFind = find(obj);
        char[] cArr = this.data;
        int i = this.gapStart;
        int i2 = i + 1;
        this.gapStart = i2;
        cArr[i] = 61720;
        setIntN(i2, iFind);
        this.gapStart += 2;
    }

    public void writeComment(char[] cArr, int i, int i2) {
        ensureSpace(i2 + 3);
        int i3 = this.gapStart;
        this.data[i3] = 61719;
        setIntN(i3 + 1, i2);
        int i4 = i3 + 3;
        System.arraycopy(cArr, i, this.data, i4, i2);
        this.gapStart = i4 + i2;
    }

    public void writeComment(String str, int i, int i2) {
        ensureSpace(i2 + 3);
        int i3 = this.gapStart;
        this.data[i3] = 61719;
        setIntN(i3 + 1, i2);
        int i4 = i3 + 3;
        str.getChars(i, i + i2, this.data, i4);
        this.gapStart = i4 + i2;
    }

    public void writeProcessingInstruction(String str, char[] cArr, int i, int i2) {
        ensureSpace(i2 + 5);
        int i3 = this.gapStart;
        this.data[i3] = 61716;
        setIntN(i3 + 1, find(str));
        setIntN(i3 + 3, i2);
        int i4 = i3 + 5;
        System.arraycopy(cArr, i, this.data, i4, i2);
        this.gapStart = i4 + i2;
    }

    public void writeProcessingInstruction(String str, String str2, int i, int i2) {
        ensureSpace(i2 + 5);
        int i3 = this.gapStart;
        this.data[i3] = 61716;
        setIntN(i3 + 1, find(str));
        setIntN(i3 + 3, i2);
        int i4 = i3 + 5;
        str2.getChars(i, i + i2, this.data, i4);
        this.gapStart = i4 + i2;
    }

    public void startElement(Object obj) {
        startElement(find(obj));
    }

    public void startDocument() {
        ensureSpace(6);
        int i = this.gapEnd - 1;
        this.gapEnd = i;
        int i2 = this.gapStart;
        char[] cArr = this.data;
        cArr[i2] = 61712;
        if (this.docStart != 0) {
            throw new Error("nested document");
        }
        int i3 = i2 + 1;
        this.docStart = i3;
        setIntN(i3, i - cArr.length);
        int i4 = i2 + 3;
        int i5 = this.currentParent;
        setIntN(i4, i5 != -1 ? i5 - i2 : -1);
        this.gapStart = i2 + 5;
        this.currentParent = i2;
        this.data[this.gapEnd] = 61713;
    }

    public void endDocument() {
        int i;
        char[] cArr = this.data;
        int i2 = this.gapEnd;
        if (cArr[i2] != END_DOCUMENT || (i = this.docStart) <= 0 || cArr[this.currentParent] != BEGIN_DOCUMENT) {
            throw new Error("unexpected endDocument");
        }
        this.gapEnd = i2 + 1;
        setIntN(i, (this.gapStart - i) + 1);
        this.docStart = 0;
        char[] cArr2 = this.data;
        int i3 = this.gapStart;
        this.gapStart = i3 + 1;
        cArr2[i3] = 61713;
        int intN = getIntN(this.currentParent + 3);
        if (intN < -1) {
            intN += this.currentParent;
        }
        this.currentParent = intN;
    }

    public void beginEntity(Object obj) {
        if (this.gapStart != 0) {
            return;
        }
        ensureSpace(6);
        this.gapEnd--;
        int i = this.gapStart;
        this.data[i] = 61714;
        setIntN(i + 1, find(obj));
        int i2 = i + 3;
        int i3 = this.currentParent;
        setIntN(i2, i3 != -1 ? i3 - i : -1);
        this.gapStart = i + 5;
        this.currentParent = i;
        this.data[this.gapEnd] = 61715;
    }

    public void endEntity() {
        int i = this.gapEnd;
        int i2 = i + 1;
        char[] cArr = this.data;
        if (i2 == cArr.length && cArr[i] == END_ENTITY) {
            int i3 = this.currentParent;
            if (cArr[i3] != 61714) {
                throw new Error("unexpected endEntity");
            }
            this.gapEnd = i + 1;
            int i4 = this.gapStart;
            this.gapStart = i4 + 1;
            cArr[i4] = 61715;
            int intN = getIntN(i3 + 3);
            if (intN < -1) {
                intN += this.currentParent;
            }
            this.currentParent = intN;
        }
    }

    public void startElement(int i) {
        ensureSpace(10);
        int i2 = this.gapEnd - 7;
        this.gapEnd = i2;
        char[] cArr = this.data;
        int i3 = this.gapStart;
        int i4 = i3 + 1;
        this.gapStart = i4;
        cArr[i3] = 61704;
        setIntN(i4, i2 - cArr.length);
        this.gapStart += 2;
        char[] cArr2 = this.data;
        int i5 = this.gapEnd;
        cArr2[i5] = 61708;
        setIntN(i5 + 1, i);
        setIntN(this.gapEnd + 3, this.gapStart - 3);
        setIntN(this.gapEnd + 5, this.currentParent);
        this.currentParent = this.gapStart - 3;
    }

    public void setElementName(int i, int i2) {
        if (this.data[i] == BEGIN_ELEMENT_LONG) {
            int intN = getIntN(i + 1);
            if (intN < 0) {
                i = this.data.length;
            }
            i += intN;
        }
        if (i < this.gapEnd) {
            throw new Error("setElementName before gapEnd");
        }
        setIntN(i + 1, i2);
    }

    public void endElement() {
        char[] cArr = this.data;
        int i = this.gapEnd;
        if (cArr[i] != END_ELEMENT_LONG) {
            throw new Error("unexpected endElement");
        }
        int intN = getIntN(i + 1);
        int intN2 = getIntN(this.gapEnd + 3);
        int intN3 = getIntN(this.gapEnd + 5);
        this.currentParent = intN3;
        this.gapEnd += 7;
        int i2 = this.gapStart;
        int i3 = i2 - intN2;
        int i4 = intN2 - intN3;
        if (intN < 4095 && i3 < 65536 && i4 < 65536) {
            char[] cArr2 = this.data;
            cArr2[intN2] = (char) (intN | BEGIN_ELEMENT_SHORT);
            char c = (char) i3;
            cArr2[intN2 + 1] = c;
            cArr2[intN2 + 2] = (char) i4;
            cArr2[i2] = 61707;
            cArr2[i2 + 1] = c;
            this.gapStart = i2 + 2;
            return;
        }
        this.data[intN2] = 61704;
        setIntN(intN2 + 1, i3);
        char[] cArr3 = this.data;
        int i5 = this.gapStart;
        cArr3[i5] = 61708;
        setIntN(i5 + 1, intN);
        setIntN(this.gapStart + 3, -i3);
        int i6 = this.gapStart;
        if (intN3 >= i6 || intN2 <= i6) {
            intN3 -= i6;
        }
        setIntN(i6 + 5, intN3);
        this.gapStart += 7;
    }

    public void startAttribute(Object obj) {
        startAttribute(find(obj));
    }

    public void startAttribute(int i) {
        ensureSpace(6);
        this.gapEnd--;
        char[] cArr = this.data;
        int i2 = this.gapStart;
        int i3 = i2 + 1;
        this.gapStart = i3;
        cArr[i2] = 61705;
        if (this.attrStart != 0) {
            throw new Error("nested attribute");
        }
        this.attrStart = i3;
        setIntN(i3, i);
        setIntN(this.gapStart + 2, this.gapEnd - this.data.length);
        this.gapStart += 4;
        this.data[this.gapEnd] = 61706;
    }

    public void setAttributeName(int i, int i2) {
        setIntN(i + 1, i2);
    }

    public void endAttribute() {
        int i = this.attrStart;
        if (i <= 0) {
            return;
        }
        char[] cArr = this.data;
        int i2 = this.gapEnd;
        if (cArr[i2] != END_ATTRIBUTE) {
            throw new Error("unexpected endAttribute");
        }
        this.gapEnd = i2 + 1;
        setIntN(i + 2, (this.gapStart - i) + 1);
        this.attrStart = 0;
        char[] cArr2 = this.data;
        int i3 = this.gapStart;
        this.gapStart = i3 + 1;
        cArr2[i3] = 61706;
    }

    @Override // java.lang.Appendable
    public Consumer append(char c) {
        write(c);
        return this;
    }

    public void write(int i) {
        ensureSpace(3);
        if (i <= 40959) {
            char[] cArr = this.data;
            int i2 = this.gapStart;
            this.gapStart = i2 + 1;
            cArr[i2] = (char) i;
            return;
        }
        if (i < 65536) {
            char[] cArr2 = this.data;
            int i3 = this.gapStart;
            int i4 = i3 + 1;
            this.gapStart = i4;
            cArr2[i3] = 61702;
            this.gapStart = i3 + 2;
            cArr2[i4] = (char) i;
            return;
        }
        Char.print(i, this);
    }

    public void writeBoolean(boolean z) {
        ensureSpace(1);
        char[] cArr = this.data;
        int i = this.gapStart;
        this.gapStart = i + 1;
        cArr[i] = z ? BOOL_TRUE : BOOL_FALSE;
    }

    public void writeByte(int i) {
        ensureSpace(1);
        char[] cArr = this.data;
        int i2 = this.gapStart;
        this.gapStart = i2 + 1;
        cArr[i2] = (char) ((i & 255) + BYTE_PREFIX);
    }

    public void writeInt(int i) {
        ensureSpace(3);
        if (i >= MIN_INT_SHORT && i <= MAX_INT_SHORT) {
            char[] cArr = this.data;
            int i2 = this.gapStart;
            this.gapStart = i2 + 1;
            cArr[i2] = (char) (i + INT_SHORT_ZERO);
            return;
        }
        char[] cArr2 = this.data;
        int i3 = this.gapStart;
        int i4 = i3 + 1;
        this.gapStart = i4;
        cArr2[i3] = 61698;
        setIntN(i4, i);
        this.gapStart += 2;
    }

    public void writeLong(long j) {
        ensureSpace(5);
        char[] cArr = this.data;
        int i = this.gapStart;
        int i2 = i + 1;
        this.gapStart = i2;
        cArr[i] = 61699;
        int i3 = i + 2;
        this.gapStart = i3;
        cArr[i2] = (char) (j >>> 48);
        int i4 = i + 3;
        this.gapStart = i4;
        cArr[i3] = (char) (j >>> 32);
        int i5 = i + 4;
        this.gapStart = i5;
        cArr[i4] = (char) (j >>> 16);
        this.gapStart = i + 5;
        cArr[i5] = (char) j;
    }

    public void writeFloat(float f) {
        ensureSpace(3);
        int iFloatToIntBits = Float.floatToIntBits(f);
        char[] cArr = this.data;
        int i = this.gapStart;
        int i2 = i + 1;
        this.gapStart = i2;
        cArr[i] = 61700;
        int i3 = i + 2;
        this.gapStart = i3;
        cArr[i2] = (char) (iFloatToIntBits >>> 16);
        this.gapStart = i + 3;
        cArr[i3] = (char) iFloatToIntBits;
    }

    public void writeDouble(double d) {
        ensureSpace(5);
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        char[] cArr = this.data;
        int i = this.gapStart;
        int i2 = i + 1;
        this.gapStart = i2;
        cArr[i] = 61701;
        int i3 = i + 2;
        this.gapStart = i3;
        cArr[i2] = (char) (jDoubleToLongBits >>> 48);
        int i4 = i + 3;
        this.gapStart = i4;
        cArr[i3] = (char) (jDoubleToLongBits >>> 32);
        int i5 = i + 4;
        this.gapStart = i5;
        cArr[i4] = (char) (jDoubleToLongBits >>> 16);
        this.gapStart = i + 5;
        cArr[i5] = (char) jDoubleToLongBits;
    }

    public void writeJoiner() {
        ensureSpace(1);
        char[] cArr = this.data;
        int i = this.gapStart;
        this.gapStart = i + 1;
        cArr[i] = 61718;
    }

    public void write(char[] cArr, int i, int i2) {
        if (i2 == 0) {
            writeJoiner();
        }
        ensureSpace(i2);
        while (i2 > 0) {
            int i3 = i + 1;
            char c = cArr[i];
            i2--;
            if (c <= 40959) {
                char[] cArr2 = this.data;
                int i4 = this.gapStart;
                this.gapStart = i4 + 1;
                cArr2[i4] = c;
            } else {
                write(c);
                ensureSpace(i2);
            }
            i = i3;
        }
    }

    public void write(String str) {
        write(str, 0, str.length());
    }

    public void write(CharSequence charSequence, int i, int i2) {
        if (i2 == 0) {
            writeJoiner();
        }
        ensureSpace(i2);
        while (i2 > 0) {
            int i3 = i + 1;
            char cCharAt = charSequence.charAt(i);
            i2--;
            if (cCharAt <= 40959) {
                char[] cArr = this.data;
                int i4 = this.gapStart;
                this.gapStart = i4 + 1;
                cArr[i4] = cCharAt;
            } else {
                write(cCharAt);
                ensureSpace(i2);
            }
            i = i3;
        }
    }

    public void writeCDATA(char[] cArr, int i, int i2) {
        ensureSpace(i2 + 3);
        int i3 = this.gapStart;
        this.data[i3] = 61717;
        setIntN(i3 + 1, i2);
        int i4 = i3 + 3;
        System.arraycopy(cArr, i, this.data, i4, i2);
        this.gapStart = i4 + i2;
    }

    @Override // java.lang.Appendable
    public Consumer append(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "null";
        }
        return append(charSequence, 0, charSequence.length());
    }

    @Override // java.lang.Appendable
    public Consumer append(CharSequence charSequence, int i, int i2) {
        if (charSequence == null) {
            charSequence = "null";
        }
        while (i < i2) {
            append(charSequence.charAt(i));
            i++;
        }
        return this;
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Sequence, java.util.List, java.util.Collection
    public boolean isEmpty() {
        return (this.gapStart == 0 ? this.gapEnd : 0) == this.data.length;
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Sequence, java.util.List, java.util.Collection, com.google.appinventor.components.runtime.util.YailObject
    public int size() {
        int iNextPos = 0;
        int i = 0;
        while (true) {
            iNextPos = nextPos(iNextPos);
            if (iNextPos == 0) {
                return i;
            }
            i++;
        }
    }

    @Override // gnu.lists.AbstractSequence
    public int createPos(int i, boolean z) {
        return createRelativePos(0, i, z);
    }

    public final int posToDataIndex(int i) {
        if (i == -1) {
            return this.data.length;
        }
        int i2 = i >>> 1;
        int i3 = i & 1;
        if (i3 != 0) {
            i2--;
        }
        int i4 = this.gapStart;
        if (i2 >= i4) {
            i2 += this.gapEnd - i4;
        }
        if (i3 == 0) {
            return i2;
        }
        int iNextDataIndex = nextDataIndex(i2);
        if (iNextDataIndex < 0) {
            return this.data.length;
        }
        int i5 = this.gapStart;
        return iNextDataIndex == i5 ? (this.gapEnd - i5) + iNextDataIndex : iNextDataIndex;
    }

    @Override // gnu.lists.AbstractSequence
    public int firstChildPos(int i) {
        int iGotoChildrenStart = gotoChildrenStart(posToDataIndex(i));
        if (iGotoChildrenStart < 0) {
            return 0;
        }
        return iGotoChildrenStart << 1;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:21:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0047 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x003a A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0055 -> B:11:0x0018). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int gotoChildrenStart(int r4) {
        /*
            r3 = this;
            char[] r0 = r3.data
            int r1 = r0.length
            r2 = -1
            if (r4 != r1) goto L7
            return r2
        L7:
            char r0 = r0[r4]
            r1 = 40960(0xa000, float:5.7397E-41)
            if (r0 < r1) goto L13
            r1 = 45055(0xafff, float:6.3136E-41)
            if (r0 <= r1) goto L18
        L13:
            r1 = 61704(0xf108, float:8.6466E-41)
            if (r0 != r1) goto L1b
        L18:
            int r4 = r4 + 3
            goto L29
        L1b:
            r1 = 61712(0xf110, float:8.6477E-41)
            if (r0 == r1) goto L27
            r1 = 61714(0xf112, float:8.648E-41)
            if (r0 != r1) goto L26
            goto L27
        L26:
            return r2
        L27:
            int r4 = r4 + 5
        L29:
            int r0 = r3.gapStart
            if (r4 < r0) goto L31
            int r1 = r3.gapEnd
            int r1 = r1 - r0
            int r4 = r4 + r1
        L31:
            char[] r0 = r3.data
            char r0 = r0[r4]
            r1 = 61705(0xf109, float:8.6467E-41)
            if (r0 != r1) goto L47
            int r0 = r4 + 3
            int r0 = r3.getIntN(r0)
            if (r0 >= 0) goto L45
            char[] r4 = r3.data
            int r4 = r4.length
        L45:
            int r4 = r4 + r0
            goto L29
        L47:
            r1 = 61706(0xf10a, float:8.6469E-41)
            if (r0 == r1) goto L59
            r1 = 61718(0xf116, float:8.6485E-41)
            if (r0 != r1) goto L52
            goto L59
        L52:
            r1 = 61720(0xf118, float:8.6488E-41)
            if (r0 != r1) goto L58
            goto L18
        L58:
            return r4
        L59:
            int r4 = r4 + 1
            goto L29
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.lists.TreeList.gotoChildrenStart(int):int");
    }

    @Override // gnu.lists.AbstractSequence
    public int parentPos(int i) {
        int iPosToDataIndex = posToDataIndex(i);
        do {
            iPosToDataIndex = parentOrEntityI(iPosToDataIndex);
            if (iPosToDataIndex == -1) {
                return -1;
            }
        } while (this.data[iPosToDataIndex] == 61714);
        return iPosToDataIndex << 1;
    }

    public int parentOrEntityPos(int i) {
        int iParentOrEntityI = parentOrEntityI(posToDataIndex(i));
        if (iParentOrEntityI < 0) {
            return -1;
        }
        return iParentOrEntityI << 1;
    }

    public int parentOrEntityI(int i) {
        char c;
        char[] cArr = this.data;
        if (i == cArr.length) {
            return -1;
        }
        char c2 = cArr[i];
        if (c2 == BEGIN_DOCUMENT || c2 == 61714) {
            int intN = getIntN(i + 3);
            return intN >= -1 ? intN : i + intN;
        }
        if (c2 >= BEGIN_ELEMENT_SHORT && c2 <= 45055) {
            char c3 = cArr[i + 2];
            if (c3 == 0) {
                return -1;
            }
            return i - c3;
        }
        if (c2 == BEGIN_ELEMENT_LONG) {
            int intN2 = getIntN(i + 1);
            if (intN2 < 0) {
                i = this.data.length;
            }
            int i2 = intN2 + i;
            int intN3 = getIntN(i2 + 5);
            if (intN3 == 0) {
                return -1;
            }
            return intN3 < 0 ? intN3 + i2 : intN3;
        }
        while (true) {
            if (i == this.gapStart) {
                i = this.gapEnd;
            }
            char[] cArr2 = this.data;
            if (i != cArr2.length && (c = cArr2[i]) != END_DOCUMENT) {
                switch (c) {
                    case END_ATTRIBUTE /* 61706 */:
                        i++;
                        break;
                    case END_ELEMENT_SHORT /* 61707 */:
                        return i - cArr2[i + 1];
                    case END_ELEMENT_LONG /* 61708 */:
                        int intN4 = getIntN(i + 3);
                        return intN4 < 0 ? intN4 + i : intN4;
                    default:
                        i = nextDataIndex(i);
                        if (i >= 0) {
                            break;
                        } else {
                            return -1;
                        }
                }
            } else {
                return -1;
            }
        }
    }

    public int getAttributeCount(int i) {
        int iFirstAttributePos = firstAttributePos(i);
        int i2 = 0;
        while (iFirstAttributePos != 0 && getNextKind(iFirstAttributePos) == 35) {
            i2++;
            iFirstAttributePos = nextPos(iFirstAttributePos);
        }
        return i2;
    }

    @Override // gnu.lists.AbstractSequence
    public boolean gotoAttributesStart(TreePosition treePosition) {
        int iGotoAttributesStart = gotoAttributesStart(treePosition.ipos >> 1);
        if (iGotoAttributesStart < 0) {
            return false;
        }
        treePosition.push(this, iGotoAttributesStart << 1);
        return true;
    }

    @Override // gnu.lists.AbstractSequence
    public int firstAttributePos(int i) {
        int iGotoAttributesStart = gotoAttributesStart(posToDataIndex(i));
        if (iGotoAttributesStart < 0) {
            return 0;
        }
        return iGotoAttributesStart << 1;
    }

    public int gotoAttributesStart(int i) {
        int i2 = this.gapStart;
        if (i >= i2) {
            i += this.gapEnd - i2;
        }
        char[] cArr = this.data;
        if (i == cArr.length) {
            return -1;
        }
        char c = cArr[i];
        if ((c < BEGIN_ELEMENT_SHORT || c > 45055) && c != BEGIN_ELEMENT_LONG) {
            return -1;
        }
        return i + 3;
    }

    @Override // gnu.lists.AbstractSequence
    public Object get(int i) {
        int iNextPos = 0;
        do {
            i--;
            if (i >= 0) {
                iNextPos = nextPos(iNextPos);
            } else {
                return getPosNext(iNextPos);
            }
        } while (iNextPos != 0);
        throw new IndexOutOfBoundsException();
    }

    @Override // gnu.lists.AbstractSequence
    public boolean consumeNext(int i, Consumer consumer) {
        if (!hasNext(i)) {
            return false;
        }
        int iPosToDataIndex = posToDataIndex(i);
        int iNextNodeIndex = nextNodeIndex(iPosToDataIndex, Integer.MAX_VALUE);
        if (iNextNodeIndex == iPosToDataIndex) {
            iNextNodeIndex = nextDataIndex(iPosToDataIndex);
        }
        if (iNextNodeIndex < 0) {
            return true;
        }
        consumeIRange(iPosToDataIndex, iNextNodeIndex, consumer);
        return true;
    }

    @Override // gnu.lists.AbstractSequence
    public void consumePosRange(int i, int i2, Consumer consumer) {
        consumeIRange(posToDataIndex(i), posToDataIndex(i2), consumer);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0015, code lost:
    
        return r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int consumeIRange(int r7, int r8, gnu.lists.Consumer r9) {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.lists.TreeList.consumeIRange(int, int, gnu.lists.Consumer):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x008c, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0034  */
    @Override // gnu.lists.AbstractSequence
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void toString(java.lang.String r18, java.lang.StringBuffer r19) {
        /*
            Method dump skipped, instructions count: 690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.lists.TreeList.toString(java.lang.String, java.lang.StringBuffer):void");
    }

    @Override // gnu.lists.AbstractSequence
    public boolean hasNext(int i) {
        char c;
        int iPosToDataIndex = posToDataIndex(i);
        char[] cArr = this.data;
        return (iPosToDataIndex == cArr.length || (c = cArr[iPosToDataIndex]) == END_ATTRIBUTE || c == END_ELEMENT_SHORT || c == END_ELEMENT_LONG || c == END_DOCUMENT) ? false : true;
    }

    @Override // gnu.lists.AbstractSequence
    public int getNextKind(int i) {
        return getNextKindI(posToDataIndex(i));
    }

    public int getNextKindI(int i) {
        char[] cArr = this.data;
        if (i == cArr.length) {
            return 0;
        }
        char c = cArr[i];
        if (c <= 40959) {
            return 29;
        }
        if (c >= OBJECT_REF_SHORT && c <= 61439) {
            return 32;
        }
        if (c >= BEGIN_ELEMENT_SHORT && c <= 45055) {
            return 33;
        }
        if ((65280 & c) == BYTE_PREFIX) {
            return 28;
        }
        if (c >= 45056 && c <= 57343) {
            return 22;
        }
        switch (c) {
            case 61696:
            case 61697:
                return 27;
            case INT_FOLLOWS /* 61698 */:
                return 22;
            case LONG_FOLLOWS /* 61699 */:
                return 24;
            case FLOAT_FOLLOWS /* 61700 */:
                return 25;
            case DOUBLE_FOLLOWS /* 61701 */:
                return 26;
            case CHAR_FOLLOWS /* 61702 */:
            case BEGIN_DOCUMENT /* 61712 */:
                return 34;
            case 61703:
            case 61709:
            case 61710:
            case 61711:
            case JOINER /* 61718 */:
            default:
                return 32;
            case BEGIN_ELEMENT_LONG /* 61704 */:
                return 33;
            case BEGIN_ATTRIBUTE_LONG /* 61705 */:
                return 35;
            case END_ATTRIBUTE /* 61706 */:
            case END_ELEMENT_SHORT /* 61707 */:
            case END_ELEMENT_LONG /* 61708 */:
            case END_DOCUMENT /* 61713 */:
            case END_ENTITY /* 61715 */:
                return 0;
            case BEGIN_ENTITY /* 61714 */:
                return getNextKind((i + 5) << 1);
            case PROCESSING_INSTRUCTION /* 61716 */:
                return 37;
            case CDATA_SECTION /* 61717 */:
                return 31;
            case COMMENT /* 61719 */:
                return 36;
        }
    }

    @Override // gnu.lists.AbstractSequence
    public Object getNextTypeObject(int i) {
        int intN;
        int iPosToDataIndex = posToDataIndex(i);
        while (true) {
            char[] cArr = this.data;
            if (iPosToDataIndex == cArr.length) {
                return null;
            }
            char c = cArr[iPosToDataIndex];
            if (c != 61714) {
                if (c >= BEGIN_ELEMENT_SHORT && c <= 45055) {
                    intN = c - BEGIN_ELEMENT_SHORT;
                } else if (c == BEGIN_ELEMENT_LONG) {
                    int intN2 = getIntN(iPosToDataIndex + 1);
                    if (intN2 < 0) {
                        iPosToDataIndex = this.data.length;
                    }
                    intN = getIntN(intN2 + iPosToDataIndex + 1);
                } else {
                    if (c != BEGIN_ATTRIBUTE_LONG && c != PROCESSING_INSTRUCTION) {
                        return null;
                    }
                    intN = getIntN(iPosToDataIndex + 1);
                }
                if (intN < 0) {
                    return null;
                }
                return this.objects[intN];
            }
            iPosToDataIndex += 5;
        }
    }

    @Override // gnu.lists.AbstractSequence
    public String getNextTypeName(int i) {
        Object nextTypeObject = getNextTypeObject(i);
        if (nextTypeObject == null) {
            return null;
        }
        return nextTypeObject.toString();
    }

    @Override // gnu.lists.AbstractSequence
    public Object getPosPrevious(int i) {
        if ((i & 1) != 0 && i != -1) {
            return getPosNext(i - 3);
        }
        return super.getPosPrevious(i);
    }

    private Object copyToList(int i, int i2) {
        return new TreeList(this, i, i2);
    }

    public int getPosNextInt(int i) {
        int iPosToDataIndex = posToDataIndex(i);
        char[] cArr = this.data;
        if (iPosToDataIndex < cArr.length) {
            char c = cArr[iPosToDataIndex];
            if (c >= 45056 && c <= 57343) {
                return c - INT_SHORT_ZERO;
            }
            if (c == 61698) {
                return getIntN(iPosToDataIndex + 1);
            }
        }
        return ((Number) getPosNext(i)).intValue();
    }

    @Override // gnu.lists.AbstractSequence
    public Object getPosNext(int i) {
        int iPosToDataIndex = posToDataIndex(i);
        char[] cArr = this.data;
        if (iPosToDataIndex == cArr.length) {
            return Sequence.eofValue;
        }
        char c = cArr[iPosToDataIndex];
        if (c <= 40959) {
            return Convert.toObject(c);
        }
        if (c >= OBJECT_REF_SHORT && c <= 61439) {
            return this.objects[c - OBJECT_REF_SHORT];
        }
        if (c >= BEGIN_ELEMENT_SHORT && c <= 45055) {
            return copyToList(iPosToDataIndex, cArr[iPosToDataIndex + 1] + iPosToDataIndex + 2);
        }
        if (c >= 45056 && c <= 57343) {
            return Convert.toObject(c - INT_SHORT_ZERO);
        }
        switch (c) {
            case 61696:
            case 61697:
                return Convert.toObject(c != 61696);
            case INT_FOLLOWS /* 61698 */:
                return Convert.toObject(getIntN(iPosToDataIndex + 1));
            case LONG_FOLLOWS /* 61699 */:
                return Convert.toObject(getLongN(iPosToDataIndex + 1));
            case FLOAT_FOLLOWS /* 61700 */:
                return Convert.toObject(Float.intBitsToFloat(getIntN(iPosToDataIndex + 1)));
            case DOUBLE_FOLLOWS /* 61701 */:
                return Convert.toObject(Double.longBitsToDouble(getLongN(iPosToDataIndex + 1)));
            case CHAR_FOLLOWS /* 61702 */:
                return Convert.toObject(cArr[iPosToDataIndex + 1]);
            case 61703:
            case BEGIN_ENTITY /* 61714 */:
            case END_ENTITY /* 61715 */:
            case PROCESSING_INSTRUCTION /* 61716 */:
            case CDATA_SECTION /* 61717 */:
            default:
                throw unsupported("getPosNext, code=" + Integer.toHexString(c));
            case BEGIN_ELEMENT_LONG /* 61704 */:
                int intN = getIntN(iPosToDataIndex + 1);
                return copyToList(iPosToDataIndex, intN + (intN < 0 ? this.data.length : iPosToDataIndex) + 7);
            case BEGIN_ATTRIBUTE_LONG /* 61705 */:
                int intN2 = getIntN(iPosToDataIndex + 3);
                return copyToList(iPosToDataIndex, intN2 + (intN2 < 0 ? this.data.length : iPosToDataIndex) + 1);
            case END_ATTRIBUTE /* 61706 */:
            case END_ELEMENT_SHORT /* 61707 */:
            case END_ELEMENT_LONG /* 61708 */:
            case END_DOCUMENT /* 61713 */:
                return Sequence.eofValue;
            case 61709:
            case 61710:
                return this.objects[getIntN(iPosToDataIndex + 1)];
            case 61711:
                return ((AbstractSequence) this.objects[getIntN(iPosToDataIndex + 1)]).getIteratorAtPos(getIntN(iPosToDataIndex + 3));
            case BEGIN_DOCUMENT /* 61712 */:
                int intN3 = getIntN(iPosToDataIndex + 1);
                return copyToList(iPosToDataIndex, intN3 + (intN3 < 0 ? this.data.length : iPosToDataIndex) + 1);
            case JOINER /* 61718 */:
                return "";
        }
    }

    public void stringValue(int i, int i2, StringBuffer stringBuffer) {
        while (i < i2 && i >= 0) {
            i = stringValue(false, i, stringBuffer);
        }
    }

    public int stringValue(int i, StringBuffer stringBuffer) {
        int iNextNodeIndex = nextNodeIndex(i, Integer.MAX_VALUE);
        if (iNextNodeIndex > i) {
            stringValue(i, iNextNodeIndex, stringBuffer);
            return i;
        }
        return stringValue(false, i, stringBuffer);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int stringValue(boolean r10, int r11, java.lang.StringBuffer r12) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.lists.TreeList.stringValue(boolean, int, java.lang.StringBuffer):int");
    }

    @Override // gnu.lists.AbstractSequence
    public int createRelativePos(int i, int i2, boolean z) {
        if (z) {
            if (i2 == 0) {
                if ((i & 1) != 0) {
                    return i;
                }
                if (i == 0) {
                    return 1;
                }
            }
            i2--;
        }
        if (i2 < 0) {
            throw unsupported("backwards createRelativePos");
        }
        int iPosToDataIndex = posToDataIndex(i);
        do {
            i2--;
            if (i2 >= 0) {
                iPosToDataIndex = nextDataIndex(iPosToDataIndex);
            } else {
                int i3 = this.gapEnd;
                if (iPosToDataIndex >= i3) {
                    iPosToDataIndex -= i3 - this.gapStart;
                }
                return z ? ((iPosToDataIndex + 1) << 1) | 1 : iPosToDataIndex << 1;
            }
        } while (iPosToDataIndex >= 0);
        throw new IndexOutOfBoundsException();
    }

    public final int nextNodeIndex(int i, int i2) {
        if ((Integer.MIN_VALUE | i2) == -1) {
            i2 = this.data.length;
        }
        while (true) {
            if (i == this.gapStart) {
                i = this.gapEnd;
            }
            if (i < i2) {
                char c = this.data[i];
                if (c > 40959 && ((c < OBJECT_REF_SHORT || c > 61439) && ((c < 45056 || c > 57343) && (65280 & c) != BYTE_PREFIX))) {
                    if (c < BEGIN_ELEMENT_SHORT || c > 45055) {
                        switch (c) {
                            case BEGIN_ELEMENT_LONG /* 61704 */:
                            case BEGIN_ATTRIBUTE_LONG /* 61705 */:
                            case END_ATTRIBUTE /* 61706 */:
                            case END_ELEMENT_SHORT /* 61707 */:
                            case END_ELEMENT_LONG /* 61708 */:
                            case BEGIN_DOCUMENT /* 61712 */:
                            case END_DOCUMENT /* 61713 */:
                            case END_ENTITY /* 61715 */:
                            case PROCESSING_INSTRUCTION /* 61716 */:
                            case COMMENT /* 61719 */:
                                break;
                            case 61709:
                            case 61710:
                            case 61711:
                            case CDATA_SECTION /* 61717 */:
                            default:
                                i = nextDataIndex(i);
                                continue;
                            case BEGIN_ENTITY /* 61714 */:
                                i += 5;
                                continue;
                            case JOINER /* 61718 */:
                                break;
                            case DOCUMENT_URI /* 61720 */:
                                i += 3;
                                continue;
                        }
                    }
                }
                i++;
            }
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0079, code lost:
    
        throw new java.lang.Error(_COROUTINE.a.d(r6, "unknown code:"));
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00f4 A[PHI: r5
      0x00f4: PHI (r5v21 int) = (r5v4 int), (r5v5 int), (r5v6 int), (r5v11 int), (r5v13 int), (r5v14 int), (r5v17 int), (r5v19 int), (r5v26 int) binds: [B:86:0x00f2, B:83:0x00ed, B:80:0x00e8, B:77:0x00e3, B:56:0x00a9, B:54:0x00a4, B:50:0x0094, B:47:0x0085, B:40:0x0068] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0102  */
    @Override // gnu.lists.AbstractSequence
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int nextMatching(int r9, gnu.lists.ItemPredicate r10, int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.lists.TreeList.nextMatching(int, gnu.lists.ItemPredicate, int, boolean):int");
    }

    @Override // gnu.lists.AbstractSequence
    public int nextPos(int i) {
        int iPosToDataIndex = posToDataIndex(i);
        if (iPosToDataIndex == this.data.length) {
            return 0;
        }
        int i2 = this.gapEnd;
        if (iPosToDataIndex >= i2) {
            iPosToDataIndex -= i2 - this.gapStart;
        }
        return (iPosToDataIndex << 1) + 3;
    }

    public final int nextDataIndex(int i) {
        if (i == this.gapStart) {
            i = this.gapEnd;
        }
        char[] cArr = this.data;
        if (i == cArr.length) {
            return -1;
        }
        int i2 = i + 1;
        char c = cArr[i];
        if (c > 40959 && ((c < OBJECT_REF_SHORT || c > 61439) && (c < 45056 || c > 57343))) {
            if (c >= BEGIN_ELEMENT_SHORT && c <= 45055) {
                return cArr[i2] + i2 + 1;
            }
            switch (c) {
                case 61696:
                case 61697:
                case JOINER /* 61718 */:
                    break;
                case INT_FOLLOWS /* 61698 */:
                case FLOAT_FOLLOWS /* 61700 */:
                case 61709:
                case 61710:
                    return i + 3;
                case LONG_FOLLOWS /* 61699 */:
                case DOUBLE_FOLLOWS /* 61701 */:
                    return i + 5;
                case CHAR_FOLLOWS /* 61702 */:
                    return i + 2;
                case 61703:
                default:
                    throw new Error("unknown code:" + Integer.toHexString(c));
                case BEGIN_ELEMENT_LONG /* 61704 */:
                    int intN = getIntN(i2);
                    if (intN < 0) {
                        i = this.data.length;
                    }
                    return intN + i + 7;
                case BEGIN_ATTRIBUTE_LONG /* 61705 */:
                    int intN2 = getIntN(i + 3);
                    if (intN2 < 0) {
                        i = this.data.length;
                    }
                    return intN2 + i + 1;
                case END_ATTRIBUTE /* 61706 */:
                case END_ELEMENT_SHORT /* 61707 */:
                case END_ELEMENT_LONG /* 61708 */:
                case END_DOCUMENT /* 61713 */:
                case END_ENTITY /* 61715 */:
                    return -1;
                case 61711:
                    return i + 5;
                case BEGIN_DOCUMENT /* 61712 */:
                    int intN3 = getIntN(i2);
                    if (intN3 < 0) {
                        i = this.data.length;
                    }
                    return intN3 + i + 1;
                case BEGIN_ENTITY /* 61714 */:
                    int iNextDataIndex = i + 5;
                    while (true) {
                        if (iNextDataIndex == this.gapStart) {
                            iNextDataIndex = this.gapEnd;
                        }
                        char[] cArr2 = this.data;
                        if (iNextDataIndex == cArr2.length) {
                            return -1;
                        }
                        if (cArr2[iNextDataIndex] == END_ENTITY) {
                            return iNextDataIndex + 1;
                        }
                        iNextDataIndex = nextDataIndex(iNextDataIndex);
                    }
                case PROCESSING_INSTRUCTION /* 61716 */:
                    i2 = i + 3;
                    break;
                case CDATA_SECTION /* 61717 */:
                case COMMENT /* 61719 */:
                    break;
            }
            return getIntN(i2) + i2 + 2;
        }
        return i2;
    }

    public Object documentUriOfPos(int i) {
        int iPosToDataIndex = posToDataIndex(i);
        char[] cArr = this.data;
        if (iPosToDataIndex != cArr.length && cArr[iPosToDataIndex] == BEGIN_DOCUMENT) {
            int i2 = iPosToDataIndex + 5;
            if (i2 == this.gapStart) {
                i2 = this.gapEnd;
            }
            if (i2 < cArr.length && cArr[i2] == DOCUMENT_URI) {
                return this.objects[getIntN(i2 + 1)];
            }
        }
        return null;
    }

    @Override // gnu.lists.AbstractSequence
    public int compare(int i, int i2) {
        int iPosToDataIndex = posToDataIndex(i);
        int iPosToDataIndex2 = posToDataIndex(i2);
        if (iPosToDataIndex < iPosToDataIndex2) {
            return -1;
        }
        return iPosToDataIndex > iPosToDataIndex2 ? 1 : 0;
    }

    @Override // gnu.lists.AbstractSequence
    public int getIndexDifference(int i, int i2) {
        boolean z;
        int iPosToDataIndex = posToDataIndex(i2);
        int iPosToDataIndex2 = posToDataIndex(i);
        int i3 = 0;
        if (iPosToDataIndex > iPosToDataIndex2) {
            z = true;
            iPosToDataIndex = iPosToDataIndex2;
            iPosToDataIndex2 = iPosToDataIndex;
        } else {
            z = false;
        }
        while (iPosToDataIndex < iPosToDataIndex2) {
            iPosToDataIndex = nextDataIndex(iPosToDataIndex);
            i3++;
        }
        return z ? -i3 : i3;
    }

    @Override // gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public int hashCode() {
        return System.identityHashCode(this);
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Consumable
    public void consume(Consumer consumer) {
        consumeIRange(0, this.data.length, consumer);
    }

    public void statistics() {
        PrintWriter printWriter = new PrintWriter(System.out);
        statistics(printWriter);
        printWriter.flush();
    }

    public void statistics(PrintWriter printWriter) {
        printWriter.print("data array length: ");
        printWriter.println(this.data.length);
        printWriter.print("data array gap: ");
        printWriter.println(this.gapEnd - this.gapStart);
        printWriter.print("object array length: ");
        printWriter.println(this.objects.length);
    }

    public void dump() {
        PrintWriter printWriter = new PrintWriter(System.out);
        dump(printWriter);
        printWriter.flush();
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println(getClass().getName() + " @" + Integer.toHexString(System.identityHashCode(this)) + " gapStart:" + this.gapStart + " gapEnd:" + this.gapEnd + " length:" + this.data.length);
        dump(printWriter, 0, this.data.length);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void dump(PrintWriter printWriter, int i, int i2) {
        int intN;
        int i3 = i;
        int i4 = 0;
        while (i3 < i2) {
            if (i3 < this.gapStart || i3 >= this.gapEnd) {
                char c = this.data[i3];
                StringBuilder sbO = a.o(i3, "", ": 0x");
                sbO.append(Integer.toHexString(c));
                sbO.append('=');
                sbO.append((int) ((short) c));
                printWriter.print(sbO.toString());
                i4--;
                if (i4 < 0) {
                    if (c <= 40959) {
                        if (c >= ' ' && c < 127) {
                            StringBuilder sb = new StringBuilder("='");
                            sb.append(c);
                            sb.append("'");
                            printWriter.print(sb.toString());
                        } else if (c == '\n') {
                            printWriter.print("='\\n'");
                        } else {
                            printWriter.print("='\\u" + Integer.toHexString(c) + "'");
                        }
                    } else if (c < OBJECT_REF_SHORT || c > 61439) {
                        if (c >= BEGIN_ELEMENT_SHORT && c <= 45055) {
                            int i5 = c - BEGIN_ELEMENT_SHORT;
                            StringBuilder sbN = a.n(this.data[i3 + 1] + i3, i5, "=BEGIN_ELEMENT_SHORT end:", " index#", "=<");
                            sbN.append(this.objects[i5]);
                            sbN.append(Typography.greater);
                            printWriter.print(sbN.toString());
                        } else if (c < 45056 || c > 57343) {
                            switch (c) {
                                case 61696:
                                    printWriter.print("= false");
                                    break;
                                case 61697:
                                    printWriter.print("= true");
                                    break;
                                case INT_FOLLOWS /* 61698 */:
                                    printWriter.print("=INT_FOLLOWS value:" + getIntN(i3 + 1));
                                    break;
                                case LONG_FOLLOWS /* 61699 */:
                                    printWriter.print("=LONG_FOLLOWS value:" + getLongN(i3 + 1));
                                    i4 = 4;
                                    break;
                                case FLOAT_FOLLOWS /* 61700 */:
                                    printWriter.write("=FLOAT_FOLLOWS value:" + Float.intBitsToFloat(getIntN(i3 + 1)));
                                    break;
                                case DOUBLE_FOLLOWS /* 61701 */:
                                    printWriter.print("=DOUBLE_FOLLOWS value:" + Double.longBitsToDouble(getLongN(i3 + 1)));
                                    i4 = 4;
                                    break;
                                case CHAR_FOLLOWS /* 61702 */:
                                    printWriter.print("=CHAR_FOLLOWS");
                                    i4 = 1;
                                    break;
                                case BEGIN_ELEMENT_LONG /* 61704 */:
                                    int intN2 = getIntN(i3 + 1);
                                    int length = intN2 + (intN2 < 0 ? this.data.length : i3);
                                    printWriter.print("=BEGIN_ELEMENT_LONG end:");
                                    printWriter.print(length);
                                    int intN3 = getIntN(length + 1);
                                    printWriter.print(" -> #");
                                    printWriter.print(intN3);
                                    if (intN3 >= 0 && intN3 + 1 < this.objects.length) {
                                        printWriter.print("=<" + this.objects[intN3] + Typography.greater);
                                        break;
                                    } else {
                                        printWriter.print("=<out-of-bounds>");
                                        break;
                                    }
                                    break;
                                case BEGIN_ATTRIBUTE_LONG /* 61705 */:
                                    int intN4 = getIntN(i3 + 1);
                                    StringBuilder sbO2 = a.o(intN4, "=BEGIN_ATTRIBUTE name:", "=");
                                    sbO2.append(this.objects[intN4]);
                                    printWriter.print(sbO2.toString());
                                    int intN5 = getIntN(i3 + 3);
                                    printWriter.print(" end:" + (intN5 + (intN5 < 0 ? this.data.length : i3)));
                                    i4 = 4;
                                    break;
                                case END_ATTRIBUTE /* 61706 */:
                                    printWriter.print("=END_ATTRIBUTE");
                                    break;
                                case END_ELEMENT_SHORT /* 61707 */:
                                    printWriter.print("=END_ELEMENT_SHORT begin:");
                                    int i6 = i3 - this.data[i3 + 1];
                                    printWriter.print(i6);
                                    int i7 = this.data[i6] - BEGIN_ELEMENT_SHORT;
                                    printWriter.print(" -> #");
                                    printWriter.print(i7);
                                    printWriter.print("=<");
                                    printWriter.print(this.objects[i7]);
                                    printWriter.print(Typography.greater);
                                    i4 = 1;
                                    break;
                                case END_ELEMENT_LONG /* 61708 */:
                                    int intN6 = getIntN(i3 + 1);
                                    StringBuilder sbO3 = a.o(intN6, "=END_ELEMENT_LONG name:", "=<");
                                    sbO3.append(this.objects[intN6]);
                                    sbO3.append(Typography.greater);
                                    printWriter.print(sbO3.toString());
                                    int intN7 = getIntN(i3 + 3);
                                    if (intN7 < 0) {
                                        intN7 += i3;
                                    }
                                    printWriter.print(" begin:" + intN7);
                                    int intN8 = getIntN(i3 + 5);
                                    if (intN8 < 0) {
                                        intN8 += i3;
                                    }
                                    printWriter.print(" parent:" + intN8);
                                    i4 = 6;
                                    break;
                                case 61711:
                                    printWriter.print("=POSITION_PAIR_FOLLOWS seq:");
                                    int intN9 = getIntN(i3 + 1);
                                    printWriter.print(intN9);
                                    printWriter.print('=');
                                    Object obj = this.objects[intN9];
                                    printWriter.print(obj == null ? null : obj.getClass().getName());
                                    printWriter.print('@');
                                    if (obj == null) {
                                        printWriter.print("null");
                                    } else {
                                        printWriter.print(Integer.toHexString(System.identityHashCode(obj)));
                                    }
                                    printWriter.print(" ipos:");
                                    printWriter.print(getIntN(i3 + 3));
                                    i4 = 4;
                                    break;
                                case BEGIN_DOCUMENT /* 61712 */:
                                    int intN10 = getIntN(i3 + 1);
                                    int length2 = intN10 < 0 ? this.data.length : i3;
                                    printWriter.print("=BEGIN_DOCUMENT end:");
                                    printWriter.print(intN10 + length2);
                                    printWriter.print(" parent:");
                                    printWriter.print(getIntN(i3 + 3));
                                    i4 = 4;
                                    break;
                                case END_DOCUMENT /* 61713 */:
                                    printWriter.print("=END_DOCUMENT");
                                    break;
                                case BEGIN_ENTITY /* 61714 */:
                                    int intN11 = getIntN(i3 + 1);
                                    printWriter.print("=BEGIN_ENTITY base:");
                                    printWriter.print(intN11);
                                    printWriter.print(" parent:");
                                    printWriter.print(getIntN(i3 + 3));
                                    i4 = 4;
                                    break;
                                case END_ENTITY /* 61715 */:
                                    printWriter.print("=END_ENTITY");
                                    break;
                                case PROCESSING_INSTRUCTION /* 61716 */:
                                    printWriter.print("=PROCESSING_INSTRUCTION: ");
                                    printWriter.print(this.objects[getIntN(i3 + 1)]);
                                    printWriter.print(" '");
                                    int intN12 = getIntN(i3 + 3);
                                    printWriter.write(this.data, i3 + 5, intN12);
                                    printWriter.print('\'');
                                    i4 = intN12 + 4;
                                    break;
                                case CDATA_SECTION /* 61717 */:
                                    printWriter.print("=CDATA: '");
                                    intN = getIntN(i3 + 1);
                                    printWriter.write(this.data, i3 + 3, intN);
                                    printWriter.print('\'');
                                    i4 = intN + 2;
                                    break;
                                case JOINER /* 61718 */:
                                    printWriter.print("= joiner");
                                    break;
                                case COMMENT /* 61719 */:
                                    printWriter.print("=COMMENT: '");
                                    intN = getIntN(i3 + 1);
                                    printWriter.write(this.data, i3 + 3, intN);
                                    printWriter.print('\'');
                                    i4 = intN + 2;
                                    break;
                                case DOCUMENT_URI /* 61720 */:
                                    printWriter.print("=DOCUMENT_URI: ");
                                    printWriter.print(this.objects[getIntN(i3 + 1)]);
                                    break;
                            }
                        } else {
                            printWriter.print("= INT_SHORT:" + (c - INT_SHORT_ZERO));
                        }
                        i4 = 2;
                    } else {
                        int i8 = c - OBJECT_REF_SHORT;
                        Object obj2 = this.objects[i8];
                        printWriter.print("=Object#" + i8 + '=' + obj2 + ':' + obj2.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj2)));
                    }
                }
                printWriter.println();
                if (i4 > 0) {
                    i3 += i4;
                    i4 = 0;
                }
            }
            i3++;
        }
    }
}
