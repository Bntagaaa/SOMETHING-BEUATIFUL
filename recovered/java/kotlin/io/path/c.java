package kotlin.io.path;

import java.nio.file.DirectoryStream;
import java.nio.file.FileSystemException;
import java.nio.file.FileSystemLoopException;
import java.nio.file.SecureDirectoryStream;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class c {
    public static /* synthetic */ void B() {
    }

    public static /* bridge */ /* synthetic */ DirectoryStream d(Object obj) {
        return (DirectoryStream) obj;
    }

    public static /* synthetic */ FileSystemException g(String str) {
        return new FileSystemException(str);
    }

    public static /* bridge */ /* synthetic */ FileSystemException h(Throwable th) {
        return (FileSystemException) th;
    }

    public static /* synthetic */ FileSystemLoopException i(String str) {
        return new FileSystemLoopException(str);
    }

    public static /* bridge */ /* synthetic */ SecureDirectoryStream s(Object obj) {
        return (SecureDirectoryStream) obj;
    }

    public static /* synthetic */ void u() {
    }

    public static /* bridge */ /* synthetic */ boolean v(Object obj) {
        return obj instanceof SecureDirectoryStream;
    }
}
