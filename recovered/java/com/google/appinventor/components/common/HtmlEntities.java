package com.google.appinventor.components.common;

import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Typography;

/* loaded from: classes.dex */
public class HtmlEntities {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f3551a = Pattern.compile("&(#?[0-9a-zA-Z]+);");

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f3552b;

    static {
        HashMap map = new HashMap();
        f3552b = map;
        _COROUTINE.a.s((char) 192, map, "Agrave", (char) 224, "agrave");
        _COROUTINE.a.s((char) 193, map, "Aacute", (char) 225, "aacute");
        _COROUTINE.a.s((char) 194, map, "Acirc", (char) 226, "acirc");
        _COROUTINE.a.s((char) 195, map, "Atilde", (char) 227, "atilde");
        _COROUTINE.a.s((char) 196, map, "Auml", (char) 228, "auml");
        _COROUTINE.a.s((char) 197, map, "Aring", (char) 229, "aring");
        _COROUTINE.a.s((char) 198, map, "AElig", (char) 230, "aelig");
        _COROUTINE.a.s((char) 199, map, "Ccedil", (char) 231, "ccedil");
        _COROUTINE.a.s((char) 200, map, "Egrave", (char) 232, "egrave");
        _COROUTINE.a.s((char) 201, map, "Eacute", (char) 233, "eacute");
        _COROUTINE.a.s((char) 202, map, "Ecirc", (char) 234, "ecirc");
        _COROUTINE.a.s((char) 203, map, "Euml", (char) 235, "euml");
        _COROUTINE.a.s((char) 204, map, "Igrave", (char) 236, "igrave");
        _COROUTINE.a.s((char) 205, map, "Iacute", (char) 237, "iacute");
        _COROUTINE.a.s((char) 206, map, "Icirc", (char) 238, "icirc");
        _COROUTINE.a.s((char) 207, map, "Iuml", (char) 239, "iuml");
        _COROUTINE.a.s((char) 208, map, "ETH", (char) 240, "eth");
        _COROUTINE.a.s((char) 209, map, "Ntilde", (char) 241, "ntilde");
        _COROUTINE.a.s((char) 210, map, "Ograve", (char) 242, "ograve");
        _COROUTINE.a.s((char) 211, map, "Oacute", (char) 243, "oacute");
        _COROUTINE.a.s((char) 212, map, "Ocirc", (char) 244, "ocirc");
        _COROUTINE.a.s((char) 213, map, "Otilde", (char) 245, "otilde");
        _COROUTINE.a.s((char) 214, map, "Ouml", (char) 246, "ouml");
        _COROUTINE.a.s((char) 216, map, "Oslash", (char) 248, "oslash");
        _COROUTINE.a.s((char) 217, map, "Ugrave", (char) 249, "ugrave");
        _COROUTINE.a.s((char) 218, map, "Uacute", (char) 250, "uacute");
        _COROUTINE.a.s((char) 219, map, "Ucirc", (char) 251, "ucirc");
        _COROUTINE.a.s((char) 220, map, "Uuml", (char) 252, "uuml");
        _COROUTINE.a.s((char) 221, map, "Yacute", (char) 253, "yacute");
        _COROUTINE.a.s((char) 222, map, "THORN", (char) 254, "thorn");
        _COROUTINE.a.s((char) 223, map, "szlig", (char) 255, "yuml");
        _COROUTINE.a.s((char) 376, map, "Yuml", (char) 338, "OElig");
        _COROUTINE.a.s((char) 339, map, "oelig", (char) 352, "Scaron");
        _COROUTINE.a.s((char) 353, map, "scaron", (char) 913, "Alpha");
        _COROUTINE.a.s((char) 914, map, "Beta", (char) 915, "Gamma");
        _COROUTINE.a.s((char) 916, map, "Delta", (char) 917, "Epsilon");
        _COROUTINE.a.s((char) 918, map, "Zeta", (char) 919, "Eta");
        _COROUTINE.a.s((char) 920, map, "Theta", (char) 921, "Iota");
        _COROUTINE.a.s((char) 922, map, "Kappa", (char) 923, "Lambda");
        _COROUTINE.a.s((char) 924, map, "Mu", (char) 925, "Nu");
        _COROUTINE.a.s((char) 926, map, "Xi", (char) 927, "Omicron");
        _COROUTINE.a.s((char) 928, map, "Pi", (char) 929, "Rho");
        _COROUTINE.a.s((char) 931, map, "Sigma", (char) 932, "Tau");
        _COROUTINE.a.s((char) 933, map, "Upsilon", (char) 934, "Phi");
        _COROUTINE.a.s((char) 935, map, "Chi", (char) 936, "Psi");
        _COROUTINE.a.s((char) 937, map, "Omega", (char) 945, "alpha");
        _COROUTINE.a.s((char) 946, map, "beta", (char) 947, "gamma");
        _COROUTINE.a.s((char) 948, map, "delta", (char) 949, "epsilon");
        _COROUTINE.a.s((char) 950, map, "zeta", (char) 951, "eta");
        _COROUTINE.a.s((char) 952, map, "theta", (char) 953, "iota");
        _COROUTINE.a.s((char) 954, map, "kappa", (char) 955, "lambda");
        _COROUTINE.a.s((char) 956, map, "mu", (char) 957, "nu");
        _COROUTINE.a.s((char) 958, map, "xi", (char) 959, "omicron");
        _COROUTINE.a.s((char) 960, map, "pi", (char) 961, "rho");
        _COROUTINE.a.s((char) 962, map, "sigmaf", (char) 963, "sigma");
        _COROUTINE.a.s((char) 964, map, "tau", (char) 965, "upsilon");
        _COROUTINE.a.s((char) 966, map, "phi", (char) 967, "chi");
        _COROUTINE.a.s((char) 968, map, "psi", (char) 969, "omega");
        _COROUTINE.a.s((char) 977, map, "thetasym", (char) 978, "upsih");
        _COROUTINE.a.s((char) 982, map, "piv", (char) 161, "iexcl");
        _COROUTINE.a.s(Typography.cent, map, "cent", Typography.pound, "pound");
        _COROUTINE.a.s((char) 164, map, "curren", (char) 165, "yen");
        _COROUTINE.a.s((char) 166, map, "brvbar", Typography.section, "sect");
        _COROUTINE.a.s((char) 168, map, "uml", Typography.copyright, "copy");
        _COROUTINE.a.s((char) 170, map, "ordf", (char) 171, "laquo");
        _COROUTINE.a.s((char) 172, map, "not", (char) 173, "shy");
        _COROUTINE.a.s(Typography.registered, map, "reg", (char) 175, "macr");
        _COROUTINE.a.s(Typography.degree, map, "deg", Typography.plusMinus, "plusmn");
        _COROUTINE.a.s((char) 178, map, "sup2", (char) 179, "sup3");
        _COROUTINE.a.s((char) 180, map, "acute", (char) 181, "micro");
        _COROUTINE.a.s(Typography.paragraph, map, "para", Typography.middleDot, "middot");
        _COROUTINE.a.s((char) 184, map, "cedil", (char) 185, "sup1");
        _COROUTINE.a.s((char) 186, map, "ordm", (char) 187, "raquo");
        _COROUTINE.a.s((char) 188, map, "frac14", Typography.half, "frac12");
        _COROUTINE.a.s((char) 190, map, "frac34", (char) 191, "iquest");
        _COROUTINE.a.s(Typography.times, map, "times", (char) 247, "divide");
        _COROUTINE.a.s((char) 402, map, "fnof", (char) 710, "circ");
        _COROUTINE.a.s((char) 732, map, "tilde", (char) 8206, "lrm");
        map.put("rlm", (char) 8207);
        Character chValueOf = Character.valueOf(Typography.ndash);
        map.put("ndash", chValueOf);
        map.put("endash", chValueOf);
        Character chValueOf2 = Character.valueOf(Typography.mdash);
        map.put("mdash", chValueOf2);
        map.put("emdash", chValueOf2);
        map.put("lsquo", Character.valueOf(Typography.leftSingleQuote));
        _COROUTINE.a.s(Typography.rightSingleQuote, map, "rsquo", Typography.lowSingleQuote, "sbquo");
        _COROUTINE.a.s(Typography.leftDoubleQuote, map, "ldquo", Typography.rightDoubleQuote, "rdquo");
        _COROUTINE.a.s(Typography.lowDoubleQuote, map, "bdquo", Typography.dagger, "dagger");
        _COROUTINE.a.s(Typography.doubleDagger, map, "Dagger", Typography.bullet, "bull");
        _COROUTINE.a.s(Typography.ellipsis, map, "hellip", (char) 8240, "permil");
        _COROUTINE.a.s(Typography.prime, map, "prime", Typography.doublePrime, "Prime");
        _COROUTINE.a.s((char) 8249, map, "lsaquo", (char) 8250, "rsaquo");
        _COROUTINE.a.s((char) 8254, map, "oline", (char) 8260, "frasl");
        _COROUTINE.a.s(Typography.euro, map, "euro", (char) 8465, "image");
        _COROUTINE.a.s((char) 8472, map, "weierp", (char) 8476, "real");
        _COROUTINE.a.s(Typography.tm, map, "trade", (char) 8501, "alefsym");
        _COROUTINE.a.s((char) 8592, map, "larr", (char) 8593, "uarr");
        _COROUTINE.a.s((char) 8594, map, "rarr", (char) 8595, "darr");
        _COROUTINE.a.s((char) 8596, map, "harr", (char) 8629, "crarr");
        _COROUTINE.a.s((char) 8656, map, "lArr", (char) 8657, "uArr");
        _COROUTINE.a.s((char) 8658, map, "rArr", (char) 8659, "dArr");
        _COROUTINE.a.s((char) 8660, map, "hArr", (char) 8704, "forall");
        _COROUTINE.a.s((char) 8706, map, "part", (char) 8707, "exist");
        _COROUTINE.a.s((char) 8709, map, "empty", (char) 8711, "nabla");
        _COROUTINE.a.s((char) 8712, map, "isin", (char) 8713, "notin");
        _COROUTINE.a.s((char) 8715, map, "ni", (char) 8719, "prod");
        _COROUTINE.a.s((char) 8721, map, "sum", (char) 8722, "minus");
        _COROUTINE.a.s((char) 8727, map, "lowast", (char) 8730, "radic");
        _COROUTINE.a.s((char) 8733, map, "prop", (char) 8734, "infin");
        _COROUTINE.a.s((char) 8736, map, "ang", (char) 8743, "and");
        _COROUTINE.a.s((char) 8744, map, "or", (char) 8745, "cap");
        _COROUTINE.a.s((char) 8746, map, "cup", (char) 8747, "int");
        _COROUTINE.a.s((char) 8756, map, "there4", (char) 8764, "sim");
        _COROUTINE.a.s((char) 8773, map, "cong", Typography.almostEqual, "asymp");
        _COROUTINE.a.s(Typography.notEqual, map, "ne", (char) 8801, "equiv");
        _COROUTINE.a.s(Typography.lessOrEqual, map, "le", Typography.greaterOrEqual, "ge");
        _COROUTINE.a.s((char) 8834, map, "sub", (char) 8835, "sup");
        _COROUTINE.a.s((char) 8836, map, "nsub", (char) 8838, "sube");
        _COROUTINE.a.s((char) 8839, map, "supe", (char) 8853, "oplus");
        _COROUTINE.a.s((char) 8855, map, "otimes", (char) 8869, "perp");
        _COROUTINE.a.s((char) 8901, map, "sdot", (char) 8968, "lceil");
        _COROUTINE.a.s((char) 8969, map, "rceil", (char) 8970, "lfloor");
        _COROUTINE.a.s((char) 8971, map, "rfloor", (char) 9001, "lang");
        _COROUTINE.a.s((char) 9002, map, "rang", (char) 9674, "loz");
        _COROUTINE.a.s((char) 9824, map, "spades", (char) 9827, "clubs");
        _COROUTINE.a.s((char) 9829, map, "hearts", (char) 9830, "diams");
        Character chValueOf3 = Character.valueOf(Typography.greater);
        map.put("gt", chValueOf3);
        map.put("GT", chValueOf3);
        Character chValueOf4 = Character.valueOf(Typography.less);
        map.put("lt", chValueOf4);
        map.put("LT", chValueOf4);
        Character chValueOf5 = Character.valueOf(Typography.quote);
        map.put("quot", chValueOf5);
        map.put("QUOT", chValueOf5);
        Character chValueOf6 = Character.valueOf(Typography.amp);
        map.put("amp", chValueOf6);
        map.put("AMP", chValueOf6);
        map.put("apos", '\'');
        _COROUTINE.a.s(Typography.nbsp, map, "nbsp", (char) 8194, "ensp");
        _COROUTINE.a.s((char) 8195, map, "emsp", (char) 8201, "thinsp");
        _COROUTINE.a.s((char) 8204, map, "zwnj", (char) 8205, "zwj");
    }

    public static Character toCharacter(String str) {
        return (Character) f3552b.get(str);
    }

    public static String decodeHtmlText(String str) {
        if (str.length() == 0 || str.indexOf(38) == -1) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        Matcher matcher = f3551a.matcher(str);
        int iEnd = 0;
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            Character chValueOf = null;
            if (strGroup.startsWith("#x")) {
                String strSubstring = strGroup.substring(2);
                try {
                    System.out.println("hex number is " + strSubstring);
                    chValueOf = Character.valueOf((char) Integer.parseInt(strSubstring, 16));
                } catch (NumberFormatException unused) {
                }
            } else if (strGroup.startsWith("#")) {
                chValueOf = Character.valueOf((char) Integer.parseInt(strGroup.substring(1)));
            } else {
                chValueOf = (Character) f3552b.get(strGroup);
            }
            if (chValueOf != null) {
                sb.append(str.substring(iEnd, matcher.start()));
                sb.append(chValueOf);
                iEnd = matcher.end();
            }
        }
        if (iEnd < str.length()) {
            sb.append(str.substring(iEnd));
        }
        return sb.toString();
    }
}
