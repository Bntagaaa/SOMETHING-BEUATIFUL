package gnu.kawa.functions;

import gnu.lists.Array;
import gnu.lists.FVector;
import gnu.lists.GeneralArray;
import gnu.lists.SimpleVector;
import gnu.mapping.Procedure;
import gnu.mapping.Values;
import gnu.math.IntNum;

/* loaded from: classes2.dex */
public class Arrays {
    static final int[] shapeStrides = {2, 1};
    static final int[] zeros2 = new int[2];

    public static Array shape(Object[] objArr) {
        int length = objArr.length;
        if ((length & 1) != 0) {
            throw new RuntimeException("shape: not an even number of arguments");
        }
        return new FVector(objArr).transpose(zeros2, new int[]{length >> 1, 2}, 0, shapeStrides);
    }

    public static Array make(Array array, Object obj) {
        int size = array.getSize(0);
        int[] iArr = new int[size];
        int[] iArr2 = null;
        int i = size;
        int i2 = 1;
        while (true) {
            i--;
            if (i >= 0) {
                int i3 = i * 2;
                int iIntValue = ((Number) array.getRowMajor(i3)).intValue();
                int iIntValue2 = ((Number) array.getRowMajor(i3 + 1)).intValue() - iIntValue;
                iArr[i] = iIntValue2;
                if (iIntValue != 0) {
                    if (iArr2 == null) {
                        iArr2 = new int[size];
                    }
                    iArr2[i] = iIntValue;
                }
                i2 *= iIntValue2;
            } else {
                return GeneralArray.makeSimple(iArr2, iArr, new FVector(i2, obj));
            }
        }
    }

    public static Array makeSimple(Array array, SimpleVector simpleVector) {
        int size = array.getSize(0);
        int[] iArr = new int[size];
        int[] iArr2 = null;
        int i = size;
        while (true) {
            i--;
            if (i >= 0) {
                int i2 = i * 2;
                int iIntValue = ((Number) array.getRowMajor(i2)).intValue();
                iArr[i] = ((Number) array.getRowMajor(i2 + 1)).intValue() - iIntValue;
                if (iIntValue != 0) {
                    if (iArr2 == null) {
                        iArr2 = new int[size];
                    }
                    iArr2[i] = iIntValue;
                }
            } else {
                return GeneralArray.makeSimple(iArr2, iArr, simpleVector);
            }
        }
    }

    public static int effectiveIndex(Array array, Procedure procedure, Object[] objArr, int[] iArr) throws Throwable {
        Object objApplyN = procedure.applyN(objArr);
        int iNextPos = 0;
        if (objApplyN instanceof Values) {
            Values values = (Values) objApplyN;
            int i = 0;
            while (true) {
                iNextPos = values.nextPos(iNextPos);
                if (iNextPos == 0) {
                    break;
                }
                iArr[i] = ((Number) values.getPosPrevious(iNextPos)).intValue();
                i++;
            }
        } else {
            iArr[0] = ((Number) objApplyN).intValue();
        }
        return array.getEffectiveIndex(iArr);
    }

    public static Array shareArray(Array array, Array array2, Procedure procedure) throws Throwable {
        int i = 0;
        int size = array2.getSize(0);
        Object[] objArr = new Object[size];
        int[] iArr = new int[size];
        int[] iArr2 = new int[size];
        int i2 = size;
        boolean z = false;
        while (true) {
            i2--;
            if (i2 < 0) {
                break;
            }
            int i3 = i2 * 2;
            Object rowMajor = array2.getRowMajor(i3);
            objArr[i2] = rowMajor;
            int iIntValue = ((Number) rowMajor).intValue();
            iArr2[i2] = iIntValue;
            int iIntValue2 = ((Number) array2.getRowMajor(i3 + 1)).intValue() - iIntValue;
            iArr[i2] = iIntValue2;
            if (iIntValue2 <= 0) {
                z = true;
            }
        }
        int iRank = array.rank();
        int[] iArr3 = new int[size];
        if (!z) {
            int[] iArr4 = new int[iRank];
            int iEffectiveIndex = effectiveIndex(array, procedure, objArr, iArr4);
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                int i4 = iArr[size];
                int i5 = iArr2[size];
                if (i4 <= 1) {
                    iArr3[size] = 0;
                } else {
                    Object obj = objArr[size];
                    objArr[size] = IntNum.make(i5 + 1);
                    iArr3[size] = effectiveIndex(array, procedure, objArr, iArr4) - iEffectiveIndex;
                    objArr[size] = obj;
                }
            }
            i = iEffectiveIndex;
        }
        return array.transpose(iArr2, iArr, i, iArr3);
    }
}
