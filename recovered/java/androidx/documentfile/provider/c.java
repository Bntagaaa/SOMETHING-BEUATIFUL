package androidx.documentfile.provider;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(19)
/* loaded from: classes.dex */
class c extends DocumentFile {

    /* renamed from: b, reason: collision with root package name */
    public Context f1465b;
    public Uri c;

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile createFile(String str, String str2) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile createDirectory(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public Uri getUri() {
        return this.c;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getName() {
        return a.getName(this.f1465b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getType() {
        return a.getType(this.f1465b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isDirectory() {
        return a.isDirectory(this.f1465b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isFile() {
        return a.isFile(this.f1465b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isVirtual() {
        return a.isVirtual(this.f1465b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long lastModified() {
        return a.lastModified(this.f1465b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long length() {
        return a.length(this.f1465b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canRead() {
        return a.canRead(this.f1465b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canWrite() {
        return a.canWrite(this.f1465b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean delete() {
        try {
            return DocumentsContract.deleteDocument(this.f1465b.getContentResolver(), this.c);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean exists() {
        return a.exists(this.f1465b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile[] listFiles() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean renameTo(String str) {
        throw new UnsupportedOperationException();
    }
}
