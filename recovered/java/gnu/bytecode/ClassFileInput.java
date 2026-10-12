package gnu.bytecode;

import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class ClassFileInput extends DataInputStream {
    ClassType ctype;
    InputStream str;

    public ClassFileInput(InputStream inputStream) throws IOException {
        super(inputStream);
    }

    public ClassFileInput(ClassType classType, InputStream inputStream) throws IOException, ClassFormatError {
        super(inputStream);
        this.ctype = classType;
        if (!readHeader()) {
            throw new ClassFormatError("invalid magic number");
        }
        classType.constants = readConstants();
        readClassInfo();
        readFields();
        readMethods();
        readAttributes(classType);
    }

    public static ClassType readClassType(InputStream inputStream) throws IOException, ClassFormatError {
        ClassType classType = new ClassType();
        new ClassFileInput(classType, inputStream);
        return classType;
    }

    public boolean readHeader() throws IOException {
        if (readInt() != -889275714) {
            return false;
        }
        readFormatVersion();
        return true;
    }

    public void readFormatVersion() throws IOException {
        this.ctype.classfileFormatVersion = (readUnsignedShort() * 65536) + readUnsignedShort();
    }

    public ConstantPool readConstants() throws IOException {
        return new ConstantPool(this);
    }

    public void readClassInfo() throws IOException {
        this.ctype.access_flags = readUnsignedShort();
        this.ctype.thisClassIndex = readUnsignedShort();
        String str = getClassConstant(this.ctype.thisClassIndex).name.string;
        this.ctype.this_name = str.replace('/', '.');
        this.ctype.setSignature("L" + str + ";");
        this.ctype.superClassIndex = readUnsignedShort();
        ClassType classType = this.ctype;
        int i = classType.superClassIndex;
        if (i == 0) {
            classType.setSuper((ClassType) null);
        } else {
            this.ctype.setSuper(getClassConstant(i).name.string.replace('/', '.'));
        }
        int unsignedShort = readUnsignedShort();
        if (unsignedShort > 0) {
            ClassType classType2 = this.ctype;
            classType2.interfaces = new ClassType[unsignedShort];
            classType2.interfaceIndexes = new int[unsignedShort];
            for (int i2 = 0; i2 < unsignedShort; i2++) {
                int unsignedShort2 = readUnsignedShort();
                ClassType classType3 = this.ctype;
                classType3.interfaceIndexes[i2] = unsignedShort2;
                this.ctype.interfaces[i2] = ClassType.make(((CpoolClass) classType3.constants.getForced(unsignedShort2, 7)).name.string.replace('/', '.'));
            }
        }
    }

    public int readAttributes(AttrContainer attrContainer) throws IOException {
        int unsignedShort = readUnsignedShort();
        Attribute attributes = attrContainer.getAttributes();
        for (int i = 0; i < unsignedShort; i++) {
            if (attributes != null) {
                while (true) {
                    Attribute next = attributes.getNext();
                    if (next == null) {
                        break;
                    }
                    attributes = next;
                }
            }
            int unsignedShort2 = readUnsignedShort();
            CpoolUtf8 cpoolUtf8 = (CpoolUtf8) this.ctype.constants.getForced(unsignedShort2, 1);
            int i2 = readInt();
            cpoolUtf8.intern();
            Attribute attribute = readAttribute(cpoolUtf8.string, i2, attrContainer);
            if (attribute != null) {
                if (attribute.getNameIndex() == 0) {
                    attribute.setNameIndex(unsignedShort2);
                }
                if (attributes == null) {
                    attrContainer.setAttributes(attribute);
                } else {
                    if (attrContainer.getAttributes() == attribute) {
                        attrContainer.setAttributes(attribute.getNext());
                        attribute.setNext(null);
                    }
                    attributes.setNext(attribute);
                }
                attributes = attribute;
            }
        }
        return unsignedShort;
    }

    public final void skipAttribute(int i) throws IOException {
        int i2 = 0;
        while (i2 < i) {
            int iSkip = (int) skip(i - i2);
            if (iSkip == 0) {
                if (read() < 0) {
                    throw new EOFException("EOF while reading class files attributes");
                }
                iSkip = 1;
            }
            i2 += iSkip;
        }
    }

    public Attribute readAttribute(String str, int i, AttrContainer attrContainer) throws IOException {
        if (str == "SourceFile" && (attrContainer instanceof ClassType)) {
            return new SourceFileAttr(readUnsignedShort(), (ClassType) attrContainer);
        }
        int i2 = 0;
        if (str == "Code" && (attrContainer instanceof Method)) {
            CodeAttr codeAttr = new CodeAttr((Method) attrContainer);
            codeAttr.fixup_count = -1;
            codeAttr.setMaxStack(readUnsignedShort());
            codeAttr.setMaxLocals(readUnsignedShort());
            byte[] bArr = new byte[readInt()];
            readFully(bArr);
            codeAttr.setCode(bArr);
            int unsignedShort = readUnsignedShort();
            while (i2 < unsignedShort) {
                codeAttr.addHandler(readUnsignedShort(), readUnsignedShort(), readUnsignedShort(), readUnsignedShort());
                i2++;
            }
            readAttributes(codeAttr);
            return codeAttr;
        }
        if (str == "LineNumberTable" && (attrContainer instanceof CodeAttr)) {
            int unsignedShort2 = readUnsignedShort() * 2;
            short[] sArr = new short[unsignedShort2];
            while (i2 < unsignedShort2) {
                sArr[i2] = readShort();
                i2++;
            }
            return new LineNumbersAttr(sArr, (CodeAttr) attrContainer);
        }
        if (str == "LocalVariableTable" && (attrContainer instanceof CodeAttr)) {
            CodeAttr codeAttr2 = (CodeAttr) attrContainer;
            LocalVarsAttr localVarsAttr = new LocalVarsAttr(codeAttr2);
            Method method = localVarsAttr.getMethod();
            if (localVarsAttr.parameter_scope == null) {
                localVarsAttr.parameter_scope = method.pushScope();
            }
            Scope scope = localVarsAttr.parameter_scope;
            if (scope.end == null) {
                scope.end = new Label(codeAttr2.PC);
            }
            ConstantPool constants = method.getConstants();
            int unsignedShort3 = readUnsignedShort();
            int i3 = scope.start.position;
            int i4 = scope.end.position;
            while (i2 < unsignedShort3) {
                Variable variable = new Variable();
                int unsignedShort4 = readUnsignedShort();
                int unsignedShort5 = readUnsignedShort() + unsignedShort4;
                if (unsignedShort4 != i3 || unsignedShort5 != i4) {
                    while (true) {
                        Scope scope2 = scope.parent;
                        if (scope2 == null || (unsignedShort4 >= scope.start.position && unsignedShort5 <= scope.end.position)) {
                            break;
                        }
                        scope = scope2;
                    }
                    Scope scope3 = new Scope(new Label(unsignedShort4), new Label(unsignedShort5));
                    scope3.linkChild(scope);
                    scope = scope3;
                    i3 = unsignedShort4;
                    i4 = unsignedShort5;
                }
                scope.addVariable(variable);
                variable.setName(readUnsignedShort(), constants);
                variable.setSignature(readUnsignedShort(), constants);
                variable.offset = readUnsignedShort();
                i2++;
            }
            return localVarsAttr;
        }
        if (str == "Signature" && (attrContainer instanceof Member)) {
            return new SignatureAttr(readUnsignedShort(), (Member) attrContainer);
        }
        if (str == "StackMapTable" && (attrContainer instanceof CodeAttr)) {
            byte[] bArr2 = new byte[i];
            readFully(bArr2, 0, i);
            return new StackMapTableAttr(bArr2, (CodeAttr) attrContainer);
        }
        if ((str == "RuntimeVisibleAnnotations" || str == "RuntimeInvisibleAnnotations") && ((attrContainer instanceof Field) || (attrContainer instanceof Method) || (attrContainer instanceof ClassType))) {
            byte[] bArr3 = new byte[i];
            readFully(bArr3, 0, i);
            return new RuntimeAnnotationsAttr(str, bArr3, attrContainer);
        }
        if (str == "ConstantValue" && (attrContainer instanceof Field)) {
            return new ConstantValueAttr(readUnsignedShort());
        }
        if (str == "InnerClasses" && (attrContainer instanceof ClassType)) {
            int unsignedShort6 = readUnsignedShort() * 4;
            short[] sArr2 = new short[unsignedShort6];
            while (i2 < unsignedShort6) {
                sArr2[i2] = readShort();
                i2++;
            }
            return new InnerClassesAttr(sArr2, (ClassType) attrContainer);
        }
        if (str == "EnclosingMethod" && (attrContainer instanceof ClassType)) {
            return new EnclosingMethodAttr(readUnsignedShort(), readUnsignedShort(), (ClassType) attrContainer);
        }
        if (str == "Exceptions" && (attrContainer instanceof Method)) {
            Method method2 = (Method) attrContainer;
            int unsignedShort7 = readUnsignedShort();
            short[] sArr3 = new short[unsignedShort7];
            while (i2 < unsignedShort7) {
                sArr3[i2] = readShort();
                i2++;
            }
            method2.setExceptions(sArr3);
            return method2.getExceptionAttr();
        }
        if (str == "SourceDebugExtension" && (attrContainer instanceof ClassType)) {
            SourceDebugExtAttr sourceDebugExtAttr = new SourceDebugExtAttr((ClassType) attrContainer);
            byte[] bArr4 = new byte[i];
            readFully(bArr4, 0, i);
            sourceDebugExtAttr.data = bArr4;
            sourceDebugExtAttr.dlength = i;
            return sourceDebugExtAttr;
        }
        byte[] bArr5 = new byte[i];
        readFully(bArr5, 0, i);
        return new MiscAttr(str, bArr5);
    }

    public void readFields() throws IOException {
        int unsignedShort = readUnsignedShort();
        ConstantPool constantPool = this.ctype.constants;
        for (int i = 0; i < unsignedShort; i++) {
            int unsignedShort2 = readUnsignedShort();
            int unsignedShort3 = readUnsignedShort();
            int unsignedShort4 = readUnsignedShort();
            Field fieldAddField = this.ctype.addField();
            fieldAddField.setName(unsignedShort3, constantPool);
            fieldAddField.setSignature(unsignedShort4, constantPool);
            fieldAddField.flags = unsignedShort2;
            readAttributes(fieldAddField);
        }
    }

    public void readMethods() throws IOException {
        int unsignedShort = readUnsignedShort();
        for (int i = 0; i < unsignedShort; i++) {
            int unsignedShort2 = readUnsignedShort();
            int unsignedShort3 = readUnsignedShort();
            int unsignedShort4 = readUnsignedShort();
            Method methodAddMethod = this.ctype.addMethod(null, unsignedShort2);
            methodAddMethod.setName(unsignedShort3);
            methodAddMethod.setSignature(unsignedShort4);
            readAttributes(methodAddMethod);
        }
    }

    public CpoolClass getClassConstant(int i) {
        return (CpoolClass) this.ctype.constants.getForced(i, 7);
    }
}
