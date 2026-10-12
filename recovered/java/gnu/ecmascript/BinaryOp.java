package gnu.ecmascript;

import gnu.mapping.Procedure2;

/* loaded from: classes2.dex */
public class BinaryOp extends Procedure2 {
    public final int c;

    public BinaryOp(String str, int i) {
        setName(str);
        this.c = i;
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        if (this.c == 5) {
            return Convert.toNumber(obj) < Convert.toNumber(obj2) ? Boolean.TRUE : Boolean.FALSE;
        }
        return new Double(apply(Convert.toNumber(obj), Convert.toNumber(obj2)));
    }

    public double apply(double d, double d2) {
        int i = this.c;
        if (i == 1) {
            return d + d2;
        }
        if (i == 2) {
            return d - d2;
        }
        if (i == 3) {
            return d * d2;
        }
        if (i != 4) {
            return Double.NaN;
        }
        return ((int) d) << (((int) d2) & 31);
    }
}
