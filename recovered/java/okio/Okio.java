package okio;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.OpenOption;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"okio/c", "okio/d"}, d2 = {}, k = 4, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class Okio {
    @NotNull
    public static final Sink appendingSink(@NotNull File file) throws FileNotFoundException {
        return c.appendingSink(file);
    }

    @NotNull
    public static final FileSystem asResourceFileSystem(@NotNull ClassLoader classLoader) {
        return c.asResourceFileSystem(classLoader);
    }

    @JvmName(name = "blackhole")
    @NotNull
    public static final Sink blackhole() {
        return d.blackhole();
    }

    @NotNull
    public static final BufferedSink buffer(@NotNull Sink sink) {
        return d.buffer(sink);
    }

    @NotNull
    public static final BufferedSource buffer(@NotNull Source source) {
        return d.buffer(source);
    }

    @NotNull
    public static final CipherSink cipherSink(@NotNull Sink sink, @NotNull Cipher cipher) {
        return c.cipherSink(sink, cipher);
    }

    @NotNull
    public static final CipherSource cipherSource(@NotNull Source source, @NotNull Cipher cipher) {
        return c.cipherSource(source, cipher);
    }

    @NotNull
    public static final HashingSink hashingSink(@NotNull Sink sink, @NotNull MessageDigest messageDigest) {
        return c.hashingSink(sink, messageDigest);
    }

    @NotNull
    public static final HashingSink hashingSink(@NotNull Sink sink, @NotNull Mac mac) {
        return c.hashingSink(sink, mac);
    }

    @NotNull
    public static final HashingSource hashingSource(@NotNull Source source, @NotNull MessageDigest messageDigest) {
        return c.hashingSource(source, messageDigest);
    }

    @NotNull
    public static final HashingSource hashingSource(@NotNull Source source, @NotNull Mac mac) {
        return c.hashingSource(source, mac);
    }

    public static final boolean isAndroidGetsocknameError(@NotNull AssertionError assertionError) {
        return c.isAndroidGetsocknameError(assertionError);
    }

    @NotNull
    public static final FileSystem openZip(@NotNull FileSystem fileSystem, @NotNull Path path) throws IOException {
        return c.openZip(fileSystem, path);
    }

    @JvmOverloads
    @NotNull
    public static final Sink sink(@NotNull File file) throws FileNotFoundException {
        return c.sink(file);
    }

    @JvmOverloads
    @NotNull
    public static final Sink sink(@NotNull File file, boolean z) throws FileNotFoundException {
        return c.sink(file, z);
    }

    @NotNull
    public static final Sink sink(@NotNull OutputStream outputStream) {
        return c.sink(outputStream);
    }

    @NotNull
    public static final Sink sink(@NotNull Socket socket) throws IOException {
        return c.sink(socket);
    }

    @NotNull
    public static final Sink sink(@NotNull java.nio.file.Path path, @NotNull OpenOption... openOptionArr) throws IOException {
        return c.sink(path, openOptionArr);
    }

    @NotNull
    public static final Source source(@NotNull File file) throws FileNotFoundException {
        return c.source(file);
    }

    @NotNull
    public static final Source source(@NotNull InputStream inputStream) {
        return c.source(inputStream);
    }

    @NotNull
    public static final Source source(@NotNull Socket socket) throws IOException {
        return c.source(socket);
    }

    @NotNull
    public static final Source source(@NotNull java.nio.file.Path path, @NotNull OpenOption... openOptionArr) throws IOException {
        return c.source(path, openOptionArr);
    }

    public static final <T extends Closeable, R> R use(T t, @NotNull Function1<? super T, ? extends R> function1) {
        return (R) d.use(t, function1);
    }
}
