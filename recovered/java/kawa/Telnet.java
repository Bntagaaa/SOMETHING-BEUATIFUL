package kawa;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* loaded from: classes2.dex */
public class Telnet implements Runnable {
    public static final int DO = 253;
    public static final int DONT = 254;
    public static final int ECHO = 1;
    static final int EOF = 236;
    static final int IAC = 255;
    static final int IP = 244;
    static final int LINEMODE = 34;
    static final int NAWS = 31;
    static final int NOP = 241;
    static final int OPTION_NO = 0;
    static final int OPTION_WANTNO = 1;
    static final int OPTION_WANTNO_OPPOSITE = 2;
    static final int OPTION_WANTYES = 3;
    static final int OPTION_WANTYES_OPPOSITE = 4;
    static final int OPTION_YES = 5;
    static final int SB = 250;
    static final int SE = 240;
    public static final int SUPPRESS_GO_AHEAD = 3;
    static final int TM = 6;
    static final int TTYPE = 24;
    public static final int WILL = 251;
    public static final int WONT = 252;
    TelnetInputStream in;
    boolean isServer;
    TelnetOutputStream out;
    InputStream sin;
    OutputStream sout;
    public byte[] terminalType;
    public short windowHeight;
    public short windowWidth;
    final byte preferredLineMode = 3;
    final byte[] optionsState = new byte[256];

    public TelnetInputStream getInputStream() {
        return this.in;
    }

    public TelnetOutputStream getOutputStream() {
        return this.out;
    }

    public boolean change(int i, int i2) {
        if (i2 == 6) {
            return true;
        }
        boolean z = this.isServer;
        if (z && i2 == 31) {
            return true;
        }
        if (z && i == 251 && i2 == 34) {
            try {
                this.out.writeSubCommand(34, new byte[]{1, 3});
            } catch (IOException unused) {
            }
            return true;
        }
        if (!z || i != 251 || i2 != 24) {
            return !z && i2 == 1 && i != 253 && i == 251;
        }
        try {
            this.out.writeSubCommand(i2, new byte[]{1});
        } catch (IOException unused2) {
        }
        return true;
    }

    public void subCommand(byte[] bArr, int i, int i2) {
        byte b2 = bArr[i];
        if (b2 == 24) {
            int i3 = i2 - 1;
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, 1, bArr2, 0, i3);
            this.terminalType = bArr2;
            System.err.println("terminal type: '" + new String(bArr2) + "'");
            return;
        }
        int i4 = 2;
        if (b2 == 31) {
            if (i2 == 5) {
                this.windowWidth = (short) ((bArr[1] << 8) + (bArr[2] & 255));
                this.windowHeight = (short) ((bArr[3] << 8) + (bArr[4] & 255));
                return;
            }
            return;
        }
        if (b2 != 34) {
            return;
        }
        System.err.println("SBCommand LINEMODE " + ((int) bArr[1]) + " len:" + i2);
        if (bArr[1] != 3) {
            return;
        }
        while (true) {
            int i5 = i4 + 2;
            if (i5 >= i2) {
                return;
            }
            System.err.println("  " + ((int) bArr[i4]) + "," + ((int) bArr[i4 + 1]) + "," + ((int) bArr[i5]));
            i4 += 3;
        }
    }

    public void handle(int i, int i2) throws IOException {
        int i3;
        int i4 = 1;
        int i5 = DO;
        boolean z = i < 253;
        boolean z2 = (i & 1) != 0;
        byte b2 = this.optionsState[i2];
        if (z) {
            b2 = (byte) (b2 >> 3);
        }
        int i6 = (b2 >> 3) & 7;
        int i7 = WONT;
        if (i6 != 0) {
            if (i6 == 1) {
                i4 = 0;
            } else if (i6 != 2) {
                if (i6 != 3) {
                    if (i6 != 4) {
                        if (i6 == 5) {
                            if (z2) {
                                return;
                            }
                            change(i, i2);
                            TelnetOutputStream telnetOutputStream = this.out;
                            if (z) {
                                i7 = DONT;
                            }
                            telnetOutputStream.writeCommand(i7, i2);
                        }
                        i4 = b2;
                    } else if (z2) {
                        TelnetOutputStream telnetOutputStream2 = this.out;
                        if (z) {
                            i7 = DONT;
                        }
                        telnetOutputStream2.writeCommand(i7, i2);
                    }
                } else if (z2) {
                    change(i, i2);
                    i4 = 5;
                }
                i4 = 0;
            } else {
                TelnetOutputStream telnetOutputStream3 = this.out;
                if (!z) {
                    i5 = WILL;
                }
                telnetOutputStream3.writeCommand(i5, i2);
                i4 = 3;
            }
        } else {
            if (!z2) {
                return;
            }
            if (change(i, i2)) {
                TelnetOutputStream telnetOutputStream4 = this.out;
                if (!z) {
                    i5 = WILL;
                }
                telnetOutputStream4.writeCommand(i5, i2);
                i4 = 5;
            } else {
                TelnetOutputStream telnetOutputStream5 = this.out;
                if (z) {
                    i7 = DONT;
                }
                telnetOutputStream5.writeCommand(i7, i2);
                i4 = b2;
            }
        }
        if (z) {
            i3 = this.optionsState[i2] & 199;
            i4 <<= 3;
        } else {
            i3 = this.optionsState[i2] & 248;
        }
        this.optionsState[i2] = (byte) (i3 | i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void request(int r8, int r9) throws java.io.IOException {
        /*
            r7 = this;
            r0 = 253(0xfd, float:3.55E-43)
            r1 = 0
            r2 = 1
            if (r8 < r0) goto L8
            r0 = 1
            goto L9
        L8:
            r0 = 0
        L9:
            r3 = r8 & 1
            if (r3 == 0) goto Le
            r1 = 1
        Le:
            byte[] r3 = r7.optionsState
            r3 = r3[r9]
            if (r0 == 0) goto L17
            int r3 = r3 >> 3
            byte r3 = (byte) r3
        L17:
            r4 = r3 & 7
            r5 = 3
            if (r4 == 0) goto L42
            r6 = 2
            if (r4 == r2) goto L3e
            if (r4 == r6) goto L3b
            r6 = 4
            if (r4 == r5) goto L32
            if (r4 == r6) goto L36
            r6 = 5
            if (r4 == r6) goto L2a
            goto L4a
        L2a:
            if (r1 != 0) goto L4a
            kawa.TelnetOutputStream r1 = r7.out
            r1.writeCommand(r8, r9)
            goto L4b
        L32:
            if (r1 != 0) goto L36
            r2 = 4
            goto L37
        L36:
            r2 = r3
        L37:
            if (r1 == 0) goto L4b
        L39:
            r2 = 3
            goto L4b
        L3b:
            if (r1 != 0) goto L4a
            goto L4b
        L3e:
            if (r1 == 0) goto L4a
            r2 = 2
            goto L4b
        L42:
            if (r1 == 0) goto L4a
            kawa.TelnetOutputStream r1 = r7.out
            r1.writeCommand(r8, r9)
            goto L39
        L4a:
            r2 = r3
        L4b:
            if (r0 == 0) goto L58
            byte[] r8 = r7.optionsState
            r8 = r8[r9]
            r8 = r8 & 199(0xc7, float:2.79E-43)
            int r0 = r2 << 3
            r8 = r8 | r0
        L56:
            byte r8 = (byte) r8
            goto L60
        L58:
            byte[] r8 = r7.optionsState
            r8 = r8[r9]
            r8 = r8 & 248(0xf8, float:3.48E-43)
            r8 = r8 | r2
            goto L56
        L60:
            byte[] r0 = r7.optionsState
            r0[r9] = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.Telnet.request(int, int):void");
    }

    public static void usage() {
        System.err.println("Usage:  [java] kawa.Telnet HOST [PORT#]");
        System.exit(-1);
    }

    public static void main(String[] strArr) throws IOException {
        if (strArr.length == 0) {
            usage();
        }
        try {
            Telnet telnet = new Telnet(new Socket(strArr[0], strArr.length > 1 ? Integer.parseInt(strArr[1]) : 23), false);
            TelnetOutputStream outputStream = telnet.getOutputStream();
            Thread thread = new Thread(telnet);
            thread.setPriority(Thread.currentThread().getPriority() + 1);
            thread.start();
            byte[] bArr = new byte[1024];
            while (true) {
                int i = System.in.read();
                if (i >= 0) {
                    bArr[0] = (byte) i;
                    int iAvailable = System.in.available();
                    if (iAvailable > 0) {
                        if (iAvailable > 1023) {
                            iAvailable = 1023;
                        }
                        iAvailable = System.in.read(bArr, 1, iAvailable);
                    }
                    outputStream.write(bArr, 0, iAvailable + 1);
                } else {
                    thread.stop();
                    return;
                }
            }
        } catch (Exception e) {
            System.err.println(e);
        }
    }

    public Telnet(Socket socket, boolean z) throws IOException {
        this.sin = socket.getInputStream();
        this.sout = socket.getOutputStream();
        this.out = new TelnetOutputStream(this.sout);
        this.in = new TelnetInputStream(this.sin, this);
        this.isServer = z;
    }

    @Override // java.lang.Runnable
    public void run() throws IOException {
        try {
            TelnetInputStream inputStream = getInputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStream.read();
                if (i < 0) {
                    return;
                }
                bArr[0] = (byte) i;
                int iAvailable = inputStream.available();
                if (iAvailable > 0) {
                    if (iAvailable > 1023) {
                        iAvailable = 1023;
                    }
                    iAvailable = inputStream.read(bArr, 1, iAvailable);
                }
                System.out.write(bArr, 0, iAvailable + 1);
            }
        } catch (IOException e) {
            System.err.println(e);
            System.exit(-1);
        }
    }
}
