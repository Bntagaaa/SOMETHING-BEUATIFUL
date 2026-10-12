package gnu.math;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.ObjectStreamException;

/* loaded from: classes2.dex */
public class BaseUnit extends NamedUnit implements Externalizable {
    static int base_count = 0;
    private static final String unitName = "(name)";
    String dimension;
    int index;

    @Override // gnu.math.Unit, gnu.math.Quantity
    public Unit unit() {
        return this;
    }

    public String getDimension() {
        return this.dimension;
    }

    public BaseUnit() {
        this.name = unitName;
        this.index = Integer.MAX_VALUE;
        this.dims = Dimensions.Empty;
    }

    @Override // gnu.math.NamedUnit
    public void init() {
        ((NamedUnit) this).base = this;
        this.scale = 1.0d;
        this.dims = new Dimensions(this);
        super.init();
        int i = base_count;
        base_count = i + 1;
        this.index = i;
    }

    public BaseUnit(String str) {
        this.name = str;
        init();
    }

    public BaseUnit(String str, String str2) {
        this.name = str;
        this.dimension = str2;
        init();
    }

    @Override // gnu.math.Unit
    public int hashCode() {
        return this.name.hashCode();
    }

    public static BaseUnit lookup(String str, String str2) {
        String strIntern = str.intern();
        if (strIntern == unitName && str2 == null) {
            return Unit.Empty;
        }
        int iHashCode = strIntern.hashCode() & Integer.MAX_VALUE;
        NamedUnit[] namedUnitArr = Unit.table;
        for (NamedUnit namedUnit = namedUnitArr[iHashCode % namedUnitArr.length]; namedUnit != null; namedUnit = namedUnit.chain) {
            if (namedUnit.name == strIntern && (namedUnit instanceof BaseUnit)) {
                BaseUnit baseUnit = (BaseUnit) namedUnit;
                if (baseUnit.dimension == str2) {
                    return baseUnit;
                }
            }
        }
        return null;
    }

    public static BaseUnit make(String str, String str2) {
        BaseUnit baseUnitLookup = lookup(str, str2);
        return baseUnitLookup == null ? new BaseUnit(str, str2) : baseUnitLookup;
    }

    public static int compare(BaseUnit baseUnit, BaseUnit baseUnit2) {
        int iCompareTo = baseUnit.name.compareTo(baseUnit2.name);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        String str = baseUnit.dimension;
        String str2 = baseUnit2.dimension;
        if (str == str2) {
            return 0;
        }
        if (str == null) {
            return -1;
        }
        if (str2 == null) {
            return 1;
        }
        return str.compareTo(str2);
    }

    @Override // gnu.math.NamedUnit, java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeUTF(this.name);
        objectOutput.writeObject(this.dimension);
    }

    @Override // gnu.math.NamedUnit, java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.name = objectInput.readUTF();
        this.dimension = (String) objectInput.readObject();
    }

    @Override // gnu.math.NamedUnit
    public Object readResolve() throws ObjectStreamException {
        BaseUnit baseUnitLookup = lookup(this.name, this.dimension);
        if (baseUnitLookup != null) {
            return baseUnitLookup;
        }
        init();
        return this;
    }
}
