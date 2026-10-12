package gnu.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class CpoolValue2 extends CpoolEntry {
    int tag;
    long value;

    public static int hashCode(long j) {
        return (int) j;
    }

    public CpoolValue2(int i) {
        this.tag = i;
    }

    public CpoolValue2(ConstantPool constantPool, int i, int i2, long j) {
        super(constantPool, i2);
        this.tag = i;
        this.value = j;
        constantPool.count++;
    }

    @Override // gnu.bytecode.CpoolEntry
    public int getTag() {
        return this.tag;
    }

    public final long getValue() {
        return this.value;
    }

    @Override // gnu.bytecode.CpoolEntry
    public int hashCode() {
        if (this.hash == 0) {
            this.hash = hashCode(this.value);
        }
        return this.hash;
    }

    @Override // gnu.bytecode.CpoolEntry
    public void write(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.tag);
        dataOutputStream.writeLong(this.value);
    }

    @Override // gnu.bytecode.CpoolEntry
    public void print(ClassTypeWriter classTypeWriter, int i) {
        if (this.tag == 5) {
            if (i > 0) {
                classTypeWriter.print("Long ");
            }
            classTypeWriter.print(this.value);
            if (i <= 1 || this.value == 0) {
                return;
            }
            classTypeWriter.print("=0x");
            classTypeWriter.print(Long.toHexString(this.value));
            return;
        }
        if (i > 0) {
            classTypeWriter.print("Double ");
        }
        classTypeWriter.print(Double.longBitsToDouble(this.value));
        if (i > 1) {
            classTypeWriter.print("=0x");
            classTypeWriter.print(Long.toHexString(this.value));
        }
    }
}
