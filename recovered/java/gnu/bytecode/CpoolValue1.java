package gnu.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class CpoolValue1 extends CpoolEntry {
    int tag;
    int value;

    public static int hashCode(int i) {
        return i;
    }

    public CpoolValue1(int i) {
        this.tag = i;
    }

    public CpoolValue1(ConstantPool constantPool, int i, int i2, int i3) {
        super(constantPool, i2);
        this.tag = i;
        this.value = i3;
    }

    @Override // gnu.bytecode.CpoolEntry
    public int getTag() {
        return this.tag;
    }

    public final int getValue() {
        return this.value;
    }

    @Override // gnu.bytecode.CpoolEntry
    public int hashCode() {
        if (this.hash == 0) {
            this.hash = this.value;
        }
        return this.hash;
    }

    @Override // gnu.bytecode.CpoolEntry
    public void write(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.tag);
        dataOutputStream.writeInt(this.value);
    }

    @Override // gnu.bytecode.CpoolEntry
    public void print(ClassTypeWriter classTypeWriter, int i) {
        if (this.tag == 3) {
            if (i > 0) {
                classTypeWriter.print("Integer ");
            }
            classTypeWriter.print(this.value);
            if (i <= 1 || this.value == 0) {
                return;
            }
            classTypeWriter.print("=0x");
            classTypeWriter.print(Integer.toHexString(this.value));
            return;
        }
        if (i > 0) {
            classTypeWriter.print("Float ");
        }
        classTypeWriter.print(Float.intBitsToFloat(this.value));
        if (i > 1) {
            classTypeWriter.print("=0x");
            classTypeWriter.print(Integer.toHexString(this.value));
        }
    }
}
