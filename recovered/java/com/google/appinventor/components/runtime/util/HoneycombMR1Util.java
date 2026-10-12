package com.google.appinventor.components.runtime.util;

import android.app.Activity;
import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import java.io.InputStream;

/* loaded from: classes.dex */
public class HoneycombMR1Util {
    private HoneycombMR1Util() {
    }

    public static Uri getContentUri() {
        return ContactsContract.Contacts.CONTENT_URI;
    }

    public static Uri getPhoneContentUri() {
        return ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
    }

    public static Uri getDataContentUri() {
        return ContactsContract.Data.CONTENT_URI;
    }

    public static String[] getContactProjection() {
        return new String[]{"_id", "display_name", "photo_thumb_uri", "photo_uri"};
    }

    public static String[] getNameProjection() {
        return new String[]{"contact_id", "display_name", "photo_thumb_uri", "data1"};
    }

    public static String[] getDataProjection() {
        return new String[]{"mimetype", "data1", "data2", "data1", "data2"};
    }

    public static String[] getEmailAdapterProjection() {
        return new String[]{"_id", "display_name", "data1", "mimetype"};
    }

    public static int getIdIndex(Cursor cursor) {
        return cursor.getColumnIndex("_id");
    }

    public static int getContactIdIndex(Cursor cursor) {
        return cursor.getColumnIndex("contact_id");
    }

    public static int getNameIndex(Cursor cursor) {
        return cursor.getColumnIndex("display_name");
    }

    public static int getThumbnailIndex(Cursor cursor) {
        return cursor.getColumnIndex("photo_thumb_uri");
    }

    public static int getPhotoIndex(Cursor cursor) {
        return cursor.getColumnIndex("photo_uri");
    }

    public static int getPhoneIndex(Cursor cursor) {
        return cursor.getColumnIndex("data1");
    }

    public static int getEmailIndex(Cursor cursor) {
        return cursor.getColumnIndex("data1");
    }

    public static int getMimeIndex(Cursor cursor) {
        return cursor.getColumnIndex("mimetype");
    }

    public static String getPhoneType() {
        return "vnd.android.cursor.item/phone_v2";
    }

    public static String getEmailType() {
        return "vnd.android.cursor.item/email_v2";
    }

    public static String getDisplayName() {
        return "display_name";
    }

    public static String getEmailAddress() {
        return "data1";
    }

    public static String getDataMimeType() {
        return "mimetype";
    }

    public static Cursor getDataCursor(String str, Activity activity, String[] strArr) {
        return activity.getContentResolver().query(ContactsContract.Data.CONTENT_URI, strArr, "contact_id=? AND (mimetype=? OR mimetype=?)", new String[]{str, "vnd.android.cursor.item/phone_v2", "vnd.android.cursor.item/email_v2"}, null);
    }

    public static InputStream openContactPhotoInputStreamHelper(ContentResolver contentResolver, Uri uri) {
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri);
    }

    public static String getTimesContacted() {
        return "times_contacted";
    }
}
