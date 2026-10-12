package gnu.xquery.util;

import gnu.bytecode.Access;
import gnu.kawa.xml.KNode;
import gnu.kawa.xml.UntypedAtomic;
import gnu.kawa.xml.XIntegerType;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import gnu.text.Path;
import gnu.text.URIPath;
import gnu.xml.TextUtils;
import java.net.URI;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okio.Utf8;

/* loaded from: classes2.dex */
public class StringUtils {
    public static String c(String str, int i, Object obj, String str2) {
        if (obj instanceof KNode) {
            obj = KNode.atomicValue(obj);
        }
        if ((obj == Values.empty || obj == null) && str2 != "<error>") {
            return str2;
        }
        if ((obj instanceof UntypedAtomic) || (obj instanceof CharSequence) || (obj instanceof URI) || (obj instanceof Path)) {
            return obj.toString();
        }
        throw new WrongType(str, i, obj, str2 == "<error>" ? "xs:string" : "xs:string?");
    }

    public static Object lowerCase(Object obj) {
        return c("lower-case", 1, obj, "").toLowerCase();
    }

    public static Object upperCase(Object obj) {
        return c("upper-case", 1, obj, "").toUpperCase();
    }

    public static double b(Object obj) {
        if (!(obj instanceof Number)) {
            obj = NumberValue.numberValue(obj);
        }
        return ((Number) obj).doubleValue();
    }

    public static Object substring(Object obj, Object obj2) {
        double dB = b(obj2);
        if (Double.isNaN(dB)) {
            return "";
        }
        int i = (int) (dB - 0.5d);
        int i2 = 0;
        if (i < 0) {
            i = 0;
        }
        String strC = c("substring", 1, obj, "");
        int length = strC.length();
        while (true) {
            i--;
            if (i < 0) {
                return strC.substring(i2);
            }
            if (i2 >= length) {
                return "";
            }
            int i3 = i2 + 1;
            char cCharAt = strC.charAt(i2);
            i2 = (cCharAt < 55296 || cCharAt >= 56320 || i3 >= length) ? i3 : i2 + 2;
        }
    }

    public static Object substring(Object obj, Object obj2, Object obj3) {
        String strC = c("substring", 1, obj, "");
        int length = strC.length();
        double dFloor = Math.floor(b(obj2) - 0.5d);
        double dFloor2 = Math.floor(b(obj3) + 0.5d) + dFloor;
        if (dFloor <= 0.0d) {
            dFloor = 0.0d;
        }
        double d = length;
        if (dFloor2 > d) {
            dFloor2 = d;
        }
        if (dFloor2 <= dFloor) {
            return "";
        }
        int i = (int) dFloor;
        int i2 = ((int) dFloor2) - i;
        int i3 = 0;
        while (true) {
            i--;
            if (i < 0) {
                int i4 = i3;
                while (true) {
                    i2--;
                    if (i2 < 0) {
                        return strC.substring(i3, i4);
                    }
                    if (i4 >= length) {
                        return "";
                    }
                    int i5 = i4 + 1;
                    char cCharAt = strC.charAt(i4);
                    i4 = (cCharAt < 55296 || cCharAt >= 56320 || i5 >= length) ? i5 : i4 + 2;
                }
            } else {
                if (i3 >= length) {
                    return "";
                }
                int i6 = i3 + 1;
                char cCharAt2 = strC.charAt(i3);
                i3 = (cCharAt2 < 55296 || cCharAt2 >= 56320 || i6 >= length) ? i6 : i3 + 2;
            }
        }
    }

    public static Object stringLength(Object obj) {
        String strC = c("string-length", 1, obj, "");
        int length = strC.length();
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i + 1;
            char cCharAt = strC.charAt(i);
            i = (cCharAt < 55296 || cCharAt >= 56320 || i3 >= length) ? i3 : i + 2;
            i2++;
        }
        return IntNum.make(i2);
    }

    public static Object substringBefore(Object obj, Object obj2) {
        int iIndexOf;
        String strC = c("substring-before", 1, obj, "");
        String strC2 = c("substring-before", 2, obj2, "");
        return (strC2.length() != 0 && (iIndexOf = strC.indexOf(strC2)) >= 0) ? strC.substring(0, iIndexOf) : "";
    }

    public static Object substringAfter(Object obj, Object obj2) {
        String strC = c("substring-after", 1, obj, "");
        String strC2 = c("substring-after", 2, obj2, "");
        int length = strC2.length();
        if (length == 0) {
            return strC;
        }
        int iIndexOf = strC.indexOf(strC2);
        return iIndexOf >= 0 ? strC.substring(iIndexOf + length) : "";
    }

    public static Object translate(Object obj, Object obj2, Object obj3) {
        char cCharAt;
        char cCharAt2;
        String strC = c("translate", 1, obj, "");
        Object objAtomicValue = KNode.atomicValue(obj2);
        if (!(objAtomicValue instanceof UntypedAtomic) && !(objAtomicValue instanceof String)) {
            throw new WrongType("translate", 2, obj, "xs:string");
        }
        String string = objAtomicValue.toString();
        int length = string.length();
        Object objAtomicValue2 = KNode.atomicValue(obj3);
        if (!(objAtomicValue2 instanceof UntypedAtomic) && !(objAtomicValue2 instanceof String)) {
            throw new WrongType("translate", 3, obj, "xs:string");
        }
        String string2 = objAtomicValue2.toString();
        if (length == 0) {
            return strC;
        }
        int length2 = strC.length();
        StringBuffer stringBuffer = new StringBuffer(length2);
        int length3 = string2.length();
        int i = 0;
        while (i < length2) {
            int i2 = i + 1;
            char cCharAt3 = strC.charAt(i);
            if (cCharAt3 < 55296 || cCharAt3 >= 56320 || i2 >= length2) {
                i = i2;
                cCharAt = 0;
            } else {
                i += 2;
                cCharAt = strC.charAt(i2);
            }
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (i3 >= length) {
                    break;
                }
                int i5 = i3 + 1;
                char cCharAt4 = string.charAt(i3);
                if (cCharAt4 < 55296 || cCharAt4 >= 56320 || i5 >= length) {
                    i3 = i5;
                    cCharAt2 = 0;
                } else {
                    i3 += 2;
                    cCharAt2 = string.charAt(i5);
                }
                if (cCharAt4 == cCharAt3 && cCharAt2 == cCharAt) {
                    int i6 = 0;
                    while (i6 < length3) {
                        int i7 = i6 + 1;
                        cCharAt3 = string2.charAt(i6);
                        if (cCharAt3 < 55296 || cCharAt3 >= 56320 || i7 >= length3) {
                            i6 = i7;
                            cCharAt = 0;
                        } else {
                            i6 += 2;
                            cCharAt = string2.charAt(i7);
                        }
                        if (i4 != 0) {
                            i4--;
                        }
                    }
                } else {
                    i4++;
                }
            }
            stringBuffer.append(cCharAt3);
            if (cCharAt != 0) {
                stringBuffer.append(cCharAt);
            }
        }
        return stringBuffer.toString();
    }

    public static Object stringPad(Object obj, Object obj2) {
        int iIntValue = ((Number) NumberValue.numberValue(obj2)).intValue();
        if (iIntValue <= 0) {
            if (iIntValue == 0) {
                return "";
            }
            throw new IndexOutOfBoundsException("Invalid string-pad count");
        }
        String strC = c("string-pad", 1, obj, "");
        StringBuffer stringBuffer = new StringBuffer(strC.length() * iIntValue);
        for (int i = 0; i < iIntValue; i++) {
            stringBuffer.append(strC);
        }
        return stringBuffer.toString();
    }

    public static Object contains(Object obj, Object obj2) {
        return c("contains", 1, obj, "").indexOf(c("contains", 2, obj2, "")) < 0 ? Boolean.FALSE : Boolean.TRUE;
    }

    public static Object startsWith(Object obj, Object obj2) {
        return c("starts-with", 1, obj, "").startsWith(c("starts-with", 2, obj2, "")) ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object endsWith(Object obj, Object obj2) {
        return c("ends-with", 1, obj, "").endsWith(c("ends-with", 2, obj2, "")) ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object stringJoin(Object obj, Object obj2) {
        StringBuffer stringBuffer = new StringBuffer();
        String strC = c("string-join", 2, obj2, "<error>");
        int length = strC.length();
        int i = 0;
        boolean z = false;
        while (true) {
            int iNextIndex = Values.nextIndex(obj, i);
            if (iNextIndex >= 0) {
                Object objNextValue = Values.nextValue(obj, i);
                if (objNextValue != Values.empty) {
                    if (z && length > 0) {
                        stringBuffer.append(strC);
                    }
                    stringBuffer.append(TextUtils.stringValue(objNextValue));
                    z = true;
                    i = iNextIndex;
                }
            } else {
                return stringBuffer.toString();
            }
        }
    }

    public static String concat$V(Object obj, Object obj2, Object[] objArr) {
        SequenceUtils.a(obj, "concat", 1);
        String strStringValue = TextUtils.stringValue(obj);
        SequenceUtils.a(obj2, "concat", 2);
        String strStringValue2 = TextUtils.stringValue(obj2);
        StringBuilder sb = new StringBuilder(strStringValue);
        sb.append(strStringValue2);
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            Object obj3 = objArr[i];
            SequenceUtils.a(obj3, "concat", i + 2);
            sb.append(TextUtils.stringValue(obj3));
        }
        return sb.toString();
    }

    public static Object compare(Object obj, Object obj2, NamedCollator namedCollator) {
        Values values = Values.empty;
        if (obj == values || obj == null || obj2 == values || obj2 == null) {
            return values;
        }
        if (namedCollator == null) {
            namedCollator = NamedCollator.codepointCollation;
        }
        int iCompare = namedCollator.compare(obj.toString(), obj2.toString());
        if (iCompare < 0) {
            return IntNum.minusOne();
        }
        return iCompare > 0 ? IntNum.one() : IntNum.zero();
    }

    public static void stringToCodepoints$X(Object obj, CallContext callContext) {
        String strC = c("string-to-codepoints", 1, obj, "");
        int length = strC.length();
        Consumer consumer = callContext.consumer;
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            int iCharAt = strC.charAt(i);
            if (iCharAt < 55296 || iCharAt >= 56320 || i2 >= length) {
                i = i2;
            } else {
                i += 2;
                iCharAt = 65536 + (strC.charAt(i2) - Utf8.LOG_SURROGATE_HEADER) + ((iCharAt - 55296) * 1024);
            }
            consumer.writeInt(iCharAt);
        }
    }

    public static void a(Object obj, StringBuffer stringBuffer) {
        int iIntValue = ((IntNum) XIntegerType.integerType.cast(obj)).intValue();
        if (iIntValue <= 0 || (iIntValue > 55295 && (iIntValue < 57344 || ((iIntValue > 65533 && iIntValue < 65536) || iIntValue > 1114111)))) {
            throw new IllegalArgumentException(_COROUTINE.a.e(iIntValue, "codepoints-to-string: ", " is not a valid XML character [FOCH0001]"));
        }
        if (iIntValue >= 65536) {
            stringBuffer.append((char) (((iIntValue - 65536) >> 10) + 55296));
            iIntValue = (iIntValue & 1023) + Utf8.LOG_SURROGATE_HEADER;
        }
        stringBuffer.append((char) iIntValue);
    }

    public static String codepointsToString(Object obj) {
        if (obj == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        if (obj instanceof Values) {
            Values values = (Values) obj;
            int iStartPos = values.startPos();
            while (true) {
                iStartPos = values.nextPos(iStartPos);
                if (iStartPos == 0) {
                    break;
                }
                a(values.getPosPrevious(iStartPos), stringBuffer);
            }
        } else {
            a(obj, stringBuffer);
        }
        return stringBuffer.toString();
    }

    public static String encodeForUri(Object obj) {
        return URIPath.encodeForUri(c("encode-for-uri", 1, obj, ""), 'U');
    }

    public static String iriToUri(Object obj) {
        return URIPath.encodeForUri(c("iri-to-uru", 1, obj, ""), Access.INNERCLASS_CONTEXT);
    }

    public static String escapeHtmlUri(Object obj) {
        return URIPath.encodeForUri(c("escape-html-uri", 1, obj, ""), 'H');
    }

    public static String normalizeSpace(Object obj) {
        String strC = c("normalize-space", 1, obj, "");
        int length = strC.length();
        StringBuffer stringBuffer = null;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = strC.charAt(i2);
            if (Character.isWhitespace(cCharAt)) {
                if (stringBuffer == null && i == 0 && i2 > 0) {
                    stringBuffer = new StringBuffer(strC.substring(0, i2));
                }
                i++;
            } else {
                if (i > 0) {
                    if (stringBuffer != null) {
                        stringBuffer.append(' ');
                    } else if (i > 1 || i2 == 1 || strC.charAt(i2 - 1) != ' ') {
                        stringBuffer = new StringBuffer();
                    }
                    i = 0;
                }
                if (stringBuffer != null) {
                    stringBuffer.append(cCharAt);
                }
            }
        }
        if (stringBuffer != null) {
            return stringBuffer.toString();
        }
        return i > 0 ? "" : strC;
    }

    public static Pattern makePattern(String str, String str2) {
        int length = str2.length();
        int i = 0;
        int i2 = 0;
        while (true) {
            length--;
            if (length >= 0) {
                char cCharAt = str2.charAt(length);
                if (cCharAt == 'i') {
                    i2 |= 66;
                } else if (cCharAt == 'm') {
                    i2 |= 8;
                } else if (cCharAt == 's') {
                    i2 |= 32;
                } else if (cCharAt == 'x') {
                    StringBuffer stringBuffer = new StringBuffer();
                    int length2 = str.length();
                    int i3 = 0;
                    int i4 = 0;
                    while (i3 < length2) {
                        int i5 = i3 + 1;
                        char cCharAt2 = str.charAt(i3);
                        if (cCharAt2 != '\\' || i5 >= length2) {
                            if (cCharAt2 == '[') {
                                i4++;
                            } else if (cCharAt2 == ']') {
                                i4--;
                            } else if (i4 == 0 && Character.isWhitespace(cCharAt2)) {
                                i3 = i5;
                            }
                            i3 = i5;
                        } else {
                            stringBuffer.append(cCharAt2);
                            i3 += 2;
                            cCharAt2 = str.charAt(i5);
                        }
                        stringBuffer.append(cCharAt2);
                    }
                    str = stringBuffer.toString();
                } else {
                    throw new IllegalArgumentException("unknown 'replace' flag");
                }
            } else {
                if (str.indexOf("{Is") >= 0) {
                    StringBuffer stringBuffer2 = new StringBuffer();
                    int length3 = str.length();
                    while (i < length3) {
                        int i6 = i + 1;
                        char cCharAt3 = str.charAt(i);
                        if (cCharAt3 == '\\' && i + 5 < length3) {
                            stringBuffer2.append(cCharAt3);
                            int i7 = i + 2;
                            char cCharAt4 = str.charAt(i6);
                            stringBuffer2.append(cCharAt4);
                            if ((cCharAt4 == 'p' || cCharAt4 == 'P') && str.charAt(i7) == '{' && str.charAt(i + 3) == 'I' && str.charAt(i + 4) == 's') {
                                stringBuffer2.append("{In");
                                i += 5;
                            } else {
                                i = i7;
                            }
                        } else {
                            stringBuffer2.append(cCharAt3);
                            i = i6;
                        }
                    }
                    str = stringBuffer2.toString();
                }
                return Pattern.compile(str, i2);
            }
        }
    }

    public static boolean matches(Object obj, String str) {
        return matches(obj, str, "");
    }

    public static boolean matches(Object obj, String str, String str2) {
        return makePattern(str, str2).matcher(c("matches", 1, obj, "")).find();
    }

    public static String replace(Object obj, String str, String str2) {
        return replace(obj, str, str2, "");
    }

    public static String replace(Object obj, String str, String str2, String str3) {
        String strC = c("replace", 1, obj, "");
        int length = str2.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            char cCharAt = str2.charAt(i);
            if (cCharAt == '\\') {
                if (i2 < cCharAt) {
                    i += 2;
                    char cCharAt2 = str2.charAt(i2);
                    if (cCharAt2 == '\\' || cCharAt2 == '$') {
                    }
                }
                throw new IllegalArgumentException("invalid replacement string [FORX0004]");
            }
            i = i2;
        }
        return makePattern(str, str3).matcher(strC).replaceAll(str2);
    }

    public static void tokenize$X(Object obj, String str, String str2, CallContext callContext) {
        String strC = c("tokenize", 1, obj, "");
        Consumer consumer = callContext.consumer;
        Matcher matcher = makePattern(str, str2).matcher(strC);
        if (strC.length() == 0) {
            return;
        }
        int iEnd = 0;
        while (matcher.find()) {
            int iStart = matcher.start();
            consumer.writeObject(strC.substring(iEnd, iStart));
            iEnd = matcher.end();
            if (iEnd == iStart) {
                throw new IllegalArgumentException("pattern matches empty string");
            }
        }
        consumer.writeObject(strC.substring(iEnd));
    }

    public static Object codepointEqual(Object obj, Object obj2) {
        String strC = c("codepoint-equal", 1, obj, null);
        String strC2 = c("codepoint-equal", 2, obj2, null);
        if (strC == null || strC2 == null) {
            return Values.empty;
        }
        return strC.equals(strC2) ? Boolean.TRUE : Boolean.FALSE;
    }

    public static Object normalizeUnicode(Object obj) {
        return normalizeUnicode(obj, "NFC");
    }

    public static Object normalizeUnicode(Object obj, String str) {
        String strC = c("normalize-unicode", 1, obj, "");
        if ("".equals(str.trim().toUpperCase())) {
            return strC;
        }
        throw new UnsupportedOperationException("normalize-unicode: unicode string normalization not available");
    }
}
