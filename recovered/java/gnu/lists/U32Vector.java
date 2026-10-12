package gnu.lists;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class U32Vector extends SimpleVector implements Externalizable, Comparable {
    int[] data;

    @Override // gnu.lists.SimpleVector
    public int getElementKind() {
        return 19;
    }

    public U32Vector() {
        this.data = S32Vector.empty;
    }

    public U32Vector(int i, int i2) {
        int[] iArr = new int[i];
        this.data = iArr;
        this.size = i;
        while (true) {
            i--;
            if (i < 0) {
                return;
            } else {
                iArr[i] = i2;
            }
        }
    }

    public U32Vector(int i) {
        this.data = new int[i];
        this.size = i;
    }

    public U32Vector(int[] iArr) {
        this.data = iArr;
        this.size = iArr.length;
    }

    public U32Vector(Sequence sequence) {
        this.data = new int[sequence.size()];
        addAll(sequence);
    }

    @Override // gnu.lists.SimpleVector
    public int getBufferLength() {
        return this.data.length;
    }

    @Override // gnu.lists.SimpleVector
    public void setBufferLength(int i) {
        int[] iArr = this.data;
        int length = iArr.length;
        if (length != i) {
            int[] iArr2 = new int[i];
            if (length < i) {
                i = length;
            }
            System.arraycopy(iArr, 0, iArr2, 0, i);
            this.data = iArr2;
        }
    }

    @Override // gnu.lists.SimpleVector
    public Object getBuffer() {
        return this.data;
    }

    @Override // gnu.lists.SimpleVector
    public final int intAtBuffer(int i) {
        return this.data[i];
    }

    @Override // gnu.lists.SimpleVector
    public final long longAtBuffer(int i) {
        return this.data[i] & 4294967295L;
    }

    @Override // gnu.lists.SimpleVector
    public final long longAt(int i) {
        if (i > this.size) {
            throw new IndexOutOfBoundsException();
        }
        return longAtBuffer(i);
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
        int[] iArr = this.data;
        int i2 = iArr[i];
        iArr[i] = Convert.toIntUnsigned(obj);
        return Convert.toObjectUnsigned(i2);
    }

    public final void setIntAt(int i, int i2) {
        if (i > this.size) {
            throw new IndexOutOfBoundsException();
        }
        this.data[i] = i2;
    }

    public final void setIntAtBuffer(int i, int i2) {
        this.data[i] = i2;
    }

    @Override // gnu.lists.SimpleVector
    public void clearBuffer(int i, int i2) {
        while (true) {
            i2--;
            if (i2 < 0) {
                return;
            }
            this.data[i] = 0;
            i++;
        }
    }

    @Override // gnu.lists.SimpleVector
    public String getTag() {
        return "u32";
    }

    @Override // gnu.lists.SimpleVector, gnu.lists.AbstractSequence
    public boolean consumeNext(int i, Consumer consumer) {
        int i2 = i >>> 1;
        if (i2 >= this.size) {
            return false;
        }
        consumer.writeInt(this.data[i2]);
        return true;
    }

    @Override // gnu.lists.SimpleVector, gnu.lists.AbstractSequence
    public void consumePosRange(int i, int i2, Consumer consumer) {
        if (consumer.ignoring()) {
            return;
        }
        int i3 = i2 >>> 1;
        int i4 = this.size;
        if (i3 > i4) {
            i3 = i4;
        }
        for (int i5 = i >>> 1; i5 < i3; i5++) {
            consumer.writeInt(this.data[i5]);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return SimpleVector.compareToLong(this, (U32Vector) obj);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        int i = this.size;
        objectOutput.writeInt(i);
        for (int i2 = 0; i2 < i; i2++) {
            objectOutput.writeInt(this.data[i2]);
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        int i = objectInput.readInt();
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = objectInput.readInt();
        }
        this.data = iArr;
        this.size = i;
    }
}
