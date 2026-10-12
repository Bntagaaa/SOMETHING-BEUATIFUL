package com.google.appinventor.components.runtime.query;

import com.google.firebase.firestore.Query;

/* loaded from: classes.dex */
public class LimitQueryHandler implements QueryHandler {
    @Override // com.google.appinventor.components.runtime.query.QueryHandler
    public Query handle(Query query, Object obj) {
        Long lValueOf;
        System.out.println("Type of limit ".concat(obj.getClass().getName()));
        if (obj instanceof String) {
            lValueOf = Long.valueOf(Long.parseLong((String) obj));
        } else if (obj instanceof Number) {
            lValueOf = Long.valueOf(((Number) obj).longValue());
        } else {
            throw new IllegalArgumentException("Limit should be instanceof String or Number, got : ".concat(obj.getClass().getName()));
        }
        return query.limit(lValueOf.longValue());
    }
}
