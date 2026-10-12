.class Landroidx/appcompat/app/AppCompatDelegateImpl$o;
.super Landroidx/appcompat/app/AppCompatDelegateImpl$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "o"
.end annotation


# instance fields
.field public final c:Landroidx/appcompat/app/d0;

.field public final synthetic d:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/d0;)V
    .locals 0

    .line 3680
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$o;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$n;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 3681
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$o;->c:Landroidx/appcompat/app/d0;

    return-void
.end method


# virtual methods
.method public final b()Landroid/content/IntentFilter;
    .locals 2

    .line 3697
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3698
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3699
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3700
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public getApplyableNightMode()I
    .locals 20

    move-object/from16 v1, p0

    .line 144
    iget-object v0, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$o;->c:Landroidx/appcompat/app/d0;

    iget-object v2, v0, Landroidx/appcompat/app/d0;->c:Landroidx/appcompat/app/d0$a;

    .line 144
    iget-wide v3, v2, Landroidx/appcompat/app/d0$a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-lez v8, :cond_0

    .line 84
    iget-boolean v0, v2, Landroidx/appcompat/app/d0$a;->a:Z

    goto/16 :goto_8

    .line 110
    :cond_0
    iget-object v3, v0, Landroidx/appcompat/app/d0;->a:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v4}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 112
    const-string v5, "Failed to get last known location"

    const-string v6, "TwilightManager"

    const/4 v8, 0x0

    iget-object v9, v0, Landroidx/appcompat/app/d0;->b:Landroid/location/LocationManager;

    if-nez v4, :cond_2

    .line 113
    const-string v0, "network"

    .line 134
    :try_start_0
    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    invoke-static {v6, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v8

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_2
    move-object v4, v8

    .line 116
    :goto_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v0}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 119
    const-string v0, "gps"

    .line 134
    :try_start_1
    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    invoke-virtual {v9, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 138
    invoke-static {v6, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    if-eqz v4, :cond_4

    .line 124
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    cmp-long v0, v9, v11

    if-lez v0, :cond_5

    :goto_3
    move-object v4, v8

    goto :goto_4

    :cond_4
    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    const/4 v0, 0x0

    if-eqz v4, :cond_c

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 31
    sget-object v3, Landroidx/appcompat/app/c0;->d:Landroidx/appcompat/app/c0;

    if-nez v3, :cond_6

    .line 32
    new-instance v3, Landroidx/appcompat/app/c0;

    invoke-direct {v3}, Landroidx/appcompat/app/c0;-><init>()V

    sput-object v3, Landroidx/appcompat/app/c0;->d:Landroidx/appcompat/app/c0;

    .line 34
    :cond_6
    sget-object v11, Landroidx/appcompat/app/c0;->d:Landroidx/appcompat/app/c0;

    const-wide/32 v5, 0x5265c00

    sub-long v12, v9, v5

    .line 154
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    .line 153
    invoke-virtual/range {v11 .. v17}, Landroidx/appcompat/app/c0;->calculateTwilight(JDD)V

    .line 157
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    move-object v8, v11

    move-wide v11, v12

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    invoke-virtual/range {v8 .. v14}, Landroidx/appcompat/app/c0;->calculateTwilight(JDD)V

    move-object v11, v8

    .line 158
    iget v3, v11, Landroidx/appcompat/app/c0;->c:I

    if-ne v3, v7, :cond_7

    const/4 v0, 0x1

    .line 159
    :cond_7
    iget-wide v12, v11, Landroidx/appcompat/app/c0;->b:J

    .line 160
    iget-wide v14, v11, Landroidx/appcompat/app/c0;->a:J

    add-long/2addr v5, v9

    move-wide/from16 v16, v14

    .line 164
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    move-wide/from16 v18, v16

    move-wide/from16 v16, v3

    move-wide v3, v12

    move-wide v12, v5

    move-wide/from16 v5, v18

    .line 163
    invoke-virtual/range {v11 .. v17}, Landroidx/appcompat/app/c0;->calculateTwilight(JDD)V

    .line 165
    iget-wide v12, v11, Landroidx/appcompat/app/c0;->b:J

    const-wide/16 v14, -0x1

    cmp-long v8, v3, v14

    if-eqz v8, :cond_b

    cmp-long v8, v5, v14

    if-nez v8, :cond_8

    goto :goto_6

    :cond_8
    cmp-long v8, v9, v5

    if-lez v8, :cond_9

    goto :goto_5

    :cond_9
    cmp-long v8, v9, v3

    if-lez v8, :cond_a

    move-wide v12, v5

    goto :goto_5

    :cond_a
    move-wide v12, v3

    :goto_5
    const-wide/32 v3, 0xea60

    add-long/2addr v12, v3

    goto :goto_7

    :cond_b
    :goto_6
    const-wide/32 v3, 0x2932e00

    add-long v12, v9, v3

    .line 185
    :goto_7
    iput-boolean v0, v2, Landroidx/appcompat/app/d0$a;->a:Z

    .line 186
    iput-wide v12, v2, Landroidx/appcompat/app/d0$a;->b:J

    goto :goto_8

    .line 94
    :cond_c
    const-string v2, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    .line 101
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_d

    const/16 v3, 0x16

    if-lt v2, v3, :cond_e

    :cond_d
    const/4 v0, 0x1

    :cond_e
    :goto_8
    if-eqz v0, :cond_f

    const/4 v0, 0x2

    return v0

    :cond_f
    return v7
.end method

.method public onChange()V
    .locals 1

    .line 3692
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$o;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyDayNight()Z

    return-void
.end method
