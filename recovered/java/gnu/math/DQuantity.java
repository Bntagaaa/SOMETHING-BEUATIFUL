package gnu.math;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class DQuantity extends Quantity implements Externalizable {
    double factor;
    Unit unt;

    @Override // gnu.math.Numeric
    public boolean isExact() {
        return false;
    }

    @Override // gnu.math.Quantity
    public final Unit unit() {
        return this.unt;
    }

    @Override // gnu.math.Quantity
    public final Complex number() {
        return new DFloNum(this.factor);
    }

    @Override // gnu.math.Quantity
    public final RealNum re() {
        return new DFloNum(this.factor);
    }

    @Override // gnu.math.Quantity, java.lang.Number
    public final double doubleValue() {
        return this.factor * this.unt.factor;
    }

    public DQuantity(double d, Unit unit) {
        this.factor = d;
        this.unt = unit;
    }

    @Override // gnu.math.Numeric
    public boolean isZero() {
        return this.factor == 0.0d;
    }

    public static DQuantity add(DQuantity dQuantity, DQuantity dQuantity2, double d) {
        if (dQuantity.dimensions() != dQuantity2.dimensions()) {
            throw new ArithmeticException("units mis-match");
        }
        double d2 = dQuantity2.unit().factor / dQuantity.unit().factor;
        return new DQuantity((d * d2 * dQuantity2.factor) + dQuantity.factor, dQuantity.unit());
    }

    public static DQuantity times(DQuantity dQuantity, DQuantity dQuantity2) {
        return new DQuantity(dQuantity.factor * dQuantity2.factor, Unit.times(dQuantity.unit(), dQuantity2.unit()));
    }

    public static DQuantity divide(DQuantity dQuantity, DQuantity dQuantity2) {
        return new DQuantity(dQuantity.factor / dQuantity2.factor, Unit.divide(dQuantity.unit(), dQuantity2.unit()));
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric add(Object obj, int i) {
        if (obj instanceof DQuantity) {
            return add(this, (DQuantity) obj, i);
        }
        if (dimensions() == Dimensions.Empty && (obj instanceof RealNum)) {
            return new DQuantity((((RealNum) obj).doubleValue() * i) + this.factor, unit());
        }
        if (!(obj instanceof Numeric)) {
            throw new IllegalArgumentException();
        }
        return ((Numeric) obj).addReversed(this, i);
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric addReversed(Numeric numeric, int i) {
        if (dimensions() == Dimensions.Empty && (numeric instanceof RealNum)) {
            return new DFloNum((i * this.factor) + ((RealNum) numeric).doubleValue());
        }
        throw new IllegalArgumentException();
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric mul(Object obj) {
        if (obj instanceof DQuantity) {
            return times(this, (DQuantity) obj);
        }
        if (obj instanceof RealNum) {
            return new DQuantity(((RealNum) obj).doubleValue() * this.factor, unit());
        }
        if (!(obj instanceof Numeric)) {
            throw new IllegalArgumentException();
        }
        return ((Numeric) obj).mulReversed(this);
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric mulReversed(Numeric numeric) {
        if (numeric instanceof RealNum) {
            return new DQuantity(((RealNum) numeric).doubleValue() * this.factor, unit());
        }
        throw new IllegalArgumentException();
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric div(Object obj) {
        if (obj instanceof DQuantity) {
            DQuantity dQuantity = (DQuantity) obj;
            if (dimensions() == dQuantity.dimensions()) {
                return new DFloNum((unit().doubleValue() * this.factor) / (dQuantity.factor * dQuantity.unit().factor));
            }
            return divide(this, dQuantity);
        }
        if (obj instanceof RealNum) {
            return new DQuantity(this.factor / ((RealNum) obj).doubleValue(), unit());
        }
        if (!(obj instanceof Numeric)) {
            throw new IllegalArgumentException();
        }
        return ((Numeric) obj).divReversed(this);
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric divReversed(Numeric numeric) {
        if (numeric instanceof RealNum) {
            return new DQuantity(((RealNum) numeric).doubleValue() / this.factor, Unit.divide((Unit) Unit.Empty, unit()));
        }
        throw new IllegalArgumentException();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeDouble(this.factor);
        objectOutput.writeObject(this.unt);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.factor = objectInput.readDouble();
        this.unt = (Unit) objectInput.readObject();
    }
}
