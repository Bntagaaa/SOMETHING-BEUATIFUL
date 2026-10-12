package com.google.appinventor.components.runtime.util;

import android.util.Log;
import gnu.expr.Language;
import gnu.mapping.Environment;
import gnu.mapping.OutPort;
import gnu.mapping.Procedure0;
import gnu.mapping.TtyInPort;
import gnu.mapping.Values;
import gnu.text.FilePath;
import java.io.IOException;
import java.net.Socket;
import kawa.Shell;
import kawa.Telnet;
import kawa.TelnetInputStream;
import kawa.TelnetOutputStream;

/* loaded from: classes.dex */
public class TelnetRepl extends Procedure0 {
    private static final int REPL_STACK_SIZE = 262144;
    Language language;
    Socket socket;

    public TelnetRepl(Language language, Socket socket) {
        this.language = language;
        this.socket = socket;
    }

    @Override // gnu.mapping.Procedure0, gnu.mapping.Procedure
    public Object apply0() throws IOException {
        Thread threadCurrentThread = Thread.currentThread();
        if (threadCurrentThread.getContextClassLoader() == null) {
            threadCurrentThread.setContextClassLoader(Telnet.class.getClassLoader());
        }
        try {
            try {
                Shell.run(this.language, Environment.getCurrent());
                return Values.empty;
            } catch (RuntimeException e) {
                Log.d("TelnetRepl", "Repl is exiting with error " + e.getMessage());
                e.printStackTrace();
                throw e;
            }
        } finally {
            try {
                this.socket.close();
            } catch (IOException unused) {
            }
        }
    }

    public static Thread serve(Language language, Socket socket) throws IOException {
        Telnet telnet = new Telnet(socket, true);
        TelnetOutputStream outputStream = telnet.getOutputStream();
        TelnetInputStream inputStream = telnet.getInputStream();
        OutPort outPort = new OutPort(outputStream, FilePath.valueOf("/dev/stdout"));
        BiggerFuture biggerFuture = new BiggerFuture(new TelnetRepl(language, socket), new TtyInPort(inputStream, FilePath.valueOf("/dev/stdin"), outPort), outPort, outPort, "Telnet Repl Thread", 262144L);
        biggerFuture.start();
        return biggerFuture;
    }
}
