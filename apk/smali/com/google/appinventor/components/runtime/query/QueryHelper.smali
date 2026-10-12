.class public Lcom/google/appinventor/components/runtime/query/QueryHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static queryHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/query/QueryHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    .line 16
    new-instance v1, Lcom/google/appinventor/components/runtime/query/LimitQueryHandler;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/query/LimitQueryHandler;-><init>()V

    const-string v2, "limit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    new-instance v1, Lcom/google/appinventor/components/runtime/query/WhereQueryHandler;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/query/WhereQueryHandler;-><init>()V

    const-string v2, "where"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    new-instance v1, Lcom/google/appinventor/components/runtime/query/OrderByQueryHandler;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/query/OrderByQueryHandler;-><init>()V

    const-string v2, "orderBy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    new-instance v1, Lcom/google/appinventor/components/runtime/query/StartAfterQueryHandler;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/query/StartAfterQueryHandler;-><init>()V

    const-string v2, "startAfter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    new-instance v1, Lcom/google/appinventor/components/runtime/query/StartAtQueryHandler;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/query/StartAtQueryHandler;-><init>()V

    const-string v2, "startAt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    new-instance v1, Lcom/google/appinventor/components/runtime/query/EndAtQueryHandler;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/query/EndAtQueryHandler;-><init>()V

    const-string v2, "endAt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    new-instance v1, Lcom/google/appinventor/components/runtime/query/EndBeforeQueryHandler;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/query/EndBeforeQueryHandler;-><init>()V

    const-string v2, "endBefore"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processQueries(Lorg/json/JSONArray;Lcom/google/firebase/firestore/Query;)Lcom/google/firebase/firestore/Query;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 28
    const-string v0, "Processing queries"

    const-string v1, "FirestoreJDL"

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 32
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 34
    const-string v4, "queryType"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    sget-object v5, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    sget-object v5, Lcom/google/appinventor/components/runtime/query/QueryHelper;->queryHandlers:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/query/QueryHandler;

    const-string v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, p1, v3}, Lcom/google/appinventor/components/runtime/query/QueryHandler;->handle(Lcom/google/firebase/firestore/Query;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    goto :goto_1

    .line 39
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unknown query type "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/query/FirestoreLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method
