package gnu.kawa.xml;

import com.google.appinventor.components.runtime.util.NanoHTTPD;
import gnu.lists.Consumable;
import gnu.lists.Consumer;
import gnu.lists.FilterConsumer;
import gnu.lists.UnescapedData;
import gnu.mapping.OutPort;
import gnu.mapping.Symbol;
import gnu.xml.XMLPrinter;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Vector;

/* loaded from: classes2.dex */
public class HttpPrinter extends FilterConsumer {
    Object currentHeader;
    private int elementNesting;
    Vector headers;
    protected OutputStream ostream;
    protected String sawContentType;
    StringBuilder sbuf;
    private int seenStartDocument;
    boolean seenXmlHeader;
    OutPort writer;

    public HttpPrinter(OutputStream outputStream) {
        super(null);
        this.headers = new Vector();
        this.sbuf = new StringBuilder(100);
        this.ostream = outputStream;
    }

    public HttpPrinter(OutPort outPort) {
        super(null);
        this.headers = new Vector();
        this.sbuf = new StringBuilder(100);
        this.writer = outPort;
    }

    public static HttpPrinter make(OutPort outPort) {
        return new HttpPrinter(outPort);
    }

    private void writeRaw(String str) throws IOException {
        OutPort outPort = this.writer;
        if (outPort != null) {
            outPort.write(str);
            return;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            this.ostream.write((byte) str.charAt(i));
        }
    }

    @Override // gnu.lists.FilterConsumer
    public void beforeNode() {
        if (this.sawContentType == null) {
            addHeader("Content-type", NanoHTTPD.MIME_XML);
        }
        beginData();
    }

    public void printHeader(String str, String str2) throws IOException {
        writeRaw(str);
        writeRaw(": ");
        writeRaw(str2);
        writeRaw("\n");
    }

    public void printHeaders() throws IOException {
        int size = this.headers.size();
        for (int i = 0; i < size; i += 2) {
            printHeader(this.headers.elementAt(i).toString(), this.headers.elementAt(i + 1).toString());
        }
        writeRaw("\n");
    }

    public void addHeader(String str, String str2) {
        if (str.equalsIgnoreCase("Content-type")) {
            this.sawContentType = str2;
        }
        this.headers.addElement(str);
        this.headers.addElement(str2);
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void startAttribute(Object obj) {
        Consumer consumer = this.base;
        if (consumer == null) {
            this.currentHeader = obj;
        } else {
            consumer.startAttribute(obj);
        }
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void endAttribute() {
        Object obj = this.currentHeader;
        if (obj != null) {
            addHeader(obj.toString(), this.sbuf.toString());
            this.sbuf.setLength(0);
            this.currentHeader = null;
            return;
        }
        this.base.endAttribute();
    }

    public void beginData() {
        String str;
        if (this.base == null) {
            if (this.sawContentType == null) {
                addHeader("Content-type", NanoHTTPD.MIME_PLAINTEXT);
            }
            if (this.writer == null) {
                this.writer = new OutPort(this.ostream);
            }
            if (NanoHTTPD.MIME_HTML.equalsIgnoreCase(this.sawContentType)) {
                str = "html";
            } else if ("application/xhtml+xml".equalsIgnoreCase(this.sawContentType)) {
                str = "xhtml";
            } else {
                str = NanoHTTPD.MIME_PLAINTEXT.equalsIgnoreCase(this.sawContentType) ? "plain" : null;
            }
            XMLPrinter xMLPrinterMake = XMLPrinter.make(this.writer, str);
            this.base = xMLPrinterMake;
            if (this.seenStartDocument == 0) {
                xMLPrinterMake.startDocument();
                this.seenStartDocument = 1;
            }
            try {
                printHeaders();
            } catch (Throwable th) {
                throw new RuntimeException(th.toString());
            }
        }
        append((CharSequence) this.sbuf);
        this.sbuf.setLength(0);
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void startElement(Object obj) {
        String str;
        if (this.sawContentType == null) {
            if (!this.seenXmlHeader) {
                str = NanoHTTPD.MIME_HTML;
            } else if ((obj instanceof Symbol) && "html".equals(((Symbol) obj).getLocalPart())) {
                str = "text/xhtml";
            } else {
                str = NanoHTTPD.MIME_XML;
            }
            addHeader("Content-type", str);
        }
        beginData();
        this.base.startElement(obj);
        this.elementNesting++;
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void endElement() {
        super.endElement();
        int i = this.elementNesting - 1;
        this.elementNesting = i;
        if (i == 0 && this.seenStartDocument == 1) {
            endDocument();
        }
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void writeObject(Object obj) {
        if ((obj instanceof Consumable) && !(obj instanceof UnescapedData)) {
            ((Consumable) obj).consume(this);
        } else {
            beginData();
            super.writeObject(obj);
        }
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void write(CharSequence charSequence, int i, int i2) {
        Consumer consumer = this.base;
        if (consumer == null) {
            this.sbuf.append(charSequence, i, i2 + i);
        } else {
            consumer.write(charSequence, i, i2);
        }
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void write(char[] cArr, int i, int i2) {
        Consumer consumer = this.base;
        if (consumer == null) {
            this.sbuf.append(cArr, i, i2);
        } else {
            consumer.write(cArr, i, i2);
        }
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void startDocument() {
        Consumer consumer = this.base;
        if (consumer != null) {
            consumer.startDocument();
        }
        this.seenStartDocument = 2;
    }

    @Override // gnu.lists.FilterConsumer, gnu.lists.Consumer
    public void endDocument() {
        Consumer consumer = this.base;
        if (consumer != null) {
            consumer.endDocument();
        }
        try {
            if (this.sawContentType == null) {
                addHeader("Content-type", NanoHTTPD.MIME_PLAINTEXT);
            }
            if (this.sbuf.length() > 0) {
                String string = this.sbuf.toString();
                this.sbuf.setLength(0);
                OutPort outPort = this.writer;
                if (outPort != null) {
                    outPort.write(string);
                } else {
                    this.ostream.write(string.getBytes());
                }
            }
            OutPort outPort2 = this.writer;
            if (outPort2 != null) {
                outPort2.close();
            }
            OutputStream outputStream = this.ostream;
            if (outputStream != null) {
                outputStream.flush();
            }
        } catch (Throwable unused) {
        }
    }

    public boolean reset(boolean z) {
        if (z) {
            this.headers.clear();
            this.sawContentType = null;
            this.currentHeader = null;
            this.elementNesting = 0;
        }
        this.sbuf.setLength(0);
        this.base = null;
        if (this.ostream == null) {
            return true;
        }
        boolean z2 = this.writer == null;
        this.writer = null;
        return z2;
    }
}
