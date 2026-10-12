package gnu.math;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class CComplex extends Complex implements Externalizable {
    RealNum imag;
    RealNum real;

    public CComplex() {
    }

    public CComplex(RealNum realNum, RealNum realNum2) {
        this.real = realNum;
        this.imag = realNum2;
    }

    @Override // gnu.math.Quantity
    public RealNum re() {
        return this.real;
    }

    @Override // gnu.math.Quantity
    public RealNum im() {
        return this.imag;
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.real);
        objectOutput.writeObject(this.imag);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.real = (RealNum) objectInput.readObject();
        this.imag = (RealNum) objectInput.readObject();
    }
}
