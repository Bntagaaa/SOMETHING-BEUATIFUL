package gnu.mapping;

import gnu.lists.AbstractFormat;
import gnu.lists.Consumable;
import gnu.lists.Consumer;
import gnu.lists.PrintConsumer;
import gnu.text.Path;
import gnu.text.PrettyWriter;
import gnu.text.Printable;
import gnu.text.WriterManager;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.text.NumberFormat;

/* loaded from: classes2.dex */
public class OutPort extends PrintConsumer implements Printable {
    public static final ThreadLocation errLocation;
    static Writer logFile;
    public static final ThreadLocation outLocation;
    private Writer base;
    protected PrettyWriter bout;
    NumberFormat numberFormat;
    public AbstractFormat objectFormat;
    Path path;
    public boolean printReadable;
    protected Object unregisterRef;
    static OutPort outInitial = new OutPort(new LogWriter(new BufferedWriter(new OutputStreamWriter(System.out))), true, true, Path.valueOf("/dev/stdout"));
    private static OutPort errInitial = new OutPort(new LogWriter(new OutputStreamWriter(System.err)), true, true, Path.valueOf("/dev/stderr"));

    public boolean closeOnExit() {
        return true;
    }

    public OutPort(Writer writer, PrettyWriter prettyWriter, boolean z) {
        super(prettyWriter, z);
        this.bout = prettyWriter;
        this.base = writer;
        if (closeOnExit()) {
            this.unregisterRef = WriterManager.instance.register(prettyWriter);
        }
    }

    public OutPort(OutPort outPort, boolean z) {
        this(outPort, outPort.bout, z);
    }

    public OutPort(Writer writer, boolean z) {
        this(writer, writer instanceof OutPort ? ((OutPort) writer).bout : new PrettyWriter(writer, true), z);
    }

    public OutPort(Writer writer, boolean z, boolean z2) {
        this(writer, new PrettyWriter(writer, z), z2);
    }

    public OutPort(Writer writer, boolean z, boolean z2, Path path) {
        this(writer, new PrettyWriter(writer, z), z2);
        this.path = path;
    }

    public OutPort(OutputStream outputStream) {
        this(outputStream, (Path) null);
    }

    public OutPort(OutputStream outputStream, Path path) {
        this((Writer) new OutputStreamWriter(outputStream), true, path);
    }

    public OutPort(Writer writer) {
        this(writer, writer instanceof OutPort ? ((OutPort) writer).bout : new PrettyWriter(writer, false), false);
    }

    public OutPort(Writer writer, Path path) {
        this(writer, false, false);
        this.path = path;
    }

    public OutPort(Writer writer, boolean z, Path path) {
        this(writer, false, z);
        this.path = path;
    }

    static {
        ThreadLocation threadLocation = new ThreadLocation("out-default");
        outLocation = threadLocation;
        threadLocation.setGlobal(outInitial);
        ThreadLocation threadLocation2 = new ThreadLocation("err-default");
        errLocation = threadLocation2;
        threadLocation2.setGlobal(errInitial);
    }

    public static OutPort outDefault() {
        return (OutPort) outLocation.get();
    }

    public static void setOutDefault(OutPort outPort) {
        outLocation.set(outPort);
    }

    public static OutPort errDefault() {
        return (OutPort) errLocation.get();
    }

    public static void setErrDefault(OutPort outPort) {
        errLocation.set(outPort);
    }

    public static OutPort openFile(Object obj) throws IOException {
        OutputStreamWriter outputStreamWriter;
        Object obj2 = Environment.user().get("port-char-encoding");
        Path pathValueOf = Path.valueOf(obj);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(pathValueOf.openOutputStream());
        if (obj2 == null || obj2 == Boolean.TRUE) {
            outputStreamWriter = new OutputStreamWriter(bufferedOutputStream);
        } else {
            if (obj2 == Boolean.FALSE) {
                obj2 = "8859_1";
            }
            outputStreamWriter = new OutputStreamWriter(bufferedOutputStream, obj2.toString());
        }
        return new OutPort(outputStreamWriter, pathValueOf);
    }

    public void echo(char[] cArr, int i, int i2) throws IOException {
        Writer writer = this.base;
        if (writer instanceof LogWriter) {
            ((LogWriter) writer).echo(cArr, i, i2);
        }
    }

    public static void closeLogFile() throws IOException {
        Writer writer = logFile;
        if (writer != null) {
            writer.close();
            logFile = null;
        }
        Writer writer2 = outInitial.base;
        if (writer2 instanceof LogWriter) {
            ((LogWriter) writer2).setLogFile((Writer) null);
        }
        Writer writer3 = errInitial.base;
        if (writer3 instanceof LogWriter) {
            ((LogWriter) writer3).setLogFile((Writer) null);
        }
    }

    public static void setLogFile(String str) throws IOException {
        if (logFile != null) {
            closeLogFile();
        }
        PrintWriter printWriter = new PrintWriter(new BufferedWriter(new FileWriter(str)));
        logFile = printWriter;
        Writer writer = outInitial.base;
        if (writer instanceof LogWriter) {
            ((LogWriter) writer).setLogFile(printWriter);
        }
        Writer writer2 = errInitial.base;
        if (writer2 instanceof LogWriter) {
            ((LogWriter) writer2).setLogFile(logFile);
        }
    }

    public static final boolean isWordChar(char c) {
        return Character.isJavaIdentifierPart(c) || c == '-' || c == '+';
    }

    @Override // java.io.PrintWriter
    public void print(int i) throws IOException {
        NumberFormat numberFormat = this.numberFormat;
        if (numberFormat == null) {
            super.print(i);
        } else {
            print(numberFormat.format(i));
        }
    }

    @Override // java.io.PrintWriter
    public void print(long j) throws IOException {
        NumberFormat numberFormat = this.numberFormat;
        if (numberFormat == null) {
            super.print(j);
        } else {
            print(numberFormat.format(j));
        }
    }

    @Override // java.io.PrintWriter
    public void print(double d) throws IOException {
        NumberFormat numberFormat = this.numberFormat;
        if (numberFormat == null) {
            super.print(d);
        } else {
            print(numberFormat.format(d));
        }
    }

    @Override // java.io.PrintWriter
    public void print(float f) throws IOException {
        NumberFormat numberFormat = this.numberFormat;
        if (numberFormat == null) {
            super.print(f);
        } else {
            print(numberFormat.format(f));
        }
    }

    @Override // java.io.PrintWriter
    public void print(boolean z) {
        AbstractFormat abstractFormat = this.objectFormat;
        if (abstractFormat == null) {
            super.print(z);
        } else {
            abstractFormat.writeBoolean(z, this);
        }
    }

    @Override // java.io.PrintWriter
    public void print(String str) throws IOException {
        if (str == null) {
            str = "(null)";
        }
        write(str);
    }

    @Override // java.io.PrintWriter
    public void print(Object obj) {
        AbstractFormat abstractFormat = this.objectFormat;
        if (abstractFormat != null) {
            abstractFormat.writeObject(obj, (PrintConsumer) this);
        } else {
            if (obj instanceof Consumable) {
                ((Consumable) obj).consume(this);
                return;
            }
            if (obj == null) {
                obj = "null";
            }
            super.print(obj);
        }
    }

    @Override // gnu.text.Printable
    public void print(Consumer consumer) {
        consumer.write("#<output-port");
        if (this.path != null) {
            consumer.write(32);
            consumer.write(this.path.toString());
        }
        consumer.write(62);
    }

    @Override // gnu.lists.PrintConsumer, gnu.lists.Consumer
    public void startElement(Object obj) {
        AbstractFormat abstractFormat = this.objectFormat;
        if (abstractFormat != null) {
            abstractFormat.startElement(obj, this);
        } else {
            print('(');
            print(obj);
        }
    }

    @Override // gnu.lists.PrintConsumer, gnu.lists.Consumer
    public void endElement() {
        AbstractFormat abstractFormat = this.objectFormat;
        if (abstractFormat != null) {
            abstractFormat.endElement(this);
        } else {
            print(')');
        }
    }

    @Override // gnu.lists.PrintConsumer, gnu.lists.Consumer
    public void startAttribute(Object obj) throws IOException {
        AbstractFormat abstractFormat = this.objectFormat;
        if (abstractFormat != null) {
            abstractFormat.startAttribute(obj, this);
            return;
        }
        print(' ');
        print(obj);
        print(": ");
    }

    @Override // gnu.lists.PrintConsumer, gnu.lists.Consumer
    public void endAttribute() {
        AbstractFormat abstractFormat = this.objectFormat;
        if (abstractFormat != null) {
            abstractFormat.endAttribute(this);
        } else {
            print(' ');
        }
    }

    public void writeWordEnd() {
        this.bout.writeWordEnd();
    }

    public void writeWordStart() {
        this.bout.writeWordStart();
    }

    public void freshLine() {
        if (this.bout.getColumnNumber() != 0) {
            println();
        }
    }

    public int getColumnNumber() {
        return this.bout.getColumnNumber();
    }

    public void setColumnNumber(int i) {
        this.bout.setColumnNumber(i);
    }

    public void clearBuffer() {
        this.bout.clearBuffer();
    }

    public void closeThis() {
        try {
            Writer writer = this.base;
            if (!(writer instanceof OutPort) || ((OutPort) writer).bout != this.bout) {
                this.bout.closeThis();
            }
        } catch (IOException unused) {
            setError();
        }
        WriterManager.instance.unregister(this.unregisterRef);
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            Writer writer = this.base;
            if ((writer instanceof OutPort) && ((OutPort) writer).bout == this.bout) {
                writer.close();
            } else {
                ((PrintWriter) this).out.close();
            }
        } catch (IOException unused) {
            setError();
        }
        WriterManager.instance.unregister(this.unregisterRef);
    }

    public static void runCleanups() {
        WriterManager.instance.run();
    }

    public void startLogicalBlock(String str, boolean z, String str2) {
        this.bout.startLogicalBlock(str, z, str2);
    }

    public void startLogicalBlock(String str, String str2, int i) {
        this.bout.startLogicalBlock(str, false, str2);
        PrettyWriter prettyWriter = this.bout;
        if (str != null) {
            i -= str.length();
        }
        prettyWriter.addIndentation(i, false);
    }

    public void endLogicalBlock(String str) {
        this.bout.endLogicalBlock(str);
    }

    public void writeBreak(int i) {
        this.bout.writeBreak(i);
    }

    public void writeSpaceLinear() throws IOException {
        write(32);
        writeBreak(78);
    }

    public void writeBreakLinear() {
        writeBreak(78);
    }

    public void writeSpaceFill() throws IOException {
        write(32);
        writeBreak(70);
    }

    public void writeBreakFill() {
        writeBreak(70);
    }

    public void setIndentation(int i, boolean z) {
        this.bout.addIndentation(i, z);
    }
}
