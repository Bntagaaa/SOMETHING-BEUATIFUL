.class public abstract Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;
.super Lcom/google/appinventor/components/runtime/SingleValueSensor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;
    }
.end annotation


# instance fields
.field private buffer:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;II)V
    .locals 0

    .line 25
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/SingleValueSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V

    .line 26
    new-instance p1, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p3, p2}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;-><init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;II)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->buffer:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;

    return-void
.end method


# virtual methods
.method public getAverageValue()F
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->buffer:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->a(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;)F

    move-result v0

    return v0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 31
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

    if-ne v0, v1, :cond_0

    .line 32
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 33
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->buffer:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->b(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;Ljava/lang/Float;)V

    .line 34
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    :cond_0
    return-void
.end method
