package com.google.appinventor.components.runtime.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Set;
import java.util.UUID;

/* loaded from: classes.dex */
public class BluetoothReflection {
    private static final int BOND_BONDED = 12;

    private BluetoothReflection() {
    }

    public static Object getBluetoothAdapter() {
        try {
            return invokeStaticMethod(getMethod(Class.forName("android.bluetooth.BluetoothAdapter"), "getDefaultAdapter"));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static boolean isBluetoothEnabled(Object obj) {
        return ((Boolean) invokeMethod(getMethod(obj.getClass(), "isEnabled"), obj, new Object[0])).booleanValue();
    }

    public static Set getBondedDevices(Object obj) {
        return (Set) invokeMethod(getMethod(obj.getClass(), "getBondedDevices"), obj, new Object[0]);
    }

    public static boolean checkBluetoothAddress(Object obj, String str) {
        return ((Boolean) invokeMethod(getMethod(obj.getClass(), "checkBluetoothAddress", String.class), obj, str)).booleanValue();
    }

    public static Object getRemoteDevice(Object obj, String str) throws IllegalArgumentException {
        return invokeMethodThrowsIllegalArgumentException(getMethod(obj.getClass(), "getRemoteDevice", String.class), obj, str);
    }

    public static Object listenUsingRfcommWithServiceRecord(Object obj, String str, UUID uuid) throws IOException {
        return invokeMethodThrowsIOException(getMethod(obj.getClass(), "listenUsingRfcommWithServiceRecord", String.class, UUID.class), obj, str, uuid);
    }

    public static Object listenUsingInsecureRfcommWithServiceRecord(Object obj, String str, UUID uuid) throws IOException {
        return invokeMethodThrowsIOException(getMethod(obj.getClass(), "listenUsingInsecureRfcommWithServiceRecord", String.class, UUID.class), obj, str, uuid);
    }

    public static String getBluetoothDeviceName(Object obj) {
        return (String) invokeMethod(getMethod(obj.getClass(), "getName"), obj, new Object[0]);
    }

    public static String getBluetoothDeviceAddress(Object obj) {
        return (String) invokeMethod(getMethod(obj.getClass(), "getAddress"), obj, new Object[0]);
    }

    public static boolean isBonded(Object obj) {
        return ((Integer) invokeMethod(getMethod(obj.getClass(), "getBondState"), obj, new Object[0])).intValue() == 12;
    }

    public static Object getBluetoothClass(Object obj) {
        return invokeMethod(getMethod(obj.getClass(), "getBluetoothClass"), obj, new Object[0]);
    }

    public static Object createRfcommSocketToServiceRecord(Object obj, UUID uuid) throws IOException {
        return invokeMethodThrowsIOException(getMethod(obj.getClass(), "createRfcommSocketToServiceRecord", UUID.class), obj, uuid);
    }

    public static Object createInsecureRfcommSocketToServiceRecord(Object obj, UUID uuid) throws IOException {
        return invokeMethodThrowsIOException(getMethod(obj.getClass(), "createInsecureRfcommSocketToServiceRecord", UUID.class), obj, uuid);
    }

    public static int getDeviceClass(Object obj) {
        return ((Integer) invokeMethod(getMethod(obj.getClass(), "getDeviceClass"), obj, new Object[0])).intValue();
    }

    public static void connectToBluetoothSocket(Object obj) throws IOException {
        invokeMethodThrowsIOException(getMethod(obj.getClass(), "connect"), obj, new Object[0]);
    }

    public static boolean isBluetoothSocketConnected(Object obj) {
        return ((Boolean) invokeMethod(getMethod(obj.getClass(), "isConnected"), obj, new Object[0])).booleanValue();
    }

    public static InputStream getInputStream(Object obj) throws IOException {
        return (InputStream) invokeMethodThrowsIOException(getMethod(obj.getClass(), "getInputStream"), obj, new Object[0]);
    }

    public static OutputStream getOutputStream(Object obj) throws IOException {
        return (OutputStream) invokeMethodThrowsIOException(getMethod(obj.getClass(), "getOutputStream"), obj, new Object[0]);
    }

    public static void closeBluetoothSocket(Object obj) throws IOException {
        invokeMethodThrowsIOException(getMethod(obj.getClass(), "close"), obj, new Object[0]);
    }

    public static Object accept(Object obj) throws IOException {
        return invokeMethodThrowsIOException(getMethod(obj.getClass(), "accept"), obj, new Object[0]);
    }

    public static void closeBluetoothServerSocket(Object obj) throws IOException {
        invokeMethodThrowsIOException(getMethod(obj.getClass(), "close"), obj, new Object[0]);
    }

    private static Method getMethod(Class cls, String str) {
        try {
            return cls.getMethod(str, new Class[0]);
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    private static Method getMethod(Class cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    private static Object invokeStaticMethod(Method method) {
        try {
            return method.invoke(null, new Object[0]);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            cause.printStackTrace();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
    }

    private static Object invokeMethod(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            cause.printStackTrace();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
    }

    private static Object invokeMethodThrowsIllegalArgumentException(Method method, Object obj, Object... objArr) throws IllegalArgumentException {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            cause.printStackTrace();
            if (cause instanceof IllegalArgumentException) {
                throw ((IllegalArgumentException) cause);
            }
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(e2);
        }
    }

    private static Object invokeMethodThrowsIOException(Method method, Object obj, Object... objArr) throws IOException {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            cause.printStackTrace();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(e2);
        }
    }
}
