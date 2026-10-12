package gnu.xquery.util;

import gnu.kawa.xml.KNode;
import gnu.kawa.xml.UntypedAtomic;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.MethodProc;
import gnu.mapping.Values;
import gnu.math.IntNum;

/* loaded from: classes2.dex */
public class IntegerRange extends MethodProc {
    public static final IntegerRange integerRange = new IntegerRange("to");
    public static final IntNum MIN_INT = IntNum.make(Integer.MIN_VALUE);
    public static final IntNum MAX_INT = IntNum.make(Integer.MAX_VALUE);

    public IntegerRange(String str) {
        setName(str);
    }

    public static void integerRange(IntNum intNum, IntNum intNum2, Consumer consumer) {
        if (IntNum.compare(intNum, MIN_INT) >= 0 && IntNum.compare(intNum2, MAX_INT) <= 0) {
            int iIntValue = intNum.intValue();
            int iIntValue2 = intNum2.intValue();
            if (iIntValue > iIntValue2) {
                return;
            }
            while (true) {
                consumer.writeInt(iIntValue);
                if (iIntValue == iIntValue2) {
                    return;
                } else {
                    iIntValue++;
                }
            }
        } else {
            while (IntNum.compare(intNum, intNum2) <= 0) {
                consumer.writeObject(intNum);
                intNum = IntNum.add(intNum, 1);
            }
        }
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws NumberFormatException {
        Object nextArg = callContext.getNextArg();
        Object nextArg2 = callContext.getNextArg();
        callContext.lastArg();
        Object objAtomicValue = KNode.atomicValue(nextArg);
        Object objAtomicValue2 = KNode.atomicValue(nextArg2);
        Object obj = Values.empty;
        if (objAtomicValue == obj || objAtomicValue == null || objAtomicValue2 == obj || objAtomicValue2 == null) {
            return;
        }
        if (objAtomicValue instanceof UntypedAtomic) {
            objAtomicValue = IntNum.valueOf(objAtomicValue.toString().trim(), 10);
        }
        if (objAtomicValue2 instanceof UntypedAtomic) {
            objAtomicValue2 = IntNum.valueOf(objAtomicValue2.toString().trim(), 10);
        }
        integerRange((IntNum) objAtomicValue, (IntNum) objAtomicValue2, callContext.consumer);
    }
}
