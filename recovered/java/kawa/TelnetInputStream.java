package kawa;

import androidx.recyclerview.widget.ItemTouchHelper;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class TelnetInputStream extends FilterInputStream {
    static final int SB_IAC = 400;
    protected byte[] buf;
    Telnet connection;
    int count;
    int pos;
    int state;
    int subCommandLength;

    public TelnetInputStream(InputStream inputStream, Telnet telnet) throws IOException {
        super(inputStream);
        this.state = 0;
        this.subCommandLength = 0;
        this.buf = new byte[512];
        this.connection = telnet;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        while (true) {
            if (this.pos >= this.count) {
                int iAvailable = ((FilterInputStream) this).in.available();
                if (iAvailable <= 0) {
                    iAvailable = 1;
                } else {
                    byte[] bArr = this.buf;
                    int length = bArr.length;
                    int i = this.subCommandLength;
                    if (iAvailable > length - i) {
                        iAvailable = bArr.length - i;
                    }
                }
                int i2 = ((FilterInputStream) this).in.read(this.buf, this.subCommandLength, iAvailable);
                this.pos = this.subCommandLength;
                this.count = i2;
                if (i2 <= 0) {
                    return -1;
                }
            }
            byte[] bArr2 = this.buf;
            int i3 = this.pos;
            this.pos = i3 + 1;
            int i4 = bArr2[i3] & 255;
            int i5 = this.state;
            if (i5 == 0) {
                if (i4 != 255) {
                    return i4;
                }
                this.state = 255;
            } else if (i5 == 255) {
                if (i4 == 255) {
                    this.state = 0;
                    return 255;
                }
                if (i4 == 251 || i4 == 252 || i4 == 253 || i4 == 254 || i4 == 250) {
                    this.state = i4;
                } else if (i4 == 244) {
                    System.err.println("Interrupt Process");
                    this.state = 0;
                } else {
                    if (i4 == 236) {
                        return -1;
                    }
                    this.state = 0;
                }
            } else if (i5 == 251 || i5 == 252 || i5 == 253 || i5 == 254) {
                this.connection.handle(i5, i4);
                this.state = 0;
            } else if (i5 == 250) {
                if (i4 == 255) {
                    this.state = SB_IAC;
                } else {
                    int i6 = this.subCommandLength;
                    this.subCommandLength = i6 + 1;
                    bArr2[i6] = (byte) i4;
                }
            } else if (i5 != SB_IAC) {
                System.err.println("Bad state " + this.state);
            } else if (i4 == 255) {
                int i7 = this.subCommandLength;
                this.subCommandLength = i7 + 1;
                bArr2[i7] = (byte) i4;
                this.state = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
            } else if (i4 == 240) {
                this.connection.subCommand(bArr2, 0, this.subCommandLength);
                this.state = 0;
                this.subCommandLength = 0;
            } else {
                this.state = 0;
                this.subCommandLength = 0;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        byte b2;
        int i3 = 0;
        if (i2 <= 0) {
            return 0;
        }
        if (this.state != 0 || this.pos >= this.count) {
            int i4 = read();
            if (i4 < 0) {
                return i4;
            }
            bArr[i] = (byte) i4;
            i3 = 1;
            i++;
        }
        if (this.state == 0) {
            while (true) {
                int i5 = this.pos;
                if (i5 >= this.count || i3 >= i2 || (b2 = this.buf[i5]) == -1) {
                    break;
                }
                bArr[i] = b2;
                i3++;
                this.pos = i5 + 1;
                i++;
            }
        }
        return i3;
    }
}
