package gnu.lists;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class SimpleVector extends AbstractSequence implements Sequence, Array {
    public int size;

    public abstract void clearBuffer(int i, int i2);

    @Override // gnu.lists.AbstractSequence
    public int createPos(int i, boolean z) {
        return (i << 1) | (z ? 1 : 0);
    }

    public abstract Object getBuffer();

    public abstract Object getBuffer(int i);

    public abstract int getBufferLength();

    public int getElementKind() {
        return 32;
    }

    public String getTag() {
        return null;
    }

    @Override // gnu.lists.AbstractSequence
    public boolean isAfterPos(int i) {
        return (i & 1) != 0;
    }

    public abstract Object setBuffer(int i, Object obj);

    public abstract void setBufferLength(int i);

    @Override // gnu.lists.AbstractSequence, gnu.lists.Sequence, java.util.List, java.util.Collection, com.google.appinventor.components.runtime.util.YailObject
    public final int size() {
        return this.size;
    }

    public void setSize(int i) {
        int i2 = this.size;
        this.size = i;
        if (i < i2) {
            clearBuffer(i, i2 - i);
            return;
        }
        int bufferLength = getBufferLength();
        if (i > bufferLength) {
            int i3 = bufferLength >= 16 ? bufferLength * 2 : 16;
            if (i <= i3) {
                i = i3;
            }
            setBufferLength(i);
        }
    }

    public void resizeShift(int i, int i2, int i3, int i4) {
        int i5 = i4 - i3;
        int bufferLength = getBufferLength();
        int i6 = (bufferLength - (i2 - i)) + i5;
        if (i6 > bufferLength) {
            setBufferLength(i6);
            this.size = i6;
        }
        int i7 = i - i3;
        if (i7 >= 0) {
            int i8 = bufferLength - i2;
            shift(i2, i6 - i8, i8);
            if (i7 > 0) {
                shift(i3, i4, i7);
            }
        } else {
            int i9 = i6 - i4;
            shift(bufferLength - i9, i4, i9);
            shift(i2, i, i3 - i);
        }
        clearBuffer(i3, i5);
    }

    @Override // gnu.lists.AbstractSequence
    public int nextIndex(int i) {
        return i == -1 ? this.size : i >>> 1;
    }

    @Override // gnu.lists.AbstractSequence
    public int nextPos(int i) {
        int i2;
        if (i == -1 || (i2 = i >>> 1) == this.size) {
            return 0;
        }
        return (i2 << 1) + 3;
    }

    @Override // gnu.lists.AbstractSequence
    public Object get(int i) {
        if (i >= this.size) {
            throw new IndexOutOfBoundsException();
        }
        return getBuffer(i);
    }

    @Override // gnu.lists.AbstractSequence
    public Object getPosNext(int i) {
        int i2 = i >>> 1;
        return i2 >= this.size ? Sequence.eofValue : getBuffer(i2);
    }

    public int intAtBuffer(int i) {
        return Convert.toInt(getBuffer(i));
    }

    public int intAt(int i) {
        if (i >= this.size) {
            throw new IndexOutOfBoundsException();
        }
        return intAtBuffer(i);
    }

    public long longAt(int i) {
        if (i >= this.size) {
            throw new IndexOutOfBoundsException();
        }
        return longAtBuffer(i);
    }

    public long longAtBuffer(int i) {
        return Convert.toLong(getBuffer(i));
    }

    @Override // gnu.lists.Array
    public Object getRowMajor(int i) {
        return get(i);
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Sequence, java.util.List
    public Object set(int i, Object obj) {
        if (i >= this.size) {
            throw new IndexOutOfBoundsException();
        }
        Object buffer = getBuffer(i);
        setBuffer(i, obj);
        return buffer;
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Sequence
    public void fill(Object obj) {
        int i = this.size;
        while (true) {
            i--;
            if (i < 0) {
                return;
            } else {
                setBuffer(i, obj);
            }
        }
    }

    @Override // gnu.lists.AbstractSequence
    public void fillPosRange(int i, int i2, Object obj) {
        int i3 = i2 == -1 ? this.size : i2 >>> 1;
        for (int i4 = i == -1 ? this.size : i >>> 1; i4 < i3; i4++) {
            setBuffer(i4, obj);
        }
    }

    @Override // gnu.lists.AbstractSequence
    public void fill(int i, int i2, Object obj) {
        if (i < 0 || i2 > this.size) {
            throw new IndexOutOfBoundsException();
        }
        while (i < i2) {
            setBuffer(i, obj);
            i++;
        }
    }

    public void shift(int i, int i2, int i3) {
        Object buffer = getBuffer();
        System.arraycopy(buffer, i, buffer, i2, i3);
    }

    @Override // gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public boolean add(Object obj) {
        add(this.size, obj);
        return true;
    }

    @Override // gnu.lists.AbstractSequence
    public int addPos(int i, Object obj) {
        int i2 = i >>> 1;
        add(i2, obj);
        return (i2 << 1) + 3;
    }

    @Override // gnu.lists.AbstractSequence, java.util.List
    public void add(int i, Object obj) {
        int i2 = this.size + 1;
        this.size = i2;
        int bufferLength = getBufferLength();
        if (i2 > bufferLength) {
            setBufferLength(bufferLength >= 16 ? bufferLength * 2 : 16);
        }
        this.size = i2;
        if (i2 != i) {
            shift(i, i + 1, i2 - i);
        }
        set(i, obj);
    }

    @Override // gnu.lists.AbstractSequence, java.util.List
    public boolean addAll(int i, Collection collection) {
        int size = collection.size();
        setSize(this.size + size);
        shift(i, i + size, (this.size - size) - i);
        Iterator it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            set(i, it.next());
            i++;
            z = true;
        }
        return z;
    }

    @Override // gnu.lists.AbstractSequence
    public void removePosRange(int i, int i2) {
        int i3 = i >>> 1;
        int i4 = i2 >>> 1;
        if (i3 >= i4) {
            return;
        }
        int i5 = this.size;
        if (i4 > i5) {
            i4 = i5;
        }
        shift(i4, i3, i5 - i4);
        int i6 = i4 - i3;
        int i7 = this.size - i6;
        this.size = i7;
        clearBuffer(i7, i6);
    }

    @Override // gnu.lists.AbstractSequence
    public void removePos(int i, int i2) {
        int i3;
        int i4 = i >>> 1;
        int i5 = this.size;
        if (i4 > i5) {
            i4 = i5;
        }
        if (i2 >= 0) {
            i3 = i4 + i2;
        } else {
            int i6 = i4 + i2;
            i2 = -i2;
            i3 = i4;
            i4 = i6;
        }
        if (i4 < 0 || i3 >= i5) {
            throw new IndexOutOfBoundsException();
        }
        shift(i3, i4, i5 - i3);
        int i7 = this.size - i2;
        this.size = i7;
        clearBuffer(i7, i2);
    }

    @Override // gnu.lists.AbstractSequence, java.util.List
    public Object remove(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException();
        }
        Object obj = get(i);
        shift(i + 1, i, 1);
        int i2 = this.size - 1;
        this.size = i2;
        clearBuffer(i2, 1);
        return obj;
    }

    @Override // gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        shift(iIndexOf + 1, iIndexOf, 1);
        int i = this.size - 1;
        this.size = i;
        clearBuffer(i, 1);
        return true;
    }

    @Override // gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public boolean removeAll(Collection collection) {
        int i = 0;
        boolean z = false;
        for (int i2 = 0; i2 < this.size; i2++) {
            Object obj = get(i2);
            if (collection.contains(obj)) {
                z = true;
            } else {
                if (z) {
                    set(i, obj);
                }
                i++;
            }
        }
        setSize(i);
        return z;
    }

    @Override // gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public boolean retainAll(Collection collection) {
        int i = 0;
        boolean z = false;
        for (int i2 = 0; i2 < this.size; i2++) {
            Object obj = get(i2);
            if (collection.contains(obj)) {
                if (z) {
                    set(i, obj);
                }
                i++;
            } else {
                z = true;
            }
        }
        setSize(i);
        return z;
    }

    @Override // gnu.lists.AbstractSequence, java.util.List, java.util.Collection
    public void clear() {
        setSize(0);
    }

    public static int compareToInt(SimpleVector simpleVector, SimpleVector simpleVector2) {
        int i = simpleVector.size;
        int i2 = simpleVector2.size;
        int i3 = i > i2 ? i2 : i;
        for (int i4 = 0; i4 < i3; i4++) {
            int iIntAtBuffer = simpleVector.intAtBuffer(i4);
            int iIntAtBuffer2 = simpleVector2.intAtBuffer(i4);
            if (11 != iIntAtBuffer2) {
                return iIntAtBuffer > iIntAtBuffer2 ? 1 : -1;
            }
        }
        return i - i2;
    }

    public static int compareToLong(SimpleVector simpleVector, SimpleVector simpleVector2) {
        int i = simpleVector.size;
        int i2 = simpleVector2.size;
        int i3 = i > i2 ? i2 : i;
        for (int i4 = 0; i4 < i3; i4++) {
            long jLongAtBuffer = simpleVector.longAtBuffer(i4);
            long jLongAtBuffer2 = simpleVector2.longAtBuffer(i4);
            if (jLongAtBuffer != jLongAtBuffer2) {
                return jLongAtBuffer > jLongAtBuffer2 ? 1 : -1;
            }
        }
        return i - i2;
    }

    public void consume(int i, int i2, Consumer consumer) {
        consumePosRange(i << 1, (i + i2) << 1, consumer);
    }

    @Override // gnu.lists.AbstractSequence
    public boolean consumeNext(int i, Consumer consumer) {
        int i2 = i >>> 1;
        if (i2 >= this.size) {
            return false;
        }
        consumer.writeObject(getBuffer(i2));
        return true;
    }

    @Override // gnu.lists.AbstractSequence
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
            consumer.writeObject(getBuffer(i5));
        }
    }

    @Override // gnu.lists.AbstractSequence
    public int getNextKind(int i) {
        if (hasNext(i)) {
            return getElementKind();
        }
        return 0;
    }

    @Override // gnu.lists.Array
    public Array transpose(int[] iArr, int[] iArr2, int i, int[] iArr3) {
        GeneralArray generalArray = new GeneralArray();
        generalArray.strides = iArr3;
        generalArray.dimensions = iArr2;
        generalArray.lowBounds = iArr;
        generalArray.offset = i;
        generalArray.base = this;
        generalArray.simple = false;
        return generalArray;
    }
}
