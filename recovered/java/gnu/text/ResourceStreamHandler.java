package gnu.text;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

/* loaded from: classes2.dex */
public class ResourceStreamHandler extends URLStreamHandler {
    public static final String CLASS_RESOURCE_URI_PREFIX = "class-resource:/";
    public static final int CLASS_RESOURCE_URI_PREFIX_LENGTH = 16;

    /* renamed from: a, reason: collision with root package name */
    public final ClassLoader f5498a;

    public ResourceStreamHandler(ClassLoader classLoader) {
        this.f5498a = classLoader;
    }

    public static URL makeURL(Class cls) throws MalformedURLException {
        String name = cls.getName();
        int iLastIndexOf = name.lastIndexOf(46);
        StringBuilder sb = new StringBuilder(CLASS_RESOURCE_URI_PREFIX);
        if (iLastIndexOf >= 0) {
            sb.append(name.substring(0, iLastIndexOf));
            sb.append('/');
            name = name.substring(iLastIndexOf + 1);
        }
        sb.append(name);
        return new URL((URL) null, sb.toString(), new ResourceStreamHandler(cls.getClassLoader()));
    }

    @Override // java.net.URLStreamHandler
    public URLConnection openConnection(URL url) throws IOException {
        String string = url.toString();
        String strSubstring = string.substring(16);
        int iIndexOf = strSubstring.indexOf(47);
        if (iIndexOf > 0) {
            strSubstring = strSubstring.substring(0, iIndexOf).replace('.', '/') + strSubstring.substring(iIndexOf);
        }
        URL resource = this.f5498a.getResource(strSubstring);
        if (resource == null) {
            throw new FileNotFoundException(string);
        }
        return resource.openConnection();
    }
}
