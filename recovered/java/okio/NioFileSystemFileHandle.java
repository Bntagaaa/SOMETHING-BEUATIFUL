package okio;

import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\bH\u0014¢\u0006\u0004\b\r\u0010\u000eJ/\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J/\u0010\u0017\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\nH\u0014¢\u0006\u0004\b\u001b\u0010\u001a¨\u0006\u001c"}, d2 = {"Lokio/NioFileSystemFileHandle;", "Lokio/FileHandle;", "", "readWrite", "Ljava/nio/channels/FileChannel;", "fileChannel", "<init>", "(ZLjava/nio/channels/FileChannel;)V", "", "size", "", "protectedResize", "(J)V", "protectedSize", "()J", "fileOffset", "", "array", "", "arrayOffset", "byteCount", "protectedRead", "(J[BII)I", "protectedWrite", "(J[BII)V", "protectedFlush", "()V", "protectedClose", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class NioFileSystemFileHandle extends FileHandle {
    public final FileChannel e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NioFileSystemFileHandle(boolean z, @NotNull FileChannel fileChannel) {
        super(z);
        Intrinsics.checkNotNullParameter(fileChannel, "fileChannel");
        this.e = fileChannel;
    }

    @Override // okio.FileHandle
    public synchronized void protectedResize(long size) throws Throwable {
        try {
            try {
                long size2 = size();
                long j = size - size2;
                if (j > 0) {
                    int i = (int) j;
                    protectedWrite(size2, new byte[i], 0, i);
                } else {
                    this.e.truncate(size);
                }
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    @Override // okio.FileHandle
    public synchronized long protectedSize() {
        return this.e.size();
    }

    @Override // okio.FileHandle
    public synchronized int protectedRead(long fileOffset, @NotNull byte[] array, int arrayOffset, int byteCount) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.e.position(fileOffset);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(array, arrayOffset, byteCount);
        int i = 0;
        while (true) {
            if (i >= byteCount) {
                break;
            }
            int i2 = this.e.read(byteBufferWrap);
            if (i2 != -1) {
                i += i2;
            } else if (i == 0) {
                return -1;
            }
        }
        return i;
    }

    @Override // okio.FileHandle
    public synchronized void protectedWrite(long fileOffset, @NotNull byte[] array, int arrayOffset, int byteCount) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.e.position(fileOffset);
        this.e.write(ByteBuffer.wrap(array, arrayOffset, byteCount));
    }

    @Override // okio.FileHandle
    public synchronized void protectedFlush() {
        this.e.force(true);
    }

    @Override // okio.FileHandle
    public synchronized void protectedClose() {
        this.e.close();
    }
}
