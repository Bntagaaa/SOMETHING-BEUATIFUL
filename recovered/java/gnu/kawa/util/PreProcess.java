package gnu.kawa.util;

import _COROUTINE.a;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Hashtable;
import java.util.StringTokenizer;

/* loaded from: classes2.dex */
public class PreProcess {
    static final String JAVA4_FEATURES = "+JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio";
    static final String JAVA5_FEATURES = "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName";
    static final String NO_JAVA4_FEATURES = "-JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android";
    static final String NO_JAVA6_FEATURES = "-JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer";
    static String[] version_features = {"java1", "-JAVA2 -JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer", "java2", "+JAVA2 -JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer", "java4", "-JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer", "java4x", "-JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +JAXP-1.3 +use:javax.xml.transform -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer", "java5", "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer", "java6compat5", "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName -JAVA6 -JAVA7 +JAVA6COMPAT5 +use:java.text.Normalizer -use:java.dyn -Android", "java6", "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName +JAVA6 -JAVA7 -JAVA6COMPAT5 +use:java.text.Normalizer -use:java.dyn -Android", "java7", "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName +JAVA6 +JAVA7 -JAVA6COMPAT5 +use:java.text.Normalizer +use:java.dyn -Android", "android", "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +JAXP-1.3 -JAXP-QName -use:javax.xml.transform -JAVA6 -JAVA6COMPAT5 +Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"};
    String filename;
    Hashtable keywords = new Hashtable();
    int lineno;
    byte[] resultBuffer;
    int resultLength;

    public void error(String str) {
        System.err.println(this.filename + ':' + this.lineno + ": " + str);
        System.exit(-1);
    }

    public void filter(String str) throws Throwable {
        if (filter(str, new BufferedInputStream(new FileInputStream(str)))) {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            fileOutputStream.write(this.resultBuffer, 0, this.resultLength);
            fileOutputStream.close();
            System.err.println("Pre-processed " + str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x01e6 A[PHI: r12
      0x01e6: PHI (r12v6 int) = (r12v4 int), (r12v1 int) binds: [B:163:0x0253, B:137:0x01e4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01ea A[PHI: r12
      0x01ea: PHI (r12v5 int) = (r12v4 int), (r12v1 int) binds: [B:153:0x023d, B:137:0x01e4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0129  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean filter(java.lang.String r21, java.io.BufferedInputStream r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 616
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.util.PreProcess.filter(java.lang.String, java.io.BufferedInputStream):boolean");
    }

    public void handleArg(String str) {
        int i = 0;
        if (str.charAt(0) == '%') {
            String strSubstring = str.substring(1);
            while (true) {
                if (i >= version_features.length) {
                    System.err.println("Unknown version: " + strSubstring);
                    System.exit(-1);
                }
                if (strSubstring.equals(version_features[i])) {
                    break;
                } else {
                    i += 2;
                }
            }
            String str2 = version_features[i + 1];
            System.err.println(a.k("(variant ", strSubstring, " maps to: ", str2, ")"));
            StringTokenizer stringTokenizer = new StringTokenizer(str2);
            while (stringTokenizer.hasMoreTokens()) {
                handleArg(stringTokenizer.nextToken());
            }
            return;
        }
        if (str.charAt(0) == '+') {
            this.keywords.put(str.substring(1), Boolean.TRUE);
            return;
        }
        if (str.charAt(0) != '-') {
            try {
                filter(str);
                return;
            } catch (Throwable th) {
                System.err.println("caught " + th);
                th.printStackTrace();
                System.exit(-1);
                return;
            }
        }
        int iIndexOf = str.indexOf(61);
        if (iIndexOf <= 1) {
            this.keywords.put(str.substring(1), Boolean.FALSE);
            return;
        }
        String strSubstring2 = str.substring(str.charAt(1) == '-' ? 2 : 1, iIndexOf);
        String strSubstring3 = str.substring(iIndexOf + 1);
        Boolean bool = Boolean.FALSE;
        if (strSubstring3.equalsIgnoreCase("true")) {
            bool = Boolean.TRUE;
        } else if (!strSubstring3.equalsIgnoreCase("false")) {
            System.err.println("invalid value " + strSubstring3 + " for " + strSubstring2);
            System.exit(-1);
        }
        this.keywords.put(strSubstring2, bool);
    }

    public static void main(String[] strArr) {
        PreProcess preProcess = new PreProcess();
        preProcess.keywords.put("true", Boolean.TRUE);
        preProcess.keywords.put("false", Boolean.FALSE);
        for (String str : strArr) {
            preProcess.handleArg(str);
        }
    }
}
