package kawa;

import gnu.expr.Language;
import gnu.mapping.Environment;
import gnu.mapping.Future;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure0;
import gnu.mapping.TtyInPort;
import gnu.mapping.Values;
import gnu.text.FilePath;
import java.io.IOException;
import java.net.Socket;

/* loaded from: classes2.dex */
public class TelnetRepl extends Procedure0 {
    Language language;
    Socket socket;

    public TelnetRepl(Language language, Socket socket) {
        this.language = language;
        this.socket = socket;
    }

    @Override // gnu.mapping.Procedure0, gnu.mapping.Procedure
    public Object apply0() throws IOException {
        try {
            Shell.run(this.language, Environment.getCurrent());
            return Values.empty;
        } finally {
            try {
                this.socket.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void serve(Language language, Socket socket) throws IOException {
        Telnet telnet = new Telnet(socket, true);
        TelnetOutputStream outputStream = telnet.getOutputStream();
        TelnetInputStream inputStream = telnet.getInputStream();
        OutPort outPort = new OutPort(outputStream, FilePath.valueOf("/dev/stdout"));
        new Future(new TelnetRepl(language, socket), new TtyInPort(inputStream, FilePath.valueOf("/dev/stdin"), outPort), outPort, outPort).start();
    }
}
