package gnu.mapping;

import gnu.text.Path;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* loaded from: classes2.dex */
public class TtyInPort extends InPort {
    protected boolean promptEmitted;
    protected Procedure prompter;
    protected OutPort tie;

    public Procedure getPrompter() {
        return this.prompter;
    }

    public void setPrompter(Procedure procedure) {
        this.prompter = procedure;
    }

    public TtyInPort(InputStream inputStream, Path path, OutPort outPort) {
        super(inputStream, path);
        setConvertCR(true);
        this.tie = outPort;
    }

    public TtyInPort(Reader reader, Path path, OutPort outPort) {
        super(reader, path);
        setConvertCR(true);
        this.tie = outPort;
    }

    @Override // gnu.text.LineBufferedReader
    public int fill(int i) throws IOException {
        int i2 = this.in.read(this.buffer, this.pos, i);
        OutPort outPort = this.tie;
        if (outPort != null && i2 > 0) {
            outPort.echo(this.buffer, this.pos, i2);
        }
        return i2;
    }

    public void emitPrompt(String str) throws IOException {
        this.tie.print(str);
        this.tie.flush();
        this.tie.clearBuffer();
    }

    @Override // gnu.text.LineBufferedReader
    public void lineStart(boolean z) throws IOException {
        String string;
        if (z) {
            return;
        }
        OutPort outPort = this.tie;
        if (outPort != null) {
            outPort.freshLine();
        }
        Procedure procedure = this.prompter;
        if (procedure != null) {
            try {
                Object objApply1 = procedure.apply1(this);
                if (objApply1 == null || (string = objApply1.toString()) == null || string.length() <= 0) {
                    return;
                }
                emitPrompt(string);
                this.promptEmitted = true;
            } catch (Throwable th) {
                throw new IOException("Error when evaluating prompt:" + th);
            }
        }
    }

    @Override // gnu.text.LineBufferedReader, java.io.Reader
    public int read() throws IOException {
        OutPort outPort = this.tie;
        if (outPort != null) {
            outPort.flush();
        }
        int i = super.read();
        if (i < 0) {
            boolean z = this.promptEmitted;
            OutPort outPort2 = this.tie;
            if (z & (outPort2 != null)) {
                outPort2.println();
            }
        }
        this.promptEmitted = false;
        return i;
    }

    @Override // gnu.text.LineBufferedReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        OutPort outPort = this.tie;
        if (outPort != null) {
            outPort.flush();
        }
        int i3 = super.read(cArr, i, i2);
        if (i3 < 0) {
            boolean z = this.promptEmitted;
            OutPort outPort2 = this.tie;
            if (z & (outPort2 != null)) {
                outPort2.println();
            }
        }
        this.promptEmitted = false;
        return i3;
    }
}
