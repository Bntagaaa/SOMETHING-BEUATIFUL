package gnu.bytecode;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/* loaded from: classes2.dex */
public class ZipArchive {
    private static void usage() {
        System.err.println("zipfile [ptxq] archive [file ...]");
        System.exit(-1);
    }

    public static long copy(InputStream inputStream, OutputStream outputStream, byte[] bArr) throws IOException {
        long j = 0;
        while (true) {
            int i = inputStream.read(bArr);
            if (i <= 0) {
                return j;
            }
            outputStream.write(bArr, 0, i);
            j += i;
        }
    }

    public static void copy(InputStream inputStream, String str, byte[] bArr) throws IOException {
        File file = new File(str);
        String parent = file.getParent();
        if (parent != null) {
            File file2 = new File(parent);
            if (!file2.exists()) {
                System.err.println("mkdirs:" + file2.mkdirs());
            }
        }
        if (str.charAt(str.length() - 1) != '/') {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            copy(inputStream, bufferedOutputStream, bArr);
            bufferedOutputStream.close();
        }
    }

    public static void main(String[] strArr) throws IOException {
        int i = 2;
        if (strArr.length < 2) {
            usage();
        }
        String str = strArr[0];
        String str2 = strArr[1];
        try {
            if (!str.equals("t") && !str.equals("p") && !str.equals("x")) {
                if (str.equals("q")) {
                    ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(str2));
                    while (i < strArr.length) {
                        File file = new File(strArr[i]);
                        if (!file.exists()) {
                            throw new IOException(strArr[i] + " - not found");
                        }
                        if (!file.canRead()) {
                            throw new IOException(strArr[i] + " - not readable");
                        }
                        int length = (int) file.length();
                        FileInputStream fileInputStream = new FileInputStream(file);
                        byte[] bArr = new byte[length];
                        if (fileInputStream.read(bArr) != length) {
                            throw new IOException(strArr[i] + " - read error");
                        }
                        fileInputStream.close();
                        ZipEntry zipEntry = new ZipEntry(strArr[i]);
                        zipEntry.setSize(length);
                        zipEntry.setTime(file.lastModified());
                        zipOutputStream.putNextEntry(zipEntry);
                        zipOutputStream.write(bArr, 0, length);
                        i++;
                    }
                    zipOutputStream.close();
                    return;
                }
                usage();
                return;
            }
            PrintStream printStream = System.out;
            byte[] bArr2 = new byte[1024];
            if (strArr.length == 2) {
                ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(str2)));
                while (true) {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        return;
                    }
                    String name = nextEntry.getName();
                    if (str.equals("t")) {
                        printStream.print(name);
                        printStream.print(" size: ");
                        printStream.println(nextEntry.getSize());
                    } else if (str.equals("p")) {
                        copy(zipInputStream, printStream, bArr2);
                    } else {
                        copy(zipInputStream, name, bArr2);
                    }
                }
            } else {
                ZipFile zipFile = new ZipFile(str2);
                while (i < strArr.length) {
                    String str3 = strArr[i];
                    ZipEntry entry = zipFile.getEntry(str3);
                    if (entry == null) {
                        System.err.println("zipfile " + str2 + ":" + strArr[i] + " - not found");
                        System.exit(-1);
                    } else if (str.equals("t")) {
                        printStream.print(str3);
                        printStream.print(" size: ");
                        printStream.println(entry.getSize());
                    } else if (str.equals("p")) {
                        copy(zipFile.getInputStream(entry), printStream, bArr2);
                    } else {
                        copy(zipFile.getInputStream(entry), str3, bArr2);
                    }
                    i++;
                }
            }
        } catch (IOException e) {
            System.err.println("I/O Exception:  " + e);
        }
    }
}
