package gnu.xquery.util;

import gnu.kawa.util.GeneralHashTable;
import gnu.math.Numeric;
import gnu.math.RealNum;

/* loaded from: classes2.dex */
class b extends GeneralHashTable {

    /* renamed from: a, reason: collision with root package name */
    public final NamedCollator f5539a;

    public b(NamedCollator namedCollator) {
        this.f5539a = namedCollator;
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public int hash(Object obj) {
        if (obj == null) {
            return 0;
        }
        if ((obj instanceof Number) && ((obj instanceof RealNum) || !(obj instanceof Numeric))) {
            int iFloatToIntBits = Float.floatToIntBits(((Number) obj).floatValue());
            if (iFloatToIntBits == Integer.MIN_VALUE) {
                return 0;
            }
            return iFloatToIntBits;
        }
        return obj.hashCode();
    }

    @Override // gnu.kawa.util.AbstractHashTable
    public boolean matches(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (NumberValue.isNaN(obj) && NumberValue.isNaN(obj2)) {
            return true;
        }
        return Compare.apply(72, obj, obj2, this.f5539a);
    }
}
