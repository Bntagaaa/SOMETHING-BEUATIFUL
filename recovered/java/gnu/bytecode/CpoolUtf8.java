package gnu.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class CpoolUtf8 extends CpoolEntry {
    String string;

    @Override // gnu.bytecode.CpoolEntry
    public int getTag() {
        return 1;
    }

    public CpoolUtf8() {
    }

    public CpoolUtf8(ConstantPool constantPool, int i, String str) {
        super(constantPool, i);
        this.string = str;
    }

    @Override // gnu.bytecode.CpoolEntry
    public int hashCode() {
        if (this.hash == 0) {
            this.hash = this.string.hashCode();
        }
        return this.hash;
    }

    public final void intern() {
        this.string = this.string.intern();
    }

    public final String getString() {
        return this.string;
    }

    @Override // gnu.bytecode.CpoolEntry
    public void write(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(1);
        dataOutputStream.writeUTF(this.string);
    }

    @Override // gnu.bytecode.CpoolEntry
    public void print(ClassTypeWriter classTypeWriter, int i) {
        if (i > 0) {
            classTypeWriter.print("Utf8: ");
        }
        classTypeWriter.printQuotedString(this.string);
    }
}
