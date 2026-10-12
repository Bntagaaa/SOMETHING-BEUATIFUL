package gnu.mapping;

/* loaded from: classes2.dex */
public class LazyPropertyKey<T> extends PropertyKey<T> {
    public LazyPropertyKey(String str) {
        super(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // gnu.mapping.PropertyKey
    public T get(PropertySet propertySet, T t) {
        T t2 = (T) propertySet.getProperty(this, t);
        if (!(t2 instanceof String)) {
            return t2;
        }
        String str = (String) t2;
        int i = str.charAt(0) == '*' ? 1 : 0;
        int iIndexOf = str.indexOf(58);
        if (iIndexOf <= i || iIndexOf >= str.length() - 1) {
            throw new RuntimeException("lazy property " + this + " must have the form \"ClassName:fieldName\" or \"ClassName:staticMethodName\"");
        }
        String strSubstring = str.substring(i, iIndexOf);
        String strSubstring2 = str.substring(iIndexOf + 1);
        try {
            Class<?> cls = Class.forName(strSubstring, true, propertySet.getClass().getClassLoader());
            T t3 = i == 0 ? (T) cls.getField(strSubstring2).get(null) : (T) cls.getDeclaredMethod(strSubstring2, Object.class).invoke(null, propertySet);
            propertySet.setProperty(this, t3);
            return t3;
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("lazy property ");
            sb.append(this);
            sb.append(" has specifier \"");
            sb.append(str);
            sb.append("\" but there is no such ");
            sb.append(i == 0 ? "field" : "method");
            throw new RuntimeException(sb.toString(), th);
        }
    }

    public void set(PropertySet propertySet, String str) {
        propertySet.setProperty(this, str);
    }
}
