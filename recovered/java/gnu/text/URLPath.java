package gnu.text;

import gnu.mapping.WrappedException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes2.dex */
public class URLPath extends URIPath {
    public final URL c;

    @Override // gnu.text.URIPath, gnu.text.Path
    public boolean isAbsolute() {
        return true;
    }

    public URLPath(URL url) {
        super(toUri(url));
        this.c = url;
    }

    public static URLPath valueOf(URL url) {
        return new URLPath(url);
    }

    @Override // gnu.text.URIPath, gnu.text.Path
    public long getLastModified() {
        return getLastModified(this.c);
    }

    public static long getLastModified(URL url) {
        try {
            return url.openConnection().getLastModified();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    @Override // gnu.text.URIPath, gnu.text.Path
    public long getContentLength() {
        return getContentLength(this.c);
    }

    public static int getContentLength(URL url) {
        try {
            return url.openConnection().getContentLength();
        } catch (Throwable unused) {
            return -1;
        }
    }

    @Override // gnu.text.URIPath, gnu.text.Path
    public URL toURL() {
        return this.c;
    }

    public static URI toUri(URL url) {
        try {
            return url.toURI();
        } catch (Throwable th) {
            throw WrappedException.wrapIfNeeded(th);
        }
    }

    @Override // gnu.text.URIPath, gnu.text.Path
    public URI toUri() {
        return toUri(this.c);
    }

    @Override // gnu.text.URIPath, gnu.text.Path
    public String toURIString() {
        return this.c.toString();
    }

    @Override // gnu.text.URIPath, gnu.text.Path
    public Path resolve(String str) {
        try {
            return valueOf(new URL(this.c, str));
        } catch (Throwable th) {
            throw WrappedException.wrapIfNeeded(th);
        }
    }

    public static InputStream openInputStream(URL url) throws IOException {
        return url.openConnection().getInputStream();
    }

    @Override // gnu.text.URIPath, gnu.text.Path
    public InputStream openInputStream() throws IOException {
        return openInputStream(this.c);
    }

    public static OutputStream openOutputStream(URL url) throws IOException {
        String string = url.toString();
        if (string.startsWith("file:")) {
            try {
                return new FileOutputStream(new File(new URI(string)));
            } catch (Throwable unused) {
            }
        }
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        uRLConnectionOpenConnection.setDoInput(false);
        uRLConnectionOpenConnection.setDoOutput(true);
        return uRLConnectionOpenConnection.getOutputStream();
    }

    @Override // gnu.text.URIPath, gnu.text.Path
    public OutputStream openOutputStream() throws IOException {
        return openOutputStream(this.c);
    }

    public static URLPath classResourcePath(Class cls) {
        URL resource;
        try {
            try {
                resource = ResourceStreamHandler.makeURL(cls);
            } catch (SecurityException unused) {
                resource = cls.getClassLoader().getResource(cls.getName().replace('.', '/') + ".class");
            }
            return valueOf(resource);
        } catch (Throwable th) {
            throw WrappedException.wrapIfNeeded(th);
        }
    }
}
