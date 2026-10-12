package gnu.xquery.util;

import gnu.kawa.xml.KNode;
import gnu.mapping.Procedure;
import gnu.mapping.Procedure2;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class Compare extends Procedure2 {
    public int c;
    public static final Compare $Eq = make("=", 8);
    public static final Compare $Ex$Eq = make("!=", 23);
    public static final Compare $Gr = make(">", 16);
    public static final Compare $Gr$Eq = make(">=", 24);
    public static final Compare $Ls = make("<", 4);
    public static final Compare $Ls$Eq = make("<=", 12);
    public static final Compare valEq = make("eq", 40);
    public static final Compare valNe = make("ne", 55);
    public static final Compare valGt = make("gt", 48);
    public static final Compare valGe = make("ge", 56);
    public static final Compare valLt = make("lt", 36);
    public static final Compare valLe = make("le", 44);

    public static boolean equalityComparison(int i) {
        return ((i & 16) != 0) == ((i & 4) != 0);
    }

    public static Compare make(String str, int i) {
        Compare compare = new Compare();
        compare.setName(str);
        compare.setProperty(Procedure.validateApplyKey, "gnu.xquery.util.CompileMisc:validateCompare");
        compare.c = i;
        return compare;
    }

    public static boolean apply(int i, Object obj, Object obj2, NamedCollator namedCollator) {
        if (obj instanceof Values) {
            Values values = (Values) obj;
            int i2 = 0;
            while (true) {
                int iNextDataIndex = values.nextDataIndex(i2);
                if (iNextDataIndex < 0) {
                    return false;
                }
                if (apply(i, values.getPosNext(i2 << 1), obj2, namedCollator)) {
                    return true;
                }
                i2 = iNextDataIndex;
            }
        } else if (obj2 instanceof Values) {
            Values values2 = (Values) obj2;
            int i3 = 0;
            while (true) {
                int iNextDataIndex2 = values2.nextDataIndex(i3);
                if (iNextDataIndex2 < 0) {
                    return false;
                }
                if (apply(i, obj, values2.getPosNext(i3 << 1), namedCollator)) {
                    return true;
                }
                i3 = iNextDataIndex2;
            }
        } else {
            return atomicCompare(i, KNode.atomicValue(obj), KNode.atomicValue(obj2), namedCollator);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean atomicCompare(int r6, java.lang.Object r7, java.lang.Object r8, gnu.xquery.util.NamedCollator r9) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.util.Compare.atomicCompare(int, java.lang.Object, java.lang.Object, gnu.xquery.util.NamedCollator):boolean");
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        Values values;
        int i = this.c;
        return (i & 32) != 0 ? (obj == null || obj == (values = Values.empty)) ? obj : (obj2 == null || obj2 == values) ? obj2 : atomicCompare(i, KNode.atomicValue(obj), KNode.atomicValue(obj2), null) ? Boolean.TRUE : Boolean.FALSE : apply(i, obj, obj2, null) ? Boolean.TRUE : Boolean.FALSE;
    }
}
