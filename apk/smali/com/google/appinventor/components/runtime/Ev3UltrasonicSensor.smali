.class public Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to an ultrasonic sensor on a LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_OF_RANGE:I = 0x1e

.field private static final DEFAULT_TOP_OF_RANGE:I = 0x5a

.field private static final DELAY_MILLISECONDS:I = 0x32

.field private static final SENSOR_TYPE:I = 0x1e


# instance fields
.field private aboveRangeEventEnabled:Z

.field private belowRangeEventEnabled:Z

.field private bottomOfRange:I

.field private eventHandler:Landroid/os/Handler;

.field private mode:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

.field private previousDistance:D

.field private final sensorValueChecker:Ljava/lang/Runnable;

.field private topOfRange:I

.field private withinRangeEventEnabled:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 60
    const-string v0, "Ev3UltrasonicSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 46
    sget-object p1, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Centimeters:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->mode:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 49
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->previousDistance:D

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->eventHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->sensorValueChecker:Ljava/lang/Runnable;

    .line 94
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v0, 0x5a

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->TopOfRange(I)V

    const/16 v0, 0x1e

    .line 97
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->BottomOfRange(I)V

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->BelowRangeEventEnabled(Z)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->AboveRangeEventEnabled(Z)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->WithinRangeEventEnabled(Z)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->UnitAbstract(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->aboveRangeEventEnabled:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->belowRangeEventEnabled:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bottomOfRange:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->eventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->previousDistance:D

    return-wide v0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->topOfRange:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->withinRangeEventEnabled:Z

    return p0
.end method

.method private getDistance(Ljava/lang/String;)D
    .locals 6

    .line 112
    iget v3, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sensorPortNumber:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->mode:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    .line 113
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, 0x0

    const/16 v4, 0x1e

    move-object v0, p0

    move-object v1, p1

    .line 112
    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->readInputSI(Ljava/lang/String;IIII)D

    move-result-wide v1

    const-wide v3, 0x406fe00000000000L    # 255.0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;D)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->previousDistance:D

    return-void
.end method

.method public static bridge synthetic i(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D
    .locals 2

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->getDistance(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private setMode(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 312
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->previousDistance:D

    .line 313
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->mode:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    return-void
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected distance has gone above the range."
    .end annotation

    const/4 v0, 0x0

    .line 248
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AboveRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 240
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->aboveRangeEventEnabled:Z

    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the distance goes above the TopOfRange."
    .end annotation

    .line 229
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected distance has gone below the range."
    .end annotation

    const/4 v0, 0x0

    .line 188
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BelowRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 180
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->belowRangeEventEnabled:Z

    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the distance goes below the BottomOfRange."
    .end annotation

    .line 169
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 125
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bottomOfRange:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 136
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->bottomOfRange:I

    return-void
.end method

.method public GetDistance()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current distance in centimeters as a value between 0 and 254, or -1 if the distance can not be read."
    .end annotation

    .line 107
    const-string v0, "GetDistance"

    .line 108
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->getDistance(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public SetCmUnit()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measure the distance in centimeters."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    sget-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Centimeters:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->setMode(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V

    return-void
.end method

.method public SetInchUnit()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measure the distance in inches."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    sget-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Inches:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->setMode(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V

    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 147
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->topOfRange:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "90"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 158
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->topOfRange:I

    return-void
.end method

.method public Unit()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The distance unit, which can be either \"cm\" or \"inch\"."
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->mode:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Unit(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "cm"
        editorType = "lego_ev3_ultrasonic_sensor_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 259
    invoke-static {p1}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    move-result-object v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc1f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Unit"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 265
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->setMode(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V

    return-void
.end method

.method public UnitAbstract()Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->mode:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    return-object v0
.end method

.method public UnitAbstract(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V
    .locals 0

    .line 273
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->setMode(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V

    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected distance has gone within the range."
    .end annotation

    const/4 v0, 0x0

    .line 218
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WithinRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 210
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->withinRangeEventEnabled:Z

    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the distance goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .line 199
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method public onDelete()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->onDelete()V

    return-void
.end method
