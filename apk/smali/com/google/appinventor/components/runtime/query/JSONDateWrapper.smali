.class public Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;
.super Ljava/util/Date;
.source "SourceFile"


# static fields
.field private static datePrefix:Ljava/lang/String; = "__DATE:"


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 12
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-void
.end method

.method public static isWrappedDate(Ljava/lang/Object;)Z
    .locals 1

    .line 22
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;->datePrefix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setDatePrefix(Ljava/lang/String;)V
    .locals 0

    .line 16
    sput-object p0, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;->datePrefix:Ljava/lang/String;

    return-void
.end method

.method public static unwrapDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 3

    .line 30
    check-cast p0, Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;->datePrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 34
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 39
    sget-object v0, Lcom/google/appinventor/components/runtime/query/JSONDateWrapper;->datePrefix:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
