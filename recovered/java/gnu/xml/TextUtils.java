package gnu.xml;

import gnu.kawa.xml.KNode;
import gnu.lists.Consumer;
import gnu.lists.TreeList;
import gnu.mapping.Values;
import gnu.math.DFloNum;
import java.math.BigDecimal;

/* loaded from: classes2.dex */
public class TextUtils {
    public static String asString(Object obj) {
        if (obj == Values.empty || obj == null) {
            return "";
        }
        if (obj instanceof Values) {
            throw new ClassCastException();
        }
        StringBuffer stringBuffer = new StringBuffer(100);
        stringValue(obj, stringBuffer);
        return stringBuffer.toString();
    }

    public static String stringValue(Object obj) {
        StringBuffer stringBuffer = new StringBuffer(100);
        if (obj instanceof Values) {
            TreeList treeList = (TreeList) obj;
            int iNextPos = 0;
            while (true) {
                int nextKind = treeList.getNextKind(iNextPos);
                if (nextKind == 0) {
                    break;
                }
                if (nextKind == 32) {
                    stringValue(treeList.getPosNext(iNextPos), stringBuffer);
                } else {
                    treeList.stringValue(treeList.posToDataIndex(iNextPos), stringBuffer);
                }
                iNextPos = treeList.nextPos(iNextPos);
            }
        } else {
            stringValue(obj, stringBuffer);
        }
        return stringBuffer.toString();
    }

    public static void stringValue(Object obj, StringBuffer stringBuffer) {
        if (obj instanceof KNode) {
            KNode kNode = (KNode) obj;
            NodeTree nodeTree = (NodeTree) kNode.sequence;
            nodeTree.stringValue(nodeTree.posToDataIndex(kNode.ipos), stringBuffer);
            return;
        }
        if (obj instanceof BigDecimal) {
            obj = XMLPrinter.formatDecimal((BigDecimal) obj);
        } else if ((obj instanceof Double) || (obj instanceof DFloNum)) {
            obj = XMLPrinter.formatDouble(((Number) obj).doubleValue());
        } else if (obj instanceof Float) {
            obj = XMLPrinter.formatFloat(((Number) obj).floatValue());
        }
        if (obj == null || obj == Values.empty) {
            return;
        }
        stringBuffer.append(obj);
    }

    public static void textValue(Object obj, Consumer consumer) {
        String string;
        if (obj != null) {
            boolean z = obj instanceof Values;
            if (z && ((Values) obj).isEmpty()) {
                return;
            }
            if (obj instanceof String) {
                string = (String) obj;
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                if (z) {
                    Object[] values = ((Values) obj).getValues();
                    for (int i = 0; i < values.length; i++) {
                        if (i > 0) {
                            stringBuffer.append(' ');
                        }
                        stringValue(values[i], stringBuffer);
                    }
                } else {
                    stringValue(obj, stringBuffer);
                }
                string = stringBuffer.toString();
            }
            consumer.write(string);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0073 A[PHI: r4
      0x0073: PHI (r4v2 ??) = (r4v1 ??), (r4v6 ??) binds: [B:31:0x0050, B:46:0x006f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0071 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String replaceWhitespace(java.lang.String r12, boolean r13) {
        /*
            int r0 = r12.length()
            r1 = 0
            r2 = 0
            r4 = r13
            r3 = 0
        L8:
            if (r3 >= r0) goto L79
            int r5 = r3 + 1
            char r6 = r12.charAt(r3)
            r7 = 32
            r8 = 2
            r9 = 1
            if (r6 != r7) goto L18
            r10 = 1
            goto L28
        L18:
            r10 = 9
            if (r6 == r10) goto L27
            r10 = 13
            if (r6 == r10) goto L27
            r10 = 10
            if (r6 != r10) goto L25
            goto L27
        L25:
            r10 = 0
            goto L28
        L27:
            r10 = 2
        L28:
            if (r2 != 0) goto L50
            if (r10 == r8) goto L38
            if (r10 != r9) goto L32
            if (r4 <= 0) goto L32
            if (r13 != 0) goto L38
        L32:
            if (r10 != r9) goto L50
            if (r5 != r0) goto L50
            if (r13 == 0) goto L50
        L38:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            if (r4 <= 0) goto L41
            int r3 = r3 + (-1)
        L41:
            r6 = 0
        L42:
            if (r6 >= r3) goto L4e
            char r11 = r12.charAt(r6)
            r2.append(r11)
            int r6 = r6 + 1
            goto L42
        L4e:
            r6 = 32
        L50:
            if (r13 == 0) goto L73
            if (r4 <= 0) goto L63
            if (r10 != 0) goto L63
            if (r2 == 0) goto L61
            int r3 = r2.length()
            if (r3 <= 0) goto L61
            r2.append(r7)
        L61:
            r4 = 0
            goto L6f
        L63:
            if (r10 == r8) goto L6e
            if (r10 != r9) goto L6a
            if (r4 <= 0) goto L6a
            goto L6e
        L6a:
            if (r10 <= 0) goto L61
            r4 = 1
            goto L6f
        L6e:
            r4 = 2
        L6f:
            if (r4 <= 0) goto L73
        L71:
            r3 = r5
            goto L8
        L73:
            if (r2 == 0) goto L71
            r2.append(r6)
            goto L71
        L79:
            if (r2 == 0) goto L7f
            java.lang.String r12 = r2.toString()
        L7f:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xml.TextUtils.replaceWhitespace(java.lang.String, boolean):java.lang.String");
    }
}
