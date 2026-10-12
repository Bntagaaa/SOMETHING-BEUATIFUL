.class public Lcom/google/appinventor/components/runtime/query/EndBeforeQueryHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/query/QueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/google/firebase/firestore/Query;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 2

    .line 8
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;->isWrappedDate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;->unwrapDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p2

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;->isWrappedTimestamp(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;->unwrapTimestamp(Ljava/lang/Object;)Lcom/google/firebase/Timestamp;

    move-result-object p2

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;->isWrappedGeoPoint(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/query/JSONGeopointWrapper;->unwrapGeoPoint(Ljava/lang/Object;)Lcom/google/firebase/firestore/GeoPoint;

    move-result-object p2

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/Query;->endBefore([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method
