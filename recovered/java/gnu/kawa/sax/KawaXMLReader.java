package gnu.kawa.sax;

import gnu.text.LineBufferedReader;
import gnu.text.SourceMessages;
import gnu.xml.XMLFilter;
import gnu.xml.XMLParser;
import java.io.IOException;
import java.io.Reader;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLReader;

/* loaded from: classes2.dex */
public class KawaXMLReader extends ContentConsumer implements XMLReader {
    ErrorHandler errorHandler;

    @Override // org.xml.sax.XMLReader
    public DTDHandler getDTDHandler() {
        return null;
    }

    @Override // org.xml.sax.XMLReader
    public EntityResolver getEntityResolver() {
        return null;
    }

    @Override // org.xml.sax.XMLReader
    public boolean getFeature(String str) {
        return false;
    }

    @Override // org.xml.sax.XMLReader
    public Object getProperty(String str) {
        return null;
    }

    @Override // org.xml.sax.XMLReader
    public void parse(String str) {
    }

    @Override // org.xml.sax.XMLReader
    public void setDTDHandler(DTDHandler dTDHandler) {
    }

    @Override // org.xml.sax.XMLReader
    public void setEntityResolver(EntityResolver entityResolver) {
    }

    @Override // org.xml.sax.XMLReader
    public void setFeature(String str, boolean z) {
    }

    @Override // org.xml.sax.XMLReader
    public void setProperty(String str, Object obj) {
    }

    @Override // org.xml.sax.XMLReader
    public void setErrorHandler(ErrorHandler errorHandler) {
        this.errorHandler = errorHandler;
    }

    @Override // org.xml.sax.XMLReader
    public ErrorHandler getErrorHandler() {
        return this.errorHandler;
    }

    @Override // org.xml.sax.XMLReader
    public void parse(InputSource inputSource) throws SAXException, IOException {
        Reader characterStream = inputSource.getCharacterStream();
        if (characterStream == null) {
            characterStream = XMLParser.XMLStreamReader(inputSource.getByteStream());
        }
        SourceMessages sourceMessages = new SourceMessages();
        XMLFilter xMLFilter = new XMLFilter(this);
        LineBufferedReader lineBufferedReader = new LineBufferedReader(characterStream);
        xMLFilter.setSourceLocator(lineBufferedReader);
        getContentHandler().setDocumentLocator(xMLFilter);
        XMLParser.parse(lineBufferedReader, sourceMessages, xMLFilter);
        String string = sourceMessages.toString(20);
        if (string != null) {
            throw new SAXParseException(string, xMLFilter);
        }
    }
}
