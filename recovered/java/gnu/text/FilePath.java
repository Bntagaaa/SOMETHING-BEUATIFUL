package gnu.text;

import gnu.lists.FString;
import gnu.mapping.WrappedException;
import gnu.mapping.WrongType;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.net.URL;

/* loaded from: classes2.dex */
public class FilePath extends Path implements Comparable<FilePath> {

    /* renamed from: b, reason: collision with root package name */
    public final File f5482b;
    public final String c;

    public FilePath(File file) {
        this.f5482b = file;
        this.c = file.toString();
    }

    public FilePath(File file, String str) {
        this.f5482b = file;
        this.c = str;
    }

    public static FilePath valueOf(String str) {
        return new FilePath(new File(str), str);
    }

    public static FilePath valueOf(File file) {
        return new FilePath(file);
    }

    public static FilePath coerceToFilePathOrNull(Object obj) {
        String string;
        if (obj instanceof FilePath) {
            return (FilePath) obj;
        }
        if (obj instanceof URIPath) {
            return valueOf(new File(((URIPath) obj).f5506b));
        }
        if (obj instanceof URI) {
            return valueOf(new File((URI) obj));
        }
        if (obj instanceof File) {
            return valueOf((File) obj);
        }
        if (obj instanceof FString) {
            string = obj.toString();
        } else {
            if (!(obj instanceof String)) {
                return null;
            }
            string = (String) obj;
        }
        return valueOf(string);
    }

    public static FilePath makeFilePath(Object obj) {
        FilePath filePathCoerceToFilePathOrNull = coerceToFilePathOrNull(obj);
        if (filePathCoerceToFilePathOrNull != null) {
            return filePathCoerceToFilePathOrNull;
        }
        throw new WrongType((String) null, -4, obj, "filepath");
    }

    @Override // gnu.text.Path
    public boolean isAbsolute() {
        return this == Path.userDirPath || this.f5482b.isAbsolute();
    }

    @Override // gnu.text.Path
    public boolean isDirectory() {
        String str;
        int length;
        File file = this.f5482b;
        if (file.isDirectory()) {
            return true;
        }
        if (file.exists() || (length = (str = this.c).length()) <= 0) {
            return false;
        }
        char cCharAt = str.charAt(length - 1);
        return cCharAt == '/' || cCharAt == File.separatorChar;
    }

    @Override // gnu.text.Path
    public boolean delete() {
        return toFile().delete();
    }

    @Override // gnu.text.Path
    public long getLastModified() {
        return this.f5482b.lastModified();
    }

    @Override // gnu.text.Path
    public boolean exists() {
        return this.f5482b.exists();
    }

    @Override // gnu.text.Path
    public long getContentLength() {
        File file = this.f5482b;
        long length = file.length();
        if (length != 0 || file.exists()) {
            return length;
        }
        return -1L;
    }

    @Override // gnu.text.Path
    public String getPath() {
        return this.f5482b.getPath();
    }

    @Override // gnu.text.Path
    public String getLast() {
        return this.f5482b.getName();
    }

    @Override // gnu.text.Path
    public FilePath getParent() {
        File parentFile = this.f5482b.getParentFile();
        if (parentFile == null) {
            return null;
        }
        return valueOf(parentFile);
    }

    @Override // java.lang.Comparable
    public int compareTo(FilePath filePath) {
        return this.f5482b.compareTo(filePath.f5482b);
    }

    public boolean equals(Object obj) {
        if (obj instanceof FilePath) {
            return this.f5482b.equals(((FilePath) obj).f5482b);
        }
        return false;
    }

    public int hashCode() {
        return this.f5482b.hashCode();
    }

    public String toString() {
        return this.c;
    }

    public File toFile() {
        return this.f5482b;
    }

    @Override // gnu.text.Path
    public URL toURL() {
        if (this == Path.userDirPath) {
            return resolve("").toURL();
        }
        if (!isAbsolute()) {
            return getAbsolute().toURL();
        }
        try {
            return this.f5482b.toURI().toURL();
        } catch (Throwable th) {
            throw WrappedException.wrapIfNeeded(th);
        }
    }

    @Override // gnu.text.Path
    public URI toUri() {
        if (this == Path.userDirPath) {
            return resolve("").toURI();
        }
        File file = this.f5482b;
        try {
            if (file.isAbsolute()) {
                return file.toURI();
            }
            String string = file.toString();
            char c = File.separatorChar;
            if (c != '/') {
                string = string.replace(c, '/');
            }
            return new URI(null, null, string, null);
        } catch (Throwable th) {
            throw WrappedException.wrapIfNeeded(th);
        }
    }

    @Override // gnu.text.Path
    public InputStream openInputStream() throws IOException {
        return new FileInputStream(this.f5482b);
    }

    @Override // gnu.text.Path
    public OutputStream openOutputStream() throws IOException {
        return new FileOutputStream(this.f5482b);
    }

    @Override // gnu.text.Path
    public String getScheme() {
        if (isAbsolute()) {
            return "file";
        }
        return null;
    }

    @Override // gnu.text.Path
    public Path resolve(String str) {
        File file;
        if (Path.uriSchemeSpecified(str)) {
            return URIPath.valueOf(str);
        }
        File file2 = new File(str);
        if (file2.isAbsolute()) {
            return valueOf(file2);
        }
        char c = File.separatorChar;
        if (c != '/') {
            str = str.replace('/', c);
        }
        if (this == Path.userDirPath) {
            file = new File(System.getProperty("user.dir"), str);
        } else {
            boolean zIsDirectory = isDirectory();
            File parentFile = this.f5482b;
            if (!zIsDirectory) {
                parentFile = parentFile.getParentFile();
            }
            file = new File(parentFile, str);
        }
        return valueOf(file);
    }

    @Override // gnu.text.Path
    public Path getCanonical() {
        File file = this.f5482b;
        try {
            File canonicalFile = file.getCanonicalFile();
            if (!canonicalFile.equals(file)) {
                return valueOf(canonicalFile);
            }
        } catch (Throwable unused) {
        }
        return this;
    }
}
