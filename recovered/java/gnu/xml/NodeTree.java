package gnu.xml;

import gnu.kawa.xml.ElementType;
import gnu.kawa.xml.KNode;
import gnu.kawa.xml.UntypedAtomic;
import gnu.lists.AbstractSequence;
import gnu.lists.SeqPosition;
import gnu.lists.TreeList;
import gnu.mapping.CharArrayOutPort;
import gnu.mapping.Symbol;

/* loaded from: classes2.dex */
public class NodeTree extends TreeList {
    public static int e;

    /* renamed from: a, reason: collision with root package name */
    public int f5514a;

    /* renamed from: b, reason: collision with root package name */
    public String[] f5515b;
    public int[] c;
    public int d;

    @Override // gnu.lists.TreeList, gnu.lists.AbstractSequence
    public int nextPos(int i) {
        int iPosToDataIndex = posToDataIndex(i);
        int iNextNodeIndex = nextNodeIndex(iPosToDataIndex, Integer.MAX_VALUE);
        if (iNextNodeIndex != iPosToDataIndex) {
            return iNextNodeIndex << 1;
        }
        if (iPosToDataIndex == this.data.length) {
            return 0;
        }
        return (iPosToDataIndex << 1) + 3;
    }

    public static NodeTree make() {
        return new NodeTree();
    }

    public int getId() {
        if (this.f5514a == 0) {
            int i = e + 1;
            e = i;
            this.f5514a = i;
        }
        return this.f5514a;
    }

    @Override // gnu.lists.AbstractSequence
    public int stableCompare(AbstractSequence abstractSequence) {
        if (this == abstractSequence) {
            return 0;
        }
        int iStableCompare = super.stableCompare(abstractSequence);
        if (iStableCompare != 0 || !(abstractSequence instanceof NodeTree)) {
            return iStableCompare;
        }
        int id = getId();
        int id2 = ((NodeTree) abstractSequence).getId();
        if (id < id2) {
            return -1;
        }
        return id > id2 ? 1 : 0;
    }

    @Override // gnu.lists.AbstractSequence
    public SeqPosition getIteratorAtPos(int i) {
        return KNode.make(this, i);
    }

    public String posNamespaceURI(int i) {
        Object nextTypeObject = getNextTypeObject(i);
        if (nextTypeObject instanceof XName) {
            return ((XName) nextTypeObject).getNamespaceURI();
        }
        if (nextTypeObject instanceof Symbol) {
            return ((Symbol) nextTypeObject).getNamespaceURI();
        }
        return null;
    }

    public String posPrefix(int i) {
        int iIndexOf;
        String nextTypeName = getNextTypeName(i);
        if (nextTypeName != null && (iIndexOf = nextTypeName.indexOf(58)) >= 0) {
            return nextTypeName.substring(0, iIndexOf);
        }
        return null;
    }

    public String posLocalName(int i) {
        Object nextTypeObject = getNextTypeObject(i);
        if (nextTypeObject instanceof XName) {
            return ((XName) nextTypeObject).getLocalPart();
        }
        if (nextTypeObject instanceof Symbol) {
            return ((Symbol) nextTypeObject).getLocalName();
        }
        return getNextTypeName(i);
    }

    public boolean posIsDefaultNamespace(int i, String str) {
        throw new Error("posIsDefaultNamespace not implemented");
    }

    public String posLookupNamespaceURI(int i, String str) {
        if (getNextKind(i) != 33) {
            throw new IllegalArgumentException("argument must be an element");
        }
        Object nextTypeObject = getNextTypeObject(i);
        if (nextTypeObject instanceof XName) {
            for (NamespaceBinding namespaceBinding = ((XName) nextTypeObject).f5522a; namespaceBinding != null; namespaceBinding = namespaceBinding.c) {
                if (str == namespaceBinding.f5512a) {
                    return namespaceBinding.f5513b;
                }
            }
        }
        return null;
    }

    public String posLookupPrefix(int i, String str) {
        throw new Error("posLookupPrefix not implemented");
    }

    public int posFirstChild(int i) {
        char c;
        int iGotoChildrenStart = gotoChildrenStart(posToDataIndex(i));
        if (iGotoChildrenStart < 0 || (c = this.data[iGotoChildrenStart]) == 61707 || c == 61708 || c == 61713) {
            return -1;
        }
        return iGotoChildrenStart << 1;
    }

    public boolean posHasAttributes(int i) {
        int iGotoAttributesStart = gotoAttributesStart(posToDataIndex(i));
        return iGotoAttributesStart >= 0 && iGotoAttributesStart >= 0 && this.data[iGotoAttributesStart] == 61705;
    }

    public int getAttribute(int i, String str, String str2) {
        return getAttributeI(i, str == null ? null : str.intern(), str2 != null ? str2.intern() : null);
    }

    public int getAttributeI(int i, String str, String str2) {
        int iFirstAttributePos = firstAttributePos(i);
        while (iFirstAttributePos != 0 && getNextKind(iFirstAttributePos) == 35) {
            if ((str2 == null || posLocalName(iFirstAttributePos) == str2) && (str == null || posNamespaceURI(iFirstAttributePos) == str)) {
                return iFirstAttributePos;
            }
            iFirstAttributePos = nextPos(iFirstAttributePos);
        }
        return 0;
    }

    public Object typedValue(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        stringValue(posToDataIndex(i), stringBuffer);
        String string = stringBuffer.toString();
        int nextKind = getNextKind(i);
        return (nextKind == 37 || nextKind == 36) ? string : new UntypedAtomic(string);
    }

    public String posTarget(int i) {
        int iPosToDataIndex = posToDataIndex(i);
        if (this.data[iPosToDataIndex] != 61716) {
            throw new ClassCastException("expected process-instruction");
        }
        return (String) this.objects[getIntN(iPosToDataIndex + 1)];
    }

    public int ancestorAttribute(int i, String str, String str2) {
        while (i != -1) {
            int attributeI = getAttributeI(i, str, str2);
            if (attributeI != 0) {
                return attributeI;
            }
            i = parentPos(i);
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x005b, code lost:
    
        return r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.text.Path baseUriOfPos(int r6, boolean r7) {
        /*
            r5 = this;
            int r0 = r5.posToDataIndex(r6)
            r1 = 0
            r2 = r1
        L6:
            char[] r3 = r5.data
            int r4 = r3.length
            if (r0 != r4) goto Lc
            return r1
        Lc:
            char r3 = r3[r0]
            r4 = 61714(0xf112, float:8.648E-41)
            if (r3 != r4) goto L24
            int r6 = r0 + 1
            int r6 = r5.getIntN(r6)
            if (r6 < 0) goto L46
            java.lang.Object[] r3 = r5.objects
            r6 = r3[r6]
            gnu.text.URIPath r6 = gnu.text.URIPath.makeURI(r6)
            goto L47
        L24:
            r4 = 40960(0xa000, float:5.7397E-41)
            if (r3 < r4) goto L2e
            r4 = 45055(0xafff, float:6.3136E-41)
            if (r3 <= r4) goto L33
        L2e:
            r4 = 61704(0xf108, float:8.6466E-41)
            if (r3 != r4) goto L46
        L33:
            java.lang.String r3 = "http://www.w3.org/XML/1998/namespace"
            java.lang.String r4 = "base"
            int r6 = r5.getAttributeI(r6, r3, r4)
            if (r6 == 0) goto L46
            java.lang.String r6 = gnu.kawa.xml.KNode.getNodeValue(r5, r6)
            gnu.text.URIPath r6 = gnu.text.URIPath.valueOf(r6)
            goto L47
        L46:
            r6 = r1
        L47:
            if (r6 == 0) goto L5c
            if (r2 == 0) goto L52
            if (r7 != 0) goto L4e
            goto L52
        L4e:
            gnu.text.Path r6 = r6.resolve(r2)
        L52:
            r2 = r6
            boolean r6 = r2.isAbsolute()
            if (r6 != 0) goto L5b
            if (r7 != 0) goto L5c
        L5b:
            return r2
        L5c:
            int r0 = r5.parentOrEntityI(r0)
            r6 = -1
            if (r0 != r6) goto L64
            return r2
        L64:
            int r6 = r0 << 1
            goto L6
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xml.NodeTree.baseUriOfPos(int, boolean):gnu.text.Path");
    }

    @Override // gnu.lists.AbstractSequence
    public String toString() {
        CharArrayOutPort charArrayOutPort = new CharArrayOutPort();
        consume(new XMLPrinter(charArrayOutPort));
        charArrayOutPort.close();
        return charArrayOutPort.toString();
    }

    public void makeIDtableIfNeeded() {
        if (this.f5515b != null) {
            return;
        }
        this.f5515b = new String[64];
        this.c = new int[64];
        int iEndPos = endPos();
        int iNextMatching = 0;
        while (true) {
            iNextMatching = nextMatching(iNextMatching, ElementType.anyElement, iEndPos, true);
            if (iNextMatching == 0) {
                return;
            }
            int attributeI = getAttributeI(iNextMatching, NamespaceBinding.XML_NAMESPACE, "id");
            if (attributeI != 0) {
                a(iNextMatching, KNode.getNodeValue(this, attributeI));
            }
        }
    }

    public final void a(int i, String str) {
        int i2;
        String[] strArr = this.f5515b;
        int[] iArr = this.c;
        if (strArr == null) {
            i2 = 64;
            this.f5515b = new String[64];
            this.c = new int[64];
        } else {
            int i3 = this.d * 4;
            int length = strArr.length;
            if (i3 >= length * 3) {
                i2 = length * 2;
                this.f5515b = new String[i2];
                this.c = new int[i2];
                this.d = 0;
                while (true) {
                    length--;
                    if (length < 0) {
                        break;
                    }
                    String str2 = strArr[length];
                    if (str2 != null) {
                        a(iArr[length], str2);
                    }
                }
                strArr = this.f5515b;
                iArr = this.c;
            } else {
                i2 = length;
            }
        }
        int iHashCode = str.hashCode();
        int i4 = i2 - 1;
        int i5 = iHashCode & i4;
        int i6 = ((~iHashCode) << 1) | 1;
        while (true) {
            String str3 = strArr[i5];
            if (str3 == null) {
                strArr[i5] = str;
                iArr[i5] = i;
                this.d++;
                return;
            } else if (str3.equals(str)) {
                return;
            } else {
                i5 = (i5 + i6) & i4;
            }
        }
    }

    public int lookupID(String str) {
        String[] strArr = this.f5515b;
        int[] iArr = this.c;
        int length = strArr.length;
        int iHashCode = str.hashCode();
        int i = length - 1;
        int i2 = iHashCode & i;
        int i3 = ((~iHashCode) << 1) | 1;
        while (true) {
            String str2 = strArr[i2];
            if (str2 == null) {
                return -1;
            }
            if (str2.equals(str)) {
                return iArr[i2];
            }
            i2 = (i2 + i3) & i;
        }
    }
}
