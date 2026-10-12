package com.google.appinventor.components.runtime.repackaged.org.json.zip;

import java.io.IOException;
import java.io.InputStream;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* loaded from: classes.dex */
public class BitInputStream implements BitReader {
    static final int[] mask = {0, 1, 3, 7, 15, 31, 63, WorkQueueKt.MASK, 255};
    private int available;
    private InputStream in;
    private long nrBits;
    private int unread;

    public BitInputStream(InputStream inputStream) {
        this.available = 0;
        this.unread = 0;
        this.nrBits = 0L;
        this.in = inputStream;
    }

    public BitInputStream(InputStream inputStream, int i) {
        this.nrBits = 0L;
        this.in = inputStream;
        this.unread = i;
        this.available = 8;
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.BitReader
    public boolean bit() throws IOException {
        return read(1) != 0;
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.BitReader
    public long nrBits() {
        return this.nrBits;
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.BitReader
    public boolean pad(int i) throws IOException {
        int i2 = i - ((int) (this.nrBits % i));
        boolean z = true;
        for (int i3 = 0; i3 < i2; i3++) {
            if (bit()) {
                z = false;
            }
        }
        return z;
    }

    @Override // com.google.appinventor.components.runtime.repackaged.org.json.zip.BitReader
    public int read(int i) throws IOException {
        int i2 = 0;
        if (i == 0) {
            return 0;
        }
        if (i < 0 || i > 32) {
            throw new IOException("Bad read width.");
        }
        while (i > 0) {
            if (this.available == 0) {
                int i3 = this.in.read();
                this.unread = i3;
                if (i3 < 0) {
                    throw new IOException("Attempt to read past end.");
                }
                this.available = 8;
            }
            int i4 = this.available;
            int i5 = i > i4 ? i4 : i;
            i -= i5;
            i2 |= ((this.unread >>> (i4 - i5)) & mask[i5]) << i;
            this.nrBits += i5;
            this.available = i4 - i5;
        }
        return i2;
    }
}
