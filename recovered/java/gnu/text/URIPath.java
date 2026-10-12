package gnu.text;

import gnu.bytecode.Access;
import gnu.lists.FString;
import gnu.mapping.WrappedException;
import gnu.mapping.WrongType;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes2.dex */
public class URIPath extends Path implements Comparable<URIPath> {

    /* renamed from: b, reason: collision with root package name */
    public final URI f5506b;

    public URIPath(URI uri) {
        this.f5506b = uri;
    }

    public static URIPath coerceToURIPathOrNull(Object obj) {
        String string;
        if (obj instanceof URIPath) {
            return (URIPath) obj;
        }
        if (obj instanceof URL) {
            return URLPath.valueOf((URL) obj);
        }
        if (obj instanceof URI) {
            return valueOf((URI) obj);
        }
        if ((obj instanceof File) || (obj instanceof Path) || (obj instanceof FString)) {
            string = obj.toString();
        } else {
            if (!(obj instanceof String)) {
                return null;
            }
            string = (String) obj;
        }
        return valueOf(string);
    }

    public static URIPath makeURI(Object obj) {
        URIPath uRIPathCoerceToURIPathOrNull = coerceToURIPathOrNull(obj);
        if (uRIPathCoerceToURIPathOrNull != null) {
            return uRIPathCoerceToURIPathOrNull;
        }
        throw new WrongType((String) null, -4, obj, "URI");
    }

    public static URIPath valueOf(URI uri) {
        return new URIPath(uri);
    }

    public static URIPath valueOf(String str) {
        try {
            return new b(new URI(encodeForUri(str, Access.INNERCLASS_CONTEXT)), str);
        } catch (Throwable th) {
            throw WrappedException.wrapIfNeeded(th);
        }
    }

    @Override // gnu.text.Path
    public boolean isAbsolute() {
        return this.f5506b.isAbsolute();
    }

    @Override // gnu.text.Path
    public boolean exists() {
        URLConnection uRLConnectionOpenConnection;
        try {
            uRLConnectionOpenConnection = toURL().openConnection();
        } catch (Throwable unused) {
        }
        return uRLConnectionOpenConnection instanceof HttpURLConnection ? ((HttpURLConnection) uRLConnectionOpenConnection).getResponseCode() == 200 : uRLConnectionOpenConnection.getLastModified() != 0;
    }

    @Override // gnu.text.Path
    public long getLastModified() {
        return URLPath.getLastModified(toURL());
    }

    @Override // gnu.text.Path
    public long getContentLength() {
        return URLPath.getContentLength(toURL());
    }

    @Override // gnu.text.Path
    public URI toUri() {
        return this.f5506b;
    }

    @Override // gnu.text.Path
    public String toURIString() {
        return this.f5506b.toString();
    }

    @Override // gnu.text.Path
    public Path resolve(String str) {
        if (Path.uriSchemeSpecified(str)) {
            return valueOf(str);
        }
        char c = File.separatorChar;
        if (c != '/') {
            if (str.length() >= 2 && ((str.charAt(1) == ':' && Character.isLetter(str.charAt(0))) || (str.charAt(0) == c && str.charAt(1) == c))) {
                return FilePath.valueOf(new File(str));
            }
            str = str.replace(c, '/');
        }
        try {
            return valueOf(this.f5506b.resolve(new URI(null, str, null)));
        } catch (Throwable th) {
            throw WrappedException.wrapIfNeeded(th);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(URIPath uRIPath) {
        return this.f5506b.compareTo(uRIPath.f5506b);
    }

    public boolean equals(Object obj) {
        if (obj instanceof URIPath) {
            return this.f5506b.equals(((URIPath) obj).f5506b);
        }
        return false;
    }

    public int hashCode() {
        return this.f5506b.hashCode();
    }

    public String toString() {
        return toURIString();
    }

    @Override // gnu.text.Path
    public URL toURL() {
        return Path.toURL(this.f5506b.toString());
    }

    @Override // gnu.text.Path
    public InputStream openInputStream() throws IOException {
        return URLPath.openInputStream(toURL());
    }

    @Override // gnu.text.Path
    public OutputStream openOutputStream() throws IOException {
        return URLPath.openOutputStream(toURL());
    }

    @Override // gnu.text.Path
    public String getScheme() {
        return this.f5506b.getScheme();
    }

    @Override // gnu.text.Path
    public String getHost() {
        return this.f5506b.getHost();
    }

    @Override // gnu.text.Path
    public String getAuthority() {
        return this.f5506b.getAuthority();
    }

    @Override // gnu.text.Path
    public String getUserInfo() {
        return this.f5506b.getUserInfo();
    }

    @Override // gnu.text.Path
    public int getPort() {
        return this.f5506b.getPort();
    }

    @Override // gnu.text.Path
    public String getPath() {
        return this.f5506b.getPath();
    }

    @Override // gnu.text.Path
    public String getQuery() {
        return this.f5506b.getQuery();
    }

    @Override // gnu.text.Path
    public String getFragment() {
        return this.f5506b.getFragment();
    }

    @Override // gnu.text.Path
    public Path getCanonical() {
        if (isAbsolute()) {
            URI uri = this.f5506b;
            URI uriNormalize = uri.normalize();
            return uriNormalize == uri ? this : valueOf(uriNormalize);
        }
        return getAbsolute().getCanonical();
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String encodeForUri(java.lang.String r13, char r14) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.text.URIPath.encodeForUri(java.lang.String, char):java.lang.String");
    }
}
