package com.google.appinventor.components.runtime.query;

import com.google.firebase.Timestamp;
import com.google.firebase.firestore.GeoPoint;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class JSONHelper {
    public static JSONObject toJSON(Map<String, Object> map) throws JSONException {
        Object jSONGeopointWrapper;
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Map) {
                value = toJSON((Map) value);
            } else if (value instanceof List) {
                value = toJSONArray((List) value);
            } else {
                if (value instanceof Date) {
                    jSONGeopointWrapper = new JSONDateWrapper((Date) value);
                } else if (value instanceof Timestamp) {
                    jSONGeopointWrapper = new JSONTimestampWrapper((Timestamp) value);
                } else if (value instanceof GeoPoint) {
                    jSONGeopointWrapper = new JSONGeopointWrapper((GeoPoint) value);
                }
                value = jSONGeopointWrapper;
            }
            jSONObject.put(entry.getKey(), value);
        }
        return jSONObject;
    }

    public static JSONArray toJSONArray(List list) throws JSONException {
        Object jSONGeopointWrapper;
        JSONArray jSONArray = new JSONArray();
        for (Object jSONArray2 : list) {
            if (jSONArray2 instanceof Map) {
                jSONArray2 = toJSON((Map) jSONArray2);
            } else if (jSONArray2 instanceof List) {
                jSONArray2 = toJSONArray((List) jSONArray2);
            } else {
                if (jSONArray2 instanceof Date) {
                    jSONGeopointWrapper = new JSONDateWrapper((Date) jSONArray2);
                } else if (jSONArray2 instanceof Timestamp) {
                    jSONGeopointWrapper = new JSONTimestampWrapper((Timestamp) jSONArray2);
                } else if (jSONArray2 instanceof GeoPoint) {
                    jSONGeopointWrapper = new JSONGeopointWrapper((GeoPoint) jSONArray2);
                }
                jSONArray2 = jSONGeopointWrapper;
            }
            jSONArray.put(jSONArray2);
        }
        return jSONArray;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.appinventor.components.runtime.query.JSONHelper$1] */
    public static Object toSettable(Object obj) {
        if (!(obj instanceof JSONObject)) {
            return obj;
        }
        return new Gson().fromJson(obj.toString(), new TypeToken<Map<String, Object>>() { // from class: com.google.appinventor.components.runtime.query.JSONHelper.1
        }.getType());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.appinventor.components.runtime.query.JSONHelper$2] */
    public static Map<String, Object> toSettableMap(JSONObject jSONObject) {
        Map<String, Object> map = (Map) new Gson().fromJson(jSONObject.toString(), new TypeToken<Map<String, Object>>() { // from class: com.google.appinventor.components.runtime.query.JSONHelper.2
        }.getType());
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (JSONGeopointWrapper.isWrappedGeoPoint(value)) {
                entry.setValue(JSONGeopointWrapper.unwrapGeoPoint(value));
            } else if (JSONDateWrapper.isWrappedDate(value)) {
                entry.setValue(JSONDateWrapper.unwrapDate(value));
            } else if (JSONTimestampWrapper.isWrappedTimestamp(map)) {
                entry.setValue(JSONTimestampWrapper.unwrapTimestamp(map));
            } else if (value instanceof Map) {
                entry.setValue(toSettableMapInternal((Map) value));
            } else if (FieldValueHelper.isWrappedFieldValue(value)) {
                entry.setValue(FieldValueHelper.unwrapFieldValue(entry.getValue()));
            }
        }
        return map;
    }

    public static Map<Object, Object> toSettableMapInternal(Map<Object, Object> map) {
        for (Map.Entry<Object, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (JSONDateWrapper.isWrappedDate(value)) {
                entry.setValue(JSONDateWrapper.unwrapDate(value));
            } else if (JSONGeopointWrapper.isWrappedGeoPoint(value)) {
                entry.setValue(JSONGeopointWrapper.unwrapGeoPoint(value));
            } else if (JSONTimestampWrapper.isWrappedTimestamp(map)) {
                entry.setValue(JSONTimestampWrapper.unwrapTimestamp(map));
            } else if (value instanceof Map) {
                entry.setValue(toSettableMapInternal((Map) value));
            } else if (FieldValueHelper.isWrappedFieldValue(value)) {
                entry.setValue(FieldValueHelper.unwrapFieldValue(entry.getValue()));
            }
        }
        return map;
    }
}
