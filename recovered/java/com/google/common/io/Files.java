package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Joiner;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.TreeTraverser;
import com.google.common.graph.SuccessorsFunction;
import com.google.common.graph.Traverser;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@GwtIncompatible
/* loaded from: classes.dex */
public final class Files {

    /* renamed from: a, reason: collision with root package name */
    public static final SuccessorsFunction f4657a;

    private Files() {
    }

    @Beta
    public static BufferedReader newReader(File file, Charset charset) throws FileNotFoundException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(charset);
        return new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
    }

    @Beta
    public static BufferedWriter newWriter(File file, Charset charset) throws FileNotFoundException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(charset);
        return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset));
    }

    public static ByteSource asByteSource(File file) {
        return new e(file);
    }

    public static final class e extends ByteSource {

        /* renamed from: a, reason: collision with root package name */
        public final File f4661a;

        public e(File file) {
            this.f4661a = (File) Preconditions.checkNotNull(file);
        }

        @Override // com.google.common.io.ByteSource
        public FileInputStream openStream() throws IOException {
            return new FileInputStream(this.f4661a);
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            File file = this.f4661a;
            if (file.isFile()) {
                return Optional.of(Long.valueOf(file.length()));
            }
            return Optional.absent();
        }

        @Override // com.google.common.io.ByteSource
        public long size() throws IOException {
            File file = this.f4661a;
            if (!file.isFile()) {
                throw new FileNotFoundException(file.toString());
            }
            return file.length();
        }

        @Override // com.google.common.io.ByteSource
        public byte[] read() throws IOException {
            try {
                FileInputStream fileInputStream = (FileInputStream) Closer.create().register(openStream());
                return ByteStreams.b(fileInputStream, fileInputStream.getChannel().size());
            } finally {
            }
        }

        public String toString() {
            return "Files.asByteSource(" + this.f4661a + ")";
        }
    }

    public static ByteSink asByteSink(File file, FileWriteMode... fileWriteModeArr) {
        return new d(file, fileWriteModeArr);
    }

    public static final class d extends ByteSink {

        /* renamed from: a, reason: collision with root package name */
        public final File f4659a;

        /* renamed from: b, reason: collision with root package name */
        public final ImmutableSet f4660b;

        public d(File file, FileWriteMode[] fileWriteModeArr) {
            this.f4659a = (File) Preconditions.checkNotNull(file);
            this.f4660b = ImmutableSet.copyOf(fileWriteModeArr);
        }

        @Override // com.google.common.io.ByteSink
        public FileOutputStream openStream() throws IOException {
            return new FileOutputStream(this.f4659a, this.f4660b.contains(FileWriteMode.APPEND));
        }

        public String toString() {
            return "Files.asByteSink(" + this.f4659a + ", " + this.f4660b + ")";
        }
    }

    public static CharSource asCharSource(File file, Charset charset) {
        return asByteSource(file).asCharSource(charset);
    }

    public static CharSink asCharSink(File file, Charset charset, FileWriteMode... fileWriteModeArr) {
        return asByteSink(file, fileWriteModeArr).asCharSink(charset);
    }

    @Beta
    public static byte[] toByteArray(File file) throws IOException {
        return asByteSource(file).read();
    }

    @Beta
    @Deprecated
    public static String toString(File file, Charset charset) throws IOException {
        return asCharSource(file, charset).read();
    }

    @Beta
    public static void write(byte[] bArr, File file) throws IOException {
        asByteSink(file, new FileWriteMode[0]).write(bArr);
    }

    @Beta
    @Deprecated
    public static void write(CharSequence charSequence, File file, Charset charset) throws IOException {
        asCharSink(file, charset, new FileWriteMode[0]).write(charSequence);
    }

    @Beta
    public static void copy(File file, OutputStream outputStream) throws IOException {
        asByteSource(file).copyTo(outputStream);
    }

    @Beta
    public static void copy(File file, File file2) throws IOException {
        Preconditions.checkArgument(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        asByteSource(file).copyTo(asByteSink(file2, new FileWriteMode[0]));
    }

    @Beta
    @Deprecated
    public static void copy(File file, Charset charset, Appendable appendable) throws IOException {
        asCharSource(file, charset).copyTo(appendable);
    }

    @Beta
    @Deprecated
    public static void append(CharSequence charSequence, File file, Charset charset) throws IOException {
        asCharSink(file, charset, FileWriteMode.APPEND).write(charSequence);
    }

    @Beta
    public static boolean equal(File file, File file2) throws IOException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(file2);
        if (file == file2 || file.equals(file2)) {
            return true;
        }
        long length = file.length();
        long length2 = file2.length();
        if (length == 0 || length2 == 0 || length == length2) {
            return asByteSource(file).contentEquals(asByteSource(file2));
        }
        return false;
    }

    @Beta
    public static File createTempDir() {
        File file = new File(System.getProperty("java.io.tmpdir"));
        String str = System.currentTimeMillis() + "-";
        for (int i = 0; i < 10000; i++) {
            File file2 = new File(file, str + i);
            if (file2.mkdir()) {
                return file2;
            }
        }
        throw new IllegalStateException(_COROUTINE.a.k("Failed to create directory within 10000 attempts (tried ", str, "0 to ", str, "9999)"));
    }

    @Beta
    public static void touch(File file) throws IOException {
        Preconditions.checkNotNull(file);
        if (file.createNewFile() || file.setLastModified(System.currentTimeMillis())) {
            return;
        }
        throw new IOException("Unable to update modification time of " + file);
    }

    @Beta
    public static void createParentDirs(File file) throws IOException {
        Preconditions.checkNotNull(file);
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile == null) {
            return;
        }
        parentFile.mkdirs();
        if (parentFile.isDirectory()) {
            return;
        }
        throw new IOException("Unable to create parent directories of " + file);
    }

    @Beta
    public static void move(File file, File file2) throws IOException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(file2);
        Preconditions.checkArgument(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        if (file.renameTo(file2)) {
            return;
        }
        copy(file, file2);
        if (file.delete()) {
            return;
        }
        if (!file2.delete()) {
            throw new IOException("Unable to delete " + file2);
        }
        throw new IOException("Unable to delete " + file);
    }

    @Beta
    @Deprecated
    public static String readFirstLine(File file, Charset charset) throws IOException {
        return asCharSource(file, charset).readFirstLine();
    }

    @Beta
    public static List<String> readLines(File file, Charset charset) throws IOException {
        return (List) asCharSource(file, charset).readLines(new a());
    }

    public static class a implements LineProcessor<List<String>> {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f4658a = Lists.newArrayList();

        @Override // com.google.common.io.LineProcessor
        public boolean processLine(String str) {
            this.f4658a.add(str);
            return true;
        }

        @Override // com.google.common.io.LineProcessor
        public List<String> getResult() {
            return this.f4658a;
        }
    }

    @Beta
    @Deprecated
    @CanIgnoreReturnValue
    public static <T> T readLines(File file, Charset charset, LineProcessor<T> lineProcessor) throws IOException {
        return (T) asCharSource(file, charset).readLines(lineProcessor);
    }

    @Beta
    @Deprecated
    @CanIgnoreReturnValue
    public static <T> T readBytes(File file, ByteProcessor<T> byteProcessor) throws IOException {
        return (T) asByteSource(file).read(byteProcessor);
    }

    @Beta
    @Deprecated
    public static HashCode hash(File file, HashFunction hashFunction) throws IOException {
        return asByteSource(file).hash(hashFunction);
    }

    @Beta
    public static MappedByteBuffer map(File file) throws IOException {
        Preconditions.checkNotNull(file);
        return map(file, FileChannel.MapMode.READ_ONLY);
    }

    @Beta
    public static MappedByteBuffer map(File file, FileChannel.MapMode mapMode) throws IOException {
        return a(file, mapMode, -1L);
    }

    @Beta
    public static MappedByteBuffer map(File file, FileChannel.MapMode mapMode, long j) throws IOException {
        Preconditions.checkArgument(j >= 0, "size (%s) may not be negative", j);
        return a(file, mapMode, j);
    }

    public static MappedByteBuffer a(File file, FileChannel.MapMode mapMode, long j) throws IOException {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(mapMode);
        Closer closerCreate = Closer.create();
        try {
            FileChannel fileChannel = (FileChannel) closerCreate.register(((RandomAccessFile) closerCreate.register(new RandomAccessFile(file, mapMode == FileChannel.MapMode.READ_ONLY ? "r" : "rw"))).getChannel());
            if (j == -1) {
                j = fileChannel.size();
            }
            return fileChannel.map(mapMode, 0L, j);
        } finally {
        }
    }

    @Beta
    public static String simplifyPath(String str) {
        Preconditions.checkNotNull(str);
        if (str.length() == 0) {
            return ".";
        }
        Iterable<String> iterableSplit = Splitter.on('/').omitEmptyStrings().split(str);
        ArrayList arrayList = new ArrayList();
        for (String str2 : iterableSplit) {
            str2.getClass();
            if (!str2.equals(".")) {
                if (!str2.equals("..")) {
                    arrayList.add(str2);
                } else if (arrayList.size() <= 0 || ((String) arrayList.get(arrayList.size() - 1)).equals("..")) {
                    arrayList.add("..");
                } else {
                    arrayList.remove(arrayList.size() - 1);
                }
            }
        }
        String strJoin = Joiner.on('/').join(arrayList);
        if (str.charAt(0) == '/') {
            strJoin = _COROUTINE.a.i("/", strJoin);
        }
        while (strJoin.startsWith("/../")) {
            strJoin = strJoin.substring(3);
        }
        return strJoin.equals("/..") ? "/" : "".equals(strJoin) ? "." : strJoin;
    }

    @Beta
    public static String getFileExtension(String str) {
        Preconditions.checkNotNull(str);
        String name = new File(str).getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf == -1 ? "" : name.substring(iLastIndexOf + 1);
    }

    @Beta
    public static String getNameWithoutExtension(String str) {
        Preconditions.checkNotNull(str);
        String name = new File(str).getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf == -1 ? name : name.substring(0, iLastIndexOf);
    }

    static {
        new b();
        f4657a = new c();
    }

    public static class b extends TreeTraverser<File> {
        @Override // com.google.common.collect.TreeTraverser
        public Iterable<File> children(File file) {
            List listUnmodifiableList;
            File[] fileArrListFiles;
            SuccessorsFunction successorsFunction = Files.f4657a;
            if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                listUnmodifiableList = Collections.unmodifiableList(Arrays.asList(fileArrListFiles));
            } else {
                listUnmodifiableList = Collections.EMPTY_LIST;
            }
            return listUnmodifiableList;
        }

        public String toString() {
            return "Files.fileTreeTraverser()";
        }
    }

    @Beta
    public static Traverser<File> fileTraverser() {
        return Traverser.forTree(f4657a);
    }

    public static class c implements SuccessorsFunction<File> {
        @Override // com.google.common.graph.SuccessorsFunction
        public Iterable<File> successors(File file) {
            List listUnmodifiableList;
            File[] fileArrListFiles;
            SuccessorsFunction successorsFunction = Files.f4657a;
            if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                listUnmodifiableList = Collections.unmodifiableList(Arrays.asList(fileArrListFiles));
            } else {
                listUnmodifiableList = Collections.EMPTY_LIST;
            }
            return listUnmodifiableList;
        }
    }

    @Beta
    public static Predicate<File> isDirectory() {
        return f.f4662a;
    }

    @Beta
    public static Predicate<File> isFile() {
        return f.f4663b;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class f implements Predicate<File> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4662a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final b f4663b = new b();

        public enum a extends f {
            public a() {
                super("IS_DIRECTORY", 0);
            }

            @Override // com.google.common.base.Predicate
            public boolean apply(File file) {
                return file.isDirectory();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Files.isDirectory()";
            }
        }

        public enum b extends f {
            public b() {
                super("IS_FILE", 1);
            }

            @Override // com.google.common.base.Predicate
            public boolean apply(File file) {
                return file.isFile();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Files.isFile()";
            }
        }
    }
}
