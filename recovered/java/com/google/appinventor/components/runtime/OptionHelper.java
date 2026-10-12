package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.OptionList;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;

/* loaded from: classes.dex */
public class OptionHelper {
    private static final java.util.Map<String, java.util.Map<String, Method>> componentMethods = new HashMap();

    public static <T> Object optionListFromValue(Object obj, String str, T t) throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Options options;
        Method method = getMethod(obj, str);
        if (method != null && (options = (Options) method.getAnnotation(Options.class)) != null) {
            Class<? extends OptionList<?>> clsValue = options.value();
            try {
                Object objInvoke = clsValue.getMethod("fromUnderlyingValue", t.getClass()).invoke(clsValue, t);
                if (objInvoke != null) {
                    return objInvoke;
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
        return t;
    }

    public static Object[] optionListsFromValues(Component component, String str, Object... objArr) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method method;
        if (objArr.length != 0 && (method = getMethod(component, str)) != null) {
            int i = 0;
            for (Annotation[] annotationArr : method.getParameterAnnotations()) {
                int length = annotationArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        Annotation annotation = annotationArr[i2];
                        if (annotation.annotationType() == Options.class) {
                            Class<? extends OptionList<?>> clsValue = ((Options) annotation).value();
                            try {
                                Object objInvoke = clsValue.getMethod("fromUnderlyingValue", objArr[i].getClass()).invoke(clsValue, objArr[i]);
                                if (objInvoke != null) {
                                    objArr[i] = objInvoke;
                                }
                            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                            }
                        } else {
                            i2++;
                        }
                    }
                }
                i++;
            }
        }
        return objArr;
    }

    private static Method getMethod(Object obj, String str) throws SecurityException {
        Class<?> cls = obj.getClass();
        String simpleName = cls.getSimpleName();
        java.util.Map<String, java.util.Map<String, Method>> map = componentMethods;
        java.util.Map<String, Method> mapPopulateMap = map.get(simpleName);
        if (mapPopulateMap == null) {
            mapPopulateMap = populateMap(cls);
            map.put(simpleName, mapPopulateMap);
        }
        return mapPopulateMap.get(str);
    }

    private static java.util.Map<String, Method> populateMap(Class<?> cls) throws SecurityException {
        HashMap map = new HashMap();
        for (Method method : cls.getMethods()) {
            if ((method.getModifiers() & 1) != 0) {
                String name = method.getName();
                if (((SimpleEvent) method.getAnnotation(SimpleEvent.class)) != null) {
                    map.put(name, method);
                } else if (method.getReturnType() != Void.TYPE) {
                    if (((SimpleFunction) method.getAnnotation(SimpleFunction.class)) != null) {
                        map.put(name, method);
                    } else if (((SimpleProperty) method.getAnnotation(SimpleProperty.class)) != null) {
                        map.put(name, method);
                    }
                }
            }
        }
        return map;
    }
}
