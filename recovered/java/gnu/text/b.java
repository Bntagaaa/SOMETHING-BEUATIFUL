package gnu.text;

import java.net.URI;

/* loaded from: classes2.dex */
class b extends URIPath {
    public final String c;

    @Override // gnu.text.URIPath, gnu.text.Path
    public String toURIString() {
        return this.c;
    }

    public b(URI uri, String str) {
        super(uri);
        this.c = str;
    }
}
