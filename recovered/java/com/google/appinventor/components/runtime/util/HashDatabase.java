package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.content.ContentValues;
import android.content.Context;
import android.content.ContextWrapper;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.io.File;

/* loaded from: classes.dex */
public final class HashDatabase extends SQLiteOpenHelper {
    private static final String[] COLUMNS = {"fileName", "hashFile", "timeStamp"};
    public static final String DATABASE_NAME = "hashTable.db";
    public static final int DATABASE_VERSION = 1;
    private static final String KEY_HASH = "hashFile";
    private static final String KEY_NAME = "fileName";
    private static final String KEY_TIMESTAMP = "timeStamp";
    private static final String SQL_CREATE_ENTRIES = "CREATE TABLE HashDatabase (fileName TEXT,hashFile TEXT,timeStamp TEXT)";
    private static final String SQL_DELETE_ENTRIES = "DROP TABLE IF EXISTS HashDatabase";
    private static final String TABLE_NAME = "HashDatabase";

    public static class ExternalContext extends ContextWrapper {
        Context base;

        public ExternalContext(Context context) {
            super(context);
            this.base = context;
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public File getDatabasePath(String str) {
            String strJ = a.j(QUtil.getReplDatabasePath(this.base, true), File.separator, str);
            if (!strJ.endsWith(".db")) {
                strJ = strJ.concat(".db");
            }
            File file = new File(strJ);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            return file;
        }
    }

    public HashDatabase(Context context) {
        super(new ExternalContext(context), DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL(SQL_CREATE_ENTRIES);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLException {
        sQLiteDatabase.execSQL(SQL_DELETE_ENTRIES);
        onCreate(sQLiteDatabase);
    }

    public void deleteOne(HashFile hashFile) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.delete("HashDatabase", "fileName = ?", new String[]{hashFile.getFileName()});
        writableDatabase.close();
    }

    public HashFile getHashFile(String str) {
        SQLiteDatabase readableDatabase = getReadableDatabase();
        Cursor cursorQuery = readableDatabase.query("HashDatabase", COLUMNS, " fileName = ?", new String[]{str}, null, null, null, null);
        Log.d("Database", cursorQuery.toString());
        if (cursorQuery.getCount() < 1) {
            cursorQuery.close();
            readableDatabase.close();
            return null;
        }
        cursorQuery.moveToFirst();
        HashFile hashFile = new HashFile();
        hashFile.setFileName(cursorQuery.getString(0));
        hashFile.setHash(cursorQuery.getString(1));
        hashFile.setTimestamp(cursorQuery.getString(2));
        cursorQuery.close();
        readableDatabase.close();
        return hashFile;
    }

    public void insertHashFile(HashFile hashFile) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("fileName", hashFile.getFileName());
        contentValues.put("hashFile", hashFile.getHash());
        contentValues.put("timeStamp", hashFile.getTimestamp());
        writableDatabase.insert("HashDatabase", null, contentValues);
        writableDatabase.close();
    }

    public int updateHashFile(HashFile hashFile) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put("fileName", hashFile.getFileName());
        contentValues.put("hashFile", hashFile.getHash());
        contentValues.put("timeStamp", hashFile.getTimestamp());
        int iUpdate = writableDatabase.update("HashDatabase", contentValues, "fileName = ?", new String[]{hashFile.getFileName()});
        writableDatabase.close();
        return iUpdate;
    }
}
