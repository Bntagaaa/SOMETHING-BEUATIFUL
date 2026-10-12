package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import okio.internal.ResourceFileSystem;
import okio.internal.ZipFilesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0011\u0010\u0006\u001a\u00020\u0005*\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\b¢\u0006\u0004\b\u0002\u0010\t\u001a\u0011\u0010\u0006\u001a\u00020\u0005*\u00020\b¢\u0006\u0004\b\u0006\u0010\n\u001a\u001d\u0010\u0002\u001a\u00020\u0001*\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0004\b\u0002\u0010\u000e\u001a\u0011\u0010\u000f\u001a\u00020\u0001*\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0011\u0010\u0006\u001a\u00020\u0005*\u00020\u000b¢\u0006\u0004\b\u0006\u0010\u0011\u001a%\u0010\u0002\u001a\u00020\u0001*\u00020\u00122\u0012\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0013\"\u00020\u0014¢\u0006\u0004\b\u0002\u0010\u0016\u001a%\u0010\u0006\u001a\u00020\u0005*\u00020\u00122\u0012\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0013\"\u00020\u0014¢\u0006\u0004\b\u0006\u0010\u0017\u001a\u0019\u0010\u001b\u001a\u00020\u001a*\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u0019\u0010\u001e\u001a\u00020\u001d*\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u0019\u0010#\u001a\u00020\"*\u00020\u00012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b#\u0010$\u001a\u0019\u0010&\u001a\u00020%*\u00020\u00052\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b&\u0010'\u001a\u0019\u0010#\u001a\u00020\"*\u00020\u00012\u0006\u0010)\u001a\u00020(¢\u0006\u0004\b#\u0010*\u001a\u0019\u0010&\u001a\u00020%*\u00020\u00052\u0006\u0010)\u001a\u00020(¢\u0006\u0004\b&\u0010+\u001a\u0019\u0010/\u001a\u00020,*\u00020,2\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b/\u00100\u001a\u0011\u00102\u001a\u00020,*\u000201¢\u0006\u0004\b2\u00103\"\u001c\u00106\u001a\u00020\f*\u000604j\u0002`58@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b6\u00107¨\u00068"}, d2 = {"Ljava/io/OutputStream;", "Lokio/Sink;", "sink", "(Ljava/io/OutputStream;)Lokio/Sink;", "Ljava/io/InputStream;", "Lokio/Source;", "source", "(Ljava/io/InputStream;)Lokio/Source;", "Ljava/net/Socket;", "(Ljava/net/Socket;)Lokio/Sink;", "(Ljava/net/Socket;)Lokio/Source;", "Ljava/io/File;", "", "append", "(Ljava/io/File;Z)Lokio/Sink;", "appendingSink", "(Ljava/io/File;)Lokio/Sink;", "(Ljava/io/File;)Lokio/Source;", "Ljava/nio/file/Path;", "", "Ljava/nio/file/OpenOption;", "options", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;", "Ljavax/crypto/Cipher;", "cipher", "Lokio/CipherSink;", "cipherSink", "(Lokio/Sink;Ljavax/crypto/Cipher;)Lokio/CipherSink;", "Lokio/CipherSource;", "cipherSource", "(Lokio/Source;Ljavax/crypto/Cipher;)Lokio/CipherSource;", "Ljavax/crypto/Mac;", "mac", "Lokio/HashingSink;", "hashingSink", "(Lokio/Sink;Ljavax/crypto/Mac;)Lokio/HashingSink;", "Lokio/HashingSource;", "hashingSource", "(Lokio/Source;Ljavax/crypto/Mac;)Lokio/HashingSource;", "Ljava/security/MessageDigest;", "digest", "(Lokio/Sink;Ljava/security/MessageDigest;)Lokio/HashingSink;", "(Lokio/Source;Ljava/security/MessageDigest;)Lokio/HashingSource;", "Lokio/FileSystem;", "Lokio/Path;", "zipPath", "openZip", "(Lokio/FileSystem;Lokio/Path;)Lokio/FileSystem;", "Ljava/lang/ClassLoader;", "asResourceFileSystem", "(Ljava/lang/ClassLoader;)Lokio/FileSystem;", "Ljava/lang/AssertionError;", "Lkotlin/AssertionError;", "isAndroidGetsocknameError", "(Ljava/lang/AssertionError;)Z", "okio"}, k = 5, mv = {1, 9, 0}, xi = 48, xs = "okio/Okio")
/* loaded from: classes2.dex */
final /* synthetic */ class c {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f6822a = Logger.getLogger("okio.Okio");

    @JvmOverloads
    @NotNull
    public static final Sink sink(@NotNull File file) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return sink$default(file, false, 1, null);
    }

    @NotNull
    public static final Sink sink(@NotNull OutputStream outputStream) {
        Intrinsics.checkNotNullParameter(outputStream, "<this>");
        return new e(outputStream, new Timeout());
    }

    @NotNull
    public static final Source source(@NotNull InputStream inputStream) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        return new b(inputStream, new Timeout());
    }

    @NotNull
    public static final Sink sink(@NotNull Socket socket) throws IOException {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        f fVar = new f(socket);
        OutputStream outputStream = socket.getOutputStream();
        Intrinsics.checkNotNullExpressionValue(outputStream, "getOutputStream(...)");
        return fVar.sink(new e(outputStream, fVar));
    }

    @NotNull
    public static final Source source(@NotNull Socket socket) throws IOException {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        f fVar = new f(socket);
        InputStream inputStream = socket.getInputStream();
        Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
        return fVar.source(new b(inputStream, fVar));
    }

    @JvmOverloads
    @NotNull
    public static final Sink sink(@NotNull File file, boolean z) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return Okio.sink(new FileOutputStream(file, z));
    }

    public static /* synthetic */ Sink sink$default(File file, boolean z, int i, Object obj) throws FileNotFoundException {
        if ((i & 1) != 0) {
            z = false;
        }
        return Okio.sink(file, z);
    }

    @NotNull
    public static final Sink appendingSink(@NotNull File file) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return Okio.sink(new FileOutputStream(file, true));
    }

    @NotNull
    public static final Source source(@NotNull File file) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return new b(new FileInputStream(file), Timeout.NONE);
    }

    @NotNull
    public static final Sink sink(@NotNull java.nio.file.Path path, @NotNull OpenOption... options) throws IOException {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        OutputStream outputStreamNewOutputStream = Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length));
        Intrinsics.checkNotNullExpressionValue(outputStreamNewOutputStream, "newOutputStream(...)");
        return Okio.sink(outputStreamNewOutputStream);
    }

    @NotNull
    public static final Source source(@NotNull java.nio.file.Path path, @NotNull OpenOption... options) throws IOException {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        InputStream inputStreamNewInputStream = Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length));
        Intrinsics.checkNotNullExpressionValue(inputStreamNewInputStream, "newInputStream(...)");
        return Okio.source(inputStreamNewInputStream);
    }

    @NotNull
    public static final CipherSink cipherSink(@NotNull Sink sink, @NotNull Cipher cipher) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        return new CipherSink(Okio.buffer(sink), cipher);
    }

    @NotNull
    public static final CipherSource cipherSource(@NotNull Source source, @NotNull Cipher cipher) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        return new CipherSource(Okio.buffer(source), cipher);
    }

    @NotNull
    public static final HashingSink hashingSink(@NotNull Sink sink, @NotNull Mac mac) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(mac, "mac");
        return new HashingSink(sink, mac);
    }

    @NotNull
    public static final HashingSource hashingSource(@NotNull Source source, @NotNull Mac mac) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(mac, "mac");
        return new HashingSource(source, mac);
    }

    @NotNull
    public static final HashingSink hashingSink(@NotNull Sink sink, @NotNull MessageDigest digest) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(digest, "digest");
        return new HashingSink(sink, digest);
    }

    @NotNull
    public static final HashingSource hashingSource(@NotNull Source source, @NotNull MessageDigest digest) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(digest, "digest");
        return new HashingSource(source, digest);
    }

    @NotNull
    public static final FileSystem openZip(@NotNull FileSystem fileSystem, @NotNull Path zipPath) throws IOException {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        return ZipFilesKt.openZip$default(zipPath, fileSystem, null, 4, null);
    }

    @NotNull
    public static final FileSystem asResourceFileSystem(@NotNull ClassLoader classLoader) {
        Intrinsics.checkNotNullParameter(classLoader, "<this>");
        return new ResourceFileSystem(classLoader, true, null, 4, null);
    }

    public static final boolean isAndroidGetsocknameError(@NotNull AssertionError assertionError) {
        Intrinsics.checkNotNullParameter(assertionError, "<this>");
        if (assertionError.getCause() != null) {
            String message = assertionError.getMessage();
            if (message != null ? StringsKt__StringsKt.contains$default((CharSequence) message, (CharSequence) "getsockname failed", false, 2, (Object) null) : false) {
                return true;
            }
        }
        return false;
    }
}
