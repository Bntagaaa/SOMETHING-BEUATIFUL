package androidx.core.text.util;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.util.Locale;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
class a {

    /* renamed from: a, reason: collision with root package name */
    public static final C0016a[] f1219a = {new C0016a(99, 99, -1, -1), new C0016a(35, 36, -1, -1), new C0016a(71, 72, -1, -1), new C0016a(96, 96, -1, -1), new C0016a(85, 86, -1, -1), new C0016a(90, 96, -1, -1), new C0016a(80, 81, -1, -1), new C0016a(6, 6, -1, -1), new C0016a(20, 20, -1, -1), new C0016a(19, 19, -1, -1), new C0016a(32, 34, -1, -1), new C0016a(96, 96, -1, -1), new C0016a(30, 31, -1, -1), new C0016a(96, 96, -1, -1), new C0016a(96, 96, -1, -1), new C0016a(50, 52, -1, -1), new C0016a(83, 83, -1, -1), new C0016a(60, 62, -1, -1), new C0016a(46, 47, -1, -1), new C0016a(66, 67, 73, -1), new C0016a(40, 42, -1, -1), new C0016a(70, 71, -1, -1), new C0016a(1, 2, -1, -1), new C0016a(20, 21, -1, -1), new C0016a(3, 4, -1, -1), new C0016a(96, 96, -1, -1), new C0016a(48, 49, -1, -1), new C0016a(55, 56, -1, -1), new C0016a(63, 65, -1, -1), new C0016a(96, 96, -1, -1), new C0016a(38, 39, -1, -1), new C0016a(55, 56, -1, -1), new C0016a(27, 28, -1, -1), new C0016a(58, 58, -1, -1), new C0016a(68, 69, -1, -1), new C0016a(3, 4, -1, -1), new C0016a(7, 8, -1, -1), new C0016a(87, 88, 86, -1), new C0016a(88, 89, 96, -1), new C0016a(10, 14, 0, 6), new C0016a(43, 45, -1, -1), new C0016a(73, 74, -1, -1), new C0016a(97, 97, -1, -1), new C0016a(15, 19, -1, -1), new C0016a(6, 6, 0, 9), new C0016a(96, 96, -1, -1), new C0016a(2, 2, -1, -1), new C0016a(29, 29, -1, -1), new C0016a(57, 57, -1, -1), new C0016a(37, 38, -1, -1), new C0016a(75, 79, 87, 88), new C0016a(84, 84, -1, -1), new C0016a(22, 24, 20, -1), new C0016a(6, 9, -1, -1), new C0016a(5, 5, -1, -1), new C0016a(98, 99, -1, -1), new C0016a(53, 54, -1, -1), new C0016a(24, 26, -1, -1), new C0016a(82, 83, -1, -1)};

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f1220b = Pattern.compile("[^,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]+(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);
    public static final Pattern c = Pattern.compile("(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)(?:-(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?))*(?=[,\"'\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);
    public static final Pattern d = Pattern.compile("(?:(ak|alaska)|(al|alabama)|(ar|arkansas)|(as|american[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+samoa)|(az|arizona)|(ca|california)|(co|colorado)|(ct|connecticut)|(dc|district[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+of[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+columbia)|(de|delaware)|(fl|florida)|(fm|federated[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+states[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+of[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+micronesia)|(ga|georgia)|(gu|guam)|(hi|hawaii)|(ia|iowa)|(id|idaho)|(il|illinois)|(in|indiana)|(ks|kansas)|(ky|kentucky)|(la|louisiana)|(ma|massachusetts)|(md|maryland)|(me|maine)|(mh|marshall[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+islands)|(mi|michigan)|(mn|minnesota)|(mo|missouri)|(mp|northern[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+mariana[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+islands)|(ms|mississippi)|(mt|montana)|(nc|north[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+carolina)|(nd|north[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+dakota)|(ne|nebraska)|(nh|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+hampshire)|(nj|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+jersey)|(nm|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+mexico)|(nv|nevada)|(ny|new[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+york)|(oh|ohio)|(ok|oklahoma)|(or|oregon)|(pa|pennsylvania)|(pr|puerto[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+rico)|(pw|palau)|(ri|rhode[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+island)|(sc|south[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+carolina)|(sd|south[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+dakota)|(tn|tennessee)|(tx|texas)|(ut|utah)|(va|virginia)|(vi|virgin[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+islands)|(vt|vermont)|(wa|washington)|(wi|wisconsin)|(wv|west[\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000]+virginia)|(wy|wyoming))(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);
    public static final Pattern e = Pattern.compile("(?:alley|annex|arcade|ave[.]?|avenue|alameda|bayou|beach|bend|bluffs?|bottom|boulevard|branch|bridge|brooks?|burgs?|bypass|broadway|camino|camp|canyon|cape|causeway|centers?|circles?|cliffs?|club|common|corners?|course|courts?|coves?|creek|crescent|crest|crossing|crossroad|curve|circulo|dale|dam|divide|drives?|estates?|expressway|extensions?|falls?|ferry|fields?|flats?|fords?|forest|forges?|forks?|fort|freeway|gardens?|gateway|glens?|greens?|groves?|harbors?|haven|heights|highway|hills?|hollow|inlet|islands?|isle|junctions?|keys?|knolls?|lakes?|land|landing|lane|lights?|loaf|locks?|lodge|loop|mall|manors?|meadows?|mews|mills?|mission|motorway|mount|mountains?|neck|orchard|oval|overpass|parks?|parkways?|pass|passage|path|pike|pines?|plains?|plaza|points?|ports?|prairie|privada|radial|ramp|ranch|rapids?|rd[.]?|rest|ridges?|river|roads?|route|row|rue|run|shoals?|shores?|skyway|springs?|spurs?|squares?|station|stravenue|stream|st[.]?|streets?|summit|speedway|terrace|throughway|trace|track|trafficway|trail|tunnel|turnpike|underpass|unions?|valleys?|viaduct|views?|villages?|ville|vista|walks?|wall|ways?|wells?|xing|xrd)(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);
    public static final Pattern f = Pattern.compile("([0-9]+)(st|nd|rd|th)", 2);

    /* renamed from: g, reason: collision with root package name */
    public static final Pattern f1221g = Pattern.compile("(?:[0-9]{5}(?:-[0-9]{4})?)(?=[,*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029]|$)", 2);

    /* renamed from: androidx.core.text.util.a$a, reason: collision with other inner class name */
    public static class C0016a {

        /* renamed from: a, reason: collision with root package name */
        public final int f1222a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1223b;
        public final int c;
        public final int d;

        public C0016a(int i, int i2, int i3, int i4) {
            this.f1222a = i;
            this.f1223b = i2;
            this.c = i3;
            this.d = i4;
        }
    }

    public static boolean a(String str) throws NumberFormatException {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (Character.isDigit(str.charAt(i2))) {
                i++;
            }
        }
        if (i > 5) {
            return false;
        }
        Matcher matcher = f.matcher(str);
        if (!matcher.find()) {
            return true;
        }
        int i3 = Integer.parseInt(matcher.group(1));
        if (i3 == 0) {
            return false;
        }
        String lowerCase = matcher.group(2).toLowerCase(Locale.getDefault());
        int i4 = i3 % 10;
        if (i4 == 1) {
            return lowerCase.equals(i3 % 100 != 11 ? "st" : "th");
        }
        if (i4 == 2) {
            return lowerCase.equals(i3 % 100 != 12 ? "nd" : "th");
        }
        if (i4 != 3) {
            return lowerCase.equals("th");
        }
        return lowerCase.equals(i3 % 100 != 13 ? "rd" : "th");
    }

    @VisibleForTesting
    public static MatchResult matchHouseNumber(String str, int i) {
        if (i > 0 && ":,\"'\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029".indexOf(str.charAt(i - 1)) == -1) {
            return null;
        }
        Matcher matcherRegion = c.matcher(str).region(i, str.length());
        if (matcherRegion.lookingAt()) {
            MatchResult matchResult = matcherRegion.toMatchResult();
            if (a(matchResult.group(0))) {
                return matchResult;
            }
        }
        return null;
    }

    @VisibleForTesting
    public static MatchResult matchState(String str, int i) {
        if (i > 0 && ",*•\t  \u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006 \u2008\u2009\u200a \u205f\u3000\n\u000b\f\r\u0085\u2028\u2029".indexOf(str.charAt(i - 1)) == -1) {
            return null;
        }
        Matcher matcherRegion = d.matcher(str).region(i, str.length());
        if (matcherRegion.lookingAt()) {
            return matcherRegion.toMatchResult();
        }
        return null;
    }

    @VisibleForTesting
    public static boolean isValidLocationName(String str) {
        return e.matcher(str).matches();
    }

    private a() {
    }
}
