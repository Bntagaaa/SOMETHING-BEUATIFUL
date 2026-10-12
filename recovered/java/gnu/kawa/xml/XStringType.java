package gnu.kawa.xml;

import _COROUTINE.a;
import gnu.bytecode.ClassType;
import gnu.xml.TextUtils;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class XStringType extends XDataType {
    public static final XStringType ENTITYType;
    public static final XStringType IDREFType;
    public static final XStringType IDType;
    public static final XStringType NCNameType;
    public static final XStringType NMTOKENType;
    public static final XStringType NameType;
    static ClassType XStringType = ClassType.make("gnu.kawa.xml.XString");
    public static final XStringType languageType;
    public static final XStringType normalizedStringType;
    public static final XStringType tokenType;
    Pattern pattern;

    static {
        XStringType xStringType = new XStringType("normalizedString", XDataType.stringType, 39, null);
        normalizedStringType = xStringType;
        XStringType xStringType2 = new XStringType("token", xStringType, 40, null);
        tokenType = xStringType2;
        languageType = new XStringType("language", xStringType2, 41, "[a-zA-Z]{1,8}(-[a-zA-Z0-9]{1,8})*");
        NMTOKENType = new XStringType("NMTOKEN", xStringType2, 42, "\\c+");
        XStringType xStringType3 = new XStringType("Name", xStringType2, 43, null);
        NameType = xStringType3;
        XStringType xStringType4 = new XStringType("NCName", xStringType3, 44, null);
        NCNameType = xStringType4;
        IDType = new XStringType("ID", xStringType4, 45, null);
        IDREFType = new XStringType("IDREF", xStringType4, 46, null);
        ENTITYType = new XStringType("ENTITY", xStringType4, 47, null);
    }

    public XStringType(String str, XDataType xDataType, int i, String str2) {
        super(str, XStringType, i);
        this.baseType = xDataType;
        if (str2 != null) {
            this.pattern = Pattern.compile(str2);
        }
    }

    @Override // gnu.kawa.xml.XDataType, gnu.bytecode.Type
    public boolean isInstance(Object obj) {
        if (!(obj instanceof XString)) {
            return false;
        }
        for (XDataType stringType = ((XString) obj).getStringType(); stringType != null; stringType = stringType.baseType) {
            if (stringType == this) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String matches(java.lang.String r5) {
        /*
            r4 = this;
            int r0 = r4.typeCode
            r1 = 0
            r2 = 1
            switch(r0) {
                case 39: goto L26;
                case 40: goto L26;
                case 41: goto L7;
                case 42: goto L21;
                case 43: goto L1c;
                case 44: goto L17;
                case 45: goto L17;
                case 46: goto L17;
                case 47: goto L17;
                default: goto L7;
            }
        L7:
            java.util.regex.Pattern r0 = r4.pattern
            if (r0 == 0) goto L15
            java.util.regex.Matcher r5 = r0.matcher(r5)
            boolean r5 = r5.matches()
            if (r5 == 0) goto L34
        L15:
            r1 = 1
            goto L34
        L17:
            boolean r1 = gnu.xml.XName.isNCName(r5)
            goto L34
        L1c:
            boolean r1 = gnu.xml.XName.isName(r5)
            goto L34
        L21:
            boolean r1 = gnu.xml.XName.isNmToken(r5)
            goto L34
        L26:
            r3 = 39
            if (r0 == r3) goto L2c
            r0 = 1
            goto L2d
        L2c:
            r0 = 0
        L2d:
            java.lang.String r0 = gnu.xml.TextUtils.replaceWhitespace(r5, r0)
            if (r5 != r0) goto L34
            goto L15
        L34:
            if (r1 == 0) goto L38
            r5 = 0
            return r5
        L38:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r0 = "not a valid XML "
            r5.<init>(r0)
            java.lang.String r0 = r4.getName()
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.xml.XStringType.matches(java.lang.String):java.lang.String");
    }

    @Override // gnu.kawa.xml.XDataType
    public Object valueOf(String str) {
        String strReplaceWhitespace = TextUtils.replaceWhitespace(str, this != normalizedStringType);
        if (matches(strReplaceWhitespace) == null) {
            return new XString(strReplaceWhitespace, this);
        }
        StringBuilder sbR = a.r("cannot cast ", strReplaceWhitespace, " to ");
        sbR.append(this.name);
        throw new ClassCastException(sbR.toString());
    }

    @Override // gnu.kawa.xml.XDataType
    public Object cast(Object obj) {
        if (obj instanceof XString) {
            XString xString = (XString) obj;
            if (xString.getStringType() == this) {
                return xString;
            }
        }
        return valueOf((String) XDataType.stringType.cast(obj));
    }

    public static XString makeNCName(String str) {
        return (XString) NCNameType.valueOf(str);
    }
}
