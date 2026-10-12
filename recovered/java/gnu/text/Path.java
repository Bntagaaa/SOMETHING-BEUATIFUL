package gnu.text;

import gnu.lists.FString;
import gnu.mapping.WrappedException;
import gnu.mapping.WrongType;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

/* loaded from: classes2.dex */
public abstract class Path {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f5494a;
    public static Path defaultPath;
    public static final FilePath userDirPath;

    public boolean delete() {
        return false;
    }

    public String getAuthority() {
        return null;
    }

    public long getContentLength() {
        return -1L;
    }

    public String getFragment() {
        return null;
    }

    public String getHost() {
        return null;
    }

    public abstract long getLastModified();

    public abstract String getPath();

    public int getPort() {
        return -1;
    }

    public String getQuery() {
        return null;
    }

    public abstract String getScheme();

    public String getUserInfo() {
        return null;
    }

    public abstract boolean isAbsolute();

    public abstract InputStream openInputStream() throws IOException;

    public abstract OutputStream openOutputStream() throws IOException;

    public abstract Path resolve(String str);

    public abstract URL toURL();

    public abstract URI toUri();

    static {
        FilePath filePathValueOf = FilePath.valueOf(new File("."));
        userDirPath = filePathValueOf;
        defaultPath = filePathValueOf;
        f5494a = new ThreadLocal();
    }

    public static Path currentPath() {
        Path path = (Path) f5494a.get();
        return path != null ? path : defaultPath;
    }

    public static void setCurrentPath(Path path) {
        f5494a.set(path);
    }

    public static Path coerceToPathOrNull(Object obj) {
        String string;
        if (obj instanceof Path) {
            return (Path) obj;
        }
        if (obj instanceof URL) {
            return URLPath.valueOf((URL) obj);
        }
        if (obj instanceof URI) {
            return URIPath.valueOf((URI) obj);
        }
        if (obj instanceof File) {
            return FilePath.valueOf((File) obj);
        }
        if (obj instanceof FString) {
            string = obj.toString();
        } else {
            if (!(obj instanceof String)) {
                return null;
            }
            string = (String) obj;
        }
        if (uriSchemeSpecified(string)) {
            return URIPath.valueOf(string);
        }
        return FilePath.valueOf(string);
    }

    public static Path valueOf(Object obj) {
        Path pathCoerceToPathOrNull = coerceToPathOrNull(obj);
        if (pathCoerceToPathOrNull != null) {
            return pathCoerceToPathOrNull;
        }
        throw new WrongType((String) null, -4, obj, "path");
    }

    public static URL toURL(String str) {
        try {
            if (!uriSchemeSpecified(str)) {
                Path pathResolve = currentPath().resolve(str);
                if (pathResolve.isAbsolute()) {
                    return pathResolve.toURL();
                }
                str = pathResolve.toString();
            }
            return new URL(str);
        } catch (Throwable th) {
            throw WrappedException.wrapIfNeeded(th);
        }
    }

    public static int uriSchemeLength(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == ':') {
                return i;
            }
            if (i == 0) {
                if (!Character.isLetter(cCharAt)) {
                    return -1;
                }
            } else {
                if (!Character.isLetterOrDigit(cCharAt) && cCharAt != '+' && cCharAt != '-' && cCharAt != '.') {
                    return -1;
                }
            }
        }
        return -1;
    }

    public static boolean uriSchemeSpecified(String str) {
        int iUriSchemeLength = uriSchemeLength(str);
        if (iUriSchemeLength != 1 || File.separatorChar != '\\') {
            return iUriSchemeLength > 0;
        }
        char cCharAt = str.charAt(0);
        return (cCharAt < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z');
    }

    public boolean isDirectory() {
        String string = toString();
        int length = string.length();
        if (length <= 0) {
            return false;
        }
        char cCharAt = string.charAt(length - 1);
        return cCharAt == '/' || cCharAt == File.separatorChar;
    }

    public boolean exists() {
        return getLastModified() != 0;
    }

    public Path getDirectory() {
        return isDirectory() ? this : resolve("");
    }

    public Path getParent() {
        return resolve(isDirectory() ? ".." : "");
    }

    public String getLast() {
        String path = getPath();
        if (path == null) {
            return null;
        }
        int length = path.length();
        int i = length;
        int i2 = i;
        while (true) {
            int i3 = i - 1;
            if (i3 <= 0) {
                return "";
            }
            char cCharAt = path.charAt(i3);
            if (cCharAt == '/' || ((this instanceof FilePath) && cCharAt == File.separatorChar)) {
                if (i != length) {
                    return path.substring(i, i2);
                }
                i2 = i3;
            }
            i = i3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0038, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getExtension() {
        /*
            r7 = this;
            java.lang.String r0 = r7.getPath()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            int r2 = r0.length()
        Lc:
            int r3 = r2 + (-1)
            if (r3 > 0) goto L11
            return r1
        L11:
            char r4 = r0.charAt(r3)
            r5 = 46
            if (r4 != r5) goto L21
            int r4 = r2 + (-2)
            char r4 = r0.charAt(r4)
            r5 = 1
            goto L22
        L21:
            r5 = 0
        L22:
            r6 = 47
            if (r4 == r6) goto L38
            boolean r6 = r7 instanceof gnu.text.FilePath
            if (r6 == 0) goto L2f
            char r6 = java.io.File.separatorChar
            if (r4 != r6) goto L2f
            goto L38
        L2f:
            if (r5 == 0) goto L36
            java.lang.String r0 = r0.substring(r2)
            return r0
        L36:
            r2 = r3
            goto Lc
        L38:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.text.Path.getExtension():java.lang.String");
    }

    public final URI toURI() {
        return toUri();
    }

    public String toURIString() {
        return toUri().toString();
    }

    public Path resolve(Path path) {
        return path.isAbsolute() ? path : resolve(path.toString());
    }

    public static InputStream openInputStream(Object obj) throws IOException {
        return valueOf(obj).openInputStream();
    }

    public Reader openReader(boolean z) throws IOException {
        throw new UnsupportedOperationException();
    }

    public Writer openWriter() throws IOException {
        return new OutputStreamWriter(openOutputStream());
    }

    public CharSequence getCharContent(boolean z) throws IOException {
        throw new UnsupportedOperationException();
    }

    public static String relativize(String str, String str2) throws URISyntaxException, IOException {
        char cCharAt;
        String string = new URI(str2).normalize().toString();
        String string2 = URIPath.valueOf(str).toURI().normalize().toString();
        int length = string.length();
        int length2 = string2.length();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length && i3 < length2 && (cCharAt = string.charAt(i3)) == string2.charAt(i3); i3++) {
            if (cCharAt == '/') {
                i = i3;
            }
            if (cCharAt == ':') {
                i2 = i3;
            }
        }
        if (i2 <= 0) {
            return str;
        }
        int i4 = i2 + 2;
        if (i <= i4 && length > i4 && string.charAt(i4) == '/') {
            return str;
        }
        int i5 = i + 1;
        String strSubstring = string.substring(i5);
        String strSubstring2 = string2.substring(i5);
        StringBuilder sb = new StringBuilder();
        int length3 = strSubstring.length();
        while (true) {
            length3--;
            if (length3 >= 0) {
                if (strSubstring.charAt(length3) == '/') {
                    sb.append("../");
                }
            } else {
                sb.append(strSubstring2);
                return sb.toString();
            }
        }
    }

    public String getName() {
        return toString();
    }

    public Path getAbsolute() {
        if (this == userDirPath) {
            return resolve("");
        }
        return currentPath().resolve(this);
    }

    public Path getCanonical() {
        return getAbsolute();
    }
}
