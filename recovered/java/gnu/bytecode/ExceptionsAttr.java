package gnu.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import kotlin.UShort;

/* loaded from: classes2.dex */
public class ExceptionsAttr extends Attribute {
    short[] exception_table;
    ClassType[] exceptions;

    public ExceptionsAttr(Method method) {
        super("Exceptions");
        addToFrontOf(method);
    }

    public void setExceptions(short[] sArr, ClassType classType) {
        this.exception_table = sArr;
        this.exceptions = new ClassType[sArr.length];
        ConstantPool constants = classType.getConstants();
        for (int length = sArr.length - 1; length >= 0; length--) {
            this.exceptions[length] = (ClassType) ((CpoolClass) constants.getPoolEntry(sArr[length])).getClassType();
        }
    }

    public void setExceptions(ClassType[] classTypeArr) {
        this.exceptions = classTypeArr;
    }

    @Override // gnu.bytecode.Attribute
    public void assignConstants(ClassType classType) {
        super.assignConstants(classType);
        ConstantPool constants = classType.getConstants();
        int length = this.exceptions.length;
        this.exception_table = new short[length];
        for (int i = length - 1; i >= 0; i--) {
            this.exception_table[i] = (short) constants.addClass(this.exceptions[i]).index;
        }
    }

    @Override // gnu.bytecode.Attribute
    public final int getLength() {
        ClassType[] classTypeArr = this.exceptions;
        return ((classTypeArr == null ? 0 : classTypeArr.length) * 2) + 2;
    }

    public final ClassType[] getExceptions() {
        return this.exceptions;
    }

    @Override // gnu.bytecode.Attribute
    public void write(DataOutputStream dataOutputStream) throws IOException {
        int length = this.exceptions.length;
        dataOutputStream.writeShort(length);
        for (int i = 0; i < length; i++) {
            dataOutputStream.writeShort(this.exception_table[i]);
        }
    }

    @Override // gnu.bytecode.Attribute
    public void print(ClassTypeWriter classTypeWriter) {
        classTypeWriter.print("Attribute \"");
        classTypeWriter.print(getName());
        classTypeWriter.print("\", length:");
        classTypeWriter.print(getLength());
        classTypeWriter.print(", count: ");
        int length = this.exceptions.length;
        classTypeWriter.println(length);
        for (int i = 0; i < length; i++) {
            int i2 = this.exception_table[i] & UShort.MAX_VALUE;
            classTypeWriter.print("  ");
            classTypeWriter.printOptionalIndex(i2);
            classTypeWriter.printConstantTersely(i2, 7);
            classTypeWriter.println();
        }
    }
}
