package gnu.math;

import _COROUTINE.a;

/* loaded from: classes2.dex */
public abstract class Unit extends Quantity {
    public static double NON_COMBINABLE;
    public static final Unit cm;
    public static final NamedUnit date;
    public static final BaseUnit duration;
    public static final BaseUnit gram;
    public static final Unit hour;
    public static final Unit in;
    public static final BaseUnit meter;
    public static final Unit minute;
    public static final Unit mm;
    public static final NamedUnit month;
    public static final Unit pica;
    public static final Unit pt;
    public static final Unit radian;
    public static final NamedUnit second;
    Unit base;
    Dimensions dims;
    double factor = 1.0d;
    MulUnit products;
    static NamedUnit[] table = new NamedUnit[100];
    public static BaseUnit Empty = new BaseUnit();

    public String getName() {
        return null;
    }

    @Override // gnu.math.Numeric
    public boolean isExact() {
        return false;
    }

    @Override // gnu.math.Numeric
    public final boolean isZero() {
        return false;
    }

    @Override // gnu.math.Quantity
    public Unit unit() {
        return this;
    }

    static {
        Dimensions.Empty.bases[0] = Empty;
        NON_COMBINABLE = 0.0d;
        BaseUnit baseUnit = new BaseUnit("m", "Length");
        meter = baseUnit;
        BaseUnit baseUnit2 = new BaseUnit("duration", "Time");
        duration = baseUnit2;
        gram = new BaseUnit("g", "Mass");
        Unit unitDefine = define("cm", 0.01d, baseUnit);
        cm = unitDefine;
        mm = define("mm", 0.1d, unitDefine);
        in = define("in", 0.0254d, baseUnit);
        pt = define("pt", 3.527778E-4d, baseUnit);
        pica = define("pica", 0.004233333d, baseUnit);
        radian = define("rad", 1.0d, Empty);
        date = new NamedUnit("date", NON_COMBINABLE, baseUnit2);
        NamedUnit namedUnit = new NamedUnit("s", NON_COMBINABLE, baseUnit2);
        second = namedUnit;
        month = new NamedUnit("month", NON_COMBINABLE, baseUnit2);
        Unit unitDefine2 = define("min", 60.0d, namedUnit);
        minute = unitDefine2;
        hour = define("hour", 60.0d, unitDefine2);
    }

    @Override // gnu.math.Quantity
    public final Dimensions dimensions() {
        return this.dims;
    }

    @Override // gnu.math.Quantity, java.lang.Number
    public final double doubleValue() {
        return this.factor;
    }

    public int hashCode() {
        return this.dims.hashCode();
    }

    public static Unit times(Unit unit, int i, Unit unit2, int i2) {
        int i3 = 0;
        if (unit == unit2) {
            i += i2;
            unit2 = Empty;
            i2 = 0;
        }
        if (i == 0 || unit == Empty) {
            Unit unit3 = unit2;
            unit2 = Empty;
            unit = unit3;
            i = i2;
        } else {
            i3 = i2;
        }
        if (i3 == 0 || unit2 == Empty) {
            if (i == 1) {
                return unit;
            }
            if (i == 0) {
                return Empty;
            }
        }
        if (unit instanceof MulUnit) {
            MulUnit mulUnit = (MulUnit) unit;
            Unit unit4 = mulUnit.unit1;
            if (unit4 == unit2) {
                return times(unit2, (mulUnit.power1 * i) + i3, mulUnit.unit2, mulUnit.power2 * i);
            }
            Unit unit5 = mulUnit.unit2;
            if (unit5 == unit2) {
                return times(unit4, mulUnit.power1 * i, unit2, (mulUnit.power2 * i) + i3);
            }
            if (unit2 instanceof MulUnit) {
                MulUnit mulUnit2 = (MulUnit) unit2;
                Unit unit6 = mulUnit2.unit1;
                if (unit4 == unit6 && unit5 == mulUnit2.unit2) {
                    return times(unit4, (mulUnit2.power1 * i3) + (mulUnit.power1 * i), unit5, (mulUnit2.power2 * i3) + (mulUnit.power2 * i));
                }
                if (unit4 == mulUnit2.unit2 && unit5 == unit6) {
                    return times(unit4, (mulUnit2.power2 * i3) + (mulUnit.power1 * i), unit5, (mulUnit2.power1 * i3) + (mulUnit.power2 * i));
                }
            }
        }
        if (unit2 instanceof MulUnit) {
            MulUnit mulUnit3 = (MulUnit) unit2;
            Unit unit7 = mulUnit3.unit1;
            if (unit7 == unit) {
                return times(unit, (mulUnit3.power1 * i3) + i, mulUnit3.unit2, mulUnit3.power2 * i3);
            }
            if (mulUnit3.unit2 == unit) {
                return times(unit7, mulUnit3.power1 * i3, unit, (mulUnit3.power2 * i3) + i);
            }
        }
        return MulUnit.make(unit, i, unit2, i3);
    }

    public static Unit times(Unit unit, Unit unit2) {
        return times(unit, 1, unit2, 1);
    }

    public static Unit divide(Unit unit, Unit unit2) {
        return times(unit, 1, unit2, -1);
    }

    public static Unit pow(Unit unit, int i) {
        return times(unit, i, Empty, 0);
    }

    public static NamedUnit make(String str, Quantity quantity) {
        return NamedUnit.make(str, quantity);
    }

    public static Unit define(String str, DQuantity dQuantity) {
        return new NamedUnit(str, dQuantity);
    }

    public static Unit define(String str, double d, Unit unit) {
        return new NamedUnit(str, d, unit);
    }

    @Override // gnu.math.Quantity
    public Complex number() {
        return DFloNum.one();
    }

    @Override // gnu.math.Numeric
    public Numeric power(IntNum intNum) {
        if (intNum.words != null) {
            throw new ArithmeticException("Unit raised to bignum power");
        }
        return pow(this, intNum.ival);
    }

    public Unit sqrt() {
        if (this == Empty) {
            return this;
        }
        throw new RuntimeException("unimplemented Unit.sqrt");
    }

    public static NamedUnit lookup(String str) {
        return NamedUnit.lookup(str);
    }

    public String toString(double d) {
        String string = Double.toString(d);
        if (this == Empty) {
            return string;
        }
        StringBuilder sbP = a.p(string);
        sbP.append(toString());
        return sbP.toString();
    }

    public String toString(RealNum realNum) {
        return toString(realNum.doubleValue());
    }

    @Override // gnu.math.Numeric
    public String toString() {
        String name = getName();
        if (name != null) {
            return name;
        }
        if (this == Empty) {
            return "unit";
        }
        return Double.toString(this.factor) + "<unnamed unit>";
    }
}
