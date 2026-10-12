package androidx.documentfile.provider;

import android.net.Uri;
import android.util.Log;
import android.webkit.MimeTypeMap;
import androidx.annotation.Nullable;
import com.google.appinventor.components.runtime.util.NanoHTTPD;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
class b extends DocumentFile {

    /* renamed from: b, reason: collision with root package name */
    public File f1464b;

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isVirtual() {
        return false;
    }

    public b(DocumentFile documentFile, File file) {
        super(documentFile);
        this.f1464b = file;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public DocumentFile createFile(String str, String str2) throws IOException {
        String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(str);
        if (extensionFromMimeType != null) {
            str2 = _COROUTINE.a.j(str2, ".", extensionFromMimeType);
        }
        File file = new File(this.f1464b, str2);
        try {
            file.createNewFile();
            return new b(this, file);
        } catch (IOException e) {
            Log.w("DocumentFile", "Failed to createFile: " + e);
            return null;
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public DocumentFile createDirectory(String str) {
        File file = new File(this.f1464b, str);
        if (file.isDirectory() || file.mkdir()) {
            return new b(this, file);
        }
        return null;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public Uri getUri() {
        return Uri.fromFile(this.f1464b);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public String getName() {
        return this.f1464b.getName();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getType() {
        if (this.f1464b.isDirectory()) {
            return null;
        }
        String name = this.f1464b.getName();
        int iLastIndexOf = name.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(name.substring(iLastIndexOf + 1).toLowerCase());
            return mimeTypeFromExtension != null ? mimeTypeFromExtension : NanoHTTPD.MIME_DEFAULT_BINARY;
        }
        return NanoHTTPD.MIME_DEFAULT_BINARY;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isDirectory() {
        return this.f1464b.isDirectory();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isFile() {
        return this.f1464b.isFile();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long lastModified() {
        return this.f1464b.lastModified();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long length() {
        return this.f1464b.length();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canRead() {
        return this.f1464b.canRead();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canWrite() {
        return this.f1464b.canWrite();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean delete() {
        a(this.f1464b);
        return this.f1464b.delete();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean exists() {
        return this.f1464b.exists();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile[] listFiles() {
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = this.f1464b.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                arrayList.add(new b(this, file));
            }
        }
        return (DocumentFile[]) arrayList.toArray(new DocumentFile[arrayList.size()]);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean renameTo(String str) {
        File file = new File(this.f1464b.getParentFile(), str);
        if (!this.f1464b.renameTo(file)) {
            return false;
        }
        this.f1464b = file;
        return true;
    }

    public static boolean a(File file) {
        File[] fileArrListFiles = file.listFiles();
        boolean zA = true;
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    zA &= a(file2);
                }
                if (!file2.delete()) {
                    Log.w("DocumentFile", "Failed to delete " + file2);
                    zA = false;
                }
            }
        }
        return zA;
    }
}
