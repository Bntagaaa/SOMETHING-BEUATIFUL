package gnu.bytecode;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.Writer;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class ClassTypeWriter extends PrintWriter {
    public static final int PRINT_CONSTANT_POOL = 1;
    public static final int PRINT_CONSTANT_POOL_INDEXES = 2;
    public static final int PRINT_EXTRAS = 8;
    public static final int PRINT_VERBOSE = 15;
    public static final int PRINT_VERSION = 4;
    ClassType ctype;
    int flags;

    public ClassTypeWriter(ClassType classType, Writer writer, int i) {
        super(writer);
        this.ctype = classType;
        this.flags = i;
    }

    public ClassTypeWriter(ClassType classType, OutputStream outputStream, int i) {
        super(outputStream);
        this.ctype = classType;
        this.flags = i;
    }

    public void setFlags(int i) {
        this.flags = i;
    }

    public static void print(ClassType classType, PrintWriter printWriter, int i) throws IOException {
        ClassTypeWriter classTypeWriter = new ClassTypeWriter(classType, printWriter, i);
        classTypeWriter.print();
        classTypeWriter.flush();
    }

    public static void print(ClassType classType, PrintStream printStream, int i) throws IOException {
        ClassTypeWriter classTypeWriter = new ClassTypeWriter(classType, printStream, i);
        classTypeWriter.print();
        classTypeWriter.flush();
    }

    public void print() {
        if ((this.flags & 4) != 0) {
            print("Classfile format major version: ");
            print((int) this.ctype.getClassfileMajorVersion());
            print(", minor version: ");
            print((int) this.ctype.getClassfileMinorVersion());
            println('.');
        }
        if ((this.flags & 1) != 0) {
            printConstantPool();
        }
        printClassInfo();
        printFields();
        printMethods();
        printAttributes();
    }

    public void setClass(ClassType classType) {
        this.ctype = classType;
    }

    public void print(ClassType classType) {
        this.ctype = classType;
        print();
    }

    public void printAttributes() {
        ClassType classType = this.ctype;
        println();
        print("Attributes (count: ");
        print(Attribute.count(classType));
        println("):");
        printAttributes(classType);
    }

    public void printAttributes(AttrContainer attrContainer) {
        for (Attribute attributes = attrContainer.getAttributes(); attributes != null; attributes = attributes.next) {
            attributes.print(this);
        }
    }

    public void printClassInfo() {
        println();
        print("Access flags:");
        print(Access.toString(this.ctype.getModifiers(), Access.CLASS_CONTEXT));
        println();
        print("This class: ");
        printOptionalIndex(this.ctype.thisClassIndex);
        printConstantTersely(this.ctype.thisClassIndex, 7);
        print(" super: ");
        int i = this.ctype.superClassIndex;
        if (i == -1) {
            print("<unknown>");
        } else if (i == 0) {
            print("0");
        } else {
            printOptionalIndex(i);
            printConstantTersely(this.ctype.superClassIndex, 7);
        }
        println();
        print("Interfaces (count: ");
        int[] iArr = this.ctype.interfaceIndexes;
        int length = iArr == null ? 0 : iArr.length;
        print(length);
        print("):");
        println();
        for (int i2 = 0; i2 < length; i2++) {
            print("- Implements: ");
            int i3 = iArr[i2];
            printOptionalIndex(i3);
            printConstantTersely(i3, 7);
            println();
        }
    }

    public void printFields() {
        println();
        print("Fields (count: ");
        print(this.ctype.fields_count);
        print("):");
        println();
        for (Field field = this.ctype.fields; field != null; field = field.next) {
            print("Field name: ");
            int i = field.name_index;
            if (i != 0) {
                printOptionalIndex(i);
            }
            print(field.getName());
            print(Access.toString(field.flags, Access.FIELD_CONTEXT));
            print(" Signature: ");
            int i2 = field.signature_index;
            if (i2 != 0) {
                printOptionalIndex(i2);
            }
            printSignature(field.type);
            println();
            printAttributes(field);
        }
    }

    public void printMethods() {
        println();
        print("Methods (count: ");
        print(this.ctype.methods_count);
        print("):");
        println();
        for (Method method = this.ctype.methods; method != null; method = method.next) {
            printMethod(method);
        }
    }

    public void printMethod(Method method) {
        println();
        print("Method name:");
        int i = method.name_index;
        if (i != 0) {
            printOptionalIndex(i);
        }
        print(Typography.quote);
        print(method.getName());
        print(Typography.quote);
        print(Access.toString(method.access_flags, Access.METHOD_CONTEXT));
        print(" Signature: ");
        int i2 = method.signature_index;
        if (i2 != 0) {
            printOptionalIndex(i2);
        }
        print('(');
        for (int i3 = 0; i3 < method.arg_types.length; i3++) {
            if (i3 > 0) {
                print(',');
            }
            printSignature(method.arg_types[i3]);
        }
        print(')');
        printSignature(method.return_type);
        println();
        printAttributes(method);
    }

    public CpoolEntry getCpoolEntry(int i) {
        CpoolEntry[] cpoolEntryArr = this.ctype.constants.pool;
        if (cpoolEntryArr == null || i < 0 || i >= cpoolEntryArr.length) {
            return null;
        }
        return cpoolEntryArr[i];
    }

    public final void printConstantTersely(CpoolEntry cpoolEntry, int i) {
        if (cpoolEntry == null) {
            print("<invalid constant index>");
        } else {
            if (cpoolEntry.getTag() != i) {
                print("<unexpected constant type ");
                cpoolEntry.print(this, 1);
                print(Typography.greater);
                return;
            }
            cpoolEntry.print(this, 0);
        }
    }

    public final void printConstantTersely(int i, int i2) {
        printConstantTersely(getCpoolEntry(i), i2);
    }

    public final void printContantUtf8AsClass(int i) {
        CpoolEntry cpoolEntry = getCpoolEntry(i);
        if (cpoolEntry != null && cpoolEntry.getTag() == 1) {
            String str = ((CpoolUtf8) cpoolEntry).string;
            Type.printSignature(str, 0, str.length(), this);
        } else {
            printConstantTersely(i, 1);
        }
    }

    public final void printConstantOperand(int i) {
        CpoolEntry cpoolEntry;
        print(' ');
        printOptionalIndex(i);
        CpoolEntry[] cpoolEntryArr = this.ctype.constants.pool;
        if (cpoolEntryArr == null || i < 0 || i >= cpoolEntryArr.length || (cpoolEntry = cpoolEntryArr[i]) == null) {
            print("<invalid constant index>");
            return;
        }
        print(Typography.less);
        cpoolEntry.print(this, 1);
        print(Typography.greater);
    }

    public final void printQuotedString(String str) {
        print(Typography.quote);
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"') {
                print("\\\"");
            } else if (cCharAt >= ' ' && cCharAt < 127) {
                print(cCharAt);
            } else if (cCharAt == '\n') {
                print("\\n");
            } else {
                print("\\u");
                int i2 = 4;
                while (true) {
                    i2--;
                    if (i2 >= 0) {
                        print(Character.forDigit((cCharAt >> (i2 * 4)) & 15, 16));
                    }
                }
            }
        }
        print(Typography.quote);
    }

    public void printConstantPool() {
        ConstantPool constantPool = this.ctype.constants;
        CpoolEntry[] cpoolEntryArr = constantPool.pool;
        int i = constantPool.count;
        for (int i2 = 1; i2 <= i; i2++) {
            CpoolEntry cpoolEntry = cpoolEntryArr[i2];
            if (cpoolEntry != null) {
                print('#');
                print(cpoolEntry.index);
                print(": ");
                cpoolEntry.print(this, 2);
                println();
            }
        }
    }

    public final void printOptionalIndex(int i) {
        if ((this.flags & 2) != 0) {
            print('#');
            print(i);
            print('=');
        }
    }

    public final void printOptionalIndex(CpoolEntry cpoolEntry) {
        printOptionalIndex(cpoolEntry.index);
    }

    public void printName(String str) {
        print(str);
    }

    public final int printSignature(String str, int i) {
        int length = str.length();
        if (i >= length) {
            print("<empty signature>");
            return i;
        }
        int iSignatureLength = Type.signatureLength(str, i);
        if (iSignatureLength > 0) {
            int i2 = iSignatureLength + i;
            String strSignatureToName = Type.signatureToName(str.substring(i, i2));
            if (strSignatureToName != null) {
                print(strSignatureToName);
                return i2;
            }
        }
        char cCharAt = str.charAt(i);
        if (cCharAt != '(') {
            print(cCharAt);
            return i + 1;
        }
        int iPrintSignature = i + 1;
        print(cCharAt);
        int i3 = 0;
        while (iPrintSignature < length) {
            char cCharAt2 = str.charAt(iPrintSignature);
            if (cCharAt2 == ')') {
                print(cCharAt2);
                return printSignature(str, iPrintSignature + 1);
            }
            int i4 = i3 + 1;
            if (i3 > 0) {
                print(',');
            }
            iPrintSignature = printSignature(str, iPrintSignature);
            i3 = i4;
        }
        print("<truncated method signature>");
        return iPrintSignature;
    }

    public final void printSignature(String str) {
        int iPrintSignature = printSignature(str, 0);
        if (iPrintSignature < str.length()) {
            print("<trailing junk:");
            print(str.substring(iPrintSignature));
            print(Typography.greater);
        }
    }

    public final void printSignature(Type type) {
        if (type == null) {
            print("<unknown type>");
        } else {
            printSignature(type.getSignature());
        }
    }

    public void printSpaces(int i) {
        while (true) {
            i--;
            if (i < 0) {
                return;
            } else {
                print(' ');
            }
        }
    }
}
