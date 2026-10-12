package androidx.core.util;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class AtomicFile {

    /* renamed from: a, reason: collision with root package name */
    public final File f1231a;

    /* renamed from: b, reason: collision with root package name */
    public final File f1232b;
    public final File c;

    public AtomicFile(@NonNull File file) {
        this.f1231a = file;
        this.f1232b = new File(file.getPath() + ".new");
        this.c = new File(file.getPath() + ".bak");
    }

    @NonNull
    public File getBaseFile() {
        return this.f1231a;
    }

    public void delete() {
        this.f1231a.delete();
        this.f1232b.delete();
        this.c.delete();
    }

    @NonNull
    public FileOutputStream startWrite() throws IOException {
        File file = this.f1232b;
        File file2 = this.c;
        if (file2.exists()) {
            a(file2, this.f1231a);
        }
        try {
            return new FileOutputStream(file);
        } catch (FileNotFoundException unused) {
            if (!file.getParentFile().mkdirs()) {
                throw new IOException("Failed to create directory for " + file);
            }
            try {
                return new FileOutputStream(file);
            } catch (FileNotFoundException e) {
                throw new IOException("Failed to create new file " + file, e);
            }
        }
    }

    @NonNull
    public FileInputStream openRead() throws FileNotFoundException {
        File file = this.c;
        boolean zExists = file.exists();
        File file2 = this.f1231a;
        if (zExists) {
            a(file, file2);
        }
        File file3 = this.f1232b;
        if (file3.exists() && file2.exists() && !file3.delete()) {
            Log.e("AtomicFile", "Failed to delete outdated new file " + file3);
        }
        return new FileInputStream(file2);
    }

    @NonNull
    public byte[] readFully() throws IOException {
        FileInputStream fileInputStreamOpenRead = openRead();
        try {
            byte[] bArr = new byte[fileInputStreamOpenRead.available()];
            int i = 0;
            while (true) {
                int i2 = fileInputStreamOpenRead.read(bArr, i, bArr.length - i);
                if (i2 <= 0) {
                    return bArr;
                }
                i += i2;
                int iAvailable = fileInputStreamOpenRead.available();
                if (iAvailable > bArr.length - i) {
                    byte[] bArr2 = new byte[iAvailable + i];
                    System.arraycopy(bArr, 0, bArr2, 0, i);
                    bArr = bArr2;
                }
            }
        } finally {
            fileInputStreamOpenRead.close();
        }
    }

    public void failWrite(@Nullable FileOutputStream fileOutputStream) throws IOException {
        boolean z;
        if (fileOutputStream == null) {
            return;
        }
        try {
            fileOutputStream.getFD().sync();
            z = true;
        } catch (IOException unused) {
            z = false;
        }
        if (!z) {
            Log.e("AtomicFile", "Failed to sync file output stream");
        }
        try {
            fileOutputStream.close();
        } catch (IOException e) {
            Log.e("AtomicFile", "Failed to close file output stream", e);
        }
        File file = this.f1232b;
        if (file.delete()) {
            return;
        }
        Log.e("AtomicFile", "Failed to delete new file " + file);
    }

    public void finishWrite(@Nullable FileOutputStream fileOutputStream) throws IOException {
        boolean z;
        if (fileOutputStream == null) {
            return;
        }
        try {
            fileOutputStream.getFD().sync();
            z = true;
        } catch (IOException unused) {
            z = false;
        }
        if (!z) {
            Log.e("AtomicFile", "Failed to sync file output stream");
        }
        try {
            fileOutputStream.close();
        } catch (IOException e) {
            Log.e("AtomicFile", "Failed to close file output stream", e);
        }
        a(this.f1232b, this.f1231a);
    }

    public static void a(File file, File file2) {
        if (file2.isDirectory() && !file2.delete()) {
            Log.e("AtomicFile", "Failed to delete file which is a directory " + file2);
        }
        if (file.renameTo(file2)) {
            return;
        }
        Log.e("AtomicFile", "Failed to rename " + file + " to " + file2);
    }
}
