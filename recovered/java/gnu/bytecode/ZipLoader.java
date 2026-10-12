package gnu.bytecode;

import _COROUTINE.a;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes2.dex */
public class ZipLoader extends ClassLoader {
    private Vector<Object> loadedClasses;
    int size;
    ZipFile zar;
    private String zipname;

    public ZipLoader(String str) throws IOException {
        this.zipname = str;
        ZipFile zipFile = new ZipFile(str);
        this.zar = zipFile;
        this.size = 0;
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        while (enumerationEntries.hasMoreElements()) {
            if (!enumerationEntries.nextElement().isDirectory()) {
                this.size++;
            }
        }
        this.loadedClasses = new Vector<>(this.size);
    }

    @Override // java.lang.ClassLoader
    public Class loadClass(String str, boolean z) throws ClassNotFoundException, IOException, ClassFormatError {
        Class<?> cls;
        int iIndexOf = this.loadedClasses.indexOf(str);
        boolean z2 = true;
        if (iIndexOf >= 0) {
            cls = (Class) this.loadedClasses.elementAt(iIndexOf + 1);
        } else if (this.zar == null && this.loadedClasses.size() == this.size * 2) {
            cls = Class.forName(str);
        } else {
            String str2 = str.replace('.', '/') + ".class";
            if (this.zar == null) {
                try {
                    this.zar = new ZipFile(this.zipname);
                } catch (IOException e) {
                    throw new ClassNotFoundException("IOException while loading " + str2 + " from ziparchive \"" + str + "\": " + e.toString());
                }
            } else {
                z2 = false;
            }
            ZipEntry entry = this.zar.getEntry(str2);
            if (entry == null) {
                if (z2) {
                    try {
                        close();
                    } catch (IOException unused) {
                        throw new RuntimeException(a.m(new StringBuilder("failed to close \""), this.zipname, "\""));
                    }
                }
                cls = Class.forName(str);
            } else {
                try {
                    int size = (int) entry.getSize();
                    byte[] bArr = new byte[size];
                    new DataInputStream(this.zar.getInputStream(entry)).readFully(bArr);
                    Class<?> clsDefineClass = defineClass(str, bArr, 0, size);
                    this.loadedClasses.addElement(str);
                    this.loadedClasses.addElement(clsDefineClass);
                    if (this.size * 2 == this.loadedClasses.size()) {
                        close();
                    }
                    cls = clsDefineClass;
                } catch (IOException e2) {
                    throw new ClassNotFoundException("IOException while loading " + str2 + " from ziparchive \"" + str + "\": " + e2.toString());
                }
            }
        }
        if (z) {
            resolveClass(cls);
        }
        return cls;
    }

    public Class loadAllClasses() throws IOException, ClassFormatError {
        Enumeration<? extends ZipEntry> enumerationEntries = this.zar.entries();
        Class<?> cls = null;
        while (enumerationEntries.hasMoreElements()) {
            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
            String strSubstring = zipEntryNextElement.getName().replace('/', '.').substring(0, r3.length() - 6);
            int size = (int) zipEntryNextElement.getSize();
            byte[] bArr = new byte[size];
            new DataInputStream(this.zar.getInputStream(zipEntryNextElement)).readFully(bArr);
            Class<?> clsDefineClass = defineClass(strSubstring, bArr, 0, size);
            if (cls == null) {
                cls = clsDefineClass;
            }
            this.loadedClasses.addElement(strSubstring);
            this.loadedClasses.addElement(clsDefineClass);
        }
        close();
        return cls;
    }

    public void close() throws IOException {
        ZipFile zipFile = this.zar;
        if (zipFile != null) {
            zipFile.close();
        }
        this.zar = null;
    }
}
