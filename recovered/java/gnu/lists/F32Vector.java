package gnu.lists;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class F32Vector extends SimpleVector implements Externalizable, Comparable {
    protected static float[] empty = new float[0];
    float[] data;

    @Override // gnu.lists.SimpleVector
    public int getElementKind() {
        return 25;
    }

    public F32Vector() {
        this.data = empty;
    }

    public F32Vector(int i, float f) {
        float[] fArr = new float[i];
        this.data = fArr;
        this.size = i;
        while (true) {
            i--;
            if (i < 0) {
                return;
            } else {
                fArr[i] = f;
            }
        }
    }

    public F32Vector(int i) {
        this.data = new float[i];
        this.size = i;
    }

    public F32Vector(float[] fArr) {
        this.data = fArr;
        this.size = fArr.length;
    }

    public F32Vector(Sequence sequence) {
        this.data = new float[sequence.size()];
        addAll(sequence);
    }

    @Override // gnu.lists.SimpleVector
    public int getBufferLength() {
        return this.data.length;
    }

    @Override // gnu.lists.SimpleVector
    public void setBufferLength(int i) {
        float[] fArr = this.data;
        int length = fArr.length;
        if (length != i) {
            float[] fArr2 = new float[i];
            if (length < i) {
                i = length;
            }
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.data = fArr2;
        }
    }

    @Override // gnu.lists.SimpleVector
    public Object getBuffer() {
        return this.data;
    }

    @Override // gnu.lists.SimpleVector
    public final int intAtBuffer(int i) {
        return (int) this.data[i];
    }

    public final float floatAt(int i) {
        if (i >= this.size) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.data[i];
    }

    public final float floatAtBuffer(int i) {
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

    public final void setFloatAt(int i, float f) {
        if (i > this.size) {
            throw new IndexOutOfBoundsException();
        }
        this.data[i] = f;
    }

    public final void setFloatAtBuffer(int i, float f) {
        this.data[i] = f;
    }

    @Override // gnu.lists.SimpleVector
    public final Object setBuffer(int i, Object obj) {
        Object object = Convert.toObject(this.data[i]);
        this.data[i] = Convert.toFloat(obj);
        return object;
    }

    @Override // gnu.lists.SimpleVector
    public void clearBuffer(int i, int i2) {
        while (true) {
            i2--;
            if (i2 < 0) {
                return;
            }
            this.data[i] = 0.0f;
            i++;
        }
    }

    @Override // gnu.lists.SimpleVector
    public String getTag() {
        return "f32";
    }

    @Override // gnu.lists.SimpleVector, gnu.lists.AbstractSequence
    public boolean consumeNext(int i, Consumer consumer) {
        int i2 = i >>> 1;
        if (i2 >= this.size) {
            return false;
        }
        consumer.writeFloat(this.data[i2]);
        return true;
    }

    @Override // gnu.lists.SimpleVector, gnu.lists.AbstractSequence
    public void consumePosRange(int i, int i2, Consumer consumer) {
        if (consumer.ignoring()) {
            return;
        }
        int i3 = i2 >>> 1;
        for (int i4 = i >>> 1; i4 < i3; i4++) {
            consumer.writeFloat(this.data[i4]);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        F32Vector f32Vector = (F32Vector) obj;
        float[] fArr = this.data;
        float[] fArr2 = f32Vector.data;
        int i = this.size;
        int i2 = f32Vector.size;
        int i3 = i > i2 ? i2 : i;
        for (int i4 = 0; i4 < i3; i4++) {
            float f = fArr[i4];
            float f2 = fArr2[i4];
            if (f != f2) {
                return f > f2 ? 1 : -1;
            }
        }
        return i - i2;
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        int i = this.size;
        objectOutput.writeInt(i);
        for (int i2 = 0; i2 < i; i2++) {
            objectOutput.writeFloat(this.data[i2]);
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        int i = objectInput.readInt();
        float[] fArr = new float[i];
        for (int i2 = 0; i2 < i; i2++) {
            fArr[i2] = objectInput.readFloat();
        }
        this.data = fArr;
        this.size = i;
    }
}
