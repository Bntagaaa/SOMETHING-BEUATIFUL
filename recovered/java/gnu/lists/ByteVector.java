package gnu.lists;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public abstract class ByteVector extends SimpleVector implements Externalizable, Comparable {
    protected static byte[] empty = new byte[0];
    byte[] data;

    @Override // gnu.lists.SimpleVector
    public int getBufferLength() {
        return this.data.length;
    }

    @Override // gnu.lists.SimpleVector
    public void setBufferLength(int i) {
        byte[] bArr = this.data;
        int length = bArr.length;
        if (length != i) {
            byte[] bArr2 = new byte[i];
            if (length < i) {
                i = length;
            }
            System.arraycopy(bArr, 0, bArr2, 0, i);
            this.data = bArr2;
        }
    }

    @Override // gnu.lists.SimpleVector
    public Object getBuffer() {
        return this.data;
    }

    public final byte byteAt(int i) {
        if (i > this.size) {
            throw new IndexOutOfBoundsException();
        }
        return this.data[i];
    }

    public final byte byteAtBuffer(int i) {
        return this.data[i];
    }

    @Override // gnu.lists.SimpleVector, gnu.lists.AbstractSequence
    public boolean consumeNext(int i, Consumer consumer) {
        int i2 = i >>> 1;
        if (i2 >= this.size) {
            return false;
        }
        consumer.writeInt(intAtBuffer(i2));
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
            consumer.writeInt(intAtBuffer(i5));
        }
    }

    public final void setByteAt(int i, byte b2) {
        if (i > this.size) {
            throw new IndexOutOfBoundsException();
        }
        this.data[i] = b2;
    }

    public final void setByteAtBuffer(int i, byte b2) {
        this.data[i] = b2;
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

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        int i = this.size;
        objectOutput.writeInt(i);
        for (int i2 = 0; i2 < i; i2++) {
            objectOutput.writeByte(this.data[i2]);
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        int i = objectInput.readInt();
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = objectInput.readByte();
        }
        this.data = bArr;
        this.size = i;
    }
}
