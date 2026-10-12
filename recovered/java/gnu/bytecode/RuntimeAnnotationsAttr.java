package gnu.bytecode;

/* loaded from: classes2.dex */
public class RuntimeAnnotationsAttr extends MiscAttr {
    int numEntries;

    public RuntimeAnnotationsAttr(String str, byte[] bArr, AttrContainer attrContainer) {
        super(str, bArr, 0, bArr.length);
        addToFrontOf(attrContainer);
        this.numEntries = u2(0);
    }

    @Override // gnu.bytecode.MiscAttr, gnu.bytecode.Attribute
    public void print(ClassTypeWriter classTypeWriter) {
        classTypeWriter.print("Attribute \"");
        classTypeWriter.print(getName());
        classTypeWriter.print("\", length:");
        classTypeWriter.print(getLength());
        classTypeWriter.print(", number of entries: ");
        classTypeWriter.println(this.numEntries);
        int i = this.offset;
        this.offset = i + 2;
        for (int i2 = 0; i2 < this.numEntries; i2++) {
            printAnnotation(2, classTypeWriter);
        }
        this.offset = i;
    }

    public void printAnnotation(int i, ClassTypeWriter classTypeWriter) {
        int iU2 = u2();
        classTypeWriter.printSpaces(i);
        classTypeWriter.printOptionalIndex(iU2);
        classTypeWriter.print('@');
        classTypeWriter.printContantUtf8AsClass(iU2);
        int iU22 = u2();
        classTypeWriter.println();
        int i2 = i + 2;
        for (int i3 = 0; i3 < iU22; i3++) {
            int iU23 = u2();
            classTypeWriter.printSpaces(i2);
            classTypeWriter.printOptionalIndex(iU23);
            classTypeWriter.printConstantTersely(iU23, 1);
            classTypeWriter.print(" => ");
            printAnnotationElementValue(i2, classTypeWriter);
            classTypeWriter.println();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void printAnnotationElementValue(int r7, gnu.bytecode.ClassTypeWriter r8) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.bytecode.RuntimeAnnotationsAttr.printAnnotationElementValue(int, gnu.bytecode.ClassTypeWriter):void");
    }
}
