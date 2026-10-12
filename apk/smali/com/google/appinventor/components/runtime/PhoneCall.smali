.class public Lcom/google/appinventor/components/runtime/PhoneCall;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A non-visible component that makes a phone call to the number specified in the <code>PhoneNumber</code> property, which can be set either in the Designer or Blocks Editor. The component has a <code>MakePhoneCall</code> method, enabling the program to launch a phone call.</p><p>Often, this component is used with the <code>ContactPicker</code> component, which lets the user select a contact from the ones stored on the phone and sets the <code>PhoneNumber</code> property to the contact\'s phone number.</p><p>To directly specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text with the specified digits (e.g., \"6505551212\").  Dashes, dots, and parentheses may be included (e.g., \"(650)-555-1212\") but will be ignored; spaces may not be included.</p>"
    iconName = "images/phoneCall.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation build Lcom/google/appinventor/components/annotations/UsesQueries;
    intents = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
            actionElements = {
                .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                    name = "android.intent.action.DIAL"
                .end subannotation
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;,
        Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;
    }
.end annotation


# static fields
.field private static final PHONECALL_REQUEST_CODE:I = 0x50484f4e


# instance fields
.field private final callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

.field private final context:Landroid/content/Context;

.field private didRegisterReceiver:Z

.field private havePermission:Z

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 95
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->havePermission:Z

    .line 87
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->didRegisterReceiver:Z

    .line 96
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    .line 97
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 98
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const v0, 0x50484f4e

    invoke-virtual {p1, p0, v0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V

    .line 99
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneNumber(Ljava/lang/String;)V

    .line 100
    new-instance p1, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;-><init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/PhoneCall;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->havePermission:Z

    return-void
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/PhoneCall;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PhoneCall;->registerCallStateMonitor()V

    return-void
.end method

.method private registerCallStateMonitor()V
    .locals 4

    .line 348
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 349
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->didRegisterReceiver:Z

    return-void
.end method

.method private unregisterCallStateMonitor()V
    .locals 2

    .line 359
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->didRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 361
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->didRegisterReceiver:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public IncomingCallAnswered(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that an incoming phone call is answered. phoneNumber is the incoming call phone number."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.PROCESS_OUTGOING_CALLS",
            "android.permission.READ_CALL_LOG",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .line 270
    const-string v0, "IncomingCallAnswered"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Initialize()V
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->doesAppDeclarePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/PhoneCall$1;

    const-string v3, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v4, "android.permission.READ_PHONE_STATE"

    filled-new-array {v3, v4, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "Initialize"

    invoke-direct {v2, p0, p0, v3, v1}, Lcom/google/appinventor/components/runtime/PhoneCall$1;-><init>(Lcom/google/appinventor/components/runtime/PhoneCall;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    :cond_0
    return-void
.end method

.method public MakePhoneCall()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Launches the default dialer app set to start a phone call usingthe number in the PhoneNumber property."
    .end annotation

    .line 143
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->phoneNumber:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "tel"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const v2, 0x50484f4e

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public MakePhoneCallDirect()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Directly initiates a phone call using the number in the PhoneNumber property."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.CALL_PHONE"
        }
    .end annotation

    .line 159
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->havePermission:Z

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/PhoneCall$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/PhoneCall$2;-><init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/PhoneCallUtil;->makePhoneCall(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public PhoneCallEnded(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/EndedStatus;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a phone call has ended. If status is 1, incoming call is missed or rejected; if status is 2, incoming call is answered before hanging up; if status is 3, outgoing call is hung up. phoneNumber is the ended call phone number."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.PROCESS_OUTGOING_CALLS",
            "android.permission.READ_CALL_LOG",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/common/EndedStatus;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/EndedStatus;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V
    .locals 2

    .line 250
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/EndedStatus;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "PhoneCallEnded"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PhoneCallStarted(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/StartedStatus;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a phonecall has started. If status is 1, incoming call is ringing; if status is 2, outgoing call is dialled. phoneNumber is the incoming/outgoing phone number."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.PROCESS_OUTGOING_CALLS",
            "android.permission.READ_CALL_LOG",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/common/StartedStatus;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/StartedStatus;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V
    .locals 2

    .line 210
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/StartedStatus;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "PhoneCallStarted"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneNumber(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 367
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PhoneCall;->unregisterCallStateMonitor()V

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 0

    const p2, 0x50484f4e

    if-ne p1, p2, :cond_0

    .line 276
    sget-object p1, Lcom/google/appinventor/components/common/StartedStatus;->Outgoing:Lcom/google/appinventor/components/common/StartedStatus;

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
