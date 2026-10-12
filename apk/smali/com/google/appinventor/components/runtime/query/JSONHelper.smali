.class public Lcom/google/appinventor/components/runtime/query/JSONHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJSON(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 23
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 24
    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/JSONHelper;->toJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_2

    .line 26
    :cond_0
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 27
    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/JSONHelper;->toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    goto :goto_2

    .line 28
    :cond_1
    instance-of v3, v2, Ljava/util/Date;

    if-eqz v3, :cond_2

    .line 29
    new-instance v3, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;

    check-cast v2, Ljava/util/Date;

    invoke-direct {v3, v2}, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;-><init>(Ljava/util/Date;)V

    :goto_1
    move-object v2, v3

    goto :goto_2

    .line 30
    :cond_2
    instance-of v3, v2, Lcom/google/firebase/Timestamp;

    if-eqz v3, :cond_3

    .line 31
    new-instance v3, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;

    check-cast v2, Lcom/google/firebase/Timestamp;

    invoke-direct {v3, v2}, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;-><init>(Lcom/google/firebase/Timestamp;)V

    goto :goto_1

    .line 32
    :cond_3
    instance-of v3, v2, Lcom/google/firebase/firestore/GeoPoint;

    if-eqz v3, :cond_4

    .line 33
    new-instance v3, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;

    check-cast v2, Lcom/google/firebase/firestore/GeoPoint;

    invoke-direct {v3, v2}, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;-><init>(Lcom/google/firebase/firestore/GeoPoint;)V

    goto :goto_1

    .line 35
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 44
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 45
    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/query/JSONHelper;->toJSON(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_2

    .line 47
    :cond_0
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 48
    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/query/JSONHelper;->toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_2

    .line 49
    :cond_1
    instance-of v2, v1, Ljava/util/Date;

    if-eqz v2, :cond_2

    .line 50
    new-instance v2, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;

    check-cast v1, Ljava/util/Date;

    invoke-direct {v2, v1}, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;-><init>(Ljava/util/Date;)V

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 51
    :cond_2
    instance-of v2, v1, Lcom/google/firebase/Timestamp;

    if-eqz v2, :cond_3

    .line 52
    new-instance v2, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;

    check-cast v1, Lcom/google/firebase/Timestamp;

    invoke-direct {v2, v1}, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;-><init>(Lcom/google/firebase/Timestamp;)V

    goto :goto_1

    .line 53
    :cond_3
    instance-of v2, v1, Lcom/google/firebase/firestore/GeoPoint;

    if-eqz v2, :cond_4

    .line 54
    new-instance v2, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;

    check-cast v1, Lcom/google/firebase/firestore/GeoPoint;

    invoke-direct {v2, v1}, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;-><init>(Lcom/google/firebase/firestore/GeoPoint;)V

    goto :goto_1

    .line 56
    :cond_4
    :goto_2
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static toSettable(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 64
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/google/appinventor/components/runtime/query/JSONHelper$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/query/JSONHelper$1;-><init>()V

    .line 66
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/query/JSONHelper$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static toSettableMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/google/appinventor/components/runtime/query/JSONHelper$2;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/query/JSONHelper$2;-><init>()V

    .line 75
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/query/JSONHelper$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 78
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 82
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;->isWrappedGeoPoint(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;->unwrapGeoPoint(Ljava/lang/Object;)Lcom/google/firebase/firestore/GeoPoint;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;->isWrappedDate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;->unwrapDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;->isWrappedTimestamp(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;->unwrapTimestamp(Ljava/lang/Object;)Lcom/google/firebase/Timestamp;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_3
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 89
    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/JSONHelper;->toSettableMapInternal(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_4
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/FieldValueHelper;->isWrappedFieldValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/FieldValueHelper;->unwrapFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public static toSettableMapInternal(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 103
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;->isWrappedDate(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;->unwrapDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;->isWrappedGeoPoint(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;->unwrapGeoPoint(Ljava/lang/Object;)Lcom/google/firebase/firestore/GeoPoint;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;->isWrappedTimestamp(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;->unwrapTimestamp(Ljava/lang/Object;)Lcom/google/firebase/Timestamp;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_3
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 110
    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/JSONHelper;->toSettableMapInternal(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_4
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/FieldValueHelper;->isWrappedFieldValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/query/FieldValueHelper;->unwrapFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-object p0
.end method
