package gnu.math;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class CQuantity extends Quantity implements Externalizable {
    Complex num;
    Unit unt;

    public CQuantity(Complex complex, Unit unit) {
        this.num = complex;
        this.unt = unit;
    }

    public CQuantity(RealNum realNum, RealNum realNum2, Unit unit) {
        this.num = new CComplex(realNum, realNum2);
        this.unt = unit;
    }

    @Override // gnu.math.Quantity
    public Complex number() {
        return this.num;
    }

    @Override // gnu.math.Quantity
    public Unit unit() {
        return this.unt;
    }

    @Override // gnu.math.Numeric
    public boolean isExact() {
        return this.num.isExact();
    }

    @Override // gnu.math.Numeric
    public boolean isZero() {
        return this.num.isZero();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.num);
        objectOutput.writeObject(this.unt);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.num = (Complex) objectInput.readObject();
        this.unt = (Unit) objectInput.readObject();
    }
}
