package gnu.xml;

import gnu.expr.Keyword;
import gnu.lists.AbstractSequence;
import gnu.lists.CharSeq;
import gnu.lists.Consumer;
import gnu.lists.PositionConsumer;
import gnu.lists.SeqPosition;
import gnu.lists.TreeList;
import gnu.lists.UnescapedData;
import gnu.lists.XConsumer;
import gnu.mapping.Symbol;
import gnu.text.Char;
import gnu.text.LineBufferedReader;
import gnu.text.SourceLocator;
import gnu.text.SourceMessages;
import java.util.Iterator;
import java.util.List;
import kotlin.text.Typography;
import org.xml.sax.AttributeList;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DocumentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;

/* loaded from: classes2.dex */
public class XMLFilter implements DocumentHandler, ContentHandler, SourceLocator, XConsumer, PositionConsumer {
    public static final int COPY_NAMESPACES_INHERIT = 2;
    public static final int COPY_NAMESPACES_PRESERVE = 1;

    /* renamed from: a, reason: collision with root package name */
    public final TreeList f5516a;

    /* renamed from: b, reason: collision with root package name */
    public Consumer f5517b;
    public Object[] c;
    public NamespaceBinding d;
    public SourceMessages e;
    public SourceLocator f;

    /* renamed from: g, reason: collision with root package name */
    public LineBufferedReader f5518g;
    protected int ignoringLevel;
    public String k;
    public String l;
    public String m;
    public final a[] n;
    protected int nesting;
    public final int o;
    public Consumer out;
    public boolean p;
    protected int stringizingLevel;
    public transient int copyNamespacesMode = 1;
    public int h = 0;
    protected int stringizingElementNesting = -1;
    public int[] i = null;
    public int j = -1;
    public boolean namespacePrefixes = false;

    public void emitDoctypeDecl(char[] cArr, int i, int i2, int i3, int i4) {
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public String getPublicId() {
        return null;
    }

    @Override // gnu.text.SourceLocator
    public boolean isStableSourceLocation() {
        return false;
    }

    @Override // org.xml.sax.ContentHandler
    public void skippedEntity(String str) {
    }

    public void setSourceLocator(LineBufferedReader lineBufferedReader) {
        this.f5518g = lineBufferedReader;
        this.f = this;
    }

    public void setSourceLocator(SourceLocator sourceLocator) {
        this.f = sourceLocator;
    }

    public void setMessages(SourceMessages sourceMessages) {
        this.e = sourceMessages;
    }

    public NamespaceBinding findNamespaceBinding(String str, String str2, NamespaceBinding namespaceBinding) {
        NamespaceBinding namespaceBinding2;
        int iHashCode = str2 == null ? 0 : str2.hashCode();
        if (str != null) {
            iHashCode ^= str.hashCode();
        }
        int i = this.o & iHashCode;
        a[] aVarArr = this.n;
        for (a aVar = aVarArr[i]; aVar != null; aVar = aVar.f5523a) {
            if (aVar.f5524b == iHashCode && aVar.c == str && (namespaceBinding2 = aVar.f5525g) != null && namespaceBinding2.getNext() == this.d && namespaceBinding2.getPrefix() == str && aVar.e == str2) {
                return aVar.f5525g;
            }
        }
        a aVar2 = new a();
        aVar2.f5523a = aVarArr[i];
        aVarArr[i] = aVar2;
        aVar2.f5524b = iHashCode;
        aVar2.c = str;
        aVar2.d = str2;
        aVar2.e = str2;
        if (str2 == "") {
            str2 = null;
        }
        NamespaceBinding namespaceBinding3 = new NamespaceBinding(str, str2, namespaceBinding);
        aVar2.f5525g = namespaceBinding3;
        return namespaceBinding3;
    }

    public a lookupNamespaceBinding(String str, char[] cArr, int i, int i2, int i3, NamespaceBinding namespaceBinding) {
        NamespaceBinding namespaceBinding2;
        if (str != null) {
            i3 ^= str.hashCode();
        }
        int i4 = this.o & i3;
        a[] aVarArr = this.n;
        for (a aVar = aVarArr[i4]; aVar != null; aVar = aVar.f5523a) {
            if (aVar.f5524b == i3 && aVar.c == str && (namespaceBinding2 = aVar.f5525g) != null && namespaceBinding2.getNext() == this.d && namespaceBinding2.getPrefix() == str && a.a(aVar.e, cArr, i, i2)) {
                return aVar;
            }
        }
        a aVar2 = new a();
        aVar2.f5523a = aVarArr[i4];
        aVarArr[i4] = aVar2;
        String strIntern = new String(cArr, i, i2).intern();
        aVar2.f5524b = i3;
        aVar2.c = str;
        aVar2.d = strIntern;
        aVar2.e = strIntern;
        if (strIntern == "") {
            strIntern = null;
        }
        aVar2.f5525g = new NamespaceBinding(str, strIntern, namespaceBinding);
        return aVar2;
    }

    @Override // gnu.lists.Consumer
    public void endAttribute() {
        int i;
        int i2;
        String str = this.k;
        if (str == null) {
            return;
        }
        if (this.h == 1) {
            this.h = 0;
            return;
        }
        if (this.stringizingElementNesting >= 0) {
            this.ignoringLevel--;
        }
        int i3 = this.stringizingLevel - 1;
        this.stringizingLevel = i3;
        if (i3 == 0) {
            TreeList treeList = this.f5516a;
            if (str == "id" && this.l == "xml") {
                int i4 = this.i[this.j - 1] + 5;
                int i5 = treeList.gapStart;
                char[] cArr = treeList.data;
                int i6 = i4;
                while (i6 < i5) {
                    int i7 = i6 + 1;
                    char c = cArr[i6];
                    if ((c & 65535) > 40959 || c == '\t' || c == '\r' || c == '\n' || (c == ' ' && (i7 == i5 || cArr[i7] == ' '))) {
                        StringBuffer stringBuffer = new StringBuffer();
                        treeList.stringValue(i4, i5, stringBuffer);
                        treeList.gapStart = i4;
                        treeList.write(TextUtils.replaceWhitespace(stringBuffer.toString(), true));
                        break;
                    }
                    i6 = i7;
                }
            }
            this.k = null;
            this.l = null;
            if (this.m == null || this.namespacePrefixes) {
                treeList.endAttribute();
            }
            if (this.m != null) {
                int i8 = this.i[this.j - 1];
                int i9 = treeList.gapStart;
                int i10 = i9 - i8;
                char[] cArr2 = treeList.data;
                int i11 = i8;
                int iHashCode = 0;
                while (true) {
                    if (i11 >= i9) {
                        i = i8;
                        i2 = i10;
                        break;
                    }
                    char c2 = cArr2[i11];
                    if ((c2 & 65535) > 40959) {
                        StringBuffer stringBuffer2 = new StringBuffer();
                        treeList.stringValue(i8, i9, stringBuffer2);
                        iHashCode = stringBuffer2.hashCode();
                        int length = stringBuffer2.length();
                        cArr2 = new char[stringBuffer2.length()];
                        stringBuffer2.getChars(0, length, cArr2, 0);
                        i2 = length;
                        i = 0;
                        break;
                    }
                    iHashCode = (iHashCode * 31) + c2;
                    i11++;
                }
                int i12 = iHashCode;
                treeList.gapStart = i8;
                String str2 = this.m;
                if (str2 == "") {
                    str2 = null;
                }
                this.d = lookupNamespaceBinding(str2, cArr2, i, i2, i12, this.d).f5525g;
                this.m = null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x018f, code lost:
    
        r20 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x021f, code lost:
    
        r1 = r8.h;
        r8.f5525g = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0223, code lost:
    
        if (r1 != null) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0225, code lost:
    
        r8.h = new gnu.xml.XName(r8.f, r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x01c7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() throws org.xml.sax.SAXException {
        /*
            Method dump skipped, instructions count: 809
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xml.XMLFilter.a():void");
    }

    public boolean checkWriteAtomic() throws SAXException {
        this.h = 0;
        if (this.ignoringLevel > 0) {
            return false;
        }
        a();
        return true;
    }

    @Override // gnu.lists.Consumer
    public void write(int i) {
        if (checkWriteAtomic()) {
            this.f5517b.write(i);
        }
    }

    @Override // gnu.lists.Consumer
    public void writeBoolean(boolean z) {
        if (checkWriteAtomic()) {
            this.f5517b.writeBoolean(z);
        }
    }

    @Override // gnu.lists.Consumer
    public void writeFloat(float f) {
        if (checkWriteAtomic()) {
            this.f5517b.writeFloat(f);
        }
    }

    @Override // gnu.lists.Consumer
    public void writeDouble(double d) {
        if (checkWriteAtomic()) {
            this.f5517b.writeDouble(d);
        }
    }

    @Override // gnu.lists.Consumer
    public void writeInt(int i) {
        if (checkWriteAtomic()) {
            this.f5517b.writeInt(i);
        }
    }

    @Override // gnu.lists.Consumer
    public void writeLong(long j) {
        if (checkWriteAtomic()) {
            this.f5517b.writeLong(j);
        }
    }

    public void writeDocumentUri(Object obj) {
        if (this.nesting == 2) {
            Consumer consumer = this.f5517b;
            if (consumer instanceof TreeList) {
                ((TreeList) consumer).writeDocumentUri(obj);
            }
        }
    }

    @Override // gnu.lists.PositionConsumer
    public void consume(SeqPosition seqPosition) {
        writePosition(seqPosition.sequence, seqPosition.ipos);
    }

    @Override // gnu.lists.PositionConsumer
    public void writePosition(AbstractSequence abstractSequence, int i) {
        if (this.ignoringLevel > 0) {
            return;
        }
        if (this.stringizingLevel > 0 && this.h == 2) {
            if (this.stringizingElementNesting < 0) {
                write(32);
            }
            this.h = 0;
        }
        abstractSequence.consumeNext(i, this);
        if (this.stringizingLevel <= 0 || this.stringizingElementNesting >= 0) {
            return;
        }
        this.h = 2;
    }

    @Override // gnu.lists.Consumer
    public void writeObject(Object obj) {
        if (this.ignoringLevel > 0) {
            return;
        }
        if (obj instanceof SeqPosition) {
            SeqPosition seqPosition = (SeqPosition) obj;
            writePosition(seqPosition.sequence, seqPosition.getPos());
            return;
        }
        if (obj instanceof TreeList) {
            ((TreeList) obj).consume(this);
            return;
        }
        if ((obj instanceof List) && !(obj instanceof CharSeq)) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                writeObject(it.next());
            }
        } else {
            if (obj instanceof Keyword) {
                startAttribute(((Keyword) obj).asSymbol());
                this.h = 1;
                return;
            }
            a();
            if (obj instanceof UnescapedData) {
                this.f5517b.writeObject(obj);
                this.h = 0;
            } else {
                if (this.h == 2) {
                    write(32);
                }
                TextUtils.textValue(obj, this);
                this.h = 2;
            }
        }
    }

    public XMLFilter(Consumer consumer) {
        a[] aVarArr = new a[128];
        this.n = aVarArr;
        this.o = aVarArr.length - 1;
        this.f5517b = consumer;
        this.out = consumer;
        if (consumer instanceof NodeTree) {
            this.f5516a = (NodeTree) consumer;
        } else {
            this.f5516a = new TreeList();
        }
        this.d = NamespaceBinding.predefinedXML;
    }

    @Override // gnu.lists.Consumer
    public void write(char[] cArr, int i, int i2) {
        if (i2 == 0) {
            writeJoiner();
        } else if (checkWriteAtomic()) {
            this.f5517b.write(cArr, i, i2);
        }
    }

    @Override // gnu.lists.Consumer
    public void write(String str) {
        write(str, 0, str.length());
    }

    @Override // gnu.lists.Consumer
    public void write(CharSequence charSequence, int i, int i2) {
        if (i2 == 0) {
            writeJoiner();
        } else if (checkWriteAtomic()) {
            this.f5517b.write(charSequence, i, i2);
        }
    }

    public final boolean c() {
        int i = this.nesting;
        while (i > 0 && this.c[i - 1] == null) {
            i -= 2;
        }
        return i != 0;
    }

    public void linefeedFromParser() {
        if (c() && checkWriteAtomic()) {
            this.f5517b.write(10);
        }
    }

    public void textFromParser(char[] cArr, int i, int i2) {
        if (c()) {
            if (i2 <= 0 || !checkWriteAtomic()) {
                return;
            }
            this.f5517b.write(cArr, i, i2);
            return;
        }
        for (int i3 = 0; i3 != i2; i3++) {
            if (!Character.isWhitespace(cArr[i + i3])) {
                error('e', "text at document level");
                return;
            }
        }
    }

    public void writeJoiner() {
        this.h = 0;
        if (this.ignoringLevel == 0) {
            ((TreeList) this.f5517b).writeJoiner();
        }
    }

    @Override // gnu.lists.XConsumer
    public void writeCDATA(char[] cArr, int i, int i2) {
        if (checkWriteAtomic()) {
            Consumer consumer = this.f5517b;
            if (consumer instanceof XConsumer) {
                ((XConsumer) consumer).writeCDATA(cArr, i, i2);
            } else {
                write(cArr, i, i2);
            }
        }
    }

    public void startElementCommon() throws SAXException {
        a();
        if (this.stringizingLevel == 0) {
            b(this.nesting);
            this.c[this.nesting] = this.d;
            TreeList treeList = this.f5516a;
            treeList.startElement(0);
            this.f5517b = treeList;
            this.j = 0;
        } else {
            if (this.h == 2 && this.stringizingElementNesting < 0) {
                write(32);
            }
            this.h = 0;
            if (this.stringizingElementNesting < 0) {
                this.stringizingElementNesting = this.nesting;
            }
        }
        this.nesting += 2;
    }

    public void emitStartElement(char[] cArr, int i, int i2) throws SAXException {
        a();
        a aVarD = d(cArr, i, i2);
        startElementCommon();
        b(this.nesting - 1);
        this.c[this.nesting - 1] = aVarD;
    }

    @Override // gnu.lists.Consumer
    public void startElement(Object obj) {
        NamespaceBinding namespaceBinding;
        startElementCommon();
        if (this.stringizingLevel == 0) {
            b(this.nesting - 1);
            Object[] objArr = this.c;
            int i = this.nesting;
            objArr[i - 1] = obj;
            int i2 = this.copyNamespacesMode;
            if (i2 == 0) {
                this.d = NamespaceBinding.predefinedXML;
                return;
            }
            if (i2 == 1 || i == 2) {
                this.d = obj instanceof XName ? ((XName) obj).getNamespaceNodes() : NamespaceBinding.predefinedXML;
                return;
            }
            int i3 = 2;
            while (true) {
                if (i3 == this.nesting) {
                    namespaceBinding = null;
                    break;
                }
                Object[] objArr2 = this.c;
                if (objArr2[i3 + 1] != null) {
                    namespaceBinding = (NamespaceBinding) objArr2[i3];
                    break;
                }
                i3 += 2;
            }
            if (namespaceBinding == null) {
                this.d = obj instanceof XName ? ((XName) obj).getNamespaceNodes() : NamespaceBinding.predefinedXML;
                return;
            }
            if (this.copyNamespacesMode == 2) {
                this.d = namespaceBinding;
                return;
            }
            if (obj instanceof XName) {
                NamespaceBinding namespaceNodes = ((XName) obj).getNamespaceNodes();
                if (NamespaceBinding.commonAncestor(namespaceBinding, namespaceNodes) == namespaceBinding) {
                    this.d = namespaceNodes;
                    return;
                } else {
                    this.d = e(namespaceBinding, namespaceNodes);
                    return;
                }
            }
            this.d = namespaceBinding;
        }
    }

    public final NamespaceBinding e(NamespaceBinding namespaceBinding, NamespaceBinding namespaceBinding2) {
        NamespaceBinding namespaceBinding3 = NamespaceBinding.predefinedXML;
        if (namespaceBinding2 == namespaceBinding3) {
            return namespaceBinding;
        }
        NamespaceBinding namespaceBindingE = e(namespaceBinding, namespaceBinding2.c);
        String str = namespaceBinding2.f5513b;
        if (namespaceBindingE != null) {
            namespaceBinding3 = namespaceBindingE;
        } else if (str == null) {
            return namespaceBindingE;
        }
        String str2 = namespaceBinding2.f5512a;
        String strResolve = namespaceBinding3.resolve(str2);
        return (strResolve != null ? !strResolve.equals(str) : str != null) ? findNamespaceBinding(str2, str, namespaceBinding3) : namespaceBinding3;
    }

    public final boolean g() {
        if (this.stringizingElementNesting >= 0) {
            this.ignoringLevel++;
        }
        int i = this.stringizingLevel;
        this.stringizingLevel = i + 1;
        if (i > 0) {
            return false;
        }
        if (this.j < 0) {
            this.j = 0;
        }
        b(this.nesting + this.j);
        int i2 = this.j;
        int[] iArr = this.i;
        if (iArr == null) {
            this.i = new int[20];
        } else if (i2 >= iArr.length) {
            int[] iArr2 = new int[iArr.length * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.i = iArr2;
        }
        int[] iArr3 = this.i;
        int i3 = this.j;
        iArr3[i3] = this.f5516a.gapStart;
        this.j = i3 + 1;
        return true;
    }

    @Override // gnu.lists.Consumer
    public void startAttribute(Object obj) {
        this.h = 0;
        if (obj instanceof Symbol) {
            Symbol symbol = (Symbol) obj;
            String localPart = symbol.getLocalPart();
            this.k = localPart;
            this.l = symbol.getPrefix();
            String namespaceURI = symbol.getNamespaceURI();
            if (namespaceURI == "http://www.w3.org/2000/xmlns/" || (namespaceURI == "" && localPart == "xmlns")) {
                error('e', "arttribute name cannot be 'xmlns' or in xmlns namespace");
            }
        }
        if (this.nesting == 2 && this.c[1] == null) {
            error('e', "attribute not allowed at document level");
        }
        if (this.j < 0 && this.nesting > 0) {
            error('e', "attribute '" + obj + "' follows non-attribute content");
        }
        if (g()) {
            Object[] objArr = this.c;
            int i = this.nesting;
            objArr[(this.j + i) - 1] = obj;
            if (i == 0) {
                this.f5517b.startAttribute(obj);
            } else {
                this.f5516a.startAttribute(0);
            }
        }
    }

    public void emitStartAttribute(char[] cArr, int i, int i2) {
        if (this.k != null) {
            endAttribute();
        }
        if (g()) {
            a aVarD = d(cArr, i, i2);
            this.c[(this.nesting + this.j) - 1] = aVarD;
            String str = aVarD.c;
            String str2 = aVarD.d;
            this.k = str2;
            this.l = str;
            if (str != null) {
                if (str == "xmlns") {
                    this.m = str2;
                }
            } else if (str2 == "xmlns" && str == null) {
                this.m = "";
            }
            if (this.m == null || this.namespacePrefixes) {
                this.f5516a.startAttribute(0);
            }
        }
    }

    public void emitEndAttributes() throws SAXException {
        if (this.k != null) {
            endAttribute();
        }
        a();
    }

    public void emitEndElement(char[] cArr, int i, int i2) throws SAXException {
        if (this.k != null) {
            error('e', "unclosed attribute");
            endAttribute();
        }
        if (!c()) {
            error('e', "unmatched end element");
            return;
        }
        if (cArr != null) {
            a aVarD = d(cArr, i, i2);
            Object obj = this.c[this.nesting - 1];
            if ((obj instanceof a) && !this.p) {
                a aVar = (a) obj;
                if (aVarD.d != aVar.d || aVarD.c != aVar.c) {
                    StringBuffer stringBuffer = new StringBuffer("</");
                    stringBuffer.append(cArr, i, i2);
                    stringBuffer.append("> matching <");
                    String str = aVar.c;
                    if (str != null) {
                        stringBuffer.append(str);
                        stringBuffer.append(':');
                    }
                    stringBuffer.append(aVar.d);
                    stringBuffer.append(Typography.greater);
                    error('e', stringBuffer.toString());
                    this.p = true;
                }
            }
        }
        a();
        if (this.nesting <= 0) {
            return;
        }
        endElement();
    }

    @Override // gnu.lists.Consumer
    public void endElement() {
        a();
        int i = this.nesting;
        int i2 = i - 2;
        this.nesting = i2;
        this.h = 0;
        if (this.stringizingLevel == 0) {
            Object[] objArr = this.c;
            this.d = (NamespaceBinding) objArr[i2];
            objArr[i2] = null;
            objArr[i - 1] = null;
            this.f5517b.endElement();
            return;
        }
        if (this.stringizingElementNesting == i2) {
            this.stringizingElementNesting = -1;
            this.h = 2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void emitEntityReference(char[] r7, int r8, int r9) {
        /*
            r6 = this;
            char r0 = r7[r8]
            r1 = 116(0x74, float:1.63E-43)
            r2 = 2
            if (r9 != r2) goto L1b
            int r3 = r8 + 1
            char r3 = r7[r3]
            if (r3 != r1) goto L1b
            r7 = 108(0x6c, float:1.51E-43)
            if (r0 != r7) goto L14
            r7 = 60
            goto L62
        L14:
            r7 = 103(0x67, float:1.44E-43)
            if (r0 != r7) goto L60
            r7 = 62
            goto L62
        L1b:
            r3 = 112(0x70, float:1.57E-43)
            r4 = 97
            r5 = 3
            if (r9 != r5) goto L34
            if (r0 != r4) goto L60
            int r9 = r8 + 1
            char r9 = r7[r9]
            r0 = 109(0x6d, float:1.53E-43)
            if (r9 != r0) goto L60
            int r8 = r8 + r2
            char r7 = r7[r8]
            if (r7 != r3) goto L60
            r7 = 38
            goto L62
        L34:
            r2 = 4
            if (r9 != r2) goto L60
            int r9 = r8 + 1
            char r9 = r7[r9]
            int r2 = r8 + 2
            char r2 = r7[r2]
            int r8 = r8 + r5
            char r7 = r7[r8]
            r8 = 113(0x71, float:1.58E-43)
            r5 = 111(0x6f, float:1.56E-43)
            if (r0 != r8) goto L53
            r8 = 117(0x75, float:1.64E-43)
            if (r9 != r8) goto L53
            if (r2 != r5) goto L53
            if (r7 != r1) goto L53
            r7 = 34
            goto L62
        L53:
            if (r0 != r4) goto L60
            if (r9 != r3) goto L60
            if (r2 != r5) goto L60
            r8 = 115(0x73, float:1.61E-43)
            if (r7 != r8) goto L60
            r7 = 39
            goto L62
        L60:
            r7 = 63
        L62:
            r6.write(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xml.XMLFilter.emitEntityReference(char[], int, int):void");
    }

    public void emitCharacterReference(int i, char[] cArr, int i2, int i3) {
        if (i >= 65536) {
            Char.print(i, this);
        } else {
            write(i);
        }
    }

    public void checkValidComment(char[] cArr, int i, int i2) {
        boolean z = true;
        while (true) {
            i2--;
            if (i2 < 0) {
                return;
            }
            boolean z2 = cArr[i + i2] == '-';
            if (z && z2) {
                error('e', "consecutive or final hyphen in XML comment");
                return;
            }
            z = z2;
        }
    }

    @Override // gnu.lists.XConsumer
    public void writeComment(char[] cArr, int i, int i2) {
        checkValidComment(cArr, i, i2);
        commentFromParser(cArr, i, i2);
    }

    public void commentFromParser(char[] cArr, int i, int i2) throws SAXException {
        if (this.stringizingLevel == 0) {
            a();
            Consumer consumer = this.f5517b;
            if (consumer instanceof XConsumer) {
                ((XConsumer) consumer).writeComment(cArr, i, i2);
                return;
            }
            return;
        }
        if (this.stringizingElementNesting < 0) {
            this.f5517b.write(cArr, i, i2);
        }
    }

    @Override // gnu.lists.XConsumer
    public void writeProcessingInstruction(String str, char[] cArr, int i, int i2) {
        String strReplaceWhitespace = TextUtils.replaceWhitespace(str, true);
        int i3 = i + i2;
        while (true) {
            i3--;
            if (i3 < i) {
                break;
            }
            char c = cArr[i3];
            while (true) {
                if (c != '>' || i3 - 1 < i) {
                    break;
                }
                c = cArr[i3];
                if (c == '?') {
                    error('e', "'?>' is not allowed in a processing-instruction");
                    break;
                }
            }
        }
        if ("xml".equalsIgnoreCase(strReplaceWhitespace)) {
            error('e', "processing-instruction target may not be 'xml' (ignoring case)");
        }
        if (!XName.isNCName(strReplaceWhitespace)) {
            error('e', "processing-instruction target '" + strReplaceWhitespace + "' is not a valid Name");
        }
        f(strReplaceWhitespace, cArr, i, i2);
    }

    public final void f(String str, char[] cArr, int i, int i2) throws SAXException {
        if (this.stringizingLevel == 0) {
            a();
            Consumer consumer = this.f5517b;
            if (consumer instanceof XConsumer) {
                ((XConsumer) consumer).writeProcessingInstruction(str, cArr, i, i2);
                return;
            }
            return;
        }
        if (this.stringizingElementNesting < 0) {
            this.f5517b.write(cArr, i, i2);
        }
    }

    public void processingInstructionFromParser(char[] cArr, int i, int i2, int i3, int i4) throws SAXException {
        if (i2 == 3 && !c() && cArr[i] == 'x' && cArr[i + 1] == 'm' && cArr[i + 2] == 'l') {
            return;
        }
        f(new String(cArr, i, i2), cArr, i3, i4);
    }

    @Override // org.xml.sax.DocumentHandler, org.xml.sax.ContentHandler, gnu.lists.Consumer
    public void startDocument() {
        a();
        if (this.stringizingLevel > 0) {
            writeJoiner();
            return;
        }
        if (this.nesting == 0) {
            this.f5517b.startDocument();
        } else {
            writeJoiner();
        }
        b(this.nesting);
        Object[] objArr = this.c;
        int i = this.nesting;
        objArr[i] = this.d;
        objArr[i + 1] = null;
        this.nesting = i + 2;
    }

    @Override // org.xml.sax.DocumentHandler, org.xml.sax.ContentHandler, gnu.lists.Consumer
    public void endDocument() {
        if (this.stringizingLevel > 0) {
            writeJoiner();
            return;
        }
        int i = this.nesting;
        int i2 = i - 2;
        this.nesting = i2;
        Object[] objArr = this.c;
        this.d = (NamespaceBinding) objArr[i2];
        objArr[i2] = null;
        objArr[i - 1] = null;
        if (i2 == 0) {
            this.f5517b.endDocument();
        } else {
            writeJoiner();
        }
    }

    @Override // gnu.lists.XConsumer
    public void beginEntity(Object obj) {
        Consumer consumer = this.f5517b;
        if (consumer instanceof XConsumer) {
            ((XConsumer) consumer).beginEntity(obj);
        }
    }

    @Override // gnu.lists.XConsumer
    public void endEntity() {
        Consumer consumer = this.f5517b;
        if (consumer instanceof XConsumer) {
            ((XConsumer) consumer).endEntity();
        }
    }

    @Override // java.lang.Appendable
    public XMLFilter append(char c) {
        write(c);
        return this;
    }

    @Override // java.lang.Appendable
    public XMLFilter append(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "null";
        }
        append(charSequence, 0, charSequence.length());
        return this;
    }

    @Override // java.lang.Appendable
    public XMLFilter append(CharSequence charSequence, int i, int i2) {
        if (charSequence == null) {
            charSequence = "null";
        }
        write(charSequence, i, i2 - i);
        return this;
    }

    public final a d(char[] cArr, int i, int i2) {
        int i3 = -1;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            char c = cArr[i + i6];
            if (c != ':' || i3 >= 0) {
                i5 = (i5 * 31) + c;
            } else {
                i3 = i6;
                i4 = i5;
                i5 = 0;
            }
        }
        int i7 = i4 ^ i5;
        int i8 = this.o & i7;
        a[] aVarArr = this.n;
        a aVar = aVarArr[i8];
        a aVar2 = aVar;
        while (true) {
            boolean zA = true;
            if (aVar2 == null) {
                a aVar3 = new a();
                aVar3.f5524b = i7;
                if (i3 >= 0) {
                    aVar3.c = new String(cArr, i, i3).intern();
                    int i9 = i3 + 1;
                    aVar3.d = new String(cArr, i + i9, i2 - i9).intern();
                } else {
                    aVar3.c = null;
                    aVar3.d = new String(cArr, i, i2).intern();
                }
                aVar3.f5523a = aVar;
                aVarArr[i8] = aVar;
                return aVar3;
            }
            if (i7 == aVar2.f5524b) {
                if (aVar2.c != null) {
                    int length = aVar2.d.length();
                    int length2 = aVar2.c.length();
                    if (i2 != length2 + 1 + length || cArr[length2] != ':' || !a.a(aVar2.c, cArr, i, length2) || !a.a(aVar2.d, cArr, length2 + i + 1, length)) {
                        zA = false;
                    }
                } else {
                    zA = a.a(aVar2.d, cArr, i, i2);
                }
                if (zA) {
                    return aVar2;
                }
            }
            aVar2 = aVar2.f5523a;
        }
    }

    public final void b(int i) {
        Object[] objArr = this.c;
        if (objArr == null) {
            this.c = new Object[20];
        } else if (i >= objArr.length) {
            Object[] objArr2 = new Object[objArr.length * 2];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            this.c = objArr2;
        }
    }

    public static String duplicateAttributeMessage(Symbol symbol, Object obj) {
        StringBuffer stringBuffer = new StringBuffer("duplicate attribute: ");
        String namespaceURI = symbol.getNamespaceURI();
        if (namespaceURI != null && namespaceURI.length() > 0) {
            stringBuffer.append("{}");
            stringBuffer.append(namespaceURI);
        }
        stringBuffer.append(symbol.getLocalPart());
        if (obj != null) {
            stringBuffer.append(" in <");
            stringBuffer.append(obj);
            stringBuffer.append(Typography.greater);
        }
        return stringBuffer.toString();
    }

    public void error(char c, String str) {
        SourceMessages sourceMessages = this.e;
        if (sourceMessages == null) {
            throw new RuntimeException(str);
        }
        SourceLocator sourceLocator = this.f;
        if (sourceLocator != null) {
            sourceMessages.error(c, sourceLocator, str);
        } else {
            sourceMessages.error(c, str);
        }
    }

    @Override // gnu.lists.Consumer
    public boolean ignoring() {
        return this.ignoringLevel > 0;
    }

    @Override // org.xml.sax.DocumentHandler, org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        if (locator instanceof SourceLocator) {
            this.f = (SourceLocator) locator;
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) {
        startElement(Symbol.make(str, str2));
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            startAttribute(Symbol.make(attributes.getURI(i), attributes.getLocalName(i)));
            write(attributes.getValue(i));
            endAttribute();
        }
    }

    @Override // org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        endElement();
    }

    @Override // org.xml.sax.DocumentHandler
    public void startElement(String str, AttributeList attributeList) {
        startElement(str.intern());
        int length = attributeList.getLength();
        for (int i = 0; i < length; i++) {
            String strIntern = attributeList.getName(i).intern();
            attributeList.getType(i);
            String value = attributeList.getValue(i);
            startAttribute(strIntern);
            write(value);
            endAttribute();
        }
    }

    @Override // org.xml.sax.DocumentHandler
    public void endElement(String str) throws SAXException {
        endElement();
    }

    @Override // org.xml.sax.DocumentHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        write(cArr, i, i2);
    }

    @Override // org.xml.sax.DocumentHandler, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] cArr, int i, int i2) throws SAXException {
        write(cArr, i, i2);
    }

    @Override // org.xml.sax.DocumentHandler, org.xml.sax.ContentHandler
    public void processingInstruction(String str, String str2) throws SAXException {
        char[] charArray = str2.toCharArray();
        f(str, charArray, 0, charArray.length);
    }

    @Override // org.xml.sax.ContentHandler
    public void startPrefixMapping(String str, String str2) {
        this.d = findNamespaceBinding(str.intern(), str2.intern(), this.d);
    }

    @Override // org.xml.sax.ContentHandler
    public void endPrefixMapping(String str) {
        this.d = this.d.getNext();
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public String getSystemId() {
        LineBufferedReader lineBufferedReader = this.f5518g;
        if (lineBufferedReader == null) {
            return null;
        }
        return lineBufferedReader.getName();
    }

    @Override // gnu.text.SourceLocator
    public String getFileName() {
        LineBufferedReader lineBufferedReader = this.f5518g;
        if (lineBufferedReader == null) {
            return null;
        }
        return lineBufferedReader.getName();
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public int getLineNumber() {
        int lineNumber;
        LineBufferedReader lineBufferedReader = this.f5518g;
        if (lineBufferedReader != null && (lineNumber = lineBufferedReader.getLineNumber()) >= 0) {
            return lineNumber + 1;
        }
        return -1;
    }

    @Override // gnu.text.SourceLocator, org.xml.sax.Locator
    public int getColumnNumber() {
        int columnNumber;
        LineBufferedReader lineBufferedReader = this.f5518g;
        if (lineBufferedReader == null || (columnNumber = lineBufferedReader.getColumnNumber()) <= 0) {
            return -1;
        }
        return columnNumber;
    }
}
