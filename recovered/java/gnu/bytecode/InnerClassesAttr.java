package gnu.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class InnerClassesAttr extends Attribute {
    int count;
    short[] data;

    public InnerClassesAttr(ClassType classType) {
        super("InnerClasses");
        addToFrontOf(classType);
    }

    public InnerClassesAttr(short[] sArr, ClassType classType) {
        this(classType);
        this.count = (short) (sArr.length >> 2);
        this.data = sArr;
    }

    public static InnerClassesAttr getFirstInnerClasses(Attribute attribute) {
        while (attribute != null && !(attribute instanceof InnerClassesAttr)) {
            attribute = attribute.next;
        }
        return (InnerClassesAttr) attribute;
    }

    public void addClass(CpoolClass cpoolClass, ClassType classType) {
        int i = this.count;
        this.count = i + 1;
        int i2 = i * 4;
        short[] sArr = this.data;
        if (sArr == null) {
            this.data = new short[16];
        } else if (i2 >= sArr.length) {
            short[] sArr2 = new short[i * 8];
            System.arraycopy(sArr, 0, sArr2, 0, i2);
            this.data = sArr2;
        }
        ConstantPool constantPool = classType.constants;
        ClassType classType2 = (ClassType) cpoolClass.getClassType();
        String simpleName = classType2.getSimpleName();
        int i3 = (simpleName == null || simpleName.length() == 0) ? 0 : constantPool.addUtf8(simpleName).index;
        this.data[i2] = (short) cpoolClass.index;
        ClassType declaringClass = classType2.getDeclaringClass();
        this.data[i2 + 1] = declaringClass != null ? (short) constantPool.addClass(declaringClass).index : (short) 0;
        this.data[i2 + 2] = (short) i3;
        this.data[i2 + 3] = (short) (classType2.getModifiers() & (-33));
    }

    @Override // gnu.bytecode.Attribute
    public void assignConstants(ClassType classType) {
        super.assignConstants(classType);
    }

    @Override // gnu.bytecode.Attribute
    public int getLength() {
        return (this.count * 8) + 2;
    }

    @Override // gnu.bytecode.Attribute
    public void write(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.count);
        for (int i = 0; i < this.count; i++) {
            int i2 = i * 4;
            dataOutputStream.writeShort(this.data[i2]);
            dataOutputStream.writeShort(this.data[i2 + 1]);
            dataOutputStream.writeShort(this.data[i2 + 2]);
            dataOutputStream.writeShort(this.data[i2 + 3]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    @Override // gnu.bytecode.Attribute
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void print(gnu.bytecode.ClassTypeWriter r13) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.bytecode.InnerClassesAttr.print(gnu.bytecode.ClassTypeWriter):void");
    }
}
