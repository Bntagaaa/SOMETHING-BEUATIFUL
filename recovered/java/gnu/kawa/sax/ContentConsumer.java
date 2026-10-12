package gnu.kawa.sax;

import gnu.lists.Consumable;
import gnu.lists.Consumer;
import gnu.lists.SeqPosition;
import gnu.mapping.Symbol;
import gnu.text.Char;
import gnu.xml.XName;
import okio.Utf8;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.AttributesImpl;

/* loaded from: classes2.dex */
public class ContentConsumer implements Consumer {
    String attrLocalName;
    String attrQName;
    String attrURI;
    AttributesImpl attributes;
    char[] chBuffer;
    int inStartTag;
    String[] names;
    int nesting;
    ContentHandler out;
    StringBuilder strBuffer;

    @Override // gnu.lists.Consumer
    public boolean ignoring() {
        return false;
    }

    public ContentConsumer() {
        this.nesting = 0;
        this.names = new String[15];
        this.attributes = new AttributesImpl();
        this.strBuffer = new StringBuilder(200);
    }

    public ContentConsumer(ContentHandler contentHandler) {
        this.nesting = 0;
        this.names = new String[15];
        this.attributes = new AttributesImpl();
        this.strBuffer = new StringBuilder(200);
        this.out = contentHandler;
    }

    public void error(String str, SAXException sAXException) {
        throw new RuntimeException("caught " + sAXException + " in " + str);
    }

    public void endStartTag() throws SAXException {
        if (this.inStartTag != 1) {
            return;
        }
        int i = (this.nesting - 1) * 3;
        try {
            ContentHandler contentHandler = this.out;
            String[] strArr = this.names;
            contentHandler.startElement(strArr[i], strArr[i + 1], strArr[i + 2], this.attributes);
        } catch (SAXException e) {
            error("startElement", e);
        }
        this.attributes.clear();
        this.inStartTag = 0;
    }

    @Override // gnu.lists.Consumer
    public void startElement(Object obj) throws SAXException {
        String string;
        String namespaceURI;
        if (this.inStartTag == 1) {
            endStartTag();
        }
        flushStrBuffer();
        int i = this.nesting;
        int i2 = i * 3;
        String[] strArr = this.names;
        if (i2 >= strArr.length) {
            String[] strArr2 = new String[i * 6];
            System.arraycopy(strArr, 0, strArr2, 0, i2);
            this.names = strArr2;
        }
        if (obj instanceof Symbol) {
            Symbol symbol = (Symbol) obj;
            namespaceURI = symbol.getNamespaceURI();
            string = symbol.getLocalName();
        } else if (obj instanceof XName) {
            XName xName = (XName) obj;
            namespaceURI = xName.getNamespaceURI();
            string = xName.getLocalName();
        } else {
            string = obj.toString();
            namespaceURI = "";
        }
        String[] strArr3 = this.names;
        strArr3[i2] = namespaceURI;
        strArr3[i2 + 1] = string;
        strArr3[i2 + 2] = obj.toString();
        this.inStartTag = 1;
        this.nesting++;
    }

    @Override // gnu.lists.Consumer
    public void startAttribute(Object obj) {
        Symbol symbol = (Symbol) obj;
        this.attrURI = symbol.getNamespaceURI();
        this.attrLocalName = symbol.getLocalName();
        this.attrQName = obj.toString();
        this.inStartTag = 2;
    }

    @Override // gnu.lists.Consumer
    public void endAttribute() {
        this.attributes.addAttribute(this.attrURI, this.attrLocalName, this.attrQName, "CDATA", this.strBuffer.toString());
        this.strBuffer.setLength(0);
        this.inStartTag = 1;
    }

    @Override // gnu.lists.Consumer
    public void startDocument() throws SAXException {
        try {
            this.out.startDocument();
        } catch (SAXException e) {
            error("startDocument", e);
        }
    }

    @Override // gnu.lists.Consumer
    public void endDocument() throws SAXException {
        try {
            this.out.endDocument();
        } catch (SAXException e) {
            error("endDocument", e);
        }
    }

    @Override // gnu.lists.Consumer
    public void endElement() throws SAXException {
        endStartTag();
        flushStrBuffer();
        int i = this.nesting - 1;
        this.nesting = i;
        int i2 = i * 3;
        try {
            ContentHandler contentHandler = this.out;
            String[] strArr = this.names;
            contentHandler.endElement(strArr[i2], strArr[i2 + 1], strArr[i2 + 2]);
        } catch (SAXException e) {
            error("endElement", e);
        }
        String[] strArr2 = this.names;
        strArr2[i2] = null;
        strArr2[i2 + 1] = null;
        strArr2[i2 + 2] = null;
    }

    public void flushStrBuffer() throws SAXException {
        if (this.strBuffer.length() <= 0) {
            return;
        }
        if (this.chBuffer == null) {
            this.chBuffer = new char[200];
        }
        try {
            int length = this.strBuffer.length();
            int i = 0;
            while (true) {
                int length2 = length - i;
                if (length2 > 0) {
                    char[] cArr = this.chBuffer;
                    if (length2 > cArr.length) {
                        length2 = cArr.length;
                    }
                    int i2 = i + length2;
                    this.strBuffer.getChars(i, i2, cArr, i);
                    this.out.characters(this.chBuffer, 0, length2);
                    i = i2;
                } else {
                    this.strBuffer.setLength(0);
                    return;
                }
            }
        } catch (SAXException e) {
            error("characters", e);
        }
    }

    @Override // gnu.lists.Consumer
    public void write(char[] cArr, int i, int i2) throws SAXException {
        if (this.inStartTag == 1) {
            endStartTag();
        }
        if (this.inStartTag == 2) {
            this.strBuffer.append(cArr, i, i2);
            return;
        }
        flushStrBuffer();
        try {
            this.out.characters(cArr, i, i2);
        } catch (SAXException e) {
            error("characters", e);
        }
    }

    @Override // gnu.lists.Consumer
    public void write(int i) throws SAXException {
        if (this.inStartTag == 1) {
            endStartTag();
        }
        if (i >= 65536) {
            this.strBuffer.append((char) (((i - 65536) >> 10) + 55296));
            i = (i & 1023) + Utf8.LOG_SURROGATE_HEADER;
        }
        this.strBuffer.append((char) i);
    }

    @Override // gnu.lists.Consumer
    public void write(String str) throws SAXException {
        if (this.inStartTag == 1) {
            endStartTag();
        }
        this.strBuffer.append(str);
    }

    @Override // gnu.lists.Consumer
    public void write(CharSequence charSequence, int i, int i2) throws SAXException {
        if (this.inStartTag == 1) {
            endStartTag();
        }
        this.strBuffer.append(charSequence, i, i2);
    }

    @Override // java.lang.Appendable
    public ContentConsumer append(char c) throws SAXException {
        write(c);
        return this;
    }

    @Override // java.lang.Appendable
    public ContentConsumer append(CharSequence charSequence) throws SAXException {
        if (charSequence == null) {
            charSequence = "null";
        }
        write(charSequence, 0, charSequence.length());
        return this;
    }

    @Override // java.lang.Appendable
    public ContentConsumer append(CharSequence charSequence, int i, int i2) throws SAXException {
        if (charSequence == null) {
            charSequence = "null";
        }
        write(charSequence, i, i2);
        return this;
    }

    @Override // gnu.lists.Consumer
    public void writeObject(Object obj) throws SAXException {
        if (obj instanceof Consumable) {
            ((Consumable) obj).consume(this);
            return;
        }
        if (obj instanceof SeqPosition) {
            SeqPosition seqPosition = (SeqPosition) obj;
            seqPosition.sequence.consumeNext(seqPosition.ipos, this);
        } else if (obj instanceof Char) {
            ((Char) obj).print(this);
        } else {
            write(obj == null ? "(null)" : obj.toString());
        }
    }

    @Override // gnu.lists.Consumer
    public void writeBoolean(boolean z) throws SAXException {
        if (this.inStartTag == 1) {
            endStartTag();
        }
        this.strBuffer.append(z);
    }

    @Override // gnu.lists.Consumer
    public void writeLong(long j) throws SAXException {
        if (this.inStartTag == 1) {
            endStartTag();
        }
        this.strBuffer.append(j);
    }

    @Override // gnu.lists.Consumer
    public void writeInt(int i) throws SAXException {
        if (this.inStartTag == 1) {
            endStartTag();
        }
        this.strBuffer.append(i);
    }

    @Override // gnu.lists.Consumer
    public void writeFloat(float f) throws SAXException {
        if (this.inStartTag == 1) {
            endStartTag();
        }
        this.strBuffer.append(f);
    }

    @Override // gnu.lists.Consumer
    public void writeDouble(double d) throws SAXException {
        if (this.inStartTag == 1) {
            endStartTag();
        }
        this.strBuffer.append(d);
    }

    public void finalize() throws SAXException {
        flushStrBuffer();
    }

    public void setContentHandler(ContentHandler contentHandler) {
        this.out = contentHandler;
    }

    public ContentHandler getContentHandler() {
        return this.out;
    }
}
