package gnu.xml;

import gnu.lists.Consumer;
import gnu.text.LineBufferedReader;
import gnu.text.LineInputStreamReader;
import gnu.text.Path;
import gnu.text.SourceMessages;
import java.io.IOException;
import java.io.InputStream;
import org.xml.sax.SAXException;

/* loaded from: classes2.dex */
public class XMLParser {
    public static void parse(Object obj, SourceMessages sourceMessages, Consumer consumer) throws SAXException, IOException {
        parse(Path.openInputStream(obj), obj, sourceMessages, consumer);
    }

    public static LineInputStreamReader XMLStreamReader(InputStream inputStream) throws IOException {
        LineInputStreamReader lineInputStreamReader = new LineInputStreamReader(inputStream);
        int i = lineInputStreamReader.getByte();
        int i2 = i < 0 ? -1 : lineInputStreamReader.getByte();
        int i3 = i2 < 0 ? -1 : lineInputStreamReader.getByte();
        if (i == 239 && i2 == 187 && i3 == 191) {
            lineInputStreamReader.resetStart(3);
            lineInputStreamReader.setCharset("UTF-8");
        } else if (i == 255 && i2 == 254 && i3 != 0) {
            lineInputStreamReader.resetStart(2);
            lineInputStreamReader.setCharset("UTF-16LE");
        } else if (i == 254 && i2 == 255 && i3 != 0) {
            lineInputStreamReader.resetStart(2);
            lineInputStreamReader.setCharset("UTF-16BE");
        } else {
            int i4 = i3 >= 0 ? lineInputStreamReader.getByte() : -1;
            if (i == 76 && i2 == 111 && i3 == 167 && i4 == 148) {
                throw new RuntimeException("XMLParser: EBCDIC encodings not supported");
            }
            lineInputStreamReader.resetStart(0);
            if ((i == 60 && ((i2 == 63 && i3 == 120 && i4 == 109) || (i2 == 0 && i3 == 63 && i4 == 0))) || (i == 0 && i2 == 60 && i3 == 0 && i4 == 63)) {
                char[] cArr = lineInputStreamReader.buffer;
                if (cArr == null) {
                    cArr = new char[8192];
                    lineInputStreamReader.buffer = cArr;
                }
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    int i7 = lineInputStreamReader.getByte();
                    if (i7 != 0) {
                        if (i7 < 0) {
                            break;
                        }
                        int i8 = i5 + 1;
                        cArr[i5] = (char) (i7 & 255);
                        if (i6 == 0) {
                            if (i7 == 62) {
                                i5 = i8;
                                break;
                            }
                            if (i7 == 39 || i7 == 34) {
                                i6 = i7;
                            }
                        } else if (i7 == i6) {
                            i6 = 0;
                        }
                        i5 = i8;
                    }
                }
                lineInputStreamReader.pos = 0;
                lineInputStreamReader.limit = i5;
            } else {
                lineInputStreamReader.setCharset("UTF-8");
            }
        }
        lineInputStreamReader.setKeepFullLines(false);
        return lineInputStreamReader;
    }

    public static void parse(InputStream inputStream, Object obj, SourceMessages sourceMessages, Consumer consumer) throws SAXException, IOException {
        LineInputStreamReader lineInputStreamReaderXMLStreamReader = XMLStreamReader(inputStream);
        if (obj != null) {
            lineInputStreamReaderXMLStreamReader.setName(obj);
        }
        parse((LineBufferedReader) lineInputStreamReaderXMLStreamReader, sourceMessages, consumer);
        lineInputStreamReaderXMLStreamReader.close();
    }

    public static void parse(LineBufferedReader lineBufferedReader, SourceMessages sourceMessages, Consumer consumer) throws SAXException, IOException {
        XMLFilter xMLFilter = new XMLFilter(consumer);
        xMLFilter.setMessages(sourceMessages);
        xMLFilter.setSourceLocator(lineBufferedReader);
        xMLFilter.startDocument();
        Path path = lineBufferedReader.getPath();
        if (path != null) {
            xMLFilter.writeDocumentUri(path);
        }
        parse(lineBufferedReader, xMLFilter);
        xMLFilter.endDocument();
    }

    public static void parse(LineBufferedReader lineBufferedReader, SourceMessages sourceMessages, XMLFilter xMLFilter) throws SAXException, IOException {
        xMLFilter.setMessages(sourceMessages);
        xMLFilter.setSourceLocator(lineBufferedReader);
        xMLFilter.startDocument();
        Path path = lineBufferedReader.getPath();
        if (path != null) {
            xMLFilter.writeDocumentUri(path);
        }
        parse(lineBufferedReader, xMLFilter);
        xMLFilter.endDocument();
        lineBufferedReader.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:245:0x031c, code lost:
    
        r15 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x0466, code lost:
    
        r6 = r4;
        r4 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:603:0x04d4, code lost:
    
        r7 = r3;
        r3 = '\'';
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0288 A[PHI: r3 r15
      0x0288: PHI (r3v59 char) = 
      (r3v58 char)
      (r3v58 char)
      (r3v58 char)
      (r3v58 char)
      (r3v58 char)
      (r3v58 char)
      (r3v58 char)
      (r3v58 char)
      (r3v58 char)
      (r3v86 char)
      (r3v86 char)
     binds: [B:147:0x01d8, B:149:0x01de, B:151:0x01e6, B:153:0x01ee, B:155:0x01f6, B:157:0x01fe, B:159:0x0206, B:161:0x020e, B:163:0x0214, B:750:0x0288, B:751:0x0288] A[DONT_GENERATE, DONT_INLINE]
      0x0288: PHI (r15v27 int) = 
      (r15v26 int)
      (r15v26 int)
      (r15v26 int)
      (r15v26 int)
      (r15v26 int)
      (r15v26 int)
      (r15v26 int)
      (r15v26 int)
      (r15v26 int)
      (r15v56 int)
      (r15v56 int)
     binds: [B:147:0x01d8, B:149:0x01de, B:151:0x01e6, B:153:0x01ee, B:155:0x01f6, B:157:0x01fe, B:159:0x0206, B:161:0x020e, B:163:0x0214, B:750:0x0288, B:751:0x0288] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x036e A[PHI: r3 r15
      0x036e: PHI (r3v60 char) = 
      (r3v59 char)
      (r3v59 char)
      (r3v59 char)
      (r3v59 char)
      (r3v59 char)
      (r3v59 char)
      (r3v59 char)
      (r3v59 char)
      (r3v59 char)
      (r3v59 char)
      (r3v59 char)
      (r3v71 char)
      (r3v71 char)
     binds: [B:201:0x028a, B:203:0x0290, B:205:0x0298, B:207:0x02a0, B:209:0x02a8, B:211:0x02b0, B:213:0x02b8, B:215:0x02c0, B:217:0x02c8, B:219:0x02d0, B:221:0x02d6, B:757:0x036e, B:758:0x036e] A[DONT_GENERATE, DONT_INLINE]
      0x036e: PHI (r15v28 int) = 
      (r15v27 int)
      (r15v27 int)
      (r15v27 int)
      (r15v27 int)
      (r15v27 int)
      (r15v27 int)
      (r15v27 int)
      (r15v27 int)
      (r15v27 int)
      (r15v27 int)
      (r15v27 int)
      (r15v40 int)
      (r15v40 int)
     binds: [B:201:0x028a, B:203:0x0290, B:205:0x0298, B:207:0x02a0, B:209:0x02a8, B:211:0x02b0, B:213:0x02b8, B:215:0x02c0, B:217:0x02c8, B:219:0x02d0, B:221:0x02d6, B:757:0x036e, B:758:0x036e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:578:0x07e3  */
    /* JADX WARN: Removed duplicated region for block: B:637:0x0370 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:647:0x07dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:682:0x0378 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void parse(gnu.text.LineBufferedReader r24, gnu.xml.XMLFilter r25) throws org.xml.sax.SAXException {
        /*
            Method dump skipped, instructions count: 2172
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xml.XMLParser.parse(gnu.text.LineBufferedReader, gnu.xml.XMLFilter):void");
    }
}
