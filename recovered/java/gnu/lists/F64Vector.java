package gnu.lists;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class F64Vector extends SimpleVector implements Externalizable, Comparable {
    protected static double[] empty = new double[0];
    double[] data;

    @Override // gnu.lists.SimpleVector
    public int getElementKind() {
        return 26;
    }

    public F64Vector() {
        this.data = empty;
    }

    public F64Vector(int i, double d) {
        double[] dArr = new double[i];
        this.data = dArr;
        this.size = i;
        while (true) {
            i--;
            if (i < 0) {
                return;
            } else {
                dArr[i] = d;
            }
        }
    }

    public F64Vector(int i) {
        this.data = new double[i];
        this.size = i;
    }

    public F64Vector(double[] dArr) {
        this.data = dArr;
        this.size = dArr.length;
    }

    public F64Vector(Sequence sequence) {
        this.data = new double[sequence.size()];
        addAll(sequence);
    }

    @Override // gnu.lists.SimpleVector
    public int getBufferLength() {
        return this.data.length;
    }

    @Override // gnu.lists.SimpleVector
    public void setBufferLength(int i) {
        double[] dArr = this.data;
        int length = dArr.length;
        if (length != i) {
            double[] dArr2 = new double[i];
            if (length < i) {
                i = length;
            }
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.data = dArr2;
        }
    }

    @Override // gnu.lists.SimpleVector
    public Object getBuffer() {
        return this.data;
    }

    public final double doubleAt(int i) {
        if (i >= this.size) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.data[i];
    }

    public final double doubleAtBuffer(int i) {
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
    public final int intAtBuffer(int i) {
        return (int) this.data[i];
    }

    public final void setDoubleAt(int i, double d) {
        if (i > this.size) {
            throw new IndexOutOfBoundsException();
        }
        this.data[i] = d;
    }

    public final void setDoubleAtBuffer(int i, double d) {
        this.data[i] = d;
    }

    @Override // gnu.lists.SimpleVector
    public final Object setBuffer(int i, Object obj) {
        Object object = Convert.toObject(this.data[i]);
        this.data[i] = Convert.toDouble(obj);
        return object;
    }

    @Override // gnu.lists.SimpleVector
    public void clearBuffer(int i, int i2) {
        while (true) {
            i2--;
            if (i2 < 0) {
                return;
            }
            this.data[i] = 0.0d;
            i++;
        }
    }

    @Override // gnu.lists.SimpleVector
    public String getTag() {
        return "f64";
    }

    @Override // gnu.lists.SimpleVector, gnu.lists.AbstractSequence
    public boolean consumeNext(int i, Consumer consumer) {
        int i2 = i >>> 1;
        if (i2 >= this.size) {
            return false;
        }
        consumer.writeDouble(this.data[i2]);
        return true;
    }

    @Override // gnu.lists.SimpleVector, gnu.lists.AbstractSequence
    public void consumePosRange(int i, int i2, Consumer consumer) {
        if (consumer.ignoring()) {
            return;
        }
        int i3 = i2 >>> 1;
        for (int i4 = i >>> 1; i4 < i3; i4++) {
            consumer.writeDouble(this.data[i4]);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        F64Vector f64Vector = (F64Vector) obj;
        double[] dArr = this.data;
        double[] dArr2 = f64Vector.data;
        int i = this.size;
        int i2 = f64Vector.size;
        int i3 = i > i2 ? i2 : i;
        for (int i4 = 0; i4 < i3; i4++) {
            double d = dArr[i4];
            double d2 = dArr2[i4];
            if (d != d2) {
                return d > d2 ? 1 : -1;
            }
        }
        return i - i2;
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        int i = this.size;
        objectOutput.writeInt(i);
        for (int i2 = 0; i2 < i; i2++) {
            objectOutput.writeDouble(this.data[i2]);
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        int i = objectInput.readInt();
        double[] dArr = new double[i];
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = objectInput.readDouble();
        }
        this.data = dArr;
        this.size = i;
    }
}
