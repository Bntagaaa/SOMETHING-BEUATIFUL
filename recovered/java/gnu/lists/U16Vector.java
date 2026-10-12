package gnu.lists;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import kotlin.UShort;

/* loaded from: classes2.dex */
public class U16Vector extends SimpleVector implements Externalizable, Comparable {
    short[] data;

    @Override // gnu.lists.SimpleVector
    public int getElementKind() {
        return 19;
    }

    public U16Vector() {
        this.data = S16Vector.empty;
    }

    public U16Vector(int i, short s) {
        short[] sArr = new short[i];
        this.data = sArr;
        this.size = i;
        while (true) {
            i--;
            if (i < 0) {
                return;
            } else {
                sArr[i] = s;
            }
        }
    }

    public U16Vector(int i) {
        this.data = new short[i];
        this.size = i;
    }

    public U16Vector(short[] sArr) {
        this.data = sArr;
        this.size = sArr.length;
    }

    public U16Vector(Sequence sequence) {
        this.data = new short[sequence.size()];
        addAll(sequence);
    }

    @Override // gnu.lists.SimpleVector
    public int getBufferLength() {
        return this.data.length;
    }

    @Override // gnu.lists.SimpleVector
    public void setBufferLength(int i) {
        short[] sArr = this.data;
        int length = sArr.length;
        if (length != i) {
            short[] sArr2 = new short[i];
            if (length < i) {
                i = length;
            }
            System.arraycopy(sArr, 0, sArr2, 0, i);
            this.data = sArr2;
        }
    }

    @Override // gnu.lists.SimpleVector
    public Object getBuffer() {
        return this.data;
    }

    public final short shortAt(int i) {
        if (i > this.size) {
            throw new IndexOutOfBoundsException();
        }
        return this.data[i];
    }

    public final short shortAtBuffer(int i) {
        return this.data[i];
    }

    @Override // gnu.lists.SimpleVector
    public final int intAtBuffer(int i) {
        return this.data[i] & UShort.MAX_VALUE;
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
        short[] sArr = this.data;
        short s = sArr[i];
        sArr[i] = Convert.toShortUnsigned(obj);
        return Convert.toObjectUnsigned(s);
    }

    public final void setShortAt(int i, short s) {
        if (i > this.size) {
            throw new IndexOutOfBoundsException();
        }
        this.data[i] = s;
    }

    public final void setShortAtBuffer(int i, short s) {
        this.data[i] = s;
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
        return "u16";
    }

    @Override // gnu.lists.SimpleVector, gnu.lists.AbstractSequence
    public boolean consumeNext(int i, Consumer consumer) {
        int i2 = i >>> 1;
        if (i2 >= this.size) {
            return false;
        }
        consumer.writeInt(this.data[i2] & UShort.MAX_VALUE);
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
            consumer.writeInt(this.data[i5] & UShort.MAX_VALUE);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return SimpleVector.compareToInt(this, (U16Vector) obj);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        int i = this.size;
        objectOutput.writeInt(i);
        for (int i2 = 0; i2 < i; i2++) {
            objectOutput.writeShort(this.data[i2]);
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        int i = objectInput.readInt();
        short[] sArr = new short[i];
        for (int i2 = 0; i2 < i; i2++) {
            sArr[i2] = objectInput.readShort();
        }
        this.data = sArr;
        this.size = i;
    }
}
