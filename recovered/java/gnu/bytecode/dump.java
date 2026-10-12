package gnu.bytecode;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.Writer;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* loaded from: classes2.dex */
public class dump extends ClassFileInput {
    ClassTypeWriter writer;

    public dump(InputStream inputStream, ClassTypeWriter classTypeWriter) throws IOException, ClassFormatError {
        super(inputStream);
        this.ctype = new ClassType();
        readFormatVersion();
        readConstants();
        readClassInfo();
        readFields();
        readMethods();
        readAttributes(this.ctype);
        classTypeWriter.print(this.ctype);
        classTypeWriter.flush();
    }

    @Override // gnu.bytecode.ClassFileInput
    public ConstantPool readConstants() throws IOException {
        this.ctype.constants = super.readConstants();
        return this.ctype.constants;
    }

    @Override // gnu.bytecode.ClassFileInput
    public Attribute readAttribute(String str, int i, AttrContainer attrContainer) throws IOException {
        return super.readAttribute(str, i, attrContainer);
    }

    public static int readMagic(InputStream inputStream) throws IOException {
        int i;
        int i2 = 0;
        for (int i3 = 0; i3 < 4 && (i = inputStream.read()) >= 0; i3++) {
            i2 = (i2 << 8) | (i & 255);
        }
        return i2;
    }

    public static void process(InputStream inputStream, String str, OutputStream outputStream, int i) throws IOException {
        process(inputStream, str, new ClassTypeWriter((ClassType) null, outputStream, i));
    }

    public static void process(InputStream inputStream, String str, Writer writer, int i) throws IOException {
        process(inputStream, str, new ClassTypeWriter((ClassType) null, writer, i));
    }

    public static void process(InputStream inputStream, String str, ClassTypeWriter classTypeWriter) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        bufferedInputStream.mark(5);
        int magic = readMagic(bufferedInputStream);
        if (magic == -889275714) {
            classTypeWriter.print("Reading .class from ");
            classTypeWriter.print(str);
            classTypeWriter.println('.');
            new dump(bufferedInputStream, classTypeWriter);
            return;
        }
        if (magic == 1347093252) {
            bufferedInputStream.reset();
            classTypeWriter.print("Reading classes from archive ");
            classTypeWriter.print(str);
            classTypeWriter.println('.');
            ZipInputStream zipInputStream = new ZipInputStream(bufferedInputStream);
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry != null) {
                    String name = nextEntry.getName();
                    if (nextEntry.isDirectory()) {
                        classTypeWriter.print("Archive directory: ");
                        classTypeWriter.print(name);
                        classTypeWriter.println('.');
                    } else {
                        classTypeWriter.println();
                        if (readMagic(zipInputStream) == -889275714) {
                            classTypeWriter.print("Reading class member: ");
                            classTypeWriter.print(name);
                            classTypeWriter.println('.');
                            new dump(zipInputStream, classTypeWriter);
                        } else {
                            classTypeWriter.print("Skipping non-class member: ");
                            classTypeWriter.print(name);
                            classTypeWriter.println('.');
                        }
                    }
                } else {
                    System.exit(-1);
                    return;
                }
            }
        } else {
            System.err.println("File " + str + " is not a valid .class file");
            System.exit(-1);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:84|14|(4:16|(1:27)(4:20|21|86|22)|28|(0)(2:30|(7:32|82|38|80|39|72|98)(2:33|(1:35))))(1:37)|36|82|38|80|39|72|98) */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ea, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x010e, code lost:
    
        java.lang.System.err.print("Error opening zip archive ");
        java.lang.System.err.print(r8);
        java.lang.System.err.println(" not found.");
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0126, code lost:
    
        if (r0.getCause() != null) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0128, code lost:
    
        r0.getCause().printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x012f, code lost:
    
        java.lang.System.exit(r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0134, code lost:
    
        java.lang.System.err.print("File for URL ");
        java.lang.System.err.print(r8);
        java.lang.System.err.println(" not found.");
        java.lang.System.exit(r17);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void main(java.lang.String[] r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.bytecode.dump.main(java.lang.String[]):void");
    }

    public static int uriSchemeLength(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == ':') {
                return i;
            }
            if (i == 0) {
                if (!Character.isLetter(cCharAt)) {
                    return -1;
                }
            } else {
                if (!Character.isLetterOrDigit(cCharAt) && cCharAt != '+' && cCharAt != '-' && cCharAt != '.') {
                    return -1;
                }
            }
        }
        return -1;
    }

    public static boolean uriSchemeSpecified(String str) {
        int iUriSchemeLength = uriSchemeLength(str);
        if (iUriSchemeLength != 1 || File.separatorChar != '\\') {
            return iUriSchemeLength > 0;
        }
        char cCharAt = str.charAt(0);
        return (cCharAt < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z');
    }

    public static void usage(PrintStream printStream) {
        printStream.println("Prints and dis-assembles the contents of JVM .class files.");
        printStream.println("Usage: [--verbose] class-or-jar ...");
        printStream.println("where a class-or-jar can be one of:");
        printStream.println("- a fully-qualified class name; or");
        printStream.println("- the name of a .class file, or a URL reference to one; or");
        printStream.println("- the name of a .jar or .zip archive file, or a URL reference to one.");
        printStream.println("If a .jar/.zip archive is named, all its.class file members are printed.");
        printStream.println();
        printStream.println("You can name a single .class member of an archive with a jar: URL,");
        printStream.println("which looks like: jar:jar-spec!/p1/p2/cl.class");
        printStream.println("The jar-spec can be a URL or the name of the .jar file.");
        printStream.println("You can also use the shorthand syntax: jar:jar-spec!p1.p2.cl");
        System.exit(-1);
    }
}
