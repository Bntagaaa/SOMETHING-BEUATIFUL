.class Lcom/google/appinventor/components/runtime/AppsFlyer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/AppsFlyerConversionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AppsFlyer;->InitializeSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AppsFlyer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AppsFlyer;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppsFlyer$1;->this$0:Lcom/google/appinventor/components/runtime/AppsFlyer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppOpenAttribution(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onAttributionFailure(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onConversionDataFail(Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppsFlyer$1;->this$0:Lcom/google/appinventor/components/runtime/AppsFlyer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AppsFlyer;->ConversionDataFail(Ljava/lang/String;)V

    return-void
.end method

.method public onConversionDataSuccess(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 91
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AppsFlyer$1;->this$0:Lcom/google/appinventor/components/runtime/AppsFlyer;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/AppsFlyer;->ConversionDataSuccess(Lcom/google/appinventor/components/runtime/util/YailDictionary;)V

    return-void
.end method
