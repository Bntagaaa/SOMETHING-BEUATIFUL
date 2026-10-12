package gnu.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class CpoolNameAndType extends CpoolEntry {
    CpoolUtf8 name;
    CpoolUtf8 type;

    @Override // gnu.bytecode.CpoolEntry
    public int getTag() {
        return 12;
    }

    public CpoolNameAndType() {
    }

    public CpoolNameAndType(ConstantPool constantPool, int i, CpoolUtf8 cpoolUtf8, CpoolUtf8 cpoolUtf82) {
        super(constantPool, i);
        this.name = cpoolUtf8;
        this.type = cpoolUtf82;
    }

    public final CpoolUtf8 getName() {
        return this.name;
    }

    public final CpoolUtf8 getType() {
        return this.type;
    }

    public static final int hashCode(CpoolUtf8 cpoolUtf8, CpoolUtf8 cpoolUtf82) {
        return cpoolUtf8.hashCode() ^ cpoolUtf82.hashCode();
    }

    @Override // gnu.bytecode.CpoolEntry
    public int hashCode() {
        if (this.hash == 0) {
            this.hash = hashCode(this.name, this.type);
        }
        return this.hash;
    }

    @Override // gnu.bytecode.CpoolEntry
    public void write(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(12);
        dataOutputStream.writeShort(this.name.index);
        dataOutputStream.writeShort(this.type.index);
    }

    @Override // gnu.bytecode.CpoolEntry
    public void print(ClassTypeWriter classTypeWriter, int i) {
        if (i == 1) {
            classTypeWriter.print("NameAndType ");
        } else if (i > 1) {
            classTypeWriter.print("NameAndType name: ");
            classTypeWriter.printOptionalIndex(this.name);
        }
        classTypeWriter.printName(this.name.string);
        if (i <= 1) {
            classTypeWriter.print(' ');
        } else {
            classTypeWriter.print(", signature: ");
            classTypeWriter.printOptionalIndex(this.type);
        }
        classTypeWriter.printSignature(this.type.string);
    }
}
