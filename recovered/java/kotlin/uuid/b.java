package kotlin.uuid;

import java.nio.BufferOverflowException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\u001a\b\u0010\u0000\u001a\u00020\u0001H\u0001\u001a\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0001\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0006H\u0087\b\u001a\r\u0010\u0007\u001a\u00020\u0006*\u00020\u0001H\u0087\b\u001a\f\u0010\b\u001a\u00020\u0001*\u00020\tH\u0007\u001a\u0014\u0010\b\u001a\u00020\u0001*\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007\u001a\u0014\u0010\f\u001a\u00020\t*\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0001H\u0007\u001a\u001c\u0010\f\u001a\u00020\t*\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0001H\u0007\u001a\r\u0010\r\u001a\u00020\u000e*\u00020\u000eH\u0080\b¨\u0006\u000f"}, d2 = {"secureRandomUuid", "Lkotlin/uuid/Uuid;", "serializedUuid", "", "uuid", "toKotlinUuid", "Ljava/util/UUID;", "toJavaUuid", "getUuid", "Ljava/nio/ByteBuffer;", "index", "", "putUuid", "reverseBytes", "", "kotlin-stdlib"}, k = 5, mv = {2, 1, 0}, xi = 49, xs = "kotlin/uuid/UuidKt")
@SourceDebugExtension({"SMAP\nUuidJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UuidJVM.kt\nkotlin/uuid/UuidKt__UuidJVMKt\n*L\n1#1,257:1\n257#1:258\n257#1:259\n257#1:260\n257#1:261\n257#1:262\n257#1:263\n257#1:264\n257#1:265\n*S KotlinDebug\n*F\n+ 1 UuidJVM.kt\nkotlin/uuid/UuidKt__UuidJVMKt\n*L\n119#1:258\n120#1:259\n164#1:260\n165#1:261\n204#1:262\n205#1:263\n251#1:264\n252#1:265\n*E\n"})
/* loaded from: classes2.dex */
class b {
    @ExperimentalUuidApi
    @NotNull
    public static final Uuid secureRandomUuid() {
        byte[] bArr = new byte[16];
        a.f6104a.getInstance().nextBytes(bArr);
        return c.uuidFromRandomBytes(bArr);
    }

    @ExperimentalUuidApi
    @NotNull
    public static final Object serializedUuid(@NotNull Uuid uuid) {
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        return new UuidSerialized(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    @NotNull
    public static final Uuid toKotlinUuid(@NotNull UUID uuid) {
        Intrinsics.checkNotNullParameter(uuid, "<this>");
        return Uuid.INSTANCE.fromLongs(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    @NotNull
    public static final UUID toJavaUuid(@NotNull Uuid uuid) {
        Intrinsics.checkNotNullParameter(uuid, "<this>");
        return new UUID(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    @NotNull
    public static final Uuid getUuid(@NotNull ByteBuffer byteBuffer) {
        Intrinsics.checkNotNullParameter(byteBuffer, "<this>");
        if (byteBuffer.position() + 15 >= byteBuffer.limit()) {
            throw new BufferUnderflowException();
        }
        long jReverseBytes = byteBuffer.getLong();
        long jReverseBytes2 = byteBuffer.getLong();
        if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.LITTLE_ENDIAN)) {
            jReverseBytes = Long.reverseBytes(jReverseBytes);
            jReverseBytes2 = Long.reverseBytes(jReverseBytes2);
        }
        return Uuid.INSTANCE.fromLongs(jReverseBytes, jReverseBytes2);
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    @NotNull
    public static final Uuid getUuid(@NotNull ByteBuffer byteBuffer, int i) {
        Intrinsics.checkNotNullParameter(byteBuffer, "<this>");
        if (i < 0) {
            throw new IndexOutOfBoundsException(_COROUTINE.a.d(i, "Negative index: "));
        }
        if (i + 15 >= byteBuffer.limit()) {
            StringBuilder sbO = _COROUTINE.a.o(i, "Not enough bytes to read a uuid at index: ", ", with limit: ");
            sbO.append(byteBuffer.limit());
            sbO.append(' ');
            throw new IndexOutOfBoundsException(sbO.toString());
        }
        long jReverseBytes = byteBuffer.getLong(i);
        long jReverseBytes2 = byteBuffer.getLong(i + 8);
        if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.LITTLE_ENDIAN)) {
            jReverseBytes = Long.reverseBytes(jReverseBytes);
            jReverseBytes2 = Long.reverseBytes(jReverseBytes2);
        }
        return Uuid.INSTANCE.fromLongs(jReverseBytes, jReverseBytes2);
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    @NotNull
    public static final ByteBuffer putUuid(@NotNull ByteBuffer byteBuffer, @NotNull Uuid uuid) {
        ByteBuffer byteBufferPutLong;
        Intrinsics.checkNotNullParameter(byteBuffer, "<this>");
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        if (byteBuffer.position() + 15 >= byteBuffer.limit()) {
            throw new BufferOverflowException();
        }
        if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.BIG_ENDIAN)) {
            byteBuffer.putLong(mostSignificantBits);
            byteBufferPutLong = byteBuffer.putLong(leastSignificantBits);
        } else {
            byteBuffer.putLong(Long.reverseBytes(mostSignificantBits));
            byteBufferPutLong = byteBuffer.putLong(Long.reverseBytes(leastSignificantBits));
        }
        Intrinsics.checkNotNullExpressionValue(byteBufferPutLong, "toLongs(...)");
        return byteBufferPutLong;
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    @NotNull
    public static final ByteBuffer putUuid(@NotNull ByteBuffer byteBuffer, int i, @NotNull Uuid uuid) {
        ByteBuffer byteBufferPutLong;
        Intrinsics.checkNotNullParameter(byteBuffer, "<this>");
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        if (i < 0) {
            throw new IndexOutOfBoundsException(_COROUTINE.a.d(i, "Negative index: "));
        }
        if (i + 15 >= byteBuffer.limit()) {
            StringBuilder sbO = _COROUTINE.a.o(i, "Not enough capacity to write a uuid at index: ", ", with limit: ");
            sbO.append(byteBuffer.limit());
            sbO.append(' ');
            throw new IndexOutOfBoundsException(sbO.toString());
        }
        if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.BIG_ENDIAN)) {
            byteBuffer.putLong(i, mostSignificantBits);
            byteBufferPutLong = byteBuffer.putLong(i + 8, leastSignificantBits);
        } else {
            byteBuffer.putLong(i, Long.reverseBytes(mostSignificantBits));
            byteBufferPutLong = byteBuffer.putLong(i + 8, Long.reverseBytes(leastSignificantBits));
        }
        Intrinsics.checkNotNullExpressionValue(byteBufferPutLong, "toLongs(...)");
        return byteBufferPutLong;
    }

    public static final long reverseBytes(long j) {
        return Long.reverseBytes(j);
    }
}
