.class public Lcom/google/appinventor/components/runtime/Pedometer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/RealTimeDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Component that acts like a Pedometer. It senses motion via the Accelerometer and attempts to determine if a step has been taken. Using a configurable stride length, it can estimate the distance traveled as well. "
    iconName = "images/pedometer.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;",
        "Lcom/google/appinventor/components/runtime/Component;",
        "Landroid/hardware/SensorEventListener;",
        "Lcom/google/appinventor/components/runtime/Deleteable;",
        "Lcom/google/appinventor/components/runtime/RealTimeDataSource<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTERVAL_VARIATION:I = 0xfa

.field private static final NUM_INTERVALS:I = 0x2

.field private static final PEAK_VALLEY_RANGE:F = 40.0f

.field private static final PREFS_NAME:Ljava/lang/String; = "PedometerPrefs"

.field private static final STRIDE_LENGTH:F = 0.73f

.field private static final TAG:Ljava/lang/String; = "Pedometer"

.field private static final WIN_SIZE:I = 0x64


# instance fields
.field private avgPos:I

.field private avgWindow:[F

.field private final context:Landroid/content/Context;

.field private dataSourceObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private foundNonStep:Z

.field private foundValley:Z

.field private intervalPos:I

.field private lastValley:F

.field private lastValues:[F

.field private numStepsRaw:I

.field private numStepsWithFilter:I

.field private pedometerPaused:Z

.field private prevStopClockTime:J

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private startPeaking:Z

.field private startTime:J

.field private stepInterval:[J

.field private stepTimestamp:J

.field private stopDetectionTimeout:I

.field private strideLength:F

.field private totalDistance:F

.field private winPos:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .line 82
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/16 v0, 0x7d0

    .line 59
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    .line 61
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    const/16 v2, 0x64

    .line 63
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    const v2, 0x3f3ae148    # 0.73f

    .line 64
    iput v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 65
    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    const/4 v3, 0x2

    .line 66
    new-array v3, v3, [J

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    const-wide/16 v3, 0x0

    .line 67
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 68
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 69
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 70
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    const/4 v5, 0x1

    .line 71
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    .line 72
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    const/16 v6, 0xa

    .line 74
    new-array v6, v6, [F

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    .line 75
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    .line 78
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->dataSourceObservers:Ljava/util/Set;

    .line 83
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    .line 85
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    .line 86
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 87
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 88
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 90
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 91
    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    .line 93
    const-string v5, "sensor"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    .line 96
    const-string v5, "PedometerPrefs"

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 97
    const-string v5, "Pedometer.stridelength"

    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 98
    const-string v2, "Pedometer.distance"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 99
    const-string v1, "Pedometer.prevStepCount"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 100
    const-string v0, "Pedometer.clockTime"

    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 101
    iget p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 103
    const-string p1, "Pedometer"

    const-string v0, "Pedometer Created"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private areStepsEquallySpaced()Z
    .locals 11

    .line 336
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-wide v6, v0, v4

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_0

    add-int/lit8 v5, v5, 0x1

    long-to-float v6, v6

    add-float/2addr v2, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-float v0, v5

    div-float/2addr v2, v0

    .line 343
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    aget-wide v5, v0, v4

    long-to-float v5, v5

    sub-float/2addr v5, v2

    .line 344
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x437a0000    # 250.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private isPeak()Z
    .locals 6

    .line 355
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v0, v0, 0x32

    const/16 v1, 0x64

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-eq v3, v0, :cond_0

    .line 357
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v5, v4, v3

    aget v4, v4, v0

    cmpl-float v4, v5, v4

    if-lez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isValley()Z
    .locals 6

    .line 368
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v0, v0, 0x32

    const/16 v1, 0x64

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-eq v3, v0, :cond_0

    .line 370
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v5, v4, v3

    aget v4, v4, v0

    cmpg-float v4, v5, v4

    if-gez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public CalibrateStrideLength(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public CalibrateStrideLength()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public CalibrationFailed()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public Distance()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The approximate distance traveled in meters."
    .end annotation

    .line 289
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    return v0
.end method

.method public ElapsedTime()J
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Time elapsed in milliseconds since the pedometer was started."
    .end annotation

    .line 300
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_0

    .line 301
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    return-wide v0

    .line 303
    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public GPSAvailable()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public GPSLost()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public Moving()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public Pause()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause counting of steps and distance."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Stop()V

    return-void
.end method

.method public Reset()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resets the step counter, distance measure and time running."
    .end annotation

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 142
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    const-wide/16 v0, 0x0

    .line 144
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    return-void
.end method

.method public Resume()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes counting, synonym of Start."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Start()V

    return-void
.end method

.method public Save()V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves the pedometer state to the phone. Permits permits accumulation of steps and distance between invocations of an App that uses the pedometer. Different Apps will have their own saved state."
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v1, "PedometerPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    const-string v1, "Pedometer.stridelength"

    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 178
    const-string v1, "Pedometer.distance"

    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 179
    const-string v1, "Pedometer.prevStepCount"

    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 180
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    const-string v2, "Pedometer.clockTime"

    if-eqz v1, :cond_0

    .line 181
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 183
    :cond_0
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v5, v7

    add-long/2addr v5, v3

    .line 183
    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 186
    :goto_0
    const-string v1, "Pedometer.closeTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    const-string v0, "Pedometer"

    const-string v1, "Pedometer state saved."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SimpleStep(IF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a raw step is detected."
    .end annotation

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SimpleSteps"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/Pedometer;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "Distance"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/Pedometer;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "SimpleStep"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SimpleSteps()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number of simple steps taken since the pedometer has started."
    .end annotation

    .line 315
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    return v0
.end method

.method public Start()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start counting steps"
    .end annotation

    .line 113
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 115
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    .line 116
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 115
    invoke-virtual {v1, p0, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    :cond_0
    return-void
.end method

.method public StartedMoving()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public Stop()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop counting steps"
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 130
    const-string v0, "Pedometer"

    const-string v1, "Unregistered listener on pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    :cond_0
    return-void
.end method

.method public StopDetectionTimeout()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 278
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    return v0
.end method

.method public StopDetectionTimeout(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The duration in milliseconds of idleness (no steps detected) after which to go into a \"stopped\" state"
    .end annotation

    .line 268
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    return-void
.end method

.method public StoppedMoving()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public StrideLength()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 253
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    return v0
.end method

.method public StrideLength(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.73"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the average stride length in meters."
    .end annotation

    .line 242
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    return-void
.end method

.method public UseGPS(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property has been deprecated."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public WalkStep(IF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a walking step is detected. A walking step is a step that appears to be involved in forward motion."
    .end annotation

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "WalkSteps"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/Pedometer;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "Distance"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/Pedometer;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "WalkStep"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public WalkSteps()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the number of walk steps taken since the pedometer has started."
    .end annotation

    .line 326
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    return v0
.end method

.method public addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDataValue(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    .line 551
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "Distance"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "SimpleSteps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "WalkSteps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    .line 562
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 559
    :pswitch_0
    iget p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 553
    :pswitch_1
    iget p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 556
    :pswitch_2
    iget p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x33ecd942 -> :sswitch_2
        0xe2e9875 -> :sswitch_1
        0x150bf015 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Pedometer;->getDataValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Pedometer;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 534
    invoke-interface {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onReceiveValue(Lcom/google/appinventor/components/runtime/RealTimeDataSource;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 381
    const-string p1, "Pedometer"

    const-string p2, "Accelerometer accuracy changed."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    .line 386
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 391
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    aget v6, p1, v4

    mul-float v6, v6, v6

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 394
    :cond_1
    iget p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 p1, p1, 0x32

    rem-int/lit8 p1, p1, 0x64

    .line 397
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->isPeak()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 398
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v0, v0, p1

    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    sub-float/2addr v0, v6

    const/high16 v6, 0x42200000    # 40.0f

    cmpl-float v0, v0, v6

    if-lez v0, :cond_4

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 401
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    iget v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    iget-wide v9, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    sub-long v9, v6, v9

    aput-wide v9, v0, v8

    add-int/2addr v8, v1

    .line 402
    rem-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    .line 403
    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 404
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->areStepsEquallySpaced()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    if-eqz v0, :cond_2

    .line 406
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 407
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    mul-float v6, v6, v4

    add-float/2addr v6, v0

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 408
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    .line 410
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 411
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-virtual {p0, v0, v6}, Lcom/google/appinventor/components/runtime/Pedometer;->WalkStep(IF)V

    .line 412
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    add-float/2addr v0, v6

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    goto :goto_1

    .line 414
    :cond_3
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    .line 416
    :goto_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 417
    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-virtual {p0, v0, v6}, Lcom/google/appinventor/components/runtime/Pedometer;->SimpleStep(IF)V

    .line 418
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 422
    :cond_4
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->isValley()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 423
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 424
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget p1, v0, p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    .line 427
    :cond_5
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    aput v5, p1, v0

    add-int/2addr v0, v1

    .line 428
    array-length v5, p1

    rem-int/2addr v0, v5

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    .line 429
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    iget v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aput v2, v0, v5

    .line 430
    array-length v0, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    aget v5, p1, v2

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    iget v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget v8, v6, v7

    add-float/2addr v8, v5

    aput v8, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 431
    :cond_6
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget v2, p1, v0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    array-length v5, v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    aput v2, p1, v0

    .line 432
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    const/16 v6, 0x63

    if-nez v5, :cond_8

    if-le v0, v1, :cond_7

    goto :goto_3

    :cond_7
    if-nez v5, :cond_b

    if-ne v0, v1, :cond_b

    .line 440
    aget v0, p1, v1

    aget v2, p1, v3

    add-float/2addr v0, v2

    div-float/2addr v0, v4

    aput v0, p1, v1

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 v3, v0, -0x1

    if-gez v3, :cond_9

    add-int/lit8 v3, v0, 0x63

    .line 435
    :cond_9
    aget v5, p1, v3

    mul-float v5, v5, v4

    add-float/2addr v5, v2

    aput v5, p1, v0

    add-int/lit8 v2, v3, -0x1

    if-gez v2, :cond_a

    add-int/lit8 v2, v3, 0x63

    .line 437
    :cond_a
    aget v2, p1, v2

    add-float/2addr v5, v2

    aput v5, p1, v0

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v5, v2

    .line 438
    aput v5, p1, v0

    .line 443
    :cond_b
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 444
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    sub-long v4, v2, v4

    iget p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    int-to-long v7, p1

    cmp-long p1, v4, v7

    if-lez p1, :cond_c

    .line 445
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 448
    :cond_c
    iget p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    if-ne p1, v6, :cond_d

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-nez v0, :cond_d

    .line 449
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    :cond_d
    add-int/2addr p1, v1

    .line 452
    rem-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    return-void
.end method

.method public removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
