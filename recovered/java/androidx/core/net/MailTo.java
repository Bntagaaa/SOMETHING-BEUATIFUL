package androidx.core.net;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.text.Typography;

/* loaded from: classes.dex */
public final class MailTo {
    public static final String MAILTO_SCHEME = "mailto:";

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f1124a = new HashMap();

    private MailTo() {
    }

    public static boolean isMailTo(@Nullable String str) {
        return str != null && str.startsWith(MAILTO_SCHEME);
    }

    public static boolean isMailTo(@Nullable Uri uri) {
        return uri != null && "mailto".equals(uri.getScheme());
    }

    @NonNull
    public static MailTo parse(@NonNull String str) throws ParseException {
        String strDecode;
        String strSubstring;
        Preconditions.checkNotNull(str);
        if (!isMailTo(str)) {
            throw new ParseException();
        }
        int iIndexOf = str.indexOf(35);
        if (iIndexOf != -1) {
            str = str.substring(0, iIndexOf);
        }
        int iIndexOf2 = str.indexOf(63);
        if (iIndexOf2 == -1) {
            strDecode = Uri.decode(str.substring(7));
            strSubstring = null;
        } else {
            strDecode = Uri.decode(str.substring(7, iIndexOf2));
            strSubstring = str.substring(iIndexOf2 + 1);
        }
        MailTo mailTo = new MailTo();
        if (strSubstring != null) {
            for (String str2 : strSubstring.split("&")) {
                String[] strArrSplit = str2.split("=", 2);
                if (strArrSplit.length != 0) {
                    mailTo.f1124a.put(Uri.decode(strArrSplit[0]).toLowerCase(Locale.ROOT), strArrSplit.length > 1 ? Uri.decode(strArrSplit[1]) : null);
                }
            }
        }
        String to = mailTo.getTo();
        if (to != null) {
            strDecode = _COROUTINE.a.j(strDecode, ", ", to);
        }
        mailTo.f1124a.put("to", strDecode);
        return mailTo;
    }

    @NonNull
    public static MailTo parse(@NonNull Uri uri) throws ParseException {
        return parse(uri.toString());
    }

    @Nullable
    public String getTo() {
        return (String) this.f1124a.get("to");
    }

    @Nullable
    public String getCc() {
        return (String) this.f1124a.get("cc");
    }

    @Nullable
    public String getBcc() {
        return (String) this.f1124a.get("bcc");
    }

    @Nullable
    public String getSubject() {
        return (String) this.f1124a.get("subject");
    }

    @Nullable
    public String getBody() {
        return (String) this.f1124a.get("body");
    }

    @Nullable
    public Map<String, String> getHeaders() {
        return this.f1124a;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("mailto:?");
        for (Map.Entry entry : this.f1124a.entrySet()) {
            sb.append(Uri.encode((String) entry.getKey()));
            sb.append('=');
            sb.append(Uri.encode((String) entry.getValue()));
            sb.append(Typography.amp);
        }
        return sb.toString();
    }
}
