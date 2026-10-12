package androidx.documentfile.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.FileNotFoundException;
import java.util.ArrayList;

@RequiresApi(21)
/* loaded from: classes.dex */
class d extends DocumentFile {

    /* renamed from: b, reason: collision with root package name */
    public final Context f1466b;
    public Uri c;

    public d(DocumentFile documentFile, Context context, Uri uri) {
        super(documentFile);
        this.f1466b = context;
        this.c = uri;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public DocumentFile createFile(String str, String str2) throws FileNotFoundException {
        Uri uriCreateDocument;
        Uri uri = this.c;
        Context context = this.f1466b;
        try {
            uriCreateDocument = DocumentsContract.createDocument(context.getContentResolver(), uri, str, str2);
        } catch (Exception unused) {
            uriCreateDocument = null;
        }
        if (uriCreateDocument != null) {
            return new d(this, context, uriCreateDocument);
        }
        return null;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public DocumentFile createDirectory(String str) throws FileNotFoundException {
        Uri uriCreateDocument;
        Uri uri = this.c;
        Context context = this.f1466b;
        try {
            uriCreateDocument = DocumentsContract.createDocument(context.getContentResolver(), uri, "vnd.android.document/directory", str);
        } catch (Exception unused) {
            uriCreateDocument = null;
        }
        if (uriCreateDocument != null) {
            return new d(this, context, uriCreateDocument);
        }
        return null;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public Uri getUri() {
        return this.c;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getName() {
        return a.getName(this.f1466b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getType() {
        return a.getType(this.f1466b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isDirectory() {
        return a.isDirectory(this.f1466b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isFile() {
        return a.isFile(this.f1466b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isVirtual() {
        return a.isVirtual(this.f1466b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long lastModified() {
        return a.lastModified(this.f1466b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long length() {
        return a.length(this.f1466b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canRead() {
        return a.canRead(this.f1466b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canWrite() {
        return a.canWrite(this.f1466b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean delete() {
        try {
            return DocumentsContract.deleteDocument(this.f1466b.getContentResolver(), this.c);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean exists() {
        return a.exists(this.f1466b, this.c);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile[] listFiles() throws Exception {
        Context context = this.f1466b;
        ContentResolver contentResolver = context.getContentResolver();
        Uri uri = this.c;
        Uri uriBuildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri));
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                try {
                    cursorQuery = contentResolver.query(uriBuildChildDocumentsUriUsingTree, new String[]{"document_id"}, null, null, null);
                    while (cursorQuery.moveToNext()) {
                        arrayList.add(DocumentsContract.buildDocumentUriUsingTree(this.c, cursorQuery.getString(0)));
                    }
                } catch (Exception unused) {
                }
            } catch (Exception e) {
                Log.w("DocumentFile", "Failed query: " + e);
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (RuntimeException e2) {
                        throw e2;
                    }
                }
            }
            try {
                cursorQuery.close();
                Uri[] uriArr = (Uri[]) arrayList.toArray(new Uri[arrayList.size()]);
                DocumentFile[] documentFileArr = new DocumentFile[uriArr.length];
                for (int i = 0; i < uriArr.length; i++) {
                    documentFileArr[i] = new d(this, context, uriArr[i]);
                }
                return documentFileArr;
            } catch (RuntimeException e3) {
                throw e3;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (RuntimeException e4) {
                    throw e4;
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean renameTo(String str) throws FileNotFoundException {
        try {
            Uri uriRenameDocument = DocumentsContract.renameDocument(this.f1466b.getContentResolver(), this.c, str);
            if (uriRenameDocument != null) {
                this.c = uriRenameDocument;
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
