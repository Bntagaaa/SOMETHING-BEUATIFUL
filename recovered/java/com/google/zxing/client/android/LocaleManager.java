package com.google.zxing.client.android;

import android.content.Context;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public final class LocaleManager {

    /* renamed from: a, reason: collision with root package name */
    public static final List f5112a;

    static {
        HashMap map = new HashMap();
        map.put("AR", "com.ar");
        map.put("AU", "com.au");
        map.put("BR", "com.br");
        map.put("BG", "bg");
        map.put(Locale.CANADA.getCountry(), "ca");
        Locale locale = Locale.CHINA;
        map.put(locale.getCountry(), "cn");
        map.put("CZ", "cz");
        map.put("DK", "dk");
        map.put("FI", "fi");
        Locale locale2 = Locale.FRANCE;
        map.put(locale2.getCountry(), "fr");
        Locale locale3 = Locale.GERMANY;
        map.put(locale3.getCountry(), "de");
        map.put("GR", "gr");
        map.put("HU", "hu");
        map.put("ID", "co.id");
        map.put("IL", "co.il");
        Locale locale4 = Locale.ITALY;
        map.put(locale4.getCountry(), "it");
        Locale locale5 = Locale.JAPAN;
        map.put(locale5.getCountry(), "co.jp");
        map.put(Locale.KOREA.getCountry(), "co.kr");
        map.put("NL", "nl");
        map.put("PL", "pl");
        map.put("PT", "pt");
        map.put("RU", "ru");
        map.put("SK", "sk");
        map.put("SI", "si");
        map.put("ES", "es");
        map.put("SE", "se");
        map.put(Locale.TAIWAN.getCountry(), "tw");
        map.put("TR", "com.tr");
        Locale locale6 = Locale.UK;
        map.put(locale6.getCountry(), "co.uk");
        Locale locale7 = Locale.US;
        map.put(locale7.getCountry(), "com");
        HashMap map2 = new HashMap();
        map2.put("AU", "com.au");
        map2.put(locale.getCountry(), "cn");
        map2.put(locale2.getCountry(), "fr");
        map2.put(locale3.getCountry(), "de");
        map2.put(locale4.getCountry(), "it");
        map2.put(locale5.getCountry(), "co.jp");
        map2.put("NL", "nl");
        map2.put("ES", "es");
        map2.put(locale6.getCountry(), "co.uk");
        map2.put(locale7.getCountry(), "com");
        f5112a = Arrays.asList("de", "en", "es", "fr", "it", "ja", "ko", "nl", "pt", "ru", "zh-rCN", "zh-rTW");
    }

    private LocaleManager() {
    }

    public static String getCountryTLD(Context context) {
        return "com";
    }

    public static String getProductSearchCountryTLD(Context context) {
        return "com";
    }

    public static String getBookSearchCountryTLD(Context context) {
        return "com";
    }

    public static boolean isBookSearchUrl(String str) {
        return str.startsWith("http://google.com/books") || str.startsWith("http://books.google.");
    }

    public static String getTranslatedAssetLanguage() {
        Locale locale = Locale.getDefault();
        if (locale == null) {
            return "en";
        }
        String language = locale.getLanguage();
        if (!Locale.SIMPLIFIED_CHINESE.getLanguage().equals(language)) {
            return language;
        }
        Locale locale2 = Locale.getDefault();
        return _COROUTINE.a.j(language, "-r", locale2 == null ? "US" : locale2.getCountry());
    }
}
