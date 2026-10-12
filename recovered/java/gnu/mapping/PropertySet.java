package gnu.mapping;

/* loaded from: classes2.dex */
public abstract class PropertySet implements Named {
    public static final Symbol nameKey = Namespace.EmptyNamespace.getSymbol("name");
    private Object[] properties;

    @Override // gnu.mapping.Named
    public String getName() {
        Object property = getProperty(nameKey, null);
        if (property == null) {
            return null;
        }
        return property instanceof Symbol ? ((Symbol) property).getName() : property.toString();
    }

    @Override // gnu.mapping.Named
    public Object getSymbol() {
        return getProperty(nameKey, null);
    }

    public final void setSymbol(Object obj) {
        setProperty(nameKey, obj);
    }

    @Override // gnu.mapping.Named
    public final void setName(String str) {
        setProperty(nameKey, str);
    }

    public Object getProperty(Object obj, Object obj2) {
        Object[] objArr = this.properties;
        if (objArr != null) {
            int length = objArr.length;
            while (true) {
                int i = length - 2;
                if (i < 0) {
                    break;
                }
                Object[] objArr2 = this.properties;
                if (objArr2[i] == obj) {
                    return objArr2[length - 1];
                }
                length = i;
            }
        }
        return obj2;
    }

    public synchronized void setProperty(Object obj, Object obj2) {
        this.properties = setProperty(this.properties, obj, obj2);
    }

    public static Object[] setProperty(Object[] objArr, Object obj, Object obj2) {
        int i = 0;
        if (objArr == null) {
            objArr = new Object[10];
        } else {
            int length = objArr.length;
            int i2 = -1;
            while (true) {
                int i3 = length - 2;
                if (i3 >= 0) {
                    Object obj3 = objArr[i3];
                    if (obj3 == obj) {
                        int i4 = length - 1;
                        Object obj4 = objArr[i4];
                        objArr[i4] = obj2;
                        return objArr;
                    }
                    if (obj3 == null) {
                        i2 = i3;
                    }
                    length = i3;
                } else if (i2 < 0) {
                    int length2 = objArr.length;
                    Object[] objArr2 = new Object[length2 * 2];
                    System.arraycopy(objArr, 0, objArr2, 0, length2);
                    i = length2;
                    objArr = objArr2;
                } else {
                    i = i2;
                }
            }
        }
        objArr[i] = obj;
        objArr[i + 1] = obj2;
        return objArr;
    }

    public Object removeProperty(Object obj) {
        Object[] objArr = this.properties;
        if (objArr == null) {
            return null;
        }
        int length = objArr.length;
        while (true) {
            int i = length - 2;
            if (i < 0) {
                return null;
            }
            if (objArr[i] == obj) {
                int i2 = length - 1;
                Object obj2 = objArr[i2];
                objArr[i] = null;
                objArr[i2] = null;
                return obj2;
            }
            length = i;
        }
    }
}
