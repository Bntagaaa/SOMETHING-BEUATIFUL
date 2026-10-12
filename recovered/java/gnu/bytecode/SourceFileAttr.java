package gnu.bytecode;

import java.io.DataOutputStream;
import java.io.IOException;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public class SourceFileAttr extends Attribute {
    String filename;
    int filename_index;

    @Override // gnu.bytecode.Attribute
    public final int getLength() {
        return 2;
    }

    public String getSourceFile() {
        return this.filename;
    }

    public void setSourceFile(String str) {
        this.filename = str;
        this.filename_index = 0;
    }

    public static String fixSourceFile(String str) {
        char cCharAt;
        String property = System.getProperty("file.separator", "/");
        return (property == null || property.length() != 1 || (cCharAt = property.charAt(0)) == '/') ? str : str.replace(cCharAt, '/');
    }

    public static void setSourceFile(ClassType classType, String str) {
        Attribute attribute = Attribute.get(classType, "SourceFile");
        if (attribute != null && (attribute instanceof SourceFileAttr)) {
            ((SourceFileAttr) attribute).setSourceFile(str);
        } else {
            new SourceFileAttr(str).addToFrontOf(classType);
        }
    }

    public SourceFileAttr(String str) {
        super("SourceFile");
        this.filename = str;
    }

    public SourceFileAttr(int i, ClassType classType) {
        super("SourceFile");
        this.filename = ((CpoolUtf8) classType.constants.getForced(i, 1)).string;
        this.filename_index = i;
    }

    @Override // gnu.bytecode.Attribute
    public void assignConstants(ClassType classType) {
        super.assignConstants(classType);
        if (this.filename_index == 0) {
            this.filename_index = classType.getConstants().addUtf8(this.filename).getIndex();
        }
    }

    @Override // gnu.bytecode.Attribute
    public void write(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.writeShort(this.filename_index);
    }

    @Override // gnu.bytecode.Attribute
    public void print(ClassTypeWriter classTypeWriter) {
        classTypeWriter.print("Attribute \"");
        classTypeWriter.print(getName());
        classTypeWriter.print("\", length:");
        classTypeWriter.print(getLength());
        classTypeWriter.print(", ");
        classTypeWriter.printOptionalIndex(this.filename_index);
        classTypeWriter.print(Typography.quote);
        classTypeWriter.print(getSourceFile());
        classTypeWriter.println(Typography.quote);
    }
}
