package gnu.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class CpoolRef extends CpoolEntry {
    CpoolClass clas;
    CpoolNameAndType nameAndType;
    int tag;

    @Override // gnu.bytecode.CpoolEntry
    public int getTag() {
        return this.tag;
    }

    public final CpoolClass getCpoolClass() {
        return this.clas;
    }

    public final CpoolNameAndType getNameAndType() {
        return this.nameAndType;
    }

    public CpoolRef(int i) {
        this.tag = i;
    }

    public CpoolRef(ConstantPool constantPool, int i, int i2, CpoolClass cpoolClass, CpoolNameAndType cpoolNameAndType) {
        super(constantPool, i);
        this.tag = i2;
        this.clas = cpoolClass;
        this.nameAndType = cpoolNameAndType;
    }

    public static final int hashCode(CpoolClass cpoolClass, CpoolNameAndType cpoolNameAndType) {
        return cpoolClass.hashCode() ^ cpoolNameAndType.hashCode();
    }

    @Override // gnu.bytecode.CpoolEntry
    public int hashCode() {
        if (this.hash == 0) {
            this.hash = hashCode(this.clas, this.nameAndType);
        }
        return this.hash;
    }

    @Override // gnu.bytecode.CpoolEntry
    public void write(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeByte(this.tag);
        dataOutputStream.writeShort(this.clas.index);
        dataOutputStream.writeShort(this.nameAndType.index);
    }

    @Override // gnu.bytecode.CpoolEntry
    public void print(ClassTypeWriter classTypeWriter, int i) {
        String str;
        switch (this.tag) {
            case 9:
                str = "Field";
                break;
            case 10:
                str = "Method";
                break;
            case 11:
                str = "InterfaceMethod";
                break;
            default:
                str = "<Unknown>Ref";
                break;
        }
        if (i > 0) {
            classTypeWriter.print(str);
            if (i == 2) {
                classTypeWriter.print(" class: ");
                classTypeWriter.printOptionalIndex(this.clas);
            } else {
                classTypeWriter.print(' ');
            }
        }
        this.clas.print(classTypeWriter, 0);
        if (i < 2) {
            classTypeWriter.print('.');
        } else {
            classTypeWriter.print(" name_and_type: ");
            classTypeWriter.printOptionalIndex(this.nameAndType);
            classTypeWriter.print(Typography.less);
        }
        this.nameAndType.print(classTypeWriter, 0);
        if (i == 2) {
            classTypeWriter.print(Typography.greater);
        }
    }
}
