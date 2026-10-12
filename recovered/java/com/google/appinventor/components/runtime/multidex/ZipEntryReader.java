package com.google.appinventor.components.runtime.multidex;

import _COROUTINE.a;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.GregorianCalendar;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import kotlin.UShort;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* loaded from: classes.dex */
class ZipEntryReader {
    private static final long CENSIG = 33639248;
    private static final int GPBF_ENCRYPTED_FLAG = 1;
    private static final int GPBF_UNSUPPORTED_MASK = 1;
    static final Charset UTF_8 = Charset.forName("UTF-8");

    public static ZipEntry readEntry(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.getInt() != CENSIG) {
            throw new ZipException("Central Directory Entry not found");
        }
        short s = byteBuffer.getShort();
        int i = s & UShort.MAX_VALUE;
        if ((s & 1) != 0) {
            throw new ZipException(a.d(i, "Invalid General Purpose Bit Flag: "));
        }
        int i2 = byteBuffer.getShort() & UShort.MAX_VALUE;
        int i3 = byteBuffer.getShort() & UShort.MAX_VALUE;
        int i4 = byteBuffer.getShort() & UShort.MAX_VALUE;
        int i5 = byteBuffer.getShort() & UShort.MAX_VALUE;
        int i6 = byteBuffer.getShort() & UShort.MAX_VALUE;
        int i7 = 65535 & byteBuffer.getShort();
        byteBuffer.getInt();
        byte[] bArr = new byte[i5];
        byteBuffer.get(bArr, 0, i5);
        Charset charset = UTF_8;
        ZipEntry zipEntry = new ZipEntry(new String(bArr, 0, i5, charset));
        zipEntry.setMethod(i2);
        zipEntry.setTime(getTime(i3, i4));
        zipEntry.setCrc(byteBuffer.getInt() & 4294967295L);
        zipEntry.setCompressedSize(byteBuffer.getInt() & 4294967295L);
        zipEntry.setSize(4294967295L & byteBuffer.getInt());
        if (i7 > 0) {
            byte[] bArr2 = new byte[i7];
            byteBuffer.get(bArr2, 0, i7);
            zipEntry.setComment(new String(bArr2, 0, i7, charset));
        }
        if (i6 > 0) {
            byte[] bArr3 = new byte[i6];
            byteBuffer.get(bArr3, 0, i6);
            zipEntry.setExtra(bArr3);
        }
        return zipEntry;
    }

    private static long getTime(int i, int i2) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(14, 0);
        gregorianCalendar.set(((i2 >> 9) & WorkQueueKt.MASK) + 1980, ((i2 >> 5) & 15) - 1, i2 & 31, (i >> 11) & 31, (i >> 5) & 63, (i & 31) << 1);
        return gregorianCalendar.getTime().getTime();
    }
}
