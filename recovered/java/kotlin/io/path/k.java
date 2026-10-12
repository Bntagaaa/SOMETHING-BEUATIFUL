package kotlin.io.path;

import java.nio.file.FileSystemException;
import java.nio.file.attribute.BasicFileAttributes;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class k {
    public static /* synthetic */ FileSystemException c() {
        return new FileSystemException("Failed to delete one or more files. See suppressed exceptions for details.");
    }

    public static /* bridge */ /* synthetic */ BasicFileAttributes e(Object obj) {
        return (BasicFileAttributes) obj;
    }
}
