.class public final Lcom/google/appinventor/components/runtime/NiotronBatteryTools;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTRAS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A new component "
    iconName = "images/niotronBatteryTools.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NiotronBatteryTools$MethodUtils;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NiotronBatteryTools"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final batteryReceiver:Landroid/content/BroadcastReceiver;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private health:Ljava/lang/String;

.field private level:I

.field private listening:Z

.field private plugged:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private temperature:F

.field private voltage:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 62
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 46
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->health:Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->level:I

    .line 49
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->plugged:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->status:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->temperature:F

    .line 52
    iput v1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->voltage:I

    .line 71
    new-instance v0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools$1;-><init>(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->batteryReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 66
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->context:Landroid/content/Context;

    .line 67
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->activity:Landroid/app/Activity;

    .line 68
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->startListeningBattery()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->health:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->level:I

    return-void
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->plugged:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->status:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;F)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->temperature:F

    return-void
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/NiotronBatteryTools;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->voltage:I

    return-void
.end method

.method private startListeningBattery()V
    .locals 4

    .line 89
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->listening:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->batteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/b;->u(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->listening:Z

    :cond_0
    return-void
.end method

.method private stopListeningBattery()V
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->listening:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->listening:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public Health()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current health status. Values can be : cold, dead, good, overheat, over voltage, unknown, unspecified failure."
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->health:Ljava/lang/String;

    return-object v0
.end method

.method public Level()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Values will be between 0 and 100."
    .end annotation

    .line 115
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->level:I

    return v0
.end method

.method public Plugged()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Values can be : usb, ac, wireless or unknown."
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->plugged:Ljava/lang/String;

    return-object v0
.end method

.method public Status()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Values can be : charging, full, discharging, not charging or unknown."
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->status:Ljava/lang/String;

    return-object v0
.end method

.method public Temperature()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the battery temperature in celcius."
    .end annotation

    .line 125
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->temperature:F

    return v0
.end method

.method public Voltage()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the battery voltage level in millivolts."
    .end annotation

    .line 130
    iget v0, p0, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->voltage:I

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->stopListeningBattery()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->startListeningBattery()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NiotronBatteryTools;->stopListeningBattery()V

    return-void
.end method
