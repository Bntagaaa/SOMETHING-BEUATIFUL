package com.google.appinventor.components.runtime.util;

import _COROUTINE.a;
import android.util.Log;
import com.google.appinventor.components.runtime.repackaged.org.json.HTTP;
import com.google.common.net.HttpHeaders;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.TimeZone;
import java.util.Vector;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class NanoHTTPD {
    public static final String HTTP_BADREQUEST = "400 Bad Request";
    public static final String HTTP_FORBIDDEN = "403 Forbidden";
    public static final String HTTP_INTERNALERROR = "500 Internal Server Error";
    public static final String HTTP_NOTFOUND = "404 Not Found";
    public static final String HTTP_NOTIMPLEMENTED = "501 Not Implemented";
    public static final String HTTP_NOTMODIFIED = "304 Not Modified";
    public static final String HTTP_OK = "200 OK";
    public static final String HTTP_PARTIALCONTENT = "206 Partial Content";
    public static final String HTTP_RANGE_NOT_SATISFIABLE = "416 Requested Range Not Satisfiable";
    public static final String HTTP_REDIRECT = "301 Moved Permanently";
    private static final String LICENCE = "Copyright (C) 2001,2005-2011 by Jarno Elonen <elonen@iki.fi>\nand Copyright (C) 2010 by Konstantinos Togias <info@ktogias.gr>\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\nRedistributions of source code must retain the above copyright notice,\nthis list of conditions and the following disclaimer. Redistributions in\nbinary form must reproduce the above copyright notice, this list of\nconditions and the following disclaimer in the documentation and/or other\nmaterials provided with the distribution. The name of the author may not\nbe used to endorse or promote products derived from this software without\nspecific prior written permission. \n \nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR\nIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES\nOF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.\nIN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,\nINCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT\nNOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.";
    private static final String LOG_TAG = "AppInvHTTPD";
    public static final String MIME_DEFAULT_BINARY = "application/octet-stream";
    public static final String MIME_HTML = "text/html";
    public static final String MIME_PLAINTEXT = "text/plain";
    public static final String MIME_XML = "text/xml";
    private static final int REPL_STACK_SIZE = 262144;
    private static SimpleDateFormat gmtFrmt;
    protected static PrintStream myErr;
    protected static PrintStream myOut;
    private static int theBufferSize;
    private static Hashtable theMimeTypes = new Hashtable();
    private ThreadPoolExecutor myExecutor = new ThreadPoolExecutor(2, 10, 5, TimeUnit.SECONDS, new SynchronousQueue(), new myThreadFactory(this, 0));
    private File myRootDir;
    private final ServerSocket myServerSocket;
    private int myTcpPort;
    private Thread myThread;

    public Response serve(String str, String str2, Properties properties, Properties properties2, Properties properties3, Socket socket) {
        myOut.println(str2 + " '" + str + "' ");
        Enumeration<?> enumerationPropertyNames = properties.propertyNames();
        while (enumerationPropertyNames.hasMoreElements()) {
            String str3 = (String) enumerationPropertyNames.nextElement();
            myOut.println(a.k("  HDR: '", str3, "' = '", properties.getProperty(str3), "'"));
        }
        Enumeration<?> enumerationPropertyNames2 = properties2.propertyNames();
        while (enumerationPropertyNames2.hasMoreElements()) {
            String str4 = (String) enumerationPropertyNames2.nextElement();
            myOut.println(a.k("  PRM: '", str4, "' = '", properties2.getProperty(str4), "'"));
        }
        Enumeration<?> enumerationPropertyNames3 = properties3.propertyNames();
        while (enumerationPropertyNames3.hasMoreElements()) {
            String str5 = (String) enumerationPropertyNames3.nextElement();
            myOut.println(a.k("  UPLOADED: '", str5, "' = '", properties3.getProperty(str5), "'"));
        }
        return serveFile(str, properties, this.myRootDir, true);
    }

    public class Response {
        public InputStream data;
        public Properties header;
        public String mimeType;
        public String status;

        public Response() {
            this.header = new Properties();
            this.status = NanoHTTPD.HTTP_OK;
        }

        public Response(String str, String str2, InputStream inputStream) {
            this.header = new Properties();
            this.status = str;
            this.mimeType = str2;
            this.data = inputStream;
        }

        public Response(String str, String str2, String str3) {
            this.header = new Properties();
            this.status = str;
            this.mimeType = str2;
            try {
                this.data = new ByteArrayInputStream(str3.getBytes("UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }

        public void addHeader(String str, String str2) {
            this.header.put(str, str2);
        }
    }

    public NanoHTTPD(int i, File file) throws IOException {
        this.myTcpPort = i;
        this.myRootDir = file;
        this.myServerSocket = new ServerSocket(this.myTcpPort);
        Thread thread = new Thread(new Runnable() { // from class: com.google.appinventor.components.runtime.util.NanoHTTPD.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    try {
                        NanoHTTPD nanoHTTPD = NanoHTTPD.this;
                        nanoHTTPD.new HTTPSession(nanoHTTPD.myServerSocket.accept());
                    } catch (IOException unused) {
                        return;
                    }
                }
            }
        });
        this.myThread = thread;
        thread.setDaemon(true);
        this.myThread.start();
    }

    public void stop() throws InterruptedException, IOException {
        try {
            this.myServerSocket.close();
            this.myThread.join();
        } catch (IOException | InterruptedException unused) {
        }
    }

    public static void main(String[] strArr) throws NumberFormatException {
        myOut.println("NanoHTTPD 1.25 (C) 2001,2005-2011 Jarno Elonen and (C) 2010 Konstantinos Togias\n(Command line options: [-p port] [-d root-dir] [--licence])\n");
        File absoluteFile = new File(".").getAbsoluteFile();
        int i = 80;
        int i2 = 0;
        while (true) {
            if (i2 < strArr.length) {
                if (strArr[i2].equalsIgnoreCase("-p")) {
                    i = Integer.parseInt(strArr[i2 + 1]);
                } else if (strArr[i2].equalsIgnoreCase("-d")) {
                    absoluteFile = new File(strArr[i2 + 1]).getAbsoluteFile();
                } else if (strArr[i2].toLowerCase().endsWith("licence")) {
                    myOut.println("Copyright (C) 2001,2005-2011 by Jarno Elonen <elonen@iki.fi>\nand Copyright (C) 2010 by Konstantinos Togias <info@ktogias.gr>\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\nRedistributions of source code must retain the above copyright notice,\nthis list of conditions and the following disclaimer. Redistributions in\nbinary form must reproduce the above copyright notice, this list of\nconditions and the following disclaimer in the documentation and/or other\nmaterials provided with the distribution. The name of the author may not\nbe used to endorse or promote products derived from this software without\nspecific prior written permission. \n \nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR\nIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES\nOF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.\nIN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,\nINCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT\nNOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n");
                    break;
                }
                i2++;
            }
        }
        try {
            new NanoHTTPD(i, absoluteFile);
        } catch (IOException e) {
            myErr.println("Couldn't start server:\n" + e);
            System.exit(-1);
        }
        myOut.println("Now serving files in port " + i + " from \"" + absoluteFile + "\"");
        myOut.println("Hit Enter to stop.\n");
        try {
            System.in.read();
        } catch (Throwable unused) {
        }
    }

    public class myThreadFactory implements ThreadFactory {
        public /* synthetic */ myThreadFactory(NanoHTTPD nanoHTTPD, int i) {
            this();
        }

        private myThreadFactory() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(new ThreadGroup("biggerstack"), runnable, "HTTPD Session", 262144L);
            thread.setDaemon(true);
            return thread;
        }
    }

    public class HTTPSession implements Runnable {
        private Socket mySocket;

        public HTTPSession(Socket socket) {
            this.mySocket = socket;
            Log.d(NanoHTTPD.LOG_TAG, "NanoHTTPD: getPoolSize() = " + NanoHTTPD.this.myExecutor.getPoolSize());
            NanoHTTPD.this.myExecutor.execute(this);
        }

        @Override // java.lang.Runnable
        public void run() throws InterruptedException, IOException {
            byte[] bArr;
            int i;
            long j;
            long j2;
            boolean z;
            boolean z2;
            OutputStream byteArrayOutputStream;
            long j3;
            Properties properties;
            try {
                InputStream inputStream = this.mySocket.getInputStream();
                if (inputStream != null && (i = inputStream.read((bArr = new byte[8192]), 0, 8192)) > 0) {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr, 0, i)));
                    Properties properties2 = new Properties();
                    Properties properties3 = new Properties();
                    Properties properties4 = new Properties();
                    Properties properties5 = new Properties();
                    decodeHeader(bufferedReader, properties2, properties3, properties4);
                    String property = properties2.getProperty("method");
                    String property2 = properties2.getProperty("uri");
                    String property3 = properties4.getProperty("content-length");
                    if (property3 != null) {
                        try {
                            j = Integer.parseInt(property3);
                        } catch (NumberFormatException unused) {
                        }
                    } else {
                        j = Long.MAX_VALUE;
                    }
                    int i2 = 0;
                    while (true) {
                        if (i2 >= i) {
                            j2 = Long.MAX_VALUE;
                            z = false;
                            break;
                        }
                        j2 = Long.MAX_VALUE;
                        if (bArr[i2] == 13) {
                            int i3 = i2 + 1;
                            if (bArr[i3] == 10) {
                                int i4 = i2 + 2;
                                if (bArr[i4] == 13) {
                                    i2 += 3;
                                    if (bArr[i2] == 10) {
                                        z = true;
                                        break;
                                    }
                                } else {
                                    i2 = i4;
                                }
                            } else {
                                i2 = i3;
                            }
                        }
                        i2++;
                    }
                    int i5 = i2 + 1;
                    if (property.equalsIgnoreCase("PUT")) {
                        File fileCreateTempFile = File.createTempFile("upload", "bin");
                        fileCreateTempFile.deleteOnExit();
                        byteArrayOutputStream = new FileOutputStream(fileCreateTempFile);
                        z2 = z;
                        properties5.put("content", fileCreateTempFile.getAbsolutePath());
                    } else {
                        z2 = z;
                        byteArrayOutputStream = new ByteArrayOutputStream();
                    }
                    if (i5 < i) {
                        byteArrayOutputStream.write(bArr, i5, i - i5);
                    }
                    if (i5 < i) {
                        j3 = 0;
                        j -= (i - i5) + 1;
                    } else {
                        j3 = 0;
                        if (!z2 || j == j2) {
                            j = 0;
                        }
                    }
                    int i6 = 512;
                    byte[] bArr2 = new byte[512];
                    while (i >= 0 && j > j3) {
                        int i7 = inputStream.read(bArr2, 0, i6);
                        j -= i7;
                        if (i7 > 0) {
                            byteArrayOutputStream.write(bArr2, 0, i7);
                        }
                        i = i7;
                        i6 = 512;
                    }
                    if (property.equalsIgnoreCase("POST")) {
                        byte[] byteArray = ((ByteArrayOutputStream) byteArrayOutputStream).toByteArray();
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(byteArray)));
                        StringTokenizer stringTokenizer = new StringTokenizer(properties4.getProperty("content-type"), "; ");
                        String str = "";
                        if ((stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : "").equalsIgnoreCase("multipart/form-data")) {
                            if (!stringTokenizer.hasMoreTokens()) {
                                sendError(NanoHTTPD.HTTP_BADREQUEST, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html");
                            }
                            StringTokenizer stringTokenizer2 = new StringTokenizer(stringTokenizer.nextToken(), "=");
                            if (stringTokenizer2.countTokens() != 2) {
                                sendError(NanoHTTPD.HTTP_BADREQUEST, "BAD REQUEST: Content type is multipart/form-data but boundary syntax error. Usage: GET /example/file.html");
                            }
                            stringTokenizer2.nextToken();
                            String strNextToken = stringTokenizer2.nextToken();
                            properties = properties3;
                            decodeMultipartData(strNextToken, byteArray, bufferedReader2, properties, properties5);
                            properties5 = properties5;
                        } else {
                            properties = properties3;
                            char[] cArr = new char[512];
                            for (int i8 = bufferedReader2.read(cArr); i8 >= 0 && !str.endsWith(HTTP.CRLF); i8 = bufferedReader2.read(cArr)) {
                                str = str + String.valueOf(cArr, 0, i8);
                            }
                            decodeParms(str.trim(), properties);
                        }
                        bufferedReader2.close();
                    } else {
                        properties = properties3;
                        if (property.equalsIgnoreCase("PUT ")) {
                            byteArrayOutputStream.close();
                        }
                    }
                    Response responseServe = NanoHTTPD.this.serve(property2, property, properties4, properties, properties5, this.mySocket);
                    if (responseServe == null) {
                        sendError(NanoHTTPD.HTTP_INTERNALERROR, "SERVER INTERNAL ERROR: Serve() returned a null response.");
                    } else {
                        sendResponse(responseServe.status, responseServe.mimeType, responseServe.header, responseServe.data);
                    }
                    inputStream.close();
                }
            } catch (IOException e) {
                sendError(NanoHTTPD.HTTP_INTERNALERROR, "SERVER INTERNAL ERROR: IOException: " + e.getMessage());
            } catch (Throwable unused2) {
            }
        }

        private void decodeHeader(BufferedReader bufferedReader, Properties properties, Properties properties2, Properties properties3) throws InterruptedException, IOException {
            String strDecodePercent;
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(line);
                if (!stringTokenizer.hasMoreTokens()) {
                    sendError(NanoHTTPD.HTTP_BADREQUEST, "BAD REQUEST: Syntax error. Usage: GET /example/file.html");
                }
                properties.put("method", stringTokenizer.nextToken());
                if (!stringTokenizer.hasMoreTokens()) {
                    sendError(NanoHTTPD.HTTP_BADREQUEST, "BAD REQUEST: Missing URI. Usage: GET /example/file.html");
                }
                String strNextToken = stringTokenizer.nextToken();
                int iIndexOf = strNextToken.indexOf(63);
                if (iIndexOf >= 0) {
                    decodeParms(strNextToken.substring(iIndexOf + 1), properties2);
                    strDecodePercent = decodePercent(strNextToken.substring(0, iIndexOf));
                } else {
                    strDecodePercent = decodePercent(strNextToken);
                }
                if (stringTokenizer.hasMoreTokens()) {
                    String line2 = bufferedReader.readLine();
                    while (line2 != null && line2.trim().length() > 0) {
                        int iIndexOf2 = line2.indexOf(58);
                        if (iIndexOf2 >= 0) {
                            properties3.put(line2.substring(0, iIndexOf2).trim().toLowerCase(), line2.substring(iIndexOf2 + 1).trim());
                        }
                        line2 = bufferedReader.readLine();
                    }
                }
                properties.put("uri", strDecodePercent);
            } catch (IOException e) {
                sendError(NanoHTTPD.HTTP_INTERNALERROR, a.i("SERVER INTERNAL ERROR: IOException: ", e.getMessage()));
            }
        }

        private void decodeMultipartData(String str, byte[] bArr, BufferedReader bufferedReader, Properties properties, Properties properties2) throws InterruptedException, IOException {
            String line;
            int i;
            try {
                int[] boundaryPositions = getBoundaryPositions(bArr, str.getBytes());
                int i2 = 1;
                for (String line2 = bufferedReader.readLine(); line2 != null; line2 = line) {
                    if (line2.indexOf(str) == -1) {
                        sendError(NanoHTTPD.HTTP_BADREQUEST, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html");
                    }
                    int i3 = i2 + 1;
                    Properties properties3 = new Properties();
                    line = bufferedReader.readLine();
                    while (true) {
                        i = 0;
                        if (line == null || line.trim().length() <= 0) {
                            break;
                        }
                        int iIndexOf = line.indexOf(58);
                        if (iIndexOf != -1) {
                            properties3.put(line.substring(0, iIndexOf).trim().toLowerCase(), line.substring(iIndexOf + 1).trim());
                        }
                        line = bufferedReader.readLine();
                    }
                    if (line != null) {
                        String property = properties3.getProperty("content-disposition");
                        if (property == null) {
                            sendError(NanoHTTPD.HTTP_BADREQUEST, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html");
                        }
                        StringTokenizer stringTokenizer = new StringTokenizer(property, "; ");
                        Properties properties4 = new Properties();
                        while (stringTokenizer.hasMoreTokens()) {
                            String strNextToken = stringTokenizer.nextToken();
                            int iIndexOf2 = strNextToken.indexOf(61);
                            if (iIndexOf2 != -1) {
                                properties4.put(strNextToken.substring(i, iIndexOf2).trim().toLowerCase(), strNextToken.substring(iIndexOf2 + 1).trim());
                            }
                            i = 0;
                        }
                        String property2 = properties4.getProperty("name");
                        String strSubstring = property2.substring(1, property2.length() - 1);
                        String strSubstring2 = "";
                        if (properties3.getProperty("content-type") != null) {
                            if (i3 > boundaryPositions.length) {
                                sendError(NanoHTTPD.HTTP_INTERNALERROR, "Error processing request");
                            }
                            properties2.put(strSubstring, saveTmpFile(bArr, stripMultipartHeaders(bArr, boundaryPositions[i2 - 1]), (boundaryPositions[i2] - r10) - 4));
                            String property3 = properties4.getProperty("filename");
                            strSubstring2 = property3.substring(1, property3.length() - 1);
                            do {
                                line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                            } while (line.indexOf(str) == -1);
                        } else {
                            while (line != null && line.indexOf(str) == -1) {
                                line = bufferedReader.readLine();
                                if (line != null) {
                                    int iIndexOf3 = line.indexOf(str);
                                    strSubstring2 = iIndexOf3 == -1 ? strSubstring2 + line : strSubstring2 + line.substring(0, iIndexOf3 - 2);
                                }
                            }
                        }
                        properties.put(strSubstring, strSubstring2);
                    }
                    i2 = i3;
                }
            } catch (IOException e) {
                sendError(NanoHTTPD.HTTP_INTERNALERROR, a.i("SERVER INTERNAL ERROR: IOException: ", e.getMessage()));
            }
        }

        public int[] getBoundaryPositions(byte[] bArr, byte[] bArr2) {
            Vector vector = new Vector();
            int i = 0;
            int i2 = 0;
            int i3 = -1;
            while (i < bArr.length) {
                if (bArr[i] == bArr2[i2]) {
                    if (i2 == 0) {
                        i3 = i;
                    }
                    i2++;
                    if (i2 == bArr2.length) {
                        vector.addElement(Integer.valueOf(i3));
                    } else {
                        i++;
                    }
                } else {
                    i -= i2;
                }
                i2 = 0;
                i3 = -1;
                i++;
            }
            int size = vector.size();
            int[] iArr = new int[size];
            for (int i4 = 0; i4 < size; i4++) {
                iArr[i4] = ((Integer) vector.elementAt(i4)).intValue();
            }
            return iArr;
        }

        private String saveTmpFile(byte[] bArr, int i, int i2) throws IOException {
            if (i2 > 0) {
                try {
                    File fileCreateTempFile = File.createTempFile("NanoHTTPD", "", new File(System.getProperty("java.io.tmpdir")));
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                    fileOutputStream.write(bArr, i, i2);
                    fileOutputStream.close();
                    return fileCreateTempFile.getAbsolutePath();
                } catch (Exception e) {
                    NanoHTTPD.myErr.println("Error: " + e.getMessage());
                }
            }
            return "";
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x001e A[PHI: r0
          0x001e: PHI (r0v3 int) = (r0v2 int), (r0v4 int) binds: [B:7:0x000f, B:9:0x0015] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private int stripMultipartHeaders(byte[] r5, int r6) {
            /*
                r4 = this;
            L0:
                int r0 = r5.length
                if (r6 >= r0) goto L22
                r0 = r5[r6]
                r1 = 13
                if (r0 != r1) goto L1f
                int r0 = r6 + 1
                r2 = r5[r0]
                r3 = 10
                if (r2 != r3) goto L1e
                int r0 = r6 + 2
                r2 = r5[r0]
                if (r2 != r1) goto L1e
                int r6 = r6 + 3
                r0 = r5[r6]
                if (r0 != r3) goto L1f
                goto L22
            L1e:
                r6 = r0
            L1f:
                int r6 = r6 + 1
                goto L0
            L22:
                int r6 = r6 + 1
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.util.NanoHTTPD.HTTPSession.stripMultipartHeaders(byte[], int):int");
        }

        private String decodePercent(String str) throws InterruptedException, IOException {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                int i = 0;
                while (i < str.length()) {
                    char cCharAt = str.charAt(i);
                    if (cCharAt == '%') {
                        stringBuffer.append((char) Integer.parseInt(str.substring(i + 1, i + 3), 16));
                        i += 2;
                    } else if (cCharAt == '+') {
                        stringBuffer.append(' ');
                    } else {
                        stringBuffer.append(cCharAt);
                    }
                    i++;
                }
                return stringBuffer.toString();
            } catch (Exception unused) {
                sendError(NanoHTTPD.HTTP_BADREQUEST, "BAD REQUEST: Bad percent-encoding.");
                return null;
            }
        }

        private void decodeParms(String str, Properties properties) throws InterruptedException {
            if (str == null) {
                return;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken = stringTokenizer.nextToken();
                int iIndexOf = strNextToken.indexOf(61);
                if (iIndexOf >= 0) {
                    properties.put(decodePercent(strNextToken.substring(0, iIndexOf)).trim(), decodePercent(strNextToken.substring(iIndexOf + 1)));
                }
            }
        }

        private void sendError(String str, String str2) throws InterruptedException, IOException {
            sendResponse(str, NanoHTTPD.MIME_PLAINTEXT, null, new ByteArrayInputStream(str2.getBytes()));
            throw new InterruptedException();
        }

        private void sendResponse(String str, String str2, Properties properties, InputStream inputStream) throws IOException {
            try {
                try {
                    if (str == null) {
                        throw new Error("sendResponse(): Status can't be null.");
                    }
                    OutputStream outputStream = this.mySocket.getOutputStream();
                    PrintWriter printWriter = new PrintWriter(outputStream);
                    printWriter.print("HTTP/1.0 " + str + " \r\n");
                    if (str2 != null) {
                        printWriter.print("Content-Type: " + str2 + HTTP.CRLF);
                    }
                    if (properties == null || properties.getProperty(HttpHeaders.DATE) == null) {
                        printWriter.print("Date: " + NanoHTTPD.gmtFrmt.format(new Date()) + HTTP.CRLF);
                    }
                    if (properties != null) {
                        Enumeration enumerationKeys = properties.keys();
                        while (enumerationKeys.hasMoreElements()) {
                            String str3 = (String) enumerationKeys.nextElement();
                            printWriter.print(str3 + ": " + properties.getProperty(str3) + HTTP.CRLF);
                        }
                    }
                    printWriter.print(HTTP.CRLF);
                    printWriter.flush();
                    if (inputStream != null) {
                        int iAvailable = inputStream.available();
                        byte[] bArr = new byte[NanoHTTPD.theBufferSize];
                        while (iAvailable > 0) {
                            int i = inputStream.read(bArr, 0, iAvailable > NanoHTTPD.theBufferSize ? NanoHTTPD.theBufferSize : iAvailable);
                            if (i <= 0) {
                                break;
                            }
                            outputStream.write(bArr, 0, i);
                            iAvailable -= i;
                        }
                    }
                    outputStream.flush();
                    outputStream.close();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (IOException unused) {
                    this.mySocket.close();
                }
            } catch (Throwable unused2) {
            }
        }
    }

    private String encodeUri(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "/ ", true);
        String strZ = "";
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            strZ = strNextToken.equals("/") ? a.z(strZ, "/") : strNextToken.equals(" ") ? a.z(strZ, "%20") : a.z(strZ, URLEncoder.encode(strNextToken));
        }
        return strZ;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00b9 A[PHI: r3 r10
      0x00b9: PHI (r3v5 com.google.appinventor.components.runtime.util.NanoHTTPD$Response) = 
      (r3v4 com.google.appinventor.components.runtime.util.NanoHTTPD$Response)
      (r3v4 com.google.appinventor.components.runtime.util.NanoHTTPD$Response)
      (r3v26 com.google.appinventor.components.runtime.util.NanoHTTPD$Response)
      (r3v26 com.google.appinventor.components.runtime.util.NanoHTTPD$Response)
      (r3v26 com.google.appinventor.components.runtime.util.NanoHTTPD$Response)
     binds: [B:25:0x0075, B:27:0x007b, B:31:0x009f, B:38:0x00ca, B:34:0x00ae] A[DONT_GENERATE, DONT_INLINE]
      0x00b9: PHI (r10v1 java.io.File) = (r10v0 java.io.File), (r10v0 java.io.File), (r10v0 java.io.File), (r10v4 java.io.File), (r10v5 java.io.File) binds: [B:25:0x0075, B:27:0x007b, B:31:0x009f, B:38:0x00ca, B:34:0x00ae] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.appinventor.components.runtime.util.NanoHTTPD.Response serveFile(java.lang.String r32, java.util.Properties r33, java.io.File r34, boolean r35) throws java.lang.NumberFormatException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 958
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.util.NanoHTTPD.serveFile(java.lang.String, java.util.Properties, java.io.File, boolean):com.google.appinventor.components.runtime.util.NanoHTTPD$Response");
    }

    static {
        StringTokenizer stringTokenizer = new StringTokenizer("css            text/css htm            text/html html           text/html xml            text/xml txt            text/plain asc            text/plain gif            image/gif jpg            image/jpeg jpeg           image/jpeg png            image/png mp3            audio/mpeg m3u            audio/mpeg-url mp4            video/mp4 ogv            video/ogg flv            video/x-flv mov            video/quicktime swf            application/x-shockwave-flash js                     application/javascript pdf            application/pdf doc            application/msword ogg            application/x-ogg zip            application/octet-stream exe            application/octet-stream class          application/octet-stream ");
        while (stringTokenizer.hasMoreTokens()) {
            theMimeTypes.put(stringTokenizer.nextToken(), stringTokenizer.nextToken());
        }
        theBufferSize = 16384;
        myOut = System.out;
        myErr = System.err;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("E, d MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        gmtFrmt = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
    }
}
