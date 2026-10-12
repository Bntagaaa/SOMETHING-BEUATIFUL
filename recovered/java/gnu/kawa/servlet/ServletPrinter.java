package gnu.kawa.servlet;

import gnu.kawa.xml.HttpPrinter;
import java.io.IOException;

/* loaded from: classes2.dex */
public class ServletPrinter extends HttpPrinter {
    HttpRequestContext hctx;

    @Override // gnu.kawa.xml.HttpPrinter
    public void printHeaders() {
    }

    public ServletPrinter(HttpRequestContext httpRequestContext, int i) throws IOException {
        super(new HttpOutputStream(httpRequestContext, i));
        this.hctx = httpRequestContext;
    }

    @Override // gnu.kawa.xml.HttpPrinter
    public void addHeader(String str, String str2) {
        if (str.equalsIgnoreCase("Content-type")) {
            this.sawContentType = str2;
            this.hctx.setContentType(str2);
            return;
        }
        if (str.equalsIgnoreCase("Status")) {
            int length = str2.length();
            int i = 0;
            int i2 = 0;
            while (i < length) {
                if (i >= length) {
                    this.hctx.statusCode = i2;
                    return;
                }
                char cCharAt = str2.charAt(i);
                int iDigit = Character.digit(cCharAt, 10);
                if (iDigit < 0) {
                    if (cCharAt == ' ') {
                        i++;
                    }
                    HttpRequestContext httpRequestContext = this.hctx;
                    httpRequestContext.statusCode = i2;
                    httpRequestContext.statusReasonPhrase = str2.substring(i);
                    return;
                }
                i2 = (i2 * 10) + iDigit;
                i++;
            }
            return;
        }
        this.hctx.setResponseHeader(str, str2);
    }

    @Override // gnu.kawa.xml.HttpPrinter
    public boolean reset(boolean z) {
        return super.reset(z) & ((HttpOutputStream) this.ostream).reset();
    }
}
