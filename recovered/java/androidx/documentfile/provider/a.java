package androidx.documentfile.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(19)
/* loaded from: classes.dex */
class a {
    public static boolean isVirtual(Context context, Uri uri) {
        return DocumentsContract.isDocumentUri(context, uri) && (getFlags(context, uri) & 512) != 0;
    }

    @Nullable
    public static String getName(Context context, Uri uri) {
        return c(context, uri, "_display_name");
    }

    @Nullable
    public static String getType(Context context, Uri uri) throws Exception {
        String strC = c(context, uri, "mime_type");
        if ("vnd.android.document/directory".equals(strC)) {
            return null;
        }
        return strC;
    }

    public static boolean isDirectory(Context context, Uri uri) {
        return "vnd.android.document/directory".equals(c(context, uri, "mime_type"));
    }

    public static boolean isFile(Context context, Uri uri) throws Exception {
        String strC = c(context, uri, "mime_type");
        return ("vnd.android.document/directory".equals(strC) || TextUtils.isEmpty(strC)) ? false : true;
    }

    public static long getFlags(Context context, Uri uri) {
        return b(context, uri, "flags", 0L);
    }

    public static long lastModified(Context context, Uri uri) {
        return b(context, uri, "last_modified", 0L);
    }

    public static long length(Context context, Uri uri) {
        return b(context, uri, "_size", 0L);
    }

    public static boolean canRead(Context context, Uri uri) {
        return context.checkCallingOrSelfUriPermission(uri, 1) == 0 && !TextUtils.isEmpty(c(context, uri, "mime_type"));
    }

    public static boolean canWrite(Context context, Uri uri) throws Exception {
        if (context.checkCallingOrSelfUriPermission(uri, 2) == 0) {
            String strC = c(context, uri, "mime_type");
            int iB = (int) b(context, uri, "flags", 0);
            if (!TextUtils.isEmpty(strC)) {
                if ((iB & 4) != 0) {
                    return true;
                }
                if ("vnd.android.document/directory".equals(strC) && (iB & 8) != 0) {
                    return true;
                }
                if (!TextUtils.isEmpty(strC) && (iB & 2) != 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean exists(Context context, Uri uri) throws Exception {
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = context.getContentResolver().query(uri, new String[]{"document_id"}, null, null, null);
                boolean z = cursorQuery.getCount() > 0;
                a(cursorQuery);
                return z;
            } catch (Exception e) {
                Log.w("DocumentFile", "Failed query: " + e);
                a(cursorQuery);
                return false;
            }
        } catch (Throwable th) {
            a(cursorQuery);
            throw th;
        }
    }

    public static String c(Context context, Uri uri, String str) throws Exception {
        Cursor cursorQuery;
        Throwable th;
        Exception exc;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) {
                        a(cursorQuery);
                        return null;
                    }
                    String string = cursorQuery.getString(0);
                    a(cursorQuery);
                    return string;
                } catch (Exception e) {
                    exc = e;
                    Log.w("DocumentFile", "Failed query: " + exc);
                    a(cursorQuery);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                a(cursorQuery);
                throw th;
            }
        } catch (Exception e2) {
            exc = e2;
            cursorQuery = null;
        } catch (Throwable th3) {
            cursorQuery = null;
            th = th3;
            a(cursorQuery);
            throw th;
        }
    }

    public static long b(Context context, Uri uri, String str, long j) throws Exception {
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = contentResolver.query(uri, new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) {
                    a(cursorQuery);
                    return j;
                }
                long j2 = cursorQuery.getLong(0);
                a(cursorQuery);
                return j2;
            } catch (Exception e) {
                Log.w("DocumentFile", "Failed query: " + e);
                a(cursorQuery);
                return j;
            }
        } catch (Throwable th) {
            a(cursorQuery);
            throw th;
        }
    }

    public static void a(Cursor cursor) throws Exception {
        if (cursor != null) {
            try {
                cursor.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    private a() {
    }
}
