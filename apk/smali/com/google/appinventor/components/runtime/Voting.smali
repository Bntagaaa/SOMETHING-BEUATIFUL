.class public Lcom/google/appinventor/components/runtime/Voting;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    designerHelpDescription = "<p>The Voting component enables users to vote on a question by communicating with a Web service to retrieve a ballot and later sending back users\' votes.</p>"
    iconName = "images/voting.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final BALLOT_OPTIONS_PARAMETER:Ljava/lang/String; = "options"

.field private static final BALLOT_QUESTION_PARAMETER:Ljava/lang/String; = "question"

.field private static final ID_REQUESTED_PARAMETER:Ljava/lang/String; = "idRequested"

.field private static final IS_POLLING_PARAMETER:Ljava/lang/String; = "isPolling"

.field private static final LOG_TAG:Ljava/lang/String; = "Voting"

.field private static final REQUESTBALLOT_COMMAND:Ljava/lang/String; = "requestballot"

.field private static final SENDBALLOT_COMMAND:Ljava/lang/String; = "sendballot"

.field private static final USER_CHOICE_PARAMETER:Ljava/lang/String; = "userchoice"

.field private static final USER_ID_PARAMETER:Ljava/lang/String; = "userid"


# instance fields
.field private activityContext:Landroid/app/Activity;

.field private androidUIHandler:Landroid/os/Handler;

.field private ballotOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ballotOptionsString:Ljava/lang/String;

.field private ballotQuestion:Ljava/lang/String;

.field private idRequested:Ljava/lang/Boolean;

.field private isPolling:Ljava/lang/Boolean;

.field private serviceURL:Ljava/lang/String;

.field private theContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private userChoice:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 111
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 112
    const-string v0, "http://androvote.appspot.com"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->serviceURL:Ljava/lang/String;

    .line 113
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Voting;->userId:Ljava/lang/String;

    .line 114
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Voting;->isPolling:Ljava/lang/Boolean;

    .line 115
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Voting;->idRequested:Ljava/lang/Boolean;

    .line 116
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotQuestion:Ljava/lang/String;

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotOptions:Ljava/util/ArrayList;

    .line 118
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Voting;->userChoice:Ljava/lang/String;

    .line 120
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Voting;->androidUIHandler:Landroid/os/Handler;

    .line 121
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->theContainer:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 122
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->activityContext:Landroid/app/Activity;

    .line 126
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->serviceURL:Ljava/lang/String;

    return-void
.end method

.method private JSONArrayToArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 343
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 344
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/Voting;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Voting;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotOptionsString:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Voting;->isPolling:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Voting;->userChoice:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Voting;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/Voting;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotOptions:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotOptionsString:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotQuestion:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic i(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->idRequested:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic j(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->isPolling:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic k(Lcom/google/appinventor/components/runtime/Voting;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Voting;->JSONArrayToArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/google/appinventor/components/runtime/Voting;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Voting;->postRequestBallot()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Voting;->postSendBallot(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private postRequestBallot()V
    .locals 5

    .line 268
    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$2;-><init>(Lcom/google/appinventor/components/runtime/Voting;)V

    .line 333
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Voting;->serviceURL:Ljava/lang/String;

    const-string v3, "requestballot"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommandReturningObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method private postSendBallot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 387
    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$4;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$4;-><init>(Lcom/google/appinventor/components/runtime/Voting;)V

    .line 409
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Voting;->serviceURL:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/http/NameValuePair;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "userchoice"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v4, v3, p1

    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "userid"

    invoke-direct {p1, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    aput-object p1, v3, p2

    .line 411
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 409
    const-string p2, "sendballot"

    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method


# virtual methods
.method public BallotOptions()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The list of ballot options."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotOptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public BallotQuestion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The question to be voted on."
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->ballotQuestion:Ljava/lang/String;

    return-object v0
.end method

.method public GotBallot()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a ballot was retrieved from the Web service and that the properties <code>BallotQuestion</code> and <code>BallotOptions</code> have been set.  This is always preceded by a call to the method <code>RequestBallot</code>."
    .end annotation

    const/4 v0, 0x0

    .line 360
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GotBallot"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotBallotConfirmation()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 423
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GotBallotConfirmation"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public NoOpenPoll()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    .line 368
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NoOpenPoll"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RequestBallot()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a request for a ballot to the Web service specified by the property <code>ServiceURL</code>.  When the completes, one of the following events will be raised: <code>GotBallot</code>, <code>NoOpenPoll</code>, or <code>WebServiceError</code>."
    .end annotation

    .line 262
    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$1;-><init>(Lcom/google/appinventor/components/runtime/Voting;)V

    .line 264
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SendBallot()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a completed ballot to the Web service.  This should not be called until the properties <code>UserId</code> and <code>UserChoice</code> have been set by the application."
    .end annotation

    .line 381
    new-instance v0, Lcom/google/appinventor/components/runtime/Voting$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Voting$3;-><init>(Lcom/google/appinventor/components/runtime/Voting;)V

    .line 383
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ServiceURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL of the Voting service"
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->serviceURL:Ljava/lang/String;

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "http://androvote.appspot.com"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->serviceURL:Ljava/lang/String;

    return-void
.end method

.method public UserChoice()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The ballot choice to send to the server, which must be set before <code>SendBallot</code> is called.  This must be one of <code>BallotOptions</code>."
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->userChoice:Ljava/lang/String;

    return-object v0
.end method

.method public UserChoice(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->userChoice:Ljava/lang/String;

    return-void
.end method

.method public UserEmailAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The email address associated with this device. This property has been deprecated and always returns the empty text value."
    .end annotation

    .line 238
    const-string v0, ""

    return-object v0
.end method

.method public UserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A text identifying the voter that is sent to the Voting server along with the vote.  This must be set before <code>SendBallot</code> is called."
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public UserId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting;->userId:Ljava/lang/String;

    return-void
.end method

.method public WebServiceError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 436
    const-string v0, "WebServiceError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
