package com.google.appinventor.components.runtime.query;

import com.google.firebase.firestore.Query;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class QueryHelper {
    private static Map<String, QueryHandler> queryHandlers;

    static {
        HashMap map = new HashMap();
        queryHandlers = map;
        map.put("limit", new LimitQueryHandler());
        queryHandlers.put("where", new WhereQueryHandler());
        queryHandlers.put("orderBy", new OrderByQueryHandler());
        queryHandlers.put("startAfter", new StartAfterQueryHandler());
        queryHandlers.put("startAt", new StartAtQueryHandler());
        queryHandlers.put("endAt", new EndAtQueryHandler());
        queryHandlers.put("endBefore", new EndBeforeQueryHandler());
    }

    public static Query processQueries(JSONArray jSONArray, Query query) throws JSONException {
        FirestoreLog.d("FirestoreJDL", "Processing queries");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            String string = jSONObject.getString("queryType");
            if (queryHandlers.containsKey(string)) {
                query = queryHandlers.get(string).handle(query, jSONObject.get("value"));
            } else {
                FirestoreLog.e("FirestoreJDL", "Unknown query type " + string);
            }
        }
        return query;
    }
}
