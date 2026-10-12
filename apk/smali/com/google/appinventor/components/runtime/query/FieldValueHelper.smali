.class public Lcom/google/appinventor/components/runtime/query/FieldValueHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static fieldValueDelete:Ljava/lang/String; = "__DELETE"

.field private static fieldValueServerTimestamp:Ljava/lang/String; = "__SERVERTIMESTAMP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWrappedFieldValue(Ljava/lang/Object;)Z
    .locals 2

    .line 33
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 34
    check-cast p0, Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/google/appinventor/components/runtime/query/FieldValueHelper;->fieldValueDelete:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 40
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/query/FieldValueHelper;->fieldValueServerTimestamp:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static setDeletePrefix(Ljava/lang/String;)V
    .locals 0

    .line 11
    sput-object p0, Lcom/google/appinventor/components/runtime/query/FieldValueHelper;->fieldValueDelete:Ljava/lang/String;

    return-void
.end method

.method public static setServerTimestampPrefix(Ljava/lang/String;)V
    .locals 0

    .line 15
    sput-object p0, Lcom/google/appinventor/components/runtime/query/FieldValueHelper;->fieldValueServerTimestamp:Ljava/lang/String;

    return-void
.end method

.method public static unwrapFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 19
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 21
    sget-object v1, Lcom/google/appinventor/components/runtime/query/FieldValueHelper;->fieldValueDelete:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-static {}, Lcom/google/firebase/firestore/FieldValue;->delete()Lcom/google/firebase/firestore/FieldValue;

    move-result-object p0

    return-object p0

    .line 25
    :cond_0
    sget-object v1, Lcom/google/appinventor/components/runtime/query/FieldValueHelper;->fieldValueServerTimestamp:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-static {}, Lcom/google/firebase/firestore/FieldValue;->serverTimestamp()Lcom/google/firebase/firestore/FieldValue;

    move-result-object p0

    :cond_1
    return-object p0
.end method
