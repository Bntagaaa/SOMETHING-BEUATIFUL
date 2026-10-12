package gnu.kawa.functions;

import gnu.expr.Declaration;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Procedure;
import gnu.mapping.ProcedureN;
import gnu.mapping.Values;

/* loaded from: classes2.dex */
public class Map extends ProcedureN {
    final Declaration applyFieldDecl;
    final ApplyToArgs applyToArgs;
    boolean collect;
    final IsEq isEq;

    public Map(boolean z, ApplyToArgs applyToArgs, Declaration declaration, IsEq isEq) {
        super(z ? "map" : "for-each");
        this.collect = z;
        this.applyToArgs = applyToArgs;
        this.applyFieldDecl = declaration;
        this.isEq = isEq;
        setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompileMisc:validateApplyMap");
    }

    public static Object map1(Procedure procedure, Object obj) throws Throwable {
        LList lList = LList.Empty;
        Pair pair = null;
        while (true) {
            LList lList2 = LList.Empty;
            if (obj == lList2) {
                return lList;
            }
            Pair pair2 = (Pair) obj;
            Pair pair3 = new Pair(procedure.apply1(pair2.getCar()), lList2);
            if (pair == null) {
                lList = pair3;
            } else {
                pair.setCdr(pair3);
            }
            obj = pair2.getCdr();
            pair = pair3;
        }
    }

    public static void forEach1(Procedure procedure, Object obj) throws Throwable {
        while (obj != LList.Empty) {
            Pair pair = (Pair) obj;
            procedure.apply1(pair.getCar());
            obj = pair.getCdr();
        }
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) throws Throwable {
        if (!(obj instanceof Procedure)) {
            return applyN(new Object[]{obj, obj2});
        }
        Procedure procedure = (Procedure) obj;
        if (this.collect) {
            return map1(procedure, obj2);
        }
        forEach1(procedure, obj2);
        return Values.empty;
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        Object obj;
        Object[] objArr2;
        Procedure procedure;
        int length = objArr.length;
        int i = length - 1;
        int i2 = 1;
        if (i == 1) {
            Object obj2 = objArr[0];
            if (obj2 instanceof Procedure) {
                Procedure procedure2 = (Procedure) obj2;
                if (this.collect) {
                    return map1(procedure2, objArr[1]);
                }
                forEach1(procedure2, objArr[1]);
                return Values.empty;
            }
        }
        if (this.collect) {
            obj = LList.Empty;
        } else {
            obj = Values.empty;
        }
        Object[] objArr3 = new Object[i];
        System.arraycopy(objArr, 1, objArr3, 0, i);
        Object obj3 = objArr[0];
        Pair pair = null;
        if (obj3 instanceof Procedure) {
            objArr2 = new Object[i];
            procedure = (Procedure) obj3;
            i2 = 0;
        } else {
            objArr2 = new Object[length];
            objArr2[0] = obj3;
            procedure = this.applyToArgs;
        }
        while (true) {
            for (int i3 = 0; i3 < i; i3++) {
                Object obj4 = objArr3[i3];
                if (obj4 == LList.Empty) {
                    return obj;
                }
                Pair pair2 = (Pair) obj4;
                objArr2[i2 + i3] = pair2.getCar();
                objArr3[i3] = pair2.getCdr();
            }
            Object objApplyN = procedure.applyN(objArr2);
            if (this.collect) {
                Pair pair3 = new Pair(objApplyN, LList.Empty);
                if (pair == null) {
                    obj = pair3;
                } else {
                    pair.setCdr(pair3);
                }
                pair = pair3;
            }
        }
    }
}
