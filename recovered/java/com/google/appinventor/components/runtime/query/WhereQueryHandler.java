package com.google.appinventor.components.runtime.query;

import com.google.firebase.firestore.Query;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class WhereQueryHandler implements QueryHandler {
    @Override // com.google.appinventor.components.runtime.query.QueryHandler
    public Query handle(Query query, Object obj) throws JSONException {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            String string = jSONObject.getString("fieldPath");
            String string2 = jSONObject.getString("opStr");
            Object whereValue = parseWhereValue(jSONObject);
            if ("==".equals(string2)) {
                return query.whereEqualTo(string, whereValue);
            }
            if (">".equals(string2)) {
                return query.whereGreaterThan(string, whereValue);
            }
            if (">=".equals(string2)) {
                return query.whereGreaterThanOrEqualTo(string, whereValue);
            }
            if ("<".equals(string2)) {
                return query.whereLessThan(string, whereValue);
            }
            if (!"<=".equals(string2)) {
                throw new RuntimeException("Unknown operator type " + string2);
            }
            return query.whereLessThanOrEqualTo(string, whereValue);
        } catch (JSONException e) {
            FirestoreLog.e("FirestoreJDL", "Error processing where", e);
            throw new RuntimeException(e);
        }
    }

    private Object parseWhereValue(JSONObject jSONObject) throws JSONException {
        Object obj = jSONObject.get("value");
        if (JSONDateWrapper.isWrappedDate(obj)) {
            return JSONDateWrapper.unwrapDate(obj);
        }
        if (JSONTimestampWrapper.isWrappedTimestamp(obj)) {
            return JSONTimestampWrapper.unwrapTimestamp(obj);
        }
        return JSONGeopointWrapper.isWrappedGeoPoint(obj) ? JSONGeopointWrapper.unwrapGeoPoint(obj) : obj;
    }
}
