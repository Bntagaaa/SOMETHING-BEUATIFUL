package gnu.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class CpoolString extends CpoolEntry {
    CpoolUtf8 str;

    @Override // gnu.bytecode.CpoolEntry
    public int getTag() {
        return 8;
    }

    public CpoolString() {
    }

    public CpoolString(ConstantPool constantPool, int i, CpoolUtf8 cpoolUtf8) {
        super(constantPool, i);
        this.str = cpoolUtf8;
    }

    public final CpoolUtf8 getString() {
        return this.str;
    }

    public static final int hashCode(CpoolUtf8 cpoolUtf8) {
        return cpoolUtf8.hashCode() ^ 62223;
    }

    @Override // gnu.bytecode.CpoolEntry
    public int hashCode() {
        if (this.hash == 0) {
            this.hash = hashCode(this.str);
        }
        return this.hash;
    }

    @Override // gnu.bytecode.CpoolEntry
    public void write(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(8);
        dataOutputStream.writeShort(this.str.index);
    }

    @Override // gnu.bytecode.CpoolEntry
    public void print(ClassTypeWriter classTypeWriter, int i) {
        if (i > 0) {
            classTypeWriter.print("String ");
            if (i == 2) {
                classTypeWriter.printOptionalIndex(this.str);
            }
        }
        classTypeWriter.printConstantTersely(this.str.index, 1);
    }
}
