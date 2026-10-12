.class Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/CloudDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "storedValue"
.end annotation


# instance fields
.field private tag:Ljava/lang/String;

.field private valueList:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->tag:Ljava/lang/String;

    .line 262
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->valueList:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getValueList()Lorg/json/JSONArray;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->valueList:Lorg/json/JSONArray;

    return-object v0
.end method
