.class Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$Util;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Util"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$Util;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethod([Ljava/lang/reflect/Method;Ljava/lang/String;I)Ljava/lang/reflect/Method;
    .locals 5

    .line 67
    const-string v0, "[^a-zA-Z0-9]"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 68
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 69
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    .line 70
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne v3, p3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public parse(Ljava/lang/String;Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;)V
    .locals 5

    .line 79
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    const-string v1, "components"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    const-string v3, "in"

    invoke-virtual {v0, v3, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$Util;->this$0:Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;->c(Lcom/google/appinventor/components/runtime/NiotronRecyclerListView;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 88
    invoke-virtual {p2, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 89
    :goto_0
    invoke-virtual {p2, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 90
    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->getJSONObject(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/NiotronRecyclerListView$Util;->parse(Ljava/lang/String;Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
