package gnu.xquery.util;

import gnu.kawa.functions.Arithmetic;
import gnu.kawa.functions.NumberCompare;
import gnu.kawa.xml.KNode;
import gnu.kawa.xml.UntypedAtomic;
import gnu.kawa.xml.XDataType;
import gnu.lists.Sequence;
import gnu.lists.TreeList;
import gnu.mapping.Values;
import gnu.xml.TextUtils;

/* loaded from: classes2.dex */
public class MinMax {
    public static Object min(Object obj, NamedCollator namedCollator) {
        return minMax(obj, false, namedCollator);
    }

    public static Object max(Object obj, NamedCollator namedCollator) {
        return minMax(obj, true, namedCollator);
    }

    public static Object minMax(Object obj, boolean z, NamedCollator namedCollator) {
        if (obj instanceof Values) {
            TreeList treeList = (TreeList) obj;
            int i = z ? 16 : 4;
            Object posNext = treeList.getPosNext(0);
            if (posNext == Sequence.eofValue) {
                return Values.empty;
            }
            Object objA = a(posNext);
            int iNextPos = 0;
            while (true) {
                iNextPos = treeList.nextPos(iNextPos);
                Object posNext2 = treeList.getPosNext(iNextPos);
                if (posNext2 == Sequence.eofValue) {
                    return objA;
                }
                Object objA2 = a(posNext2);
                if ((objA instanceof Number) || (objA2 instanceof Number)) {
                    int iClassifyValue = Arithmetic.classifyValue(objA);
                    int iClassifyValue2 = Arithmetic.classifyValue(objA2);
                    int iCompare = NumberCompare.compare(objA, iClassifyValue, objA2, iClassifyValue2, false);
                    if (iCompare == -3) {
                        throw new IllegalArgumentException("values cannot be compared");
                    }
                    int i2 = iClassifyValue < iClassifyValue2 ? iClassifyValue2 : iClassifyValue;
                    if (iCompare == -2) {
                        objA = NumberValue.NaN;
                    } else if (!NumberCompare.checkCompareCode(iCompare, i)) {
                        z = i2 != iClassifyValue2;
                        objA = objA2;
                    } else if (i2 == iClassifyValue) {
                        z = false;
                    }
                    if (z) {
                        objA = Arithmetic.convert(objA, i2);
                    }
                } else if (!Compare.atomicCompare(i, objA, objA2, namedCollator)) {
                    objA = objA2;
                }
            }
        } else {
            Object objA3 = a(obj);
            Compare.atomicCompare(16, objA3, objA3, namedCollator);
            return objA3;
        }
    }

    public static Object a(Object obj) {
        Object objAtomicValue = KNode.atomicValue(obj);
        return objAtomicValue instanceof UntypedAtomic ? (Double) XDataType.doubleType.valueOf(TextUtils.stringValue(objAtomicValue)) : objAtomicValue;
    }
}
