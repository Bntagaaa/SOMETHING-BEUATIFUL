package gnu.kawa.functions;

import gnu.lists.Pair;
import gnu.lists.Sequence;
import gnu.mapping.CallContext;
import gnu.mapping.Procedure;
import gnu.mapping.ProcedureN;
import gnu.mapping.WrongArguments;
import gnu.mapping.WrongType;

/* loaded from: classes2.dex */
public class Apply extends ProcedureN {
    ApplyToArgs applyToArgs;

    public Apply(String str, ApplyToArgs applyToArgs) {
        super(str);
        this.applyToArgs = applyToArgs;
    }

    public static Object[] getArguments(Object[] objArr, int i, Procedure procedure) {
        int size;
        int length = objArr.length;
        if (length < i + 1) {
            throw new WrongArguments("apply", 2, "(apply proc [args] args) [count:" + length + " skip:" + i + "]");
        }
        Object cdr = objArr[length - 1];
        boolean z = cdr instanceof Object[];
        if (z) {
            Object[] objArr2 = (Object[]) cdr;
            if (length == 2) {
                return objArr2;
            }
            size = objArr2.length;
        } else {
            size = cdr instanceof Sequence ? ((Sequence) cdr).size() : -1;
        }
        if (size < 0) {
            throw new WrongType(procedure, length, cdr, "sequence or array");
        }
        int i2 = (length - i) - 1;
        Object[] objArr3 = new Object[size + i2];
        int i3 = 0;
        int i4 = 0;
        while (i4 < i2) {
            objArr3[i4] = objArr[i4 + i];
            i4++;
        }
        if (z) {
            System.arraycopy((Object[]) cdr, 0, objArr3, i4, size);
            return objArr3;
        }
        while (cdr instanceof Pair) {
            Pair pair = (Pair) cdr;
            objArr3[i4] = pair.getCar();
            cdr = pair.getCdr();
            size--;
            i4++;
        }
        if (size > 0) {
            Sequence sequence = (Sequence) cdr;
            while (i3 < size) {
                objArr3[i4] = sequence.get(i3);
                i3++;
                i4++;
            }
        }
        return objArr3;
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) throws Throwable {
        return this.applyToArgs.applyN(getArguments(objArr, 0, this));
    }

    @Override // gnu.mapping.Procedure
    public void apply(CallContext callContext) throws Throwable {
        this.applyToArgs.checkN(getArguments(callContext.getArgs(), 0, this), callContext);
    }
}
