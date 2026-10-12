package gnu.math;

import _COROUTINE.a;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;

/* loaded from: classes2.dex */
public class NamedUnit extends Unit implements Externalizable {
    Unit base;
    NamedUnit chain;
    String name;
    double scale;

    public NamedUnit() {
    }

    public NamedUnit(String str, DQuantity dQuantity) {
        this.name = str.intern();
        this.scale = dQuantity.factor;
        this.base = dQuantity.unt;
        init();
    }

    public NamedUnit(String str, double d, Unit unit) {
        this.name = str;
        this.base = unit;
        this.scale = d;
        init();
    }

    public void init() {
        double d = this.scale;
        Unit unit = this.base;
        this.factor = d * unit.factor;
        this.dims = unit.dims;
        String strIntern = this.name.intern();
        this.name = strIntern;
        int iHashCode = strIntern.hashCode() & Integer.MAX_VALUE;
        NamedUnit[] namedUnitArr = Unit.table;
        int length = iHashCode % namedUnitArr.length;
        this.chain = namedUnitArr[length];
        namedUnitArr[length] = this;
    }

    @Override // gnu.math.Unit
    public String getName() {
        return this.name;
    }

    public static NamedUnit lookup(String str) {
        String strIntern = str.intern();
        int iHashCode = strIntern.hashCode() & Integer.MAX_VALUE;
        NamedUnit[] namedUnitArr = Unit.table;
        for (NamedUnit namedUnit = namedUnitArr[iHashCode % namedUnitArr.length]; namedUnit != null; namedUnit = namedUnit.chain) {
            if (namedUnit.name == strIntern) {
                return namedUnit;
            }
        }
        return null;
    }

    public static NamedUnit lookup(String str, double d, Unit unit) {
        String strIntern = str.intern();
        int iHashCode = strIntern.hashCode() & Integer.MAX_VALUE;
        NamedUnit[] namedUnitArr = Unit.table;
        for (NamedUnit namedUnit = namedUnitArr[iHashCode % namedUnitArr.length]; namedUnit != null; namedUnit = namedUnit.chain) {
            if (namedUnit.name == strIntern && namedUnit.scale == d && namedUnit.base == unit) {
                return namedUnit;
            }
        }
        return null;
    }

    public static NamedUnit make(String str, double d, Unit unit) {
        NamedUnit namedUnitLookup = lookup(str, d, unit);
        return namedUnitLookup == null ? new NamedUnit(str, d, unit) : namedUnitLookup;
    }

    public static NamedUnit make(String str, Quantity quantity) {
        double dDoubleValue;
        if (quantity instanceof DQuantity) {
            dDoubleValue = ((DQuantity) quantity).factor;
        } else {
            if (quantity.imValue() != 0.0d) {
                throw new ArithmeticException(a.A("defining ", str, " using complex value"));
            }
            dDoubleValue = quantity.re().doubleValue();
        }
        Unit unit = quantity.unit();
        NamedUnit namedUnitLookup = lookup(str, dDoubleValue, unit);
        return namedUnitLookup == null ? new NamedUnit(str, dDoubleValue, unit) : namedUnitLookup;
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeUTF(this.name);
        objectOutput.writeDouble(this.scale);
        objectOutput.writeObject(this.base);
    }

    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.name = objectInput.readUTF();
        this.scale = objectInput.readDouble();
        this.base = (Unit) objectInput.readObject();
    }

    public Object readResolve() throws ObjectStreamException {
        NamedUnit namedUnitLookup = lookup(this.name, this.scale, this.base);
        if (namedUnitLookup != null) {
            return namedUnitLookup;
        }
        init();
        return this;
    }
}
