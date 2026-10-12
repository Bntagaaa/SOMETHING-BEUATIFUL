package com.google.appinventor.components.runtime.util;

import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.SimplePropertyCopier;
import com.google.appinventor.components.runtime.Component;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class PropertyUtil {
    public static Component copyComponentProperties(Component component, Component component2) throws Throwable {
        if (!component.getClass().equals(component2.getClass())) {
            throw new IllegalArgumentException("Source and target classes must be identical");
        }
        Class<?> cls = component.getClass();
        for (Method method : cls.getMethods()) {
            if (method.isAnnotationPresent(SimpleProperty.class) && method.getParameterTypes().length == 1) {
                try {
                    String name = method.getName();
                    Method propertyCopierMethod = getPropertyCopierMethod("Copy" + name, cls);
                    if (propertyCopierMethod != null) {
                        propertyCopierMethod.invoke(component2, component);
                    } else {
                        Method method2 = cls.getMethod(name, new Class[0]);
                        Class<?> cls2 = method.getParameterTypes()[0];
                        if (method2.isAnnotationPresent(SimpleProperty.class) && cls2.isAssignableFrom(method2.getReturnType())) {
                            method.invoke(component2, method2.invoke(component, new Object[0]));
                        }
                    }
                } catch (NoSuchMethodException unused) {
                } catch (InvocationTargetException e) {
                    throw e.getCause();
                }
            }
        }
        return component2;
    }

    private static Method getPropertyCopierMethod(String str, Class cls) throws NoSuchMethodException, SecurityException {
        do {
            try {
                Method method = cls.getMethod(str, cls);
                if (method.isAnnotationPresent(SimplePropertyCopier.class)) {
                    return method;
                }
            } catch (NoSuchMethodException unused) {
            }
            cls = cls.getSuperclass();
        } while (cls != null);
        return null;
    }
}
