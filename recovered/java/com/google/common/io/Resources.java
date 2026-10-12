package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class Resources {
    private Resources() {
    }

    public static ByteSource asByteSource(URL url) {
        return new b(url);
    }

    public static final class b extends ByteSource {

        /* renamed from: a, reason: collision with root package name */
        public final URL f4669a;

        public b(URL url) {
            this.f4669a = (URL) Preconditions.checkNotNull(url);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return this.f4669a.openStream();
        }

        public String toString() {
            return "Resources.asByteSource(" + this.f4669a + ")";
        }
    }

    public static CharSource asCharSource(URL url, Charset charset) {
        return asByteSource(url).asCharSource(charset);
    }

    public static byte[] toByteArray(URL url) throws IOException {
        return asByteSource(url).read();
    }

    public static String toString(URL url, Charset charset) throws IOException {
        return asCharSource(url, charset).read();
    }

    @CanIgnoreReturnValue
    public static <T> T readLines(URL url, Charset charset, LineProcessor<T> lineProcessor) throws IOException {
        return (T) asCharSource(url, charset).readLines(lineProcessor);
    }

    public static List<String> readLines(URL url, Charset charset) throws IOException {
        return (List) readLines(url, charset, new a());
    }

    public static class a implements LineProcessor<List<String>> {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f4668a = Lists.newArrayList();

        @Override // com.google.common.io.LineProcessor
        public boolean processLine(String str) {
            this.f4668a.add(str);
            return true;
        }

        @Override // com.google.common.io.LineProcessor
        public List<String> getResult() {
            return this.f4668a;
        }
    }

    public static void copy(URL url, OutputStream outputStream) throws IOException {
        asByteSource(url).copyTo(outputStream);
    }

    @CanIgnoreReturnValue
    public static URL getResource(String str) {
        URL resource = ((ClassLoader) MoreObjects.firstNonNull(Thread.currentThread().getContextClassLoader(), Resources.class.getClassLoader())).getResource(str);
        Preconditions.checkArgument(resource != null, "resource %s not found.", str);
        return resource;
    }

    public static URL getResource(Class<?> cls, String str) {
        URL resource = cls.getResource(str);
        Preconditions.checkArgument(resource != null, "resource %s relative to %s not found.", str, cls.getName());
        return resource;
    }
}
