package gnu.lists;

import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class GeneralArray extends AbstractSequence implements Array {
    static final int[] zeros = new int[8];
    SimpleVector base;
    int[] dimensions;
    int[] lowBounds;
    int offset;
    boolean simple = true;
    int[] strides;

    public static Array makeSimple(int[] iArr, int[] iArr2, SimpleVector simpleVector) {
        int length = iArr2.length;
        if (iArr == null) {
            iArr = zeros;
            if (length > iArr.length) {
                iArr = new int[length];
            }
        }
        int i = 1;
        if (length == 1 && iArr[0] == 0) {
            return simpleVector;
        }
        GeneralArray generalArray = new GeneralArray();
        int[] iArr3 = new int[length];
        while (true) {
            length--;
            if (length >= 0) {
                iArr3[length] = i;
                i *= iArr2[length];
            } else {
                generalArray.strides = iArr3;
                generalArray.dimensions = iArr2;
                generalArray.lowBounds = iArr;
                generalArray.base = simpleVector;
                return generalArray;
            }
        }
    }

    public GeneralArray() {
    }

    public GeneralArray(int[] iArr) {
        int i = 1;
        int length = iArr.length;
        int[] iArr2 = zeros;
        if (length <= iArr2.length) {
            this.lowBounds = iArr2;
        } else {
            this.lowBounds = new int[length];
        }
        int[] iArr3 = new int[length];
        while (true) {
            length--;
            if (length >= 0) {
                iArr3[length] = i;
                i *= iArr[length];
            } else {
                this.base = new FVector(i);
                this.dimensions = iArr;
                this.offset = 0;
                return;
            }
        }
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Array
    public int rank() {
        return this.dimensions.length;
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Array
    public int getEffectiveIndex(int[] iArr) {
        int i;
        int i2 = this.offset;
        int length = this.dimensions.length;
        while (true) {
            length--;
            if (length < 0) {
                return i2;
            }
            int i3 = iArr[length];
            int i4 = this.lowBounds[length];
            if (i3 < i4 || (i = i3 - i4) >= this.dimensions[length]) {
                break;
            }
            i2 += this.strides[length] * i;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // gnu.lists.AbstractSequence
    public Object get(int i) {
        return getRowMajor(i);
    }

    @Override // gnu.lists.AbstractSequence
    public int createPos(int i, boolean z) {
        int i2 = this.offset;
        int length = this.dimensions.length;
        while (true) {
            length--;
            if (length < 0) {
                return (i2 << 1) | (z ? 1 : 0);
            }
            int i3 = this.dimensions[length];
            int i4 = i % i3;
            i /= i3;
            i2 += this.strides[length] * i4;
        }
    }

    @Override // gnu.lists.Array
    public Object getRowMajor(int i) {
        if (this.simple) {
            return this.base.get(i);
        }
        int i2 = this.offset;
        int length = this.dimensions.length;
        while (true) {
            length--;
            if (length >= 0) {
                int i3 = this.dimensions[length];
                int i4 = i % i3;
                i /= i3;
                i2 += this.strides[length] * i4;
            } else {
                return this.base.get(i2);
            }
        }
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Array
    public Object get(int[] iArr) {
        return this.base.get(getEffectiveIndex(iArr));
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Array
    public Object set(int[] iArr, Object obj) {
        return this.base.set(getEffectiveIndex(iArr), obj);
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Sequence, java.util.List, java.util.Collection, com.google.appinventor.components.runtime.util.YailObject
    public int size() {
        int length = this.dimensions.length;
        int i = 1;
        while (true) {
            length--;
            if (length < 0) {
                return i;
            }
            i *= this.dimensions[length];
        }
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Array
    public int getLowBound(int i) {
        return this.lowBounds[i];
    }

    @Override // gnu.lists.AbstractSequence, gnu.lists.Array
    public int getSize(int i) {
        return this.dimensions[i];
    }

    @Override // gnu.lists.Array
    public Array transpose(int[] iArr, int[] iArr2, int i, int[] iArr3) {
        GeneralArray generalArray1 = (iArr2.length == 1 && iArr[0] == 0) ? new GeneralArray1() : new GeneralArray();
        generalArray1.offset = i;
        generalArray1.strides = iArr3;
        generalArray1.dimensions = iArr2;
        generalArray1.lowBounds = iArr;
        generalArray1.base = this.base;
        generalArray1.simple = false;
        return generalArray1;
    }

    public static void toString(Array array, StringBuffer stringBuffer) {
        stringBuffer.append("#<array");
        int iRank = array.rank();
        for (int i = 0; i < iRank; i++) {
            stringBuffer.append(' ');
            int lowBound = array.getLowBound(i);
            int size = array.getSize(i);
            if (lowBound != 0) {
                stringBuffer.append(lowBound);
                stringBuffer.append(':');
            }
            stringBuffer.append(lowBound + size);
        }
        stringBuffer.append(Typography.greater);
    }

    @Override // gnu.lists.AbstractSequence
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        toString(this, stringBuffer);
        return stringBuffer.toString();
    }
}
