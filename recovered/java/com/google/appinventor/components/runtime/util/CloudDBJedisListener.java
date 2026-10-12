package com.google.appinventor.components.runtime.util;

import android.util.Log;
import com.google.appinventor.components.runtime.CloudDB;
import java.io.IOException;
import java.util.List;
import org.json.JSONException;
import redis.clients.jedis.JedisPubSub;

/* loaded from: classes.dex */
public class CloudDBJedisListener extends JedisPubSub {
    private static final boolean DEBUG = false;
    private static String LOG_TAG = "CloudDB";
    public CloudDB cloudDB;
    private Thread myThread = Thread.currentThread();

    public void onSubscribe(String str, int i) {
    }

    public CloudDBJedisListener(CloudDB cloudDB) {
        this.cloudDB = cloudDB;
    }

    public void onMessage(String str, String str2) throws IOException {
        try {
            List list = (List) JsonUtil.getObjectFromJson(str2, false);
            String str3 = (String) list.get(0);
            for (Object obj : (List) list.get(1)) {
                String jsonRepresentationIfValueFileName = JsonUtil.getJsonRepresentationIfValueFileName(this.cloudDB.getForm(), obj);
                if (jsonRepresentationIfValueFileName == null) {
                    this.cloudDB.DataChanged(str3, obj);
                } else {
                    this.cloudDB.DataChanged(str3, jsonRepresentationIfValueFileName);
                }
            }
        } catch (JSONException e) {
            Log.e(LOG_TAG, "onMessage: JSONException", e);
            this.cloudDB.CloudDBError("System Error: " + e.getMessage());
        }
    }

    public void terminate() {
        this.myThread.interrupt();
    }
}
