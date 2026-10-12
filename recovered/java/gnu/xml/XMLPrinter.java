package gnu.xml;

import gnu.expr.Keyword;
import gnu.kawa.xml.XmlNamespace;
import gnu.lists.AbstractSequence;
import gnu.lists.Consumable;
import gnu.lists.PositionConsumer;
import gnu.lists.SeqPosition;
import gnu.lists.UnescapedData;
import gnu.lists.XConsumer;
import gnu.mapping.OutPort;
import gnu.mapping.Symbol;
import gnu.mapping.ThreadLocation;
import gnu.math.DFloNum;
import gnu.math.RealNum;
import gnu.text.Char;
import gnu.text.Path;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.math.BigDecimal;
import okio.Utf8;

/* loaded from: classes2.dex */
public class XMLPrinter extends OutPort implements PositionConsumer, XConsumer {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5519a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5520b;
    public boolean c;
    public boolean canonicalizeCDATA;
    public boolean d;
    public int e;
    public boolean escapeNonAscii;
    public boolean escapeText;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f5521g;
    public boolean h;
    public boolean i;
    public boolean indentAttributes;
    public Object j;
    public NamespaceBinding k;
    public NamespaceBinding[] l;
    public Object[] m;
    public int n;
    public int o;
    public char p;
    public int printIndent;
    public boolean strict;
    public int useEmptyElementTag;
    public static final ThreadLocation doctypeSystem = new ThreadLocation("doctype-system");
    public static final ThreadLocation doctypePublic = new ThreadLocation("doctype-public");
    public static final ThreadLocation indentLoc = new ThreadLocation("xml-indent");

    @Override // gnu.lists.XConsumer
    public void beginEntity(Object obj) {
    }

    @Override // gnu.lists.XConsumer
    public void endEntity() {
    }

    @Override // gnu.lists.PrintConsumer, gnu.lists.Consumer
    public boolean ignoring() {
        return false;
    }

    public void writeBaseUri(Object obj) {
    }

    public void setPrintXMLdecl(boolean z) {
        this.f5519a = z;
    }

    public XMLPrinter(OutPort outPort, boolean z) {
        super(outPort, z);
        this.printIndent = -1;
        this.f5519a = false;
        this.c = false;
        this.d = false;
        this.f = false;
        this.f5521g = true;
        this.useEmptyElementTag = 2;
        this.escapeText = true;
        this.escapeNonAscii = true;
        this.h = false;
        this.i = false;
        this.k = NamespaceBinding.predefinedXML;
        this.l = new NamespaceBinding[20];
        this.m = new Object[20];
        this.o = 32;
    }

    public XMLPrinter(Writer writer, boolean z) {
        super(writer, z);
        this.printIndent = -1;
        this.f5519a = false;
        this.c = false;
        this.d = false;
        this.f = false;
        this.f5521g = true;
        this.useEmptyElementTag = 2;
        this.escapeText = true;
        this.escapeNonAscii = true;
        this.h = false;
        this.i = false;
        this.k = NamespaceBinding.predefinedXML;
        this.l = new NamespaceBinding[20];
        this.m = new Object[20];
        this.o = 32;
    }

    public XMLPrinter(OutputStream outputStream, boolean z) {
        super((Writer) new OutputStreamWriter(outputStream), true, z);
        this.printIndent = -1;
        this.f5519a = false;
        this.c = false;
        this.d = false;
        this.f = false;
        this.f5521g = true;
        this.useEmptyElementTag = 2;
        this.escapeText = true;
        this.escapeNonAscii = true;
        this.h = false;
        this.i = false;
        this.k = NamespaceBinding.predefinedXML;
        this.l = new NamespaceBinding[20];
        this.m = new Object[20];
        this.o = 32;
    }

    public XMLPrinter(Writer writer) {
        super(writer);
        this.printIndent = -1;
        this.f5519a = false;
        this.c = false;
        this.d = false;
        this.f = false;
        this.f5521g = true;
        this.useEmptyElementTag = 2;
        this.escapeText = true;
        this.escapeNonAscii = true;
        this.h = false;
        this.i = false;
        this.k = NamespaceBinding.predefinedXML;
        this.l = new NamespaceBinding[20];
        this.m = new Object[20];
        this.o = 32;
    }

    public XMLPrinter(OutputStream outputStream) {
        super((Writer) new OutputStreamWriter(outputStream), false, false);
        this.printIndent = -1;
        this.f5519a = false;
        this.c = false;
        this.d = false;
        this.f = false;
        this.f5521g = true;
        this.useEmptyElementTag = 2;
        this.escapeText = true;
        this.escapeNonAscii = true;
        this.h = false;
        this.i = false;
        this.k = NamespaceBinding.predefinedXML;
        this.l = new NamespaceBinding[20];
        this.m = new Object[20];
        this.o = 32;
    }

    public XMLPrinter(OutputStream outputStream, Path path) {
        super(new OutputStreamWriter(outputStream), true, false, path);
        this.printIndent = -1;
        this.f5519a = false;
        this.c = false;
        this.d = false;
        this.f = false;
        this.f5521g = true;
        this.useEmptyElementTag = 2;
        this.escapeText = true;
        this.escapeNonAscii = true;
        this.h = false;
        this.i = false;
        this.k = NamespaceBinding.predefinedXML;
        this.l = new NamespaceBinding[20];
        this.m = new Object[20];
        this.o = 32;
    }

    public static XMLPrinter make(OutPort outPort, Object obj) {
        XMLPrinter xMLPrinter = new XMLPrinter(outPort, true);
        xMLPrinter.setStyle(obj);
        return xMLPrinter;
    }

    public static String toString(Object obj) throws IOException {
        StringWriter stringWriter = new StringWriter();
        new XMLPrinter(stringWriter).writeObject(obj);
        return stringWriter.toString();
    }

    public void setStyle(Object obj) {
        this.j = obj;
        this.useEmptyElementTag = !this.f5521g ? 1 : 0;
        if ("html".equals(obj)) {
            this.h = true;
            this.i = true;
            this.useEmptyElementTag = 2;
            if (this.k == NamespaceBinding.predefinedXML) {
                this.k = XmlNamespace.HTML_BINDINGS;
            }
        } else if (this.k == XmlNamespace.HTML_BINDINGS) {
            this.k = NamespaceBinding.predefinedXML;
        }
        if ("xhtml".equals(obj)) {
            this.i = true;
            this.useEmptyElementTag = 2;
        }
        if ("plain".equals(obj)) {
            this.escapeText = false;
        }
    }

    public final boolean b(int i) {
        if ((i >= 127 && (i <= 159 || this.escapeNonAscii)) || i == 8232) {
            return true;
        }
        if (i >= 32) {
            return false;
        }
        if (this.c) {
            return true;
        }
        return (i == 9 || i == 10) ? false : true;
    }

    @Override // java.io.PrintWriter, java.io.Writer, gnu.lists.Consumer
    public void write(int i) {
        closeTag();
        if (this.printIndent >= 0 && (i == 13 || i == 10)) {
            if (i != 10 || this.o != 13) {
                writeBreak(82);
            }
            if (this.e > 0) {
                this.e = 1;
                return;
            }
            return;
        }
        if (!this.escapeText) {
            this.bout.write(i);
            this.o = i;
            return;
        }
        int i2 = this.e;
        if (i2 > 0) {
            if (i != 45) {
                this.e = 1;
            } else if (i2 == 1) {
                this.e = 2;
            } else {
                this.bout.write(32);
            }
            super.write(i);
            return;
        }
        this.o = 59;
        if (i == 60 && (!this.h || !this.c)) {
            this.bout.write("&lt;");
            return;
        }
        if (i == 62) {
            this.bout.write("&gt;");
            return;
        }
        if (i == 38) {
            this.bout.write("&amp;");
            return;
        }
        if (i == 34 && this.c) {
            this.bout.write("&quot;");
            return;
        }
        if (b(i)) {
            if (i >= 55296) {
                if (i < 56320) {
                    this.p = (char) i;
                    return;
                } else if (i < 57344) {
                    i = (i - Utf8.LOG_SURROGATE_HEADER) + ((this.p - 55296) * 1024) + 65536;
                    this.p = (char) 0;
                }
            }
            this.bout.write("&#x" + Integer.toHexString(i).toUpperCase() + ";");
            return;
        }
        this.bout.write(i);
        this.o = i;
    }

    @Override // gnu.lists.PrintConsumer
    public void startNumber() {
        closeTag();
        writeWordStart();
    }

    @Override // gnu.lists.PrintConsumer, gnu.lists.Consumer
    public void writeBoolean(boolean z) {
        closeTag();
        writeWordStart();
        super.print(z);
        writeWordEnd();
    }

    @Override // gnu.lists.PrintConsumer, gnu.lists.Consumer
    public void writeDouble(double d) {
        closeTag();
        writeWordStart();
        this.bout.write(formatDouble(d));
    }

    @Override // gnu.lists.PrintConsumer, gnu.lists.Consumer
    public void writeFloat(float f) {
        closeTag();
        writeWordStart();
        this.bout.write(formatFloat(f));
    }

    @Override // gnu.lists.PrintConsumer
    public void endNumber() {
        writeWordEnd();
    }

    public void closeTag() {
        if (this.d && !this.c) {
            if (this.printIndent >= 0 && this.indentAttributes) {
                endLogicalBlock("");
            }
            this.bout.write(62);
            this.d = false;
            this.o = -3;
            return;
        }
        if (this.f) {
            this.bout.write("<?xml version=\"1.0\"?>\n");
            if (this.printIndent >= 0) {
                startLogicalBlock("", "", 2);
            }
            this.f = false;
            this.o = 62;
        }
    }

    public final void c() {
        Object obj = indentLoc.get(null);
        String string = obj != null ? obj.toString() : null;
        if (string == null) {
            this.printIndent = -1;
            return;
        }
        if (string.equals("pretty")) {
            this.printIndent = 0;
        } else if (string.equals("always") || string.equals("yes")) {
            this.printIndent = 1;
        } else {
            this.printIndent = -1;
        }
    }

    @Override // gnu.lists.PrintConsumer, gnu.lists.Consumer
    public void startDocument() {
        if (this.f5519a) {
            this.f = true;
        }
        c();
        this.f5520b = true;
        if (this.printIndent < 0 || this.f) {
            return;
        }
        startLogicalBlock("", "", 2);
    }

    @Override // gnu.lists.PrintConsumer, gnu.lists.Consumer
    public void endDocument() {
        this.f5520b = false;
        if (this.printIndent >= 0) {
            endLogicalBlock("");
        }
        freshLine();
    }

    public void writeQName(Object obj) {
        if (obj instanceof Symbol) {
            Symbol symbol = (Symbol) obj;
            String prefix = symbol.getPrefix();
            if (prefix != null && prefix.length() > 0) {
                this.bout.write(prefix);
                this.bout.write(58);
            }
            this.bout.write(symbol.getLocalPart());
            return;
        }
        this.bout.write(obj == null ? "{null name}" : (String) obj);
    }

    @Override // gnu.mapping.OutPort, gnu.lists.PrintConsumer, gnu.lists.Consumer
    public void startElement(Object obj) throws IOException {
        boolean z;
        closeTag();
        if (this.n == 0) {
            if (!this.f5520b) {
                c();
            }
            if (this.o == -7) {
                write(10);
            }
            Object obj2 = doctypeSystem.get(null);
            if (obj2 != null) {
                String string = obj2.toString();
                if (string.length() > 0) {
                    Object obj3 = doctypePublic.get(null);
                    this.bout.write("<!DOCTYPE ");
                    this.bout.write(obj.toString());
                    String string2 = obj3 != null ? obj3.toString() : null;
                    if (string2 != null && string2.length() > 0) {
                        this.bout.write(" PUBLIC \"");
                        this.bout.write(string2);
                        this.bout.write("\" \"");
                    } else {
                        this.bout.write(" SYSTEM \"");
                    }
                    this.bout.write(string);
                    this.bout.write("\">");
                    println();
                }
            }
        }
        int i = this.printIndent;
        if (i >= 0) {
            int i2 = this.o;
            if (i2 == -3 || i2 == -4 || i2 == -5) {
                writeBreak(i > 0 ? 82 : 78);
            }
            startLogicalBlock("", "", 2);
        }
        this.bout.write(60);
        writeQName(obj);
        if (this.printIndent >= 0 && this.indentAttributes) {
            startLogicalBlock("", "", 2);
        }
        Object[] objArr = this.m;
        int i3 = this.n;
        objArr[i3] = obj;
        NamespaceBinding[] namespaceBindingArr = this.l;
        this.n = i3 + 1;
        NamespaceBinding namespaceBinding = this.k;
        namespaceBindingArr[i3] = namespaceBinding;
        if (obj instanceof XName) {
            NamespaceBinding namespaceBinding2 = ((XName) obj).f5522a;
            NamespaceBinding namespaceBindingCommonAncestor = NamespaceBinding.commonAncestor(namespaceBinding2, namespaceBinding);
            NamespaceBinding[] namespaceBindingArr2 = new NamespaceBinding[namespaceBinding2 == null ? 0 : namespaceBinding2.count(namespaceBindingCommonAncestor)];
            int i4 = 0;
            for (NamespaceBinding namespaceBinding3 = namespaceBinding2; namespaceBinding3 != namespaceBindingCommonAncestor; namespaceBinding3 = namespaceBinding3.c) {
                namespaceBinding3.getUri();
                String prefix = namespaceBinding3.getPrefix();
                int i5 = i4;
                while (true) {
                    int i6 = i5 - 1;
                    z = this.f5521g;
                    if (i6 < 0) {
                        break;
                    }
                    NamespaceBinding namespaceBinding4 = namespaceBindingArr2[i6];
                    String prefix2 = namespaceBinding4.getPrefix();
                    if (prefix != prefix2) {
                        if (z) {
                            if (prefix == null || (prefix2 != null && prefix.compareTo(prefix2) <= 0)) {
                                break;
                            } else {
                                namespaceBindingArr2[i5] = namespaceBinding4;
                            }
                        }
                        i5 = i6;
                    }
                }
                if (!z) {
                    i5 = i4;
                }
                namespaceBindingArr2[i5] = namespaceBinding3;
                i4++;
            }
            while (true) {
                i4--;
                if (i4 < 0) {
                    break;
                }
                NamespaceBinding namespaceBinding5 = namespaceBindingArr2[i4];
                String str = namespaceBinding5.f5512a;
                String str2 = namespaceBinding5.f5513b;
                if (str2 != this.k.resolve(str) && (str2 != null || str == null)) {
                    this.bout.write(32);
                    if (str == null) {
                        this.bout.write("xmlns");
                    } else {
                        this.bout.write("xmlns:");
                        this.bout.write(str);
                    }
                    this.bout.write("=\"");
                    this.c = true;
                    if (str2 != null) {
                        write(str2);
                    }
                    this.c = false;
                    this.bout.write(34);
                }
            }
            this.k = namespaceBinding2;
        }
        int i7 = this.n;
        NamespaceBinding[] namespaceBindingArr3 = this.l;
        if (i7 >= namespaceBindingArr3.length) {
            NamespaceBinding[] namespaceBindingArr4 = new NamespaceBinding[i7 * 2];
            System.arraycopy(namespaceBindingArr3, 0, namespaceBindingArr4, 0, i7);
            this.l = namespaceBindingArr4;
            int i8 = this.n;
            Object[] objArr2 = new Object[i8 * 2];
            System.arraycopy(this.m, 0, objArr2, 0, i8);
            this.m = objArr2;
        }
        this.d = true;
        String htmlTag = getHtmlTag(obj);
        if ("script".equals(htmlTag) || "style".equals(htmlTag)) {
            this.escapeText = false;
        }
    }

    public static boolean isHtmlEmptyElementTag(String str) {
        int iIndexOf = "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/".indexOf(str);
        return iIndexOf > 0 && "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/".charAt(iIndexOf + (-1)) == '/' && "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/".charAt(str.length() + iIndexOf) == '/';
    }

    public String getHtmlTag(Object obj) {
        if (obj instanceof Symbol) {
            Symbol symbol = (Symbol) obj;
            String namespaceURI = symbol.getNamespaceURI();
            if (namespaceURI == "http://www.w3.org/1999/xhtml" || (this.i && namespaceURI == "")) {
                return symbol.getLocalPart();
            }
            return null;
        }
        if (this.i) {
            return obj.toString();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0062  */
    @Override // gnu.mapping.OutPort, gnu.lists.PrintConsumer, gnu.lists.Consumer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void endElement() {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xml.XMLPrinter.endElement():void");
    }

    @Override // gnu.mapping.OutPort, gnu.lists.PrintConsumer, gnu.lists.Consumer
    public void startAttribute(Object obj) {
        if (!this.d && this.strict) {
            error("attribute not in element", "SENR0001");
        }
        if (this.c) {
            this.bout.write(34);
        }
        this.c = true;
        this.bout.write(32);
        if (this.printIndent >= 0) {
            writeBreakFill();
        }
        this.bout.write(obj.toString());
        this.bout.write("=\"");
        this.o = 32;
    }

    @Override // gnu.mapping.OutPort, gnu.lists.PrintConsumer, gnu.lists.Consumer
    public void endAttribute() {
        if (this.c) {
            if (this.o != -6) {
                this.bout.write(34);
                this.c = false;
            }
            this.o = 32;
        }
    }

    public static String formatDouble(double d) {
        if (Double.isNaN(d)) {
            return "NaN";
        }
        boolean z = d < 0.0d;
        if (Double.isInfinite(d)) {
            return z ? "-INF" : "INF";
        }
        double d2 = z ? -d : d;
        String string = Double.toString(d);
        if ((d2 >= 1000000.0d || d2 < 1.0E-6d) && d2 != 0.0d) {
            return RealNum.toStringScientific(string);
        }
        return a(RealNum.toStringDecimal(string));
    }

    public static String formatFloat(float f) {
        if (Float.isNaN(f)) {
            return "NaN";
        }
        boolean z = f < 0.0f;
        if (Float.isInfinite(f)) {
            return z ? "-INF" : "INF";
        }
        float f2 = z ? -f : f;
        String string = Float.toString(f);
        if ((f2 >= 1000000.0f || f2 < 1.0E-6d) && f2 != 0.0d) {
            return RealNum.toStringScientific(string);
        }
        return a(RealNum.toStringDecimal(string));
    }

    public static String formatDecimal(BigDecimal bigDecimal) {
        return a(bigDecimal.toPlainString());
    }

    public static String a(String str) {
        int i;
        char cCharAt;
        if (str.indexOf(46) >= 0) {
            int length = str.length();
            int i2 = length;
            while (true) {
                i = i2 - 1;
                cCharAt = str.charAt(i);
                if (cCharAt != '0') {
                    break;
                }
                i2 = i;
            }
            if (cCharAt == '.') {
                i2 = i;
            }
            if (i2 != length) {
                return str.substring(0, i2);
            }
        }
        return str;
    }

    @Override // gnu.mapping.OutPort, java.io.PrintWriter
    public void print(Object obj) throws IOException {
        if (obj instanceof BigDecimal) {
            obj = formatDecimal((BigDecimal) obj);
        } else if ((obj instanceof Double) || (obj instanceof DFloNum)) {
            obj = formatDouble(((Number) obj).doubleValue());
        } else if (obj instanceof Float) {
            obj = formatFloat(((Float) obj).floatValue());
        }
        write(obj == null ? "(null)" : obj.toString());
    }

    @Override // gnu.lists.PrintConsumer, gnu.lists.Consumer
    public void writeObject(Object obj) throws IOException {
        if (obj instanceof SeqPosition) {
            this.bout.clearWordEnd();
            SeqPosition seqPosition = (SeqPosition) obj;
            seqPosition.sequence.consumeNext(seqPosition.ipos, this);
            if (seqPosition.sequence instanceof NodeTree) {
                this.o = 45;
                return;
            }
            return;
        }
        if ((obj instanceof Consumable) && !(obj instanceof UnescapedData)) {
            ((Consumable) obj).consume(this);
            return;
        }
        if (obj instanceof Keyword) {
            startAttribute(((Keyword) obj).getName());
            this.o = -6;
            return;
        }
        closeTag();
        if (obj instanceof UnescapedData) {
            this.bout.clearWordEnd();
            this.bout.write(((UnescapedData) obj).getData());
            this.o = 45;
        } else {
            if (!(obj instanceof Char)) {
                closeTag();
                writeWordStart();
                this.o = 32;
                print(obj);
                writeWordEnd();
                this.o = -2;
                return;
            }
            Char.print(((Char) obj).intValue(), this);
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(String str, int i, int i2) {
        int i3;
        if (i2 > 0) {
            closeTag();
            int i4 = i2 + i;
            int i5 = 0;
            while (i < i4) {
                int i6 = i + 1;
                char cCharAt = str.charAt(i);
                if (b(cCharAt) || ((i3 = this.e) <= 0 ? cCharAt == '<' || cCharAt == '>' || cCharAt == '&' || (this.c && (cCharAt == '\"' || cCharAt < ' ')) : cCharAt == '-' || i3 == 2)) {
                    if (i5 > 0) {
                        this.bout.write(str, i - i5, i5);
                    }
                    write(cCharAt);
                    i5 = 0;
                } else {
                    i5++;
                }
                i = i6;
            }
            if (i5 > 0) {
                this.bout.write(str, i4 - i5, i5);
            }
        }
        this.o = 45;
    }

    @Override // java.io.PrintWriter, java.io.Writer, gnu.lists.Consumer
    public void write(char[] cArr, int i, int i2) {
        int i3;
        if (i2 > 0) {
            closeTag();
            int i4 = i2 + i;
            int i5 = 0;
            while (i < i4) {
                int i6 = i + 1;
                char c = cArr[i];
                if (b(c) || ((i3 = this.e) <= 0 ? c == '<' || c == '>' || c == '&' || (this.c && (c == '\"' || c < ' ')) : c == '-' || i3 == 2)) {
                    if (i5 > 0) {
                        this.bout.write(cArr, i - i5, i5);
                    }
                    write(c);
                    i5 = 0;
                } else {
                    i5++;
                }
                i = i6;
            }
            if (i5 > 0) {
                this.bout.write(cArr, i4 - i5, i5);
            }
        }
        this.o = 45;
    }

    @Override // gnu.lists.PositionConsumer
    public void writePosition(AbstractSequence abstractSequence, int i) {
        abstractSequence.consumeNext(i, this);
    }

    public void beginComment() {
        int i;
        closeTag();
        int i2 = this.printIndent;
        if (i2 >= 0 && ((i = this.o) == -3 || i == -4 || i == -5)) {
            writeBreak(i2 > 0 ? 82 : 78);
        }
        this.bout.write("<!--");
        this.e = 1;
    }

    public void endComment() {
        this.bout.write("-->");
        this.o = -5;
        this.e = 0;
    }

    public void writeComment(String str) throws IOException {
        beginComment();
        write(str);
        endComment();
    }

    @Override // gnu.lists.XConsumer
    public void writeComment(char[] cArr, int i, int i2) {
        beginComment();
        write(cArr, i, i2);
        endComment();
    }

    @Override // gnu.lists.XConsumer
    public void writeCDATA(char[] cArr, int i, int i2) throws IOException {
        if (this.canonicalizeCDATA) {
            write(cArr, i, i2);
            return;
        }
        closeTag();
        this.bout.write("<![CDATA[");
        int i3 = i + i2;
        int i4 = i2;
        int i5 = i;
        while (i < i3 - 2) {
            if (cArr[i] == ']' && cArr[i + 1] == ']') {
                int i6 = i + 2;
                if (cArr[i6] == '>') {
                    if (i > i5) {
                        this.bout.write(cArr, i5, i - i5);
                    }
                    print("]]]><![CDATA[]>");
                    int i7 = i + 3;
                    i4 = i3 - i7;
                    i5 = i7;
                    i = i6;
                }
            }
            i++;
        }
        this.bout.write(cArr, i5, i4);
        this.bout.write("]]>");
        this.o = 62;
    }

    @Override // gnu.lists.XConsumer
    public void writeProcessingInstruction(String str, char[] cArr, int i, int i2) throws IOException {
        if ("xml".equals(str)) {
            this.f = false;
        }
        closeTag();
        this.bout.write("<?");
        print(str);
        print(' ');
        this.bout.write(cArr, i, i2);
        this.bout.write("?>");
        this.o = -7;
    }

    @Override // gnu.lists.PositionConsumer
    public void consume(SeqPosition seqPosition) {
        seqPosition.sequence.consumeNext(seqPosition.ipos, this);
    }

    public void error(String str, String str2) {
        throw new RuntimeException("serialization error: " + str + " [" + str2 + ']');
    }
}
