package androidx.emoji2.text;

import androidx.annotation.AnyThread;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.emoji2.text.flatbuffer.MetadataList;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.UShort;

@AnyThread
@RequiresApi(19)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
class l {

    public interface d {
        long getPosition();

        int readTag() throws IOException;

        long readUnsignedInt() throws IOException;

        int readUnsignedShort() throws IOException;

        void skip(int i) throws IOException;
    }

    public static MetadataList b(InputStream inputStream) throws IOException {
        b bVar = new b(inputStream);
        c cVarA = a(bVar);
        bVar.skip((int) (cVarA.f1574a - bVar.getPosition()));
        long j = cVarA.f1575b;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) j);
        int i = inputStream.read(byteBufferAllocate.array());
        if (i != j) {
            throw new IOException("Needed " + j + " bytes, got " + i);
        }
        return MetadataList.getRootAsMetadataList(byteBufferAllocate);
    }

    public static c a(d dVar) throws IOException {
        long unsignedInt;
        dVar.skip(4);
        int unsignedShort = dVar.readUnsignedShort();
        if (unsignedShort > 100) {
            throw new IOException("Cannot read metadata.");
        }
        dVar.skip(6);
        int i = 0;
        while (true) {
            if (i >= unsignedShort) {
                unsignedInt = -1;
                break;
            }
            int tag = dVar.readTag();
            dVar.skip(4);
            unsignedInt = dVar.readUnsignedInt();
            dVar.skip(4);
            if (1835365473 == tag) {
                break;
            }
            i++;
        }
        if (unsignedInt != -1) {
            dVar.skip((int) (unsignedInt - dVar.getPosition()));
            dVar.skip(12);
            long unsignedInt2 = dVar.readUnsignedInt();
            for (int i2 = 0; i2 < unsignedInt2; i2++) {
                int tag2 = dVar.readTag();
                long unsignedInt3 = dVar.readUnsignedInt();
                long unsignedInt4 = dVar.readUnsignedInt();
                if (1164798569 == tag2 || 1701669481 == tag2) {
                    return new c(unsignedInt3 + unsignedInt, unsignedInt4);
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final long f1574a;

        /* renamed from: b, reason: collision with root package name */
        public final long f1575b;

        public c(long j, long j2) {
            this.f1574a = j;
            this.f1575b = j2;
        }
    }

    public static class b implements d {

        /* renamed from: a, reason: collision with root package name */
        public final byte[] f1572a;

        /* renamed from: b, reason: collision with root package name */
        public final ByteBuffer f1573b;
        public final InputStream c;
        public long d = 0;

        public b(InputStream inputStream) {
            this.c = inputStream;
            byte[] bArr = new byte[4];
            this.f1572a = bArr;
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            this.f1573b = byteBufferWrap;
            byteBufferWrap.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // androidx.emoji2.text.l.d
        public int readUnsignedShort() throws IOException {
            ByteBuffer byteBuffer = this.f1573b;
            byteBuffer.position(0);
            a(2);
            return byteBuffer.getShort() & UShort.MAX_VALUE;
        }

        @Override // androidx.emoji2.text.l.d
        public long readUnsignedInt() throws IOException {
            this.f1573b.position(0);
            a(4);
            return r1.getInt() & 4294967295L;
        }

        @Override // androidx.emoji2.text.l.d
        public int readTag() throws IOException {
            ByteBuffer byteBuffer = this.f1573b;
            byteBuffer.position(0);
            a(4);
            return byteBuffer.getInt();
        }

        @Override // androidx.emoji2.text.l.d
        public void skip(int i) throws IOException {
            while (i > 0) {
                int iSkip = (int) this.c.skip(i);
                if (iSkip < 1) {
                    throw new IOException("Skip didn't move at least 1 byte forward");
                }
                i -= iSkip;
                this.d += iSkip;
            }
        }

        @Override // androidx.emoji2.text.l.d
        public long getPosition() {
            return this.d;
        }

        public final void a(int i) throws IOException {
            if (this.c.read(this.f1572a, 0, i) != i) {
                throw new IOException("read failed");
            }
            this.d += i;
        }
    }

    public static class a implements d {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f1571a;

        public a(ByteBuffer byteBuffer) {
            this.f1571a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // androidx.emoji2.text.l.d
        public int readUnsignedShort() throws IOException {
            return this.f1571a.getShort() & UShort.MAX_VALUE;
        }

        @Override // androidx.emoji2.text.l.d
        public long readUnsignedInt() throws IOException {
            return this.f1571a.getInt() & 4294967295L;
        }

        @Override // androidx.emoji2.text.l.d
        public int readTag() throws IOException {
            return this.f1571a.getInt();
        }

        @Override // androidx.emoji2.text.l.d
        public void skip(int i) throws IOException {
            ByteBuffer byteBuffer = this.f1571a;
            byteBuffer.position(byteBuffer.position() + i);
        }

        @Override // androidx.emoji2.text.l.d
        public long getPosition() {
            return this.f1571a.position();
        }
    }

    private l() {
    }
}
