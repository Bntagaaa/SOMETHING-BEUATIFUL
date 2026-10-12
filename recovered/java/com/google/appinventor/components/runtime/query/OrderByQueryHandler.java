package com.google.appinventor.components.runtime.query;

import com.google.firebase.firestore.Query;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class OrderByQueryHandler implements QueryHandler {
    @Override // com.google.appinventor.components.runtime.query.QueryHandler
    public Query handle(Query query, Object obj) throws JSONException {
        JSONObject jSONObject = (JSONObject) obj;
        try {
            Query.Direction direction = Query.Direction.ASCENDING;
            if ("desc".equals(jSONObject.getString("direction"))) {
                direction = Query.Direction.DESCENDING;
            }
            query = query.orderBy(jSONObject.getString("field"), direction);
            FirestoreLog.d("FirestoreJDL", "Order by " + jSONObject.getString("field") + " (" + direction.toString() + ")");
            return query;
        } catch (JSONException e) {
            FirestoreLog.e("FirestoreJDL", "Error processing ordering", e);
            return query;
        }
    }
}
