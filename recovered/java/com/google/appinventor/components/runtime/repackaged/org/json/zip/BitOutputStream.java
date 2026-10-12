package com.google.appinventor.components.runtime.repackaged.org.json.zip;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class BitOutputStream implements BitWriter {
    private OutputStream out;
    private int unwritten;
    private long nrBits = 0;
    private int vacant = 8;

    public BitOutputStream(OutputStream outputStream) {
        this.out = outputStream;
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.BitWriter
    public long nrBits() {
        return this.nrBits;
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.BitWriter
    public void one() throws IOException {
        write(1, 1);
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.BitWriter
    public void pad(int i) throws IOException {
        int i2 = i - ((int) (this.nrBits % i));
        int i3 = i2 & 7;
        if (i3 > 0) {
            write(0, i3);
            i2 -= i3;
        }
        while (i2 > 0) {
            write(0, 8);
            i2 -= 8;
        }
        this.out.flush();
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.BitWriter
    public void write(int i, int i2) throws IOException {
        if (i == 0 && i2 == 0) {
            return;
        }
        if (i2 <= 0 || i2 > 32) {
            throw new IOException("Bad write width.");
        }
        while (i2 > 0) {
            int i3 = this.vacant;
            int i4 = i2 > i3 ? i3 : i2;
            i2 -= i4;
            int i5 = this.unwritten | (((i >>> i2) & BitInputStream.mask[i4]) << (i3 - i4));
            this.unwritten = i5;
            this.nrBits += i4;
            int i6 = i3 - i4;
            this.vacant = i6;
            if (i6 == 0) {
                this.out.write(i5);
                this.unwritten = 0;
                this.vacant = 8;
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.BitWriter
    public void zero() throws IOException {
        write(0, 1);
    }
}
