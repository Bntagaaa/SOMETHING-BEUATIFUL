package gnu.lists;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.List;

/* loaded from: classes2.dex */
public class FVector extends SimpleVector implements Externalizable, Consumable, Comparable {
    protected static Object[] empty = new Object[0];
    public Object[] data;

    public FVector() {
        this.data = empty;
    }

    public FVector(int i) {
        this.size = i;
        this.data = new Object[i];
    }

    public FVector(int i, Object obj) {
        Object[] objArr = new Object[i];
        if (obj != null) {
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = obj;
            }
        }
        this.data = objArr;
        this.size = i;
    }

    public FVector(Object[] objArr) {
        this.size = objArr.length;
        this.data = objArr;
    }

    public FVector(List list) {
        this.data = new Object[list.size()];
        addAll(list);
    }

    public static FVector make(Object... objArr) {
        return new FVector(objArr);
    }

    @Override // gnu.lists.SimpleVector
    public int getBufferLength() {
        return this.data.length;
    }

    @Override // gnu.lists.SimpleVector
    public void setBufferLength(int i) {
        Object[] objArr = this.data;
        int length = objArr.length;
        if (length != i) {
            Object[] objArr2 = new Object[i];
            if (length < i) {
                i = length;
            }
            System.arraycopy(objArr, 0, objArr2, 0, i);
            this.data = objArr2;
        }
    }

    @Override // gnu.lists.SimpleVector
    public Object getBuffer() {
        return this.data;
    }

    @Override // gnu.lists.SimpleVector
    public void shift(int i, int i2, int i3) {
        Object[] objArr = this.data;
        System.arraycopy(objArr, i, objArr, i2, i3);
    }

    @Override // gnu.lists.SimpleVector
    public final Object getBuffer(int i) {
        return this.data[i];
    }

    @Override // gnu.lists.SimpleVector, gnu.lists.AbstractSequence
    public final Object get(int i) {
        if (i >= this.size) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return this.data[i];
    }

    @Override // gnu.lists.SimpleVector
    public final Object setBuffer(int i, Object obj) {
        Object[] objArr = this.data;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }

    @Override // gnu.lists.SimpleVector
    public void clearBuffer(int i, int i2) {
        Object[] objArr = this.data;
        while (true) {
            i2--;
            if (i2 < 0) {
                return;
            }
            objArr[i] = null;
            i++;
        }
    }

    @Override // gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof FVector)) {
            FVector fVector = (FVector) obj;
            int i = this.size;
            Object[] objArr = fVector.data;
            if (objArr != null && fVector.size == i) {
                Object[] objArr2 = this.data;
                for (int i2 = 0; i2 < i; i2++) {
                    if (!objArr2[i2].equals(objArr[i2])) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        FVector fVector = (FVector) obj;
        Object[] objArr = this.data;
        Object[] objArr2 = fVector.data;
        int i = this.size;
        int i2 = fVector.size;
        int i3 = i > i2 ? i2 : i;
        for (int i4 = 0; i4 < i3; i4++) {
            int iCompareTo = ((Comparable) objArr[i4]).compareTo((Comparable) objArr2[i4]);
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return i - i2;
    }

    public final void setAll(Object obj) {
        Object[] objArr = this.data;
        int i = this.size;
        while (true) {
            i--;
            if (i < 0) {
                return;
            } else {
                objArr[i] = obj;
            }
        }
    }

    @Override // gnu.lists.SimpleVector, gnu.lists.AbstractSequence
    public boolean consumeNext(int i, Consumer consumer) {
        int i2 = i >>> 1;
        if (i2 >= this.size) {
            return false;
        }
        consumer.writeObject(this.data[i2]);
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
            consumer.writeObject(this.data[i5]);
        }
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Consumable
    public void consume(Consumer consumer) {
        consumer.startElement("#vector");
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            consumer.writeObject(this.data[i2]);
        }
        consumer.endElement();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        int i = this.size;
        objectOutput.writeInt(i);
        for (int i2 = 0; i2 < i; i2++) {
            objectOutput.writeObject(this.data[i2]);
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        int i = objectInput.readInt();
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = objectInput.readObject();
        }
        this.size = i;
        this.data = objArr;
    }
}
