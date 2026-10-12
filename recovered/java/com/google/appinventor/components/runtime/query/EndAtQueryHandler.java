package com.google.appinventor.components.runtime.query;

import com.google.firebase.firestore.Query;

/* loaded from: classes.dex */
public class EndAtQueryHandler implements QueryHandler {
    @Override // com.google.appinventor.components.runtime.query.QueryHandler
    public Query handle(Query query, Object obj) throws NumberFormatException {
        if (JSONDateWrapper.isWrappedDate(obj)) {
            obj = JSONDateWrapper.unwrapDate(obj);
        } else if (JSONTimestampWrapper.isWrappedTimestamp(obj)) {
            obj = JSONTimestampWrapper.unwrapTimestamp(obj);
        } else if (JSONGeopointWrapper.isWrappedGeoPoint(obj)) {
            obj = JSONGeopointWrapper.unwrapGeoPoint(obj);
        }
        return query.endAt(new Object[]{obj});
    }
}
