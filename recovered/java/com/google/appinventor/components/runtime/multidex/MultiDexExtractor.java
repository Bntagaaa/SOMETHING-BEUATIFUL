package com.google.appinventor.components.runtime.multidex;

import _COROUTINE.a;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import com.google.appinventor.components.runtime.util.IOUtils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* loaded from: classes.dex */
final class MultiDexExtractor {
    private static final int BUFFER_SIZE = 16384;
    private static final String DEX_PREFIX = "classes";
    private static final String DEX_SUFFIX = ".dex";
    private static final String EXTRACTED_NAME_EXT = ".classes";
    private static final String EXTRACTED_SUFFIX = ".zip";
    private static final String KEY_CRC = "crc";
    private static final String KEY_DEX_NUMBER = "dex.number";
    private static final String KEY_TIME_STAMP = "timestamp";
    private static final int MAX_EXTRACT_ATTEMPTS = 3;
    private static final long NO_VALUE = -1;
    private static final String PREFS_FILE = "multidex.version";
    private static final String TAG = "MultiDex";
    private static Method sApplyMethod;

    public static boolean mustLoad(Context context, ApplicationInfo applicationInfo) {
        File file = new File(applicationInfo.sourceDir);
        try {
            return isModified(context, file, getZipCrc(file));
        } catch (IOException unused) {
            return false;
        }
    }

    public static List<File> load(Context context, ApplicationInfo applicationInfo, File file, boolean z) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        List<File> listPerformExtractions;
        Log.i(TAG, "MultiDexExtractor.load(" + applicationInfo.sourceDir + ", " + z + ")");
        File file2 = new File(applicationInfo.sourceDir);
        long zipCrc = getZipCrc(file2);
        if (!z && !isModified(context, file2, zipCrc)) {
            try {
                listPerformExtractions = loadExistingExtractions(context, file2, file);
            } catch (IOException e) {
                Log.w(TAG, "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", e);
                List<File> listPerformExtractions2 = performExtractions(file2, file);
                putStoredApkInfo(context, getTimeStamp(file2), zipCrc, listPerformExtractions2.size() + 1);
                listPerformExtractions = listPerformExtractions2;
            }
        } else {
            Log.i(TAG, "Detected that extraction must be performed.");
            listPerformExtractions = performExtractions(file2, file);
            putStoredApkInfo(context, getTimeStamp(file2), zipCrc, listPerformExtractions.size() + 1);
        }
        Log.i(TAG, "load found " + listPerformExtractions.size() + " secondary dex files");
        return listPerformExtractions;
    }

    private static List<File> loadExistingExtractions(Context context, File file, File file2) throws IOException {
        Log.i(TAG, "loading existing secondary dex files");
        String strZ = a.z(file.getName(), EXTRACTED_NAME_EXT);
        int i = getMultiDexPreferences(context).getInt(KEY_DEX_NUMBER, 1);
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 2; i2 <= i; i2++) {
            File file3 = new File(file2, strZ + i2 + EXTRACTED_SUFFIX);
            if (!file3.isFile()) {
                throw new IOException(a.A("Missing extracted secondary dex file '", file3.getPath(), "'"));
            }
            arrayList.add(file3);
            if (!verifyZipFile(file3)) {
                Log.i(TAG, "Invalid zip file: " + file3);
                throw new IOException("Invalid ZIP file.");
            }
        }
        return arrayList;
    }

    private static boolean isModified(Context context, File file, long j) {
        SharedPreferences multiDexPreferences = getMultiDexPreferences(context);
        return (multiDexPreferences.getLong(KEY_TIME_STAMP, -1L) == getTimeStamp(file) && multiDexPreferences.getLong(KEY_CRC, -1L) == j) ? false : true;
    }

    private static long getTimeStamp(File file) {
        long jLastModified = file.lastModified();
        return jLastModified == -1 ? jLastModified - 1 : jLastModified;
    }

    private static long getZipCrc(File file) throws IOException {
        long zipCrc = ZipUtil.getZipCrc(file);
        return zipCrc == -1 ? zipCrc - 1 : zipCrc;
    }

    private static List<File> performExtractions(File file, File file2) throws IOException {
        File file3 = file2;
        String strZ = a.z(file.getName(), EXTRACTED_NAME_EXT);
        prepareDexDir(file3, strZ);
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(file);
        try {
            ZipEntry entry = zipFile.getEntry("classes2.dex");
            int i = 2;
            while (entry != null) {
                File file4 = new File(file3, strZ + i + EXTRACTED_SUFFIX);
                arrayList.add(file4);
                Log.i(TAG, "Extraction is needed for file " + file4);
                int i2 = 0;
                boolean zVerifyZipFile = false;
                while (i2 < 3 && !zVerifyZipFile) {
                    i2++;
                    extract(zipFile, entry, file4, strZ);
                    zVerifyZipFile = verifyZipFile(file4);
                    String str = zVerifyZipFile ? "success" : "failed";
                    Log.i(TAG, "Extraction " + str + " - length " + file4.getAbsolutePath() + ": " + file4.length());
                    if (!zVerifyZipFile) {
                        file4.delete();
                        if (file4.exists()) {
                            Log.w(TAG, "Failed to delete corrupted secondary dex '" + file4.getPath() + "'");
                        }
                    }
                }
                if (!zVerifyZipFile) {
                    throw new IOException("Could not create zip file " + file4.getAbsolutePath() + " for secondary dex (" + i + ")");
                }
                i++;
                entry = zipFile.getEntry(DEX_PREFIX + i + DEX_SUFFIX);
                file3 = file2;
            }
            try {
                zipFile.close();
                return arrayList;
            } catch (IOException e) {
                Log.w(TAG, "Failed to close resource", e);
                return arrayList;
            }
        } finally {
        }
    }

    private static void putStoredApkInfo(Context context, long j, long j2, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        SharedPreferences.Editor editorEdit = getMultiDexPreferences(context).edit();
        editorEdit.putLong(KEY_TIME_STAMP, j);
        editorEdit.putLong(KEY_CRC, j2);
        editorEdit.putInt(KEY_DEX_NUMBER, i);
        apply(editorEdit);
    }

    private static SharedPreferences getMultiDexPreferences(Context context) {
        return context.getSharedPreferences(PREFS_FILE, 4);
    }

    private static void prepareDexDir(File file, final String str) throws IOException {
        file.mkdirs();
        if (!file.isDirectory()) {
            throw new IOException(a.i("Failed to create dex directory ", file.getPath()));
        }
        File[] fileArrListFiles = file.listFiles(new FileFilter() { // from class: com.google.appinventor.components.runtime.multidex.MultiDexExtractor.1
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                return !file2.getName().startsWith(str);
            }
        });
        if (fileArrListFiles == null) {
            Log.w(TAG, "Failed to list secondary dex dir content (" + file.getPath() + ").");
            return;
        }
        for (File file2 : fileArrListFiles) {
            Log.i(TAG, "Trying to delete old file " + file2.getPath() + " of size " + file2.length());
            if (file2.delete()) {
                a.C("Deleted old file ", file2.getPath(), TAG);
            } else {
                Log.w(TAG, "Failed to delete old file " + file2.getPath());
            }
        }
    }

    private static void extract(ZipFile zipFile, ZipEntry zipEntry, File file, String str) throws IOException {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File fileCreateTempFile = File.createTempFile(str, EXTRACTED_SUFFIX, file.getParentFile());
        a.C("Extracting ", fileCreateTempFile.getPath(), TAG);
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(fileCreateTempFile)));
            try {
                ZipEntry zipEntry2 = new ZipEntry("classes.dex");
                zipEntry2.setTime(zipEntry.getTime());
                zipOutputStream.putNextEntry(zipEntry2);
                byte[] bArr = new byte[16384];
                for (int i = inputStream.read(bArr); i != -1; i = inputStream.read(bArr)) {
                    zipOutputStream.write(bArr, 0, i);
                }
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                Log.i(TAG, "Renaming to " + file.getPath());
                if (fileCreateTempFile.renameTo(file)) {
                    IOUtils.closeQuietly(TAG, inputStream);
                    fileCreateTempFile.delete();
                    return;
                }
                throw new IOException("Failed to rename \"" + fileCreateTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
            } catch (Throwable th) {
                zipOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            IOUtils.closeQuietly(TAG, inputStream);
            fileCreateTempFile.delete();
            throw th2;
        }
    }

    public static boolean verifyZipFile(File file) throws IOException {
        try {
            try {
                new ZipFile(file).close();
                return true;
            } catch (IOException unused) {
                Log.w(TAG, "Failed to close zip file: " + file.getAbsolutePath());
                return false;
            }
        } catch (ZipException e) {
            Log.w(TAG, "File " + file.getAbsolutePath() + " is not a valid zip file.", e);
            return false;
        } catch (IOException e2) {
            Log.w(TAG, "Got an IOException trying to open zip file: " + file.getAbsolutePath(), e2);
            return false;
        }
    }

    static {
        try {
            sApplyMethod = SharedPreferences.Editor.class.getMethod("apply", new Class[0]);
        } catch (NoSuchMethodException unused) {
            sApplyMethod = null;
        }
    }

    private static void apply(SharedPreferences.Editor editor) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method method = sApplyMethod;
        if (method != null) {
            try {
                method.invoke(editor, new Object[0]);
                return;
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        editor.commit();
    }
}
