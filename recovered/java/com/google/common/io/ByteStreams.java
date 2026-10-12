package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayDeque;
import java.util.Arrays;

@GwtIncompatible
/* loaded from: classes.dex */
public final class ByteStreams {

    /* renamed from: a, reason: collision with root package name */
    public static final OutputStream f4633a = new a();

    @CanIgnoreReturnValue
    @Beta
    public static long exhaust(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[8192];
        long j = 0;
        while (true) {
            long j2 = inputStream.read(bArr);
            if (j2 == -1) {
                return j;
            }
            j += j2;
        }
    }

    private ByteStreams() {
    }

    @CanIgnoreReturnValue
    public static long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkNotNull(outputStream);
        byte[] bArr = new byte[8192];
        long j = 0;
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return j;
            }
            outputStream.write(bArr, 0, i);
            j += i;
        }
    }

    @CanIgnoreReturnValue
    public static long copy(ReadableByteChannel readableByteChannel, WritableByteChannel writableByteChannel) throws IOException {
        Preconditions.checkNotNull(readableByteChannel);
        Preconditions.checkNotNull(writableByteChannel);
        long jWrite = 0;
        if (readableByteChannel instanceof FileChannel) {
            FileChannel fileChannel = (FileChannel) readableByteChannel;
            long jPosition = fileChannel.position();
            long j = jPosition;
            while (true) {
                WritableByteChannel writableByteChannel2 = writableByteChannel;
                long jTransferTo = fileChannel.transferTo(j, 524288L, writableByteChannel2);
                j += jTransferTo;
                fileChannel.position(j);
                if (jTransferTo <= 0 && j >= fileChannel.size()) {
                    return j - jPosition;
                }
                writableByteChannel = writableByteChannel2;
            }
        } else {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[8192]);
            while (readableByteChannel.read(byteBufferWrap) != -1) {
                byteBufferWrap.flip();
                while (byteBufferWrap.hasRemaining()) {
                    jWrite += writableByteChannel.write(byteBufferWrap);
                }
                byteBufferWrap.clear();
            }
            return jWrite;
        }
    }

    public static byte[] c(InputStream inputStream, ArrayDeque arrayDeque, int i) throws IOException {
        int iSaturatedMultiply = 8192;
        while (i < 2147483639) {
            int iMin = Math.min(iSaturatedMultiply, 2147483639 - i);
            byte[] bArr = new byte[iMin];
            arrayDeque.add(bArr);
            int i2 = 0;
            while (i2 < iMin) {
                int i3 = inputStream.read(bArr, i2, iMin - i2);
                if (i3 == -1) {
                    byte[] bArr2 = new byte[i];
                    int i4 = i;
                    while (i4 > 0) {
                        byte[] bArr3 = (byte[]) arrayDeque.removeFirst();
                        int iMin2 = Math.min(i4, bArr3.length);
                        System.arraycopy(bArr3, 0, bArr2, i - i4, iMin2);
                        i4 -= iMin2;
                    }
                    return bArr2;
                }
                i2 += i3;
                i += i3;
            }
            iSaturatedMultiply = IntMath.saturatedMultiply(iSaturatedMultiply, 2);
        }
        if (inputStream.read() != -1) {
            throw new OutOfMemoryError("input is too large to fit in a byte array");
        }
        byte[] bArr4 = new byte[2147483639];
        int i5 = 2147483639;
        while (i5 > 0) {
            byte[] bArr5 = (byte[]) arrayDeque.removeFirst();
            int iMin3 = Math.min(i5, bArr5.length);
            System.arraycopy(bArr5, 0, bArr4, 2147483639 - i5, iMin3);
            i5 -= iMin3;
        }
        return bArr4;
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        Preconditions.checkNotNull(inputStream);
        return c(inputStream, new ArrayDeque(20), 0);
    }

    public static byte[] b(InputStream inputStream, long j) throws IOException {
        Preconditions.checkArgument(j >= 0, "expectedSize (%s) must be non-negative", j);
        if (j > 2147483639) {
            throw new OutOfMemoryError(j + " bytes is too large to fit in a byte array");
        }
        int i = (int) j;
        byte[] bArr = new byte[i];
        int i2 = i;
        while (i2 > 0) {
            int i3 = i - i2;
            int i4 = inputStream.read(bArr, i3, i2);
            if (i4 == -1) {
                return Arrays.copyOf(bArr, i3);
            }
            i2 -= i4;
        }
        int i5 = inputStream.read();
        if (i5 == -1) {
            return bArr;
        }
        ArrayDeque arrayDeque = new ArrayDeque(22);
        arrayDeque.add(bArr);
        arrayDeque.add(new byte[]{(byte) i5});
        return c(inputStream, arrayDeque, i + 1);
    }

    @Beta
    public static ByteArrayDataInput newDataInput(byte[] bArr) {
        return newDataInput(new ByteArrayInputStream(bArr));
    }

    @Beta
    public static ByteArrayDataInput newDataInput(byte[] bArr, int i) {
        Preconditions.checkPositionIndex(i, bArr.length);
        return newDataInput(new ByteArrayInputStream(bArr, i, bArr.length - i));
    }

    @Beta
    public static ByteArrayDataInput newDataInput(ByteArrayInputStream byteArrayInputStream) {
        return new b((ByteArrayInputStream) Preconditions.checkNotNull(byteArrayInputStream));
    }

    public static class b implements ByteArrayDataInput {

        /* renamed from: a, reason: collision with root package name */
        public final DataInputStream f4634a;

        public b(ByteArrayInputStream byteArrayInputStream) {
            this.f4634a = new DataInputStream(byteArrayInputStream);
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public void readFully(byte[] bArr) throws IOException {
            try {
                this.f4634a.readFully(bArr);
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public void readFully(byte[] bArr, int i, int i2) throws IOException {
            try {
                this.f4634a.readFully(bArr, i, i2);
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public int skipBytes(int i) {
            try {
                return this.f4634a.skipBytes(i);
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public boolean readBoolean() {
            try {
                return this.f4634a.readBoolean();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public byte readByte() {
            try {
                return this.f4634a.readByte();
            } catch (EOFException e) {
                throw new IllegalStateException(e);
            } catch (IOException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public int readUnsignedByte() {
            try {
                return this.f4634a.readUnsignedByte();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public short readShort() {
            try {
                return this.f4634a.readShort();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public int readUnsignedShort() {
            try {
                return this.f4634a.readUnsignedShort();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public char readChar() {
            try {
                return this.f4634a.readChar();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public int readInt() {
            try {
                return this.f4634a.readInt();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public long readLong() {
            try {
                return this.f4634a.readLong();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public float readFloat() {
            try {
                return this.f4634a.readFloat();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public double readDouble() {
            try {
                return this.f4634a.readDouble();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public String readLine() {
            try {
                return this.f4634a.readLine();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataInput, java.io.DataInput
        public String readUTF() {
            try {
                return this.f4634a.readUTF();
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    @Beta
    public static ByteArrayDataOutput newDataOutput() {
        return newDataOutput(new ByteArrayOutputStream());
    }

    @Beta
    public static ByteArrayDataOutput newDataOutput(int i) {
        if (i >= 0) {
            return newDataOutput(new ByteArrayOutputStream(i));
        }
        throw new IllegalArgumentException(_COROUTINE.a.d(i, "Invalid size: "));
    }

    @Beta
    public static ByteArrayDataOutput newDataOutput(ByteArrayOutputStream byteArrayOutputStream) {
        return new c((ByteArrayOutputStream) Preconditions.checkNotNull(byteArrayOutputStream));
    }

    public static class c implements ByteArrayDataOutput {

        /* renamed from: a, reason: collision with root package name */
        public final DataOutputStream f4635a;

        /* renamed from: b, reason: collision with root package name */
        public final ByteArrayOutputStream f4636b;

        public c(ByteArrayOutputStream byteArrayOutputStream) {
            this.f4636b = byteArrayOutputStream;
            this.f4635a = new DataOutputStream(byteArrayOutputStream);
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void write(int i) throws IOException {
            try {
                this.f4635a.write(i);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void write(byte[] bArr) throws IOException {
            try {
                this.f4635a.write(bArr);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                this.f4635a.write(bArr, i, i2);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeBoolean(boolean z) throws IOException {
            try {
                this.f4635a.writeBoolean(z);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeByte(int i) throws IOException {
            try {
                this.f4635a.writeByte(i);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeBytes(String str) throws IOException {
            try {
                this.f4635a.writeBytes(str);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeChar(int i) throws IOException {
            try {
                this.f4635a.writeChar(i);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeChars(String str) throws IOException {
            try {
                this.f4635a.writeChars(str);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeDouble(double d) throws IOException {
            try {
                this.f4635a.writeDouble(d);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeFloat(float f) throws IOException {
            try {
                this.f4635a.writeFloat(f);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeInt(int i) throws IOException {
            try {
                this.f4635a.writeInt(i);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeLong(long j) throws IOException {
            try {
                this.f4635a.writeLong(j);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeShort(int i) throws IOException {
            try {
                this.f4635a.writeShort(i);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput, java.io.DataOutput
        public void writeUTF(String str) throws IOException {
            try {
                this.f4635a.writeUTF(str);
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.common.io.ByteArrayDataOutput
        public byte[] toByteArray() {
            return this.f4636b.toByteArray();
        }
    }

    public static class a extends OutputStream {
        @Override // java.io.OutputStream
        public void write(int i) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            Preconditions.checkNotNull(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            Preconditions.checkNotNull(bArr);
        }

        public String toString() {
            return "ByteStreams.nullOutputStream()";
        }
    }

    @Beta
    public static OutputStream nullOutputStream() {
        return f4633a;
    }

    @Beta
    public static InputStream limit(InputStream inputStream, long j) {
        return new d(inputStream, j);
    }

    public static final class d extends FilterInputStream {

        /* renamed from: a, reason: collision with root package name */
        public long f4637a;

        /* renamed from: b, reason: collision with root package name */
        public long f4638b;

        public d(InputStream inputStream, long j) {
            super(inputStream);
            this.f4638b = -1L;
            Preconditions.checkNotNull(inputStream);
            Preconditions.checkArgument(j >= 0, "limit must be non-negative");
            this.f4637a = j;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int available() throws IOException {
            return (int) Math.min(((FilterInputStream) this).in.available(), this.f4637a);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void mark(int i) {
            ((FilterInputStream) this).in.mark(i);
            this.f4638b = this.f4637a;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            if (this.f4637a == 0) {
                return -1;
            }
            int i = ((FilterInputStream) this).in.read();
            if (i != -1) {
                this.f4637a--;
            }
            return i;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            long j = this.f4637a;
            if (j == 0) {
                return -1;
            }
            int i3 = ((FilterInputStream) this).in.read(bArr, i, (int) Math.min(i2, j));
            if (i3 != -1) {
                this.f4637a -= i3;
            }
            return i3;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void reset() throws IOException {
            if (!((FilterInputStream) this).in.markSupported()) {
                throw new IOException("Mark not supported");
            }
            if (this.f4638b == -1) {
                throw new IOException("Mark not set");
            }
            ((FilterInputStream) this).in.reset();
            this.f4637a = this.f4638b;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j) throws IOException {
            long jSkip = ((FilterInputStream) this).in.skip(Math.min(j, this.f4637a));
            this.f4637a -= jSkip;
            return jSkip;
        }
    }

    @Beta
    public static void readFully(InputStream inputStream, byte[] bArr) throws IOException {
        readFully(inputStream, bArr, 0, bArr.length);
    }

    @Beta
    public static void readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int i3 = read(inputStream, bArr, i, i2);
        if (i3 == i2) {
            return;
        }
        throw new EOFException("reached end of stream after reading " + i3 + " bytes; " + i2 + " bytes expected");
    }

    @Beta
    public static void skipFully(InputStream inputStream, long j) throws IOException {
        long jA = a(inputStream, j);
        if (jA >= j) {
            return;
        }
        throw new EOFException("reached end of stream after skipping " + jA + " bytes; " + j + " bytes expected");
    }

    public static long a(InputStream inputStream, long j) throws IOException {
        byte[] bArr = null;
        long j2 = 0;
        while (j2 < j) {
            long j3 = j - j2;
            int iAvailable = inputStream.available();
            long jSkip = iAvailable == 0 ? 0L : inputStream.skip(Math.min(iAvailable, j3));
            if (jSkip == 0) {
                int iMin = (int) Math.min(j3, 8192L);
                if (bArr == null) {
                    bArr = new byte[iMin];
                }
                jSkip = inputStream.read(bArr, 0, iMin);
                if (jSkip == -1) {
                    break;
                }
            }
            j2 += jSkip;
        }
        return j2;
    }

    @CanIgnoreReturnValue
    @Beta
    public static <T> T readBytes(InputStream inputStream, ByteProcessor<T> byteProcessor) throws IOException {
        int i;
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkNotNull(byteProcessor);
        byte[] bArr = new byte[8192];
        do {
            i = inputStream.read(bArr);
            if (i == -1) {
                break;
            }
        } while (byteProcessor.processBytes(bArr, 0, i));
        return byteProcessor.getResult();
    }

    @CanIgnoreReturnValue
    @Beta
    public static int read(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        Preconditions.checkNotNull(inputStream);
        Preconditions.checkNotNull(bArr);
        if (i2 < 0) {
            throw new IndexOutOfBoundsException(_COROUTINE.a.e(i2, "len (", ") cannot be negative"));
        }
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        int i3 = 0;
        while (i3 < i2) {
            int i4 = inputStream.read(bArr, i + i3, i2 - i3);
            if (i4 == -1) {
                break;
            }
            i3 += i4;
        }
        return i3;
    }
}
