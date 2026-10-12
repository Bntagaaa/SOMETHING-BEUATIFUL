.class Lcom/google/appinventor/components/runtime/FacebookLogin$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FacebookLogin;->getUserData(Lcom/facebook/AccessToken;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FacebookLogin;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/FacebookLogin;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FacebookLogin$2;->this$0:Lcom/google/appinventor/components/runtime/FacebookLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 0

    .line 134
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/FacebookLogin$2;->this$0:Lcom/google/appinventor/components/runtime/FacebookLogin;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/FacebookLogin;->OnGotUserData(Ljava/lang/String;)V

    return-void
.end method
