package kawa.standard;

import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.ProcedureN;
import gnu.mapping.WrongType;

/* loaded from: classes2.dex */
public class append extends ProcedureN {
    public static final append append;

    static {
        append appendVar = new append();
        append = appendVar;
        appendVar.setName("append");
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) {
        return append$V(objArr);
    }

    public static Object append$V(Object[] objArr) {
        int length = objArr.length;
        if (length == 0) {
            return LList.Empty;
        }
        int i = length - 1;
        Object obj = objArr[i];
        while (true) {
            int i2 = i - 1;
            if (i2 < 0) {
                return obj;
            }
            Object cdr = objArr[i2];
            Pair pair = null;
            Pair pair2 = null;
            while (cdr instanceof Pair) {
                Pair pair3 = (Pair) cdr;
                Pair pair4 = new Pair(pair3.getCar(), null);
                if (pair == null) {
                    pair2 = pair4;
                } else {
                    pair.setCdr(pair4);
                }
                cdr = pair3.getCdr();
                pair = pair4;
            }
            if (cdr != LList.Empty) {
                throw new WrongType(append, i, objArr[i2], "list");
            }
            if (pair != null) {
                pair.setCdr(obj);
                obj = pair2;
            }
            i = i2;
        }
    }
}
