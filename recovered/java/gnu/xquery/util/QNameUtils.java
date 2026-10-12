package gnu.xquery.util;

import gnu.kawa.xml.KElement;
import gnu.kawa.xml.KNode;
import gnu.kawa.xml.UntypedAtomic;
import gnu.kawa.xml.XStringType;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.text.Path;
import gnu.text.URIPath;
import gnu.xml.NamespaceBinding;
import gnu.xml.TextUtils;
import gnu.xml.XName;
import java.net.URISyntaxException;

/* loaded from: classes2.dex */
public class QNameUtils {
    public static Object resolveQNameUsingElement(Object obj, KElement kElement) {
        String strSubstring;
        String str;
        Object objAtomicValue = KNode.atomicValue(obj);
        if (objAtomicValue == Values.empty || objAtomicValue == null) {
            return objAtomicValue;
        }
        if ((objAtomicValue instanceof Values) || !((objAtomicValue instanceof String) || (objAtomicValue instanceof UntypedAtomic))) {
            throw new RuntimeException("bad argument to QName");
        }
        String strReplaceWhitespace = TextUtils.replaceWhitespace(objAtomicValue.toString(), true);
        int iIndexOf = strReplaceWhitespace.indexOf(58);
        if (iIndexOf < 0) {
            str = null;
            strSubstring = strReplaceWhitespace;
        } else {
            String strIntern = strReplaceWhitespace.substring(0, iIndexOf).intern();
            strSubstring = strReplaceWhitespace.substring(iIndexOf + 1);
            str = strIntern;
        }
        String strLookupNamespaceURI = kElement.lookupNamespaceURI(str);
        if (strLookupNamespaceURI == null) {
            if (str != null) {
                throw new RuntimeException(_COROUTINE.a.A("unknown namespace for '", strReplaceWhitespace, "'"));
            }
            strLookupNamespaceURI = "";
        }
        if (!validNCName(strSubstring) || (str != null && !validNCName(str))) {
            throw new RuntimeException(_COROUTINE.a.A("invalid QName syntax '", strReplaceWhitespace, "'"));
        }
        if (str == null) {
            str = "";
        }
        return Symbol.make(strLookupNamespaceURI, strSubstring, str);
    }

    public static Object resolveQName(Object obj, NamespaceBinding namespaceBinding, NamespaceBinding namespaceBinding2) {
        String strIntern;
        String strSubstring;
        Object objAtomicValue = KNode.atomicValue(obj);
        if (objAtomicValue instanceof Symbol) {
            return objAtomicValue;
        }
        if ((objAtomicValue instanceof Values) || !((objAtomicValue instanceof String) || (objAtomicValue instanceof UntypedAtomic))) {
            throw new RuntimeException("bad argument to QName");
        }
        String strReplaceWhitespace = TextUtils.replaceWhitespace(objAtomicValue.toString(), true);
        int iIndexOf = strReplaceWhitespace.indexOf(58);
        if (iIndexOf < 0) {
            strIntern = null;
            strSubstring = strReplaceWhitespace;
        } else {
            strIntern = strReplaceWhitespace.substring(0, iIndexOf).intern();
            strSubstring = strReplaceWhitespace.substring(iIndexOf + 1);
        }
        if (!validNCName(strSubstring) || (strIntern != null && !validNCName(strIntern))) {
            throw new RuntimeException(_COROUTINE.a.A("invalid QName syntax '", strReplaceWhitespace, "'"));
        }
        String strResolvePrefix = resolvePrefix(strIntern, namespaceBinding, namespaceBinding2);
        if (strIntern == null) {
            strIntern = "";
        }
        return Symbol.make(strResolvePrefix, strSubstring, strIntern);
    }

    public static String lookupPrefix(String str, NamespaceBinding namespaceBinding, NamespaceBinding namespaceBinding2) {
        String strResolve;
        while (true) {
            if (namespaceBinding == null) {
                strResolve = namespaceBinding2.resolve(str);
                break;
            }
            if (namespaceBinding.getPrefix() != str) {
                namespaceBinding = namespaceBinding.getNext();
            } else {
                strResolve = namespaceBinding.getUri();
                break;
            }
        }
        return (strResolve == null && str == null) ? "" : strResolve;
    }

    public static String resolvePrefix(String str, NamespaceBinding namespaceBinding, NamespaceBinding namespaceBinding2) {
        String strLookupPrefix = lookupPrefix(str, namespaceBinding, namespaceBinding2);
        if (strLookupPrefix != null) {
            return strLookupPrefix;
        }
        throw new RuntimeException(_COROUTINE.a.A("unknown namespace prefix '", str, "'"));
    }

    public static boolean validNCName(String str) {
        return XName.isName(str);
    }

    public static Symbol makeQName(Object obj, String str) {
        String strSubstring;
        String strIntern;
        if (obj == null || obj == Values.empty) {
            obj = "";
        }
        int iIndexOf = str.indexOf(58);
        String str2 = (String) obj;
        if (iIndexOf < 0) {
            strIntern = "";
            strSubstring = str;
        } else {
            strSubstring = str.substring(iIndexOf + 1);
            strIntern = str.substring(0, iIndexOf).intern();
        }
        if (!validNCName(strSubstring) || (iIndexOf >= 0 && !validNCName(strIntern))) {
            throw new IllegalArgumentException(_COROUTINE.a.A("invalid QName syntax '", str, "'"));
        }
        if (iIndexOf < 0 || str2.length() != 0) {
            return Symbol.make(str2, strSubstring, strIntern);
        }
        throw new IllegalArgumentException(_COROUTINE.a.A("empty uri for '", str, "'"));
    }

    public static Object localNameFromQName(Object obj) {
        if (obj == Values.empty || obj == null) {
            return obj;
        }
        if (!(obj instanceof Symbol)) {
            throw new WrongType("local-name-from-QName", 1, obj, "xs:QName");
        }
        return XStringType.makeNCName(((Symbol) obj).getName());
    }

    public static Object prefixFromQName(Object obj) {
        Values values = Values.empty;
        if (obj == values || obj == null) {
            return obj;
        }
        if (obj instanceof Symbol) {
            String prefix = ((Symbol) obj).getPrefix();
            return (prefix == null || prefix.length() == 0) ? values : XStringType.makeNCName(prefix);
        }
        throw new WrongType("prefix-from-QName", 1, obj, "xs:QName");
    }

    public static Object namespaceURIFromQName(Object obj) {
        if (obj == Values.empty || obj == null) {
            return obj;
        }
        try {
            return URIPath.makeURI(((Symbol) obj).getNamespaceURI());
        } catch (ClassCastException unused) {
            throw new WrongType("namespace-uri", 1, obj, "xs:QName");
        }
    }

    public static Object namespaceURIForPrefix(Object obj, Object obj2) {
        KNode kNodeCoerce = KNode.coerce(obj2);
        if (kNodeCoerce == null) {
            throw new WrongType("namespace-uri-for-prefix", 2, obj2, "node()");
        }
        String str = null;
        if (obj != null && obj != Values.empty) {
            if (!(obj instanceof String) && !(obj instanceof UntypedAtomic)) {
                throw new WrongType("namespace-uri-for-prefix", 1, obj2, "xs:string");
            }
            String strIntern = obj.toString().intern();
            if (strIntern != "") {
                str = strIntern;
            }
        }
        String strLookupNamespaceURI = kNodeCoerce.lookupNamespaceURI(str);
        return strLookupNamespaceURI == null ? Values.empty : strLookupNamespaceURI;
    }

    public static Object resolveURI(Object obj, Object obj2) throws URISyntaxException {
        if (obj instanceof KNode) {
            obj = KNode.atomicValue(obj);
        }
        if (obj2 instanceof KNode) {
            obj2 = KNode.atomicValue(obj2);
        }
        if (obj == Values.empty || obj == null) {
            return obj;
        }
        if (obj instanceof UntypedAtomic) {
            obj = obj.toString();
        }
        if (obj2 instanceof UntypedAtomic) {
            obj2 = obj2.toString();
        }
        Path pathMakeURI = obj2 instanceof Path ? (Path) obj2 : URIPath.makeURI(obj2);
        if (obj instanceof Path) {
            return pathMakeURI.resolve((Path) obj);
        }
        return pathMakeURI.resolve(obj.toString());
    }
}
