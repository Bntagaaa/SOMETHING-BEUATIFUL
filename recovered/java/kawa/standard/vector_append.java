package kawa.standard;

import gnu.lists.FVector;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.ProcedureN;
import gnu.mapping.WrongType;

/* loaded from: classes2.dex */
public class vector_append extends ProcedureN {
    public static final vector_append vectorAppend = new vector_append("vector-append");

    public vector_append(String str) {
        super(str);
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) {
        return apply$V(objArr);
    }

    public static FVector apply$V(Object[] objArr) {
        int length = objArr.length;
        int i = length;
        int size = 0;
        while (true) {
            i--;
            if (i >= 0) {
                Object obj = objArr[i];
                if (obj instanceof FVector) {
                    size = ((FVector) obj).size() + size;
                } else {
                    int iListLength = LList.listLength(obj, false);
                    if (iListLength < 0) {
                        throw new WrongType(vectorAppend, i, obj, "list or vector");
                    }
                    size += iListLength;
                }
            } else {
                Object[] objArr2 = new Object[size];
                int i2 = 0;
                for (int i3 = 0; i3 < length; i3++) {
                    Object cdr = objArr[i3];
                    if (cdr instanceof FVector) {
                        FVector fVector = (FVector) cdr;
                        int size2 = fVector.size();
                        int i4 = 0;
                        while (i4 < size2) {
                            objArr2[i2] = fVector.get(i4);
                            i4++;
                            i2++;
                        }
                    } else if (cdr instanceof Pair) {
                        while (cdr != LList.Empty) {
                            Pair pair = (Pair) cdr;
                            objArr2[i2] = pair.getCar();
                            cdr = pair.getCdr();
                            i2++;
                        }
                    }
                }
                return new FVector(objArr2);
            }
        }
    }
}
