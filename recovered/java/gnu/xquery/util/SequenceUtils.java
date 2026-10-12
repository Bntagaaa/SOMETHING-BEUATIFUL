package gnu.xquery.util;

import gnu.kawa.xml.KAttr;
import gnu.kawa.xml.KNode;
import gnu.kawa.xml.NodeType;
import gnu.lists.Consumer;
import gnu.mapping.CallContext;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.xml.NodeTree;

/* loaded from: classes2.dex */
public class SequenceUtils {
    public static final NodeType textOrElement = new NodeType("element-or-text", 3);

    public static boolean isZeroOrOne(Object obj) {
        return !(obj instanceof Values) || ((Values) obj).isEmpty();
    }

    public static void a(Object obj, String str, int i) {
        if (!isZeroOrOne(obj)) {
            throw new WrongType(str, i, obj, "xs:item()?");
        }
    }

    public static Object zeroOrOne(Object obj) {
        a(obj, "zero-or-one", 1);
        return obj;
    }

    public static Object oneOrMore(Object obj) {
        if ((obj instanceof Values) && ((Values) obj).isEmpty()) {
            throw new IllegalArgumentException();
        }
        return obj;
    }

    public static Object exactlyOne(Object obj) {
        if (obj instanceof Values) {
            throw new IllegalArgumentException();
        }
        return obj;
    }

    public static boolean isEmptySequence(Object obj) {
        return (obj instanceof Values) && ((Values) obj).isEmpty();
    }

    public static boolean exists(Object obj) {
        return ((obj instanceof Values) && ((Values) obj).isEmpty()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0022 A[PHI: r5
      0x0022: PHI (r5v4 long) = (r5v2 long), (r5v1 long) binds: [B:12:0x0020, B:10:0x001b] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void insertBefore$X(java.lang.Object r8, long r9, java.lang.Object r11, gnu.mapping.CallContext r12) {
        /*
            gnu.lists.Consumer r12 = r12.consumer
            r0 = 1
            r2 = 0
            int r4 = (r9 > r2 ? 1 : (r9 == r2 ? 0 : -1))
            if (r4 > 0) goto Lb
            r9 = r0
        Lb:
            boolean r4 = r8 instanceof gnu.mapping.Values
            if (r4 == 0) goto L2e
            r4 = r8
            gnu.mapping.Values r4 = (gnu.mapping.Values) r4
            r8 = 0
            r5 = r2
            r2 = 0
        L15:
            int r3 = r4.nextPos(r8)
            if (r3 != 0) goto L1d
            if (r2 == 0) goto L22
        L1d:
            long r5 = r5 + r0
            int r7 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r7 != 0) goto L26
        L22:
            gnu.mapping.Values.writeValues(r11, r12)
            r2 = 1
        L26:
            if (r3 != 0) goto L29
            goto L3d
        L29:
            r4.consumePosRange(r8, r3, r12)
            r8 = r3
            goto L15
        L2e:
            int r2 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r2 > 0) goto L35
            gnu.mapping.Values.writeValues(r11, r12)
        L35:
            r12.writeObject(r8)
            if (r2 <= 0) goto L3d
            gnu.mapping.Values.writeValues(r11, r12)
        L3d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.util.SequenceUtils.insertBefore$X(java.lang.Object, long, java.lang.Object, gnu.mapping.CallContext):void");
    }

    public static void remove$X(Object obj, long j, CallContext callContext) {
        Consumer consumer = callContext.consumer;
        if (!(obj instanceof Values)) {
            if (j != 1) {
                consumer.writeObject(obj);
                return;
            }
            return;
        }
        Values values = (Values) obj;
        int i = 0;
        long j2 = 0;
        while (true) {
            int iNextPos = values.nextPos(i);
            if (iNextPos == 0) {
                return;
            }
            j2++;
            if (j2 != j) {
                values.consumePosRange(i, iNextPos, consumer);
            }
            i = iNextPos;
        }
    }

    public static void reverse$X(Object obj, CallContext callContext) {
        Consumer consumer = callContext.consumer;
        if (!(obj instanceof Values)) {
            consumer.writeObject(obj);
            return;
        }
        Values values = (Values) obj;
        int[] iArr = new int[100];
        int i = 0;
        int iNextPos = 0;
        while (true) {
            if (i >= iArr.length) {
                int[] iArr2 = new int[i * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                iArr = iArr2;
            }
            int i2 = i + 1;
            iArr[i] = iNextPos;
            iNextPos = values.nextPos(iNextPos);
            if (iNextPos == 0) {
                break;
            } else {
                i = i2;
            }
        }
        while (true) {
            int i3 = i - 1;
            if (i3 < 0) {
                return;
            }
            values.consumePosRange(iArr[i3], iArr[i], consumer);
            i = i3;
        }
    }

    public static void indexOf$X(Object obj, Object obj2, NamedCollator namedCollator, CallContext callContext) {
        Consumer consumer = callContext.consumer;
        int i = 1;
        if (obj instanceof Values) {
            Values values = (Values) obj;
            int iStartPos = values.startPos();
            while (true) {
                iStartPos = values.nextPos(iStartPos);
                if (iStartPos == 0) {
                    return;
                }
                if (Compare.apply(72, values.getPosPrevious(iStartPos), obj2, namedCollator)) {
                    consumer.writeInt(i);
                }
                i++;
            }
        } else if (Compare.apply(72, obj, obj2, namedCollator)) {
            consumer.writeInt(1);
        }
    }

    public static boolean deepEqualChildren(NodeTree nodeTree, int i, NodeTree nodeTree2, int i2, NamedCollator namedCollator) {
        NodeType nodeType = textOrElement;
        int iFirstChildPos = nodeTree.firstChildPos(i, nodeType);
        int iFirstChildPos2 = nodeTree2.firstChildPos(i2, nodeType);
        while (iFirstChildPos != 0 && iFirstChildPos2 != 0) {
            if (!deepEqual(nodeTree, iFirstChildPos, nodeTree2, iFirstChildPos2, namedCollator)) {
                return false;
            }
            iFirstChildPos = nodeTree.nextMatching(iFirstChildPos, nodeType, -1, false);
            iFirstChildPos2 = nodeTree2.nextMatching(iFirstChildPos2, nodeType, -1, false);
        }
        return iFirstChildPos == iFirstChildPos2;
    }

    public static boolean deepEqual(NodeTree nodeTree, int i, NodeTree nodeTree2, int i2, NamedCollator namedCollator) {
        int nextKind = nodeTree.getNextKind(i);
        int nextKind2 = nodeTree2.getNextKind(i2);
        switch (nextKind) {
            case 33:
                if (nextKind != nextKind2 || nodeTree.posLocalName(i) != nodeTree2.posLocalName(i2) || nodeTree.posNamespaceURI(i) != nodeTree2.posNamespaceURI(i2)) {
                    return false;
                }
                int iFirstAttributePos = nodeTree.firstAttributePos(i);
                int i3 = 0;
                while (iFirstAttributePos != 0 && nodeTree.getNextKind(iFirstAttributePos) == 35) {
                    i3++;
                    int attributeI = nodeTree2.getAttributeI(i2, nodeTree.posNamespaceURI(iFirstAttributePos), nodeTree.posLocalName(iFirstAttributePos));
                    if (attributeI == 0 || !deepEqualItems(KNode.getNodeValue(nodeTree, iFirstAttributePos), KNode.getNodeValue(nodeTree2, attributeI), namedCollator)) {
                        return false;
                    }
                    iFirstAttributePos = nodeTree.nextPos(iFirstAttributePos);
                }
                if (i3 != nodeTree2.getAttributeCount(i2)) {
                    return false;
                }
                break;
            case 34:
                break;
            case 35:
                if (nodeTree.posLocalName(i) == nodeTree2.posLocalName(i2) && nodeTree.posNamespaceURI(i) == nodeTree2.posNamespaceURI(i2)) {
                    return deepEqualItems(KAttr.getObjectValue(nodeTree, i), KAttr.getObjectValue(nodeTree2, i2), namedCollator);
                }
                return false;
            case 36:
            default:
                if (nextKind != nextKind2) {
                    return false;
                }
                return KNode.getNodeValue(nodeTree, i).equals(KNode.getNodeValue(nodeTree2, i2));
            case 37:
                if (nodeTree.posTarget(i).equals(nodeTree2.posTarget(i2))) {
                    return KNode.getNodeValue(nodeTree, i).equals(KNode.getNodeValue(nodeTree2, i2));
                }
                return false;
        }
        return deepEqualChildren(nodeTree, i, nodeTree2, i2, namedCollator);
    }

    public static boolean deepEqualItems(Object obj, Object obj2, NamedCollator namedCollator) {
        if (NumberValue.isNaN(obj) && NumberValue.isNaN(obj2)) {
            return true;
        }
        return Compare.atomicCompare(8, obj, obj2, namedCollator);
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x008a, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x008b, code lost:
    
        if (r7 != r8) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x008d, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean deepEqual(java.lang.Object r13, java.lang.Object r14, gnu.xquery.util.NamedCollator r15) {
        /*
            r0 = 1
            if (r13 != r14) goto L4
            return r0
        L4:
            r1 = 0
            if (r13 == 0) goto L8f
            gnu.mapping.Values r2 = gnu.mapping.Values.empty
            if (r13 != r2) goto Ld
            goto L8f
        Ld:
            if (r14 == 0) goto L8e
            if (r14 != r2) goto L13
            goto L8e
        L13:
            boolean r2 = r13 instanceof gnu.mapping.Values
            boolean r3 = r14 instanceof gnu.mapping.Values
            r4 = 0
            if (r2 == 0) goto L1e
            r5 = r13
            gnu.mapping.Values r5 = (gnu.mapping.Values) r5
            goto L1f
        L1e:
            r5 = r4
        L1f:
            if (r3 == 0) goto L24
            r4 = r14
            gnu.mapping.Values r4 = (gnu.mapping.Values) r4
        L24:
            r6 = 1
            r7 = 1
            r8 = 1
        L27:
            if (r2 == 0) goto L33
            if (r6 == 0) goto L2f
            int r7 = r5.startPos()
        L2f:
            int r7 = r5.nextPos(r7)
        L33:
            if (r3 == 0) goto L3f
            if (r6 == 0) goto L3b
            int r8 = r4.startPos()
        L3b:
            int r8 = r4.nextPos(r8)
        L3f:
            if (r7 == 0) goto L8b
            if (r8 != 0) goto L44
            goto L8b
        L44:
            if (r2 == 0) goto L4b
            java.lang.Object r9 = r5.getPosPrevious(r7)
            goto L4c
        L4b:
            r9 = r13
        L4c:
            if (r3 == 0) goto L53
            java.lang.Object r10 = r4.getPosPrevious(r8)
            goto L54
        L53:
            r10 = r14
        L54:
            boolean r11 = r9 instanceof gnu.kawa.xml.KNode
            if (r11 != 0) goto L63
            boolean r12 = r10 instanceof gnu.kawa.xml.KNode
            if (r12 != 0) goto L63
            boolean r9 = deepEqualItems(r13, r14, r15)     // Catch: java.lang.Throwable -> L62
            if (r9 != 0) goto L80
        L62:
            return r1
        L63:
            if (r11 == 0) goto L8a
            boolean r11 = r10 instanceof gnu.kawa.xml.KNode
            if (r11 == 0) goto L8a
            gnu.kawa.xml.KNode r9 = (gnu.kawa.xml.KNode) r9
            gnu.kawa.xml.KNode r10 = (gnu.kawa.xml.KNode) r10
            gnu.lists.AbstractSequence r11 = r9.sequence
            gnu.xml.NodeTree r11 = (gnu.xml.NodeTree) r11
            int r9 = r9.ipos
            gnu.lists.AbstractSequence r12 = r10.sequence
            gnu.xml.NodeTree r12 = (gnu.xml.NodeTree) r12
            int r10 = r10.ipos
            boolean r9 = deepEqual(r11, r9, r12, r10, r15)
            if (r9 != 0) goto L80
            return r1
        L80:
            if (r6 == 0) goto L27
            if (r2 != 0) goto L85
            r7 = 0
        L85:
            r6 = 0
            if (r3 != 0) goto L27
            r8 = 0
            goto L27
        L8a:
            return r1
        L8b:
            if (r7 != r8) goto L8e
            return r0
        L8e:
            return r1
        L8f:
            if (r14 == 0) goto L97
            gnu.mapping.Values r13 = gnu.mapping.Values.empty
            if (r14 != r13) goto L96
            goto L97
        L96:
            return r1
        L97:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.util.SequenceUtils.deepEqual(java.lang.Object, java.lang.Object, gnu.xquery.util.NamedCollator):boolean");
    }
}
