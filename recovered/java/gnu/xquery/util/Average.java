package gnu.xquery.util;

import gnu.lists.Sequence;
import gnu.lists.TreeList;
import gnu.mapping.Procedure1;
import gnu.mapping.Values;
import gnu.math.IntNum;

/* loaded from: classes2.dex */
public class Average extends Procedure1 {
    public static final Average avg = new Average("avg");

    public Average(String str) {
        super(str);
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object obj) throws Throwable {
        int i;
        Values values = Values.empty;
        if (obj instanceof Values) {
            TreeList treeList = (TreeList) obj;
            int iNextPos = 0;
            Object objApply2 = values;
            i = 0;
            while (true) {
                Object posNext = treeList.getPosNext(iNextPos);
                if (posNext == Sequence.eofValue) {
                    break;
                }
                i++;
                objApply2 = objApply2 == Values.empty ? posNext : ArithOp.add.apply2(objApply2, posNext);
                iNextPos = treeList.nextPos(iNextPos);
            }
            obj = objApply2;
        } else {
            i = 1;
        }
        return obj == Values.empty ? obj : ArithOp.div.apply2(obj, IntNum.make(i));
    }
}
