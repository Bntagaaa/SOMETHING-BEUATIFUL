package androidx.core.text.util;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.net.MailTo;
import androidx.core.util.PatternsCompat;
import java.io.UnsupportedEncodingException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class LinkifyCompat {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f1215a = new String[0];

    /* renamed from: b, reason: collision with root package name */
    public static final androidx.core.text.util.b f1216b = new androidx.core.text.util.b();

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface LinkifyMask {
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public URLSpan f1217a;

        /* renamed from: b, reason: collision with root package name */
        public String f1218b;
        public int c;
        public int d;
    }

    public static boolean addLinks(@NonNull Spannable spannable, int i) throws NumberFormatException, UnsupportedEncodingException {
        int i2;
        int i3;
        int i4;
        int iIndexOf;
        if (e()) {
            return Linkify.addLinks(spannable, i);
        }
        if (i != 0) {
            Object[] objArr = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
            for (int length = objArr.length - 1; length >= 0; length--) {
                spannable.removeSpan(objArr[length]);
            }
            if ((i & 4) != 0) {
                Linkify.addLinks(spannable, 4);
            }
            ArrayList arrayList = new ArrayList();
            if ((i & 1) != 0) {
                c(arrayList, spannable, PatternsCompat.AUTOLINK_WEB_URL, new String[]{"http://", "https://", "rtsp://"}, Linkify.sUrlMatchFilter);
            }
            if ((i & 2) != 0) {
                c(arrayList, spannable, PatternsCompat.AUTOLINK_EMAIL_ADDRESS, new String[]{MailTo.MAILTO_SCHEME}, null);
            }
            if ((i & 8) != 0) {
                String string = spannable.toString();
                int i5 = 0;
                while (true) {
                    try {
                        String strB = b(string);
                        if (strB == null || (iIndexOf = string.indexOf(strB)) < 0) {
                            break;
                        }
                        b bVar = new b();
                        int length2 = strB.length() + iIndexOf;
                        bVar.c = iIndexOf + i5;
                        i5 += length2;
                        bVar.d = i5;
                        string = string.substring(length2);
                        try {
                            bVar.f1218b = "geo:0,0?q=" + URLEncoder.encode(strB, "UTF-8");
                            arrayList.add(bVar);
                        } catch (UnsupportedEncodingException unused) {
                        }
                    } catch (UnsupportedOperationException unused2) {
                    }
                }
            }
            for (URLSpan uRLSpan : (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class)) {
                b bVar2 = new b();
                bVar2.f1217a = uRLSpan;
                bVar2.c = spannable.getSpanStart(uRLSpan);
                bVar2.d = spannable.getSpanEnd(uRLSpan);
                arrayList.add(bVar2);
            }
            Collections.sort(arrayList, f1216b);
            int size = arrayList.size();
            int i6 = 0;
            while (i6 < size - 1) {
                b bVar3 = (b) arrayList.get(i6);
                int i7 = i6 + 1;
                b bVar4 = (b) arrayList.get(i7);
                int i8 = bVar3.c;
                int i9 = bVar4.c;
                if (i8 <= i9 && (i2 = bVar3.d) > i9) {
                    int i10 = bVar4.d;
                    int i11 = (i10 > i2 && (i3 = i2 - i8) <= (i4 = i10 - i9)) ? i3 < i4 ? i6 : -1 : i7;
                    if (i11 != -1) {
                        Object obj = ((b) arrayList.get(i11)).f1217a;
                        if (obj != null) {
                            spannable.removeSpan(obj);
                        }
                        arrayList.remove(i11);
                        size--;
                    }
                }
                i6 = i7;
            }
            if (arrayList.size() != 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    b bVar5 = (b) it.next();
                    if (bVar5.f1217a == null) {
                        spannable.setSpan(new URLSpan(bVar5.f1218b), bVar5.c, bVar5.d, 33);
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static boolean addLinks(@NonNull TextView textView, int i) {
        if (e()) {
            return Linkify.addLinks(textView, i);
        }
        if (i == 0) {
            return false;
        }
        CharSequence text = textView.getText();
        if (text instanceof Spannable) {
            if (addLinks((Spannable) text, i)) {
                a(textView);
                return true;
            }
        } else {
            SpannableString spannableStringValueOf = SpannableString.valueOf(text);
            if (addLinks(spannableStringValueOf, i)) {
                a(textView);
                textView.setText(spannableStringValueOf);
                return true;
            }
        }
        return false;
    }

    public static void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String str) {
        if (e()) {
            Linkify.addLinks(textView, pattern, str);
        } else {
            addLinks(textView, pattern, str, (String[]) null, (Linkify.MatchFilter) null, (Linkify.TransformFilter) null);
        }
    }

    public static void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String str, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        if (e()) {
            Linkify.addLinks(textView, pattern, str, matchFilter, transformFilter);
        } else {
            addLinks(textView, pattern, str, (String[]) null, matchFilter, transformFilter);
        }
    }

    public static void addLinks(@NonNull TextView textView, @NonNull Pattern pattern, @Nullable String str, @Nullable String[] strArr, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        if (e()) {
            a.a(textView, pattern, str, strArr, matchFilter, transformFilter);
            return;
        }
        SpannableString spannableStringValueOf = SpannableString.valueOf(textView.getText());
        if (addLinks(spannableStringValueOf, pattern, str, strArr, matchFilter, transformFilter)) {
            textView.setText(spannableStringValueOf);
            a(textView);
        }
    }

    public static boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String str) {
        if (e()) {
            return Linkify.addLinks(spannable, pattern, str);
        }
        return addLinks(spannable, pattern, str, (String[]) null, (Linkify.MatchFilter) null, (Linkify.TransformFilter) null);
    }

    public static boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String str, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        if (e()) {
            return Linkify.addLinks(spannable, pattern, str, matchFilter, transformFilter);
        }
        return addLinks(spannable, pattern, str, (String[]) null, matchFilter, transformFilter);
    }

    public static boolean addLinks(@NonNull Spannable spannable, @NonNull Pattern pattern, @Nullable String str, @Nullable String[] strArr, @Nullable Linkify.MatchFilter matchFilter, @Nullable Linkify.TransformFilter transformFilter) {
        String lowerCase;
        if (e()) {
            return a.b(spannable, pattern, str, strArr, matchFilter, transformFilter);
        }
        if (str == null) {
            str = "";
        }
        if (strArr == null || strArr.length < 1) {
            strArr = f1215a;
        }
        String[] strArr2 = new String[strArr.length + 1];
        strArr2[0] = str.toLowerCase(Locale.ROOT);
        int i = 0;
        while (i < strArr.length) {
            String str2 = strArr[i];
            i++;
            if (str2 == null) {
                lowerCase = "";
            } else {
                lowerCase = str2.toLowerCase(Locale.ROOT);
            }
            strArr2[i] = lowerCase;
        }
        Matcher matcher = pattern.matcher(spannable);
        boolean z = false;
        while (matcher.find()) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            String strGroup = matcher.group(0);
            if ((matchFilter != null ? matchFilter.acceptMatch(spannable, iStart, iEnd) : true) && strGroup != null) {
                spannable.setSpan(new URLSpan(d(strGroup, strArr2, matcher, transformFilter)), iStart, iEnd, 33);
                z = true;
            }
        }
        return z;
    }

    public static boolean e() {
        return Build.VERSION.SDK_INT >= 28;
    }

    public static void a(TextView textView) {
        if ((textView.getMovementMethod() instanceof LinkMovementMethod) || !textView.getLinksClickable()) {
            return;
        }
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    public static String d(String str, String[] strArr, Matcher matcher, Linkify.TransformFilter transformFilter) {
        boolean z;
        if (transformFilter != null) {
            str = transformFilter.transformUrl(matcher, str);
        }
        String string = str;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            }
            String str2 = strArr[i];
            if (string.regionMatches(true, 0, str2, 0, str2.length())) {
                z = true;
                if (!string.regionMatches(false, 0, str2, 0, str2.length())) {
                    StringBuilder sbP = _COROUTINE.a.p(str2);
                    sbP.append(string.substring(str2.length()));
                    string = sbP.toString();
                }
            } else {
                i++;
            }
        }
        return (z || strArr.length <= 0) ? string : _COROUTINE.a.m(new StringBuilder(), strArr[0], string);
    }

    public static void c(ArrayList arrayList, Spannable spannable, Pattern pattern, String[] strArr, Linkify.MatchFilter matchFilter) {
        Matcher matcher = pattern.matcher(spannable);
        while (matcher.find()) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            String strGroup = matcher.group(0);
            if (matchFilter == null || matchFilter.acceptMatch(spannable, iStart, iEnd)) {
                if (strGroup != null) {
                    b bVar = new b();
                    bVar.f1218b = d(strGroup, strArr, matcher, null);
                    bVar.c = iStart;
                    bVar.d = iEnd;
                    arrayList.add(bVar);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
    
        r15 = -r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0147, code lost:
    
        if (r15 <= 0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x014a, code lost:
    
        if (r14 <= 0) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x014d, code lost:
    
        r14 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x014e, code lost:
    
        r15 = -r14;
     */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0151 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(java.lang.String r17) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.text.util.LinkifyCompat.b(java.lang.String):java.lang.String");
    }

    private LinkifyCompat() {
    }

    @RequiresApi(24)
    public static class a {
        private a() {
        }

        @DoNotInline
        public static void a(TextView textView, Pattern pattern, String str, String[] strArr, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
            Linkify.addLinks(textView, pattern, str, strArr, matchFilter, transformFilter);
        }

        @DoNotInline
        public static boolean b(Spannable spannable, Pattern pattern, String str, String[] strArr, Linkify.MatchFilter matchFilter, Linkify.TransformFilter transformFilter) {
            return Linkify.addLinks(spannable, pattern, str, strArr, matchFilter, transformFilter);
        }
    }
}
