.class public Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static timestampPrefix:Ljava/lang/String; = "__TIMESTAMP:"


# instance fields
.field private timestamp:Lcom/google/firebase/Timestamp;


# direct methods
.method public constructor <init>(Lcom/google/firebase/Timestamp;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;->timestamp:Lcom/google/firebase/Timestamp;

    return-void
.end method

.method public static isWrappedTimestamp(Ljava/lang/Object;)Z
    .locals 1

    .line 20
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;->timestampPrefix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setTimestampPrefix(Ljava/lang/String;)V
    .locals 0

    .line 14
    sput-object p0, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;->timestampPrefix:Ljava/lang/String;

    return-void
.end method

.method public static unwrapTimestamp(Ljava/lang/Object;)Lcom/google/firebase/Timestamp;
    .locals 3

    .line 28
    check-cast p0, Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;->timestampPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 35
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 37
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 38
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-wide v0, v1

    const/4 p0, 0x0

    .line 43
    :goto_0
    new-instance v2, Lcom/google/firebase/Timestamp;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 48
    sget-object v0, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;->timestampPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;->timestamp:Lcom/google/firebase/Timestamp;

    invoke-virtual {v1}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/query/JSONTimestampWrapper;->timestamp:Lcom/google/firebase/Timestamp;

    invoke-virtual {v3}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
