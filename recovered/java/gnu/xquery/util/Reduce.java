package gnu.xquery.util;

import gnu.kawa.functions.AddOp;
import gnu.lists.Sequence;
import gnu.lists.TreeList;
import gnu.mapping.Values;
import gnu.math.IntNum;

/* loaded from: classes2.dex */
public class Reduce {
    public static Object sum(Object obj) throws Throwable {
        return sum(obj, IntNum.zero());
    }

    public static Object sum(Object obj, Object obj2) throws Throwable {
        if (obj instanceof Values) {
            TreeList treeList = (TreeList) obj;
            int iNextPos = 0;
            Object posNext = treeList.getPosNext(0);
            if (posNext == Sequence.eofValue) {
                return obj2;
            }
            Object objA = MinMax.a(posNext);
            while (true) {
                iNextPos = treeList.nextPos(iNextPos);
                Object posNext2 = treeList.getPosNext(iNextPos);
                if (posNext2 == Sequence.eofValue) {
                    return objA;
                }
                objA = AddOp.apply2(1, objA, MinMax.a(posNext2));
            }
        } else {
            return (Number) MinMax.a(obj);
        }
    }
}
