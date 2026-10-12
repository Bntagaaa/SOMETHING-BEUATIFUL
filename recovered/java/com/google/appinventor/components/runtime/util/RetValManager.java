package com.google.appinventor.components.runtime.util;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.google.appinventor.components.runtime.PhoneStatus;
import com.google.appinventor.components.runtime.ReplForm;
import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class RetValManager {
    private static final String LOG_TAG = "RetValManager";
    private static final long TENSECONDS = 10000;
    private static final Object semaphore = new Object();
    private static ArrayList<JSONObject> currentArray = new ArrayList<>(10);

    private RetValManager() {
    }

    public static void appendReturnValue(String str, String str2, String str3) {
        Object obj = semaphore;
        synchronized (obj) {
            try {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, str2);
                    jSONObject.put("type", "return");
                    jSONObject.put("value", str3);
                    jSONObject.put("blockid", str);
                    boolean zIsEmpty = currentArray.isEmpty();
                    currentArray.add(jSONObject);
                    if (PhoneStatus.getUseWebRTC()) {
                        webRTCsendCurrent();
                    } else if (zIsEmpty) {
                        obj.notifyAll();
                    }
                } catch (JSONException e) {
                    Log.e(LOG_TAG, "Error building retval", e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void sendError(String str) {
        Object obj = semaphore;
        synchronized (obj) {
            try {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, "OK");
                    jSONObject.put("type", "error");
                    jSONObject.put("value", str);
                    boolean zIsEmpty = currentArray.isEmpty();
                    currentArray.add(jSONObject);
                    if (PhoneStatus.getUseWebRTC()) {
                        webRTCsendCurrent();
                    } else if (zIsEmpty) {
                        obj.notifyAll();
                    }
                } catch (JSONException e) {
                    Log.e(LOG_TAG, "Error building retval", e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void pushScreen(String str, Object obj) {
        Object obj2 = semaphore;
        synchronized (obj2) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(NotificationCompat.CATEGORY_STATUS, "OK");
                jSONObject.put("type", "pushScreen");
                jSONObject.put("screen", str);
                if (obj != null) {
                    jSONObject.put("value", obj.toString());
                }
                boolean zIsEmpty = currentArray.isEmpty();
                currentArray.add(jSONObject);
                if (PhoneStatus.getUseWebRTC()) {
                    webRTCsendCurrent();
                } else if (zIsEmpty) {
                    obj2.notifyAll();
                }
            } catch (JSONException e) {
                Log.e(LOG_TAG, "Error building retval", e);
            }
        }
    }

    public static void popScreen(String str) {
        Object obj = semaphore;
        synchronized (obj) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(NotificationCompat.CATEGORY_STATUS, "OK");
                jSONObject.put("type", "popScreen");
                if (str != null) {
                    jSONObject.put("value", str.toString());
                }
                boolean zIsEmpty = currentArray.isEmpty();
                currentArray.add(jSONObject);
                if (PhoneStatus.getUseWebRTC()) {
                    webRTCsendCurrent();
                } else if (zIsEmpty) {
                    obj.notifyAll();
                }
            } catch (JSONException e) {
                Log.e(LOG_TAG, "Error building retval", e);
            }
        }
    }

    public static void assetTransferred(String str) {
        Object obj = semaphore;
        synchronized (obj) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(NotificationCompat.CATEGORY_STATUS, "OK");
                jSONObject.put("type", "assetTransferred");
                if (str != null) {
                    jSONObject.put("value", str.toString());
                }
                boolean zIsEmpty = currentArray.isEmpty();
                currentArray.add(jSONObject);
                if (PhoneStatus.getUseWebRTC()) {
                    webRTCsendCurrent();
                } else if (zIsEmpty) {
                    obj.notifyAll();
                }
            } catch (JSONException e) {
                Log.e(LOG_TAG, "Error building retval", e);
            }
        }
    }

    public static void extensionsLoaded() {
        Object obj = semaphore;
        synchronized (obj) {
            try {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, "OK");
                    jSONObject.put("type", "extensionsLoaded");
                    boolean zIsEmpty = currentArray.isEmpty();
                    currentArray.add(jSONObject);
                    if (PhoneStatus.getUseWebRTC()) {
                        webRTCsendCurrent();
                    } else if (zIsEmpty) {
                        obj.notifyAll();
                    }
                } catch (JSONException e) {
                    Log.e(LOG_TAG, "Error building retval", e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String fetch(boolean z) {
        String string;
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (semaphore) {
            while (currentArray.isEmpty() && z && System.currentTimeMillis() - jCurrentTimeMillis <= 9900) {
                try {
                    semaphore.wait(TENSECONDS);
                } catch (InterruptedException unused) {
                }
            }
            JSONArray jSONArray = new JSONArray((Collection) currentArray);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(NotificationCompat.CATEGORY_STATUS, "OK");
                jSONObject.put("values", jSONArray);
                currentArray.clear();
                string = jSONObject.toString();
            } catch (JSONException e) {
                Log.e(LOG_TAG, "Error fetching retvals", e);
                return "{\"status\" : \"BAD\", \"message\" : \"Failure in RetValManager\"}";
            }
        }
        return string;
    }

    private static void webRTCsendCurrent() throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NotificationCompat.CATEGORY_STATUS, "OK");
            jSONObject.put("values", new JSONArray((Collection) currentArray));
            ReplForm.returnRetvals(jSONObject.toString());
            currentArray.clear();
        } catch (JSONException e) {
            Log.e(LOG_TAG, "Error building retval", e);
        }
    }
}
