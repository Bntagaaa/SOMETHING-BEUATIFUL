package gnu.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class CpoolClass extends CpoolEntry {
    ObjectType clas;
    CpoolUtf8 name;

    @Override // gnu.bytecode.CpoolEntry
    public int getTag() {
        return 7;
    }

    public CpoolClass() {
    }

    public CpoolClass(ConstantPool constantPool, int i, CpoolUtf8 cpoolUtf8) {
        super(constantPool, i);
        this.name = cpoolUtf8;
    }

    public final CpoolUtf8 getName() {
        return this.name;
    }

    public final String getStringName() {
        return this.name.string;
    }

    public final String getClassName() {
        return this.name.string.replace('/', '.');
    }

    public final ObjectType getClassType() {
        ObjectType objectTypeMake;
        ObjectType objectType = this.clas;
        if (objectType != null) {
            return objectType;
        }
        String str = this.name.string;
        if (str.charAt(0) == '[') {
            objectTypeMake = (ObjectType) Type.signatureToType(str);
        } else {
            objectTypeMake = ClassType.make(str.replace('/', '.'));
        }
        this.clas = objectTypeMake;
        return objectTypeMake;
    }

    public static final int hashCode(CpoolUtf8 cpoolUtf8) {
        return cpoolUtf8.hashCode() ^ 3855;
    }

    @Override // gnu.bytecode.CpoolEntry
    public int hashCode() {
        if (this.hash == 0) {
            this.hash = hashCode(this.name);
        }
        return this.hash;
    }

    @Override // gnu.bytecode.CpoolEntry
    public void write(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(7);
        dataOutputStream.writeShort(this.name.index);
    }

    @Override // gnu.bytecode.CpoolEntry
    public void print(ClassTypeWriter classTypeWriter, int i) {
        if (i == 1) {
            classTypeWriter.print("Class ");
        } else if (i > 1) {
            classTypeWriter.print("Class name: ");
            classTypeWriter.printOptionalIndex(this.name);
        }
        String str = this.name.string;
        int length = str.length();
        if (length > 1 && str.charAt(0) == '[') {
            Type.printSignature(str, 0, length, classTypeWriter);
        } else {
            classTypeWriter.print(str.replace('/', '.'));
        }
    }
}
