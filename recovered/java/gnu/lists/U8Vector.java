package gnu.lists;

/* loaded from: classes2.dex */
public class U8Vector extends ByteVector {
    @Override // gnu.lists.SimpleVector
    public int getElementKind() {
        return 17;
    }

    public U8Vector() {
        this.data = ByteVector.empty;
    }

    public U8Vector(int i, byte b2) {
        byte[] bArr = new byte[i];
        this.data = bArr;
        this.size = i;
        while (true) {
            i--;
            if (i < 0) {
                return;
            } else {
                bArr[i] = b2;
            }
        }
    }

    public U8Vector(int i) {
        this.data = new byte[i];
        this.size = i;
    }

    public U8Vector(byte[] bArr) {
        this.data = bArr;
        this.size = bArr.length;
    }

    public U8Vector(Sequence sequence) {
        this.data = new byte[sequence.size()];
        addAll(sequence);
    }

    @Override // gnu.lists.SimpleVector
    public final int intAtBuffer(int i) {
        return this.data[i] & 255;
    }

    @Override // gnu.lists.SimpleVector, gnu.lists.AbstractSequence
    public final Object get(int i) {
        if (i > this.size) {
            throw new IndexOutOfBoundsException();
        }
        return Convert.toObjectUnsigned(this.data[i]);
    }

    @Override // gnu.lists.SimpleVector
    public final Object getBuffer(int i) {
        return Convert.toObjectUnsigned(this.data[i]);
    }

    @Override // gnu.lists.SimpleVector
    public Object setBuffer(int i, Object obj) {
        byte[] bArr = this.data;
        byte b2 = bArr[i];
        bArr[i] = Convert.toByteUnsigned(obj);
        return Convert.toObjectUnsigned(b2);
    }

    @Override // gnu.lists.SimpleVector
    public String getTag() {
        return "u8";
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return SimpleVector.compareToInt(this, (U8Vector) obj);
    }
}
