package gnu.kawa.functions;

import gnu.lists.Array;
import gnu.lists.Sequence;
import gnu.mapping.ProcedureN;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class ArraySet extends ProcedureN {
    public static final ArraySet arraySet = new ArraySet();

    public static void arraySet(Array array, Sequence sequence, Object obj) {
        int size = sequence.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = ((Number) sequence.get(i)).intValue();
        }
        array.set(iArr, obj);
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object apply3(Object obj, Object obj2, Object obj3) throws Throwable {
        if (obj2 instanceof Sequence) {
            arraySet((Array) obj, (Sequence) obj2, obj3);
            return Values.empty;
        }
        return super.apply3(obj, obj2, obj3);
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        Array array = (Array) objArr[0];
        if (objArr.length == 3) {
            Object obj = objArr[1];
            if (obj instanceof Sequence) {
                arraySet(array, (Sequence) obj, objArr[2]);
                return Values.empty;
            }
        }
        int length = objArr.length;
        int i = length - 2;
        int[] iArr = new int[i];
        while (true) {
            int i2 = i - 1;
            if (i2 >= 0) {
                iArr[i2] = ((Number) objArr[i]).intValue();
                i = i2;
            } else {
                array.set(iArr, objArr[length - 1]);
                return Values.empty;
            }
        }
    }
}
