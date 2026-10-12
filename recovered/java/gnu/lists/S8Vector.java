package gnu.lists;

/* loaded from: classes2.dex */
public class S8Vector extends ByteVector {
    @Override // gnu.lists.SimpleVector
    public int getElementKind() {
        return 18;
    }

    public S8Vector() {
        this.data = ByteVector.empty;
    }

    public S8Vector(int i, byte b2) {
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

    public S8Vector(int i) {
        this.data = new byte[i];
        this.size = i;
    }

    public S8Vector(byte[] bArr) {
        this.data = bArr;
        this.size = bArr.length;
    }

    public S8Vector(Sequence sequence) {
        this.data = new byte[sequence.size()];
        addAll(sequence);
    }

    @Override // gnu.lists.SimpleVector
    public final int intAtBuffer(int i) {
        return this.data[i];
    }

    @Override // gnu.lists.SimpleVector, gnu.lists.AbstractSequence
    public final Object get(int i) {
        if (i > this.size) {
            throw new IndexOutOfBoundsException();
        }
        return Convert.toObject(this.data[i]);
    }

    @Override // gnu.lists.SimpleVector
    public final Object getBuffer(int i) {
        return Convert.toObject(this.data[i]);
    }

    @Override // gnu.lists.SimpleVector
    public Object setBuffer(int i, Object obj) {
        byte[] bArr = this.data;
        byte b2 = bArr[i];
        bArr[i] = Convert.toByte(obj);
        return Convert.toObject(b2);
    }

    @Override // gnu.lists.SimpleVector
    public String getTag() {
        return "s8";
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return SimpleVector.compareToInt(this, (S8Vector) obj);
    }
}
