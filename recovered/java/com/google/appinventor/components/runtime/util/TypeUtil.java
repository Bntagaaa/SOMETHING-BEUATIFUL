package com.google.appinventor.components.runtime.util;

import com.google.appinventor.components.common.OptionList;
import com.google.appinventor.components.runtime.errors.DispatchableError;
import gnu.mapping.Symbol;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class TypeUtil {
    private TypeUtil() {
    }

    public static <T> T cast(Object obj, Class<T> cls, String str) {
        if (obj == null) {
            return null;
        }
        if (cls.isInstance(obj)) {
            return cls.cast(obj);
        }
        throw new DispatchableError(ErrorMessages.ERROR_INVALID_TYPE, obj.getClass().getSimpleName(), str);
    }

    public static <T> T castNotNull(Object obj, Class<T> cls, String str) {
        if (obj == null) {
            throw new DispatchableError(ErrorMessages.ERROR_INVALID_TYPE, "null", str);
        }
        return (T) cast(obj, cls, str);
    }

    public static <T> OptionList<T> castToEnum(T t, Symbol symbol) throws ClassNotFoundException, SecurityException {
        String strStripEnumSuffix = stripEnumSuffix(symbol.getName());
        try {
            Class<?> cls = Class.forName(strStripEnumSuffix);
            if (!OptionList.class.isAssignableFrom(cls)) {
                throw new IllegalArgumentException(strStripEnumSuffix + " does not identify an OptionList type.");
            }
            for (Method method : cls.getMethods()) {
                if ("fromUnderlyingValue".equals(method.getName()) && method.getParameterTypes()[0].isAssignableFrom(t.getClass())) {
                    return (OptionList) method.invoke(cls, t);
                }
            }
            return null;
        } catch (ClassNotFoundException | IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    private static String stripEnumSuffix(String str) {
        return str.endsWith("Enum") ? str.substring(0, str.length() - 4) : str;
    }
}
