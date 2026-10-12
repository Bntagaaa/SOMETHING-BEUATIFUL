package com.google.appinventor.components.runtime;

import android.R;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.net.Uri;
import android.provider.Contacts;
import android.text.TextUtils;
import android.text.util.Rfc822Token;
import android.view.View;
import android.widget.ResourceCursorAdapter;
import android.widget.TextView;
import com.google.appinventor.components.runtime.util.HoneycombMR1Util;
import com.google.appinventor.components.runtime.util.SdkLevel;

/* loaded from: classes.dex */
public class EmailAddressAdapter extends ResourceCursorAdapter {
    private static final boolean DEBUG = false;
    public static final int PRE_HONEYCOMB_DATA_INDEX = 2;
    public static final int PRE_HONEYCOMB_NAME_INDEX = 1;
    private static String SORT_ORDER = null;
    private static final String TAG = "EmailAddressAdapter";
    private ContentResolver contentResolver;
    private Context context;
    private static final String[] PRE_HONEYCOMB_PROJECTION = {"_id", "name", "data"};
    private static final String[] POST_HONEYCOMB_PROJECTION = HoneycombMR1Util.getEmailAdapterProjection();

    public EmailAddressAdapter(Context context) {
        super(context, R.layout.simple_dropdown_item_1line, null);
        this.contentResolver = context.getContentResolver();
        this.context = context;
        if (SdkLevel.getLevel() >= 12) {
            SORT_ORDER = _COROUTINE.a.j(HoneycombMR1Util.getTimesContacted(), " DESC, ", HoneycombMR1Util.getDisplayName());
        } else {
            SORT_ORDER = "times_contacted DESC, name";
        }
    }

    @Override // android.widget.CursorAdapter
    public final String convertToString(Cursor cursor) {
        String string;
        String string2;
        int columnIndex = cursor.getColumnIndex(HoneycombMR1Util.getDisplayName());
        int columnIndex2 = cursor.getColumnIndex(HoneycombMR1Util.getEmailAddress());
        if (SdkLevel.getLevel() >= 12) {
            string = cursor.getString(columnIndex);
            string2 = cursor.getString(columnIndex2);
        } else {
            string = cursor.getString(1);
            string2 = cursor.getString(2);
        }
        return new Rfc822Token(string, string2, null).toString();
    }

    private final String makeDisplayString(Cursor cursor) {
        String string;
        String string2;
        int columnIndex = cursor.getColumnIndex(HoneycombMR1Util.getDisplayName());
        int columnIndex2 = cursor.getColumnIndex(HoneycombMR1Util.getEmailAddress());
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        if (SdkLevel.getLevel() >= 12) {
            string = cursor.getString(columnIndex);
            string2 = cursor.getString(columnIndex2);
        } else {
            string = cursor.getString(1);
            string2 = cursor.getString(2);
        }
        if (TextUtils.isEmpty(string)) {
            z = false;
        } else {
            sb.append(string);
        }
        if (z) {
            sb.append(" <");
        }
        sb.append(string2);
        if (z) {
            sb.append(">");
        }
        return sb.toString();
    }

    @Override // android.widget.CursorAdapter
    public final void bindView(View view, Context context, Cursor cursor) {
        ((TextView) view).setText(makeDisplayString(cursor));
    }

    @Override // android.widget.CursorAdapter
    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        Uri dataContentUri;
        StringBuilder sb = new StringBuilder();
        if (charSequence != null) {
            String strSqlEscapeString = DatabaseUtils.sqlEscapeString(charSequence.toString() + "%");
            if (SdkLevel.getLevel() >= 12) {
                dataContentUri = HoneycombMR1Util.getDataContentUri();
                sb.append(_COROUTINE.a.k("(", HoneycombMR1Util.getDataMimeType(), "='", HoneycombMR1Util.getEmailType(), "')"));
                sb.append(" AND (display_name LIKE ");
                sb.append(strSqlEscapeString);
                sb.append(")");
            } else {
                dataContentUri = Contacts.ContactMethods.CONTENT_EMAIL_URI;
                sb.append("(name LIKE ");
                sb.append(strSqlEscapeString);
                sb.append(") OR (display_name LIKE ");
                sb.append(strSqlEscapeString);
                sb.append(")");
            }
        } else {
            dataContentUri = null;
        }
        Uri uri = dataContentUri;
        String string = sb.toString();
        return SdkLevel.getLevel() >= 12 ? this.contentResolver.query(uri, POST_HONEYCOMB_PROJECTION, string, null, SORT_ORDER) : this.contentResolver.query(uri, PRE_HONEYCOMB_PROJECTION, string, null, SORT_ORDER);
    }
}
