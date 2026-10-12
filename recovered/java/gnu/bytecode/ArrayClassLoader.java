package gnu.bytecode;

import _COROUTINE.a;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.URL;
import java.util.Hashtable;

/* loaded from: classes2.dex */
public class ArrayClassLoader extends ClassLoader {
    Hashtable cmap;
    URL context;
    Hashtable map;

    public ArrayClassLoader() {
        this.map = new Hashtable(100);
        this.cmap = new Hashtable(100);
    }

    public ArrayClassLoader(ClassLoader classLoader) {
        super(classLoader);
        this.map = new Hashtable(100);
        this.cmap = new Hashtable(100);
    }

    public URL getResourceContext() {
        return this.context;
    }

    public void setResourceContext(URL url) {
        this.context = url;
    }

    public ArrayClassLoader(byte[][] bArr) {
        this.map = new Hashtable(100);
        this.cmap = new Hashtable(100);
        int length = bArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            } else {
                addClass(a.d(length, "lambda"), bArr[length]);
            }
        }
    }

    public ArrayClassLoader(String[] strArr, byte[][] bArr) {
        this.map = new Hashtable(100);
        this.cmap = new Hashtable(100);
        int length = bArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            } else {
                addClass(strArr[length], bArr[length]);
            }
        }
    }

    public void addClass(Class cls) {
        this.cmap.put(cls.getName(), cls);
    }

    public void addClass(String str, byte[] bArr) {
        this.map.put(str, bArr);
    }

    public void addClass(ClassType classType) {
        this.map.put(classType.getName(), classType);
    }

    @Override // java.lang.ClassLoader
    public InputStream getResourceAsStream(String str) {
        InputStream resourceAsStream = super.getResourceAsStream(str);
        if (resourceAsStream != null || !str.endsWith(".class")) {
            return resourceAsStream;
        }
        Object obj = this.map.get(str.substring(0, str.length() - 6).replace('/', '.'));
        return obj instanceof byte[] ? new ByteArrayInputStream((byte[]) obj) : resourceAsStream;
    }

    @Override // java.lang.ClassLoader
    public URL findResource(String str) {
        if (this.context != null) {
            try {
                URL url = new URL(this.context, str);
                url.openConnection().connect();
                return url;
            } catch (Throwable unused) {
            }
        }
        return super.findResource(str);
    }

    @Override // java.lang.ClassLoader
    public Class loadClass(String str, boolean z) throws ClassNotFoundException {
        Class clsLoadClass = loadClass(str);
        if (z) {
            resolveClass(clsLoadClass);
        }
        return clsLoadClass;
    }

    @Override // java.lang.ClassLoader
    public Class loadClass(String str) throws ClassNotFoundException {
        Class<?> clsDefineClass;
        Object obj = this.cmap.get(str);
        if (obj != null) {
            return (Class) obj;
        }
        Object objWriteToArray = this.map.get(str);
        if (objWriteToArray instanceof ClassType) {
            ClassType classType = (ClassType) objWriteToArray;
            if (classType.isExisting()) {
                objWriteToArray = classType.reflectClass;
            } else {
                objWriteToArray = classType.writeToArray();
            }
        }
        if (!(objWriteToArray instanceof byte[])) {
            if (objWriteToArray == null) {
                return getParent().loadClass(str);
            }
            return (Class) objWriteToArray;
        }
        synchronized (this) {
            try {
                Object obj2 = this.map.get(str);
                if (obj2 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj2;
                    clsDefineClass = defineClass(str, bArr, 0, bArr.length);
                    this.cmap.put(str, clsDefineClass);
                } else {
                    clsDefineClass = (Class) obj2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return clsDefineClass;
    }

    public static Package getContextPackage(String str) {
        try {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader instanceof ArrayClassLoader) {
                return ((ArrayClassLoader) contextClassLoader).getPackage(str);
            }
        } catch (SecurityException unused) {
        }
        return Package.getPackage(str);
    }
}
