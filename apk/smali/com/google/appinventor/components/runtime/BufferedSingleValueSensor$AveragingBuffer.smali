.class Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AveragingBuffer"
.end annotation


# instance fields
.field private data:[Ljava/lang/Float;

.field private next:I

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;I)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->this$0:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-array p1, p2, [Ljava/lang/Float;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->data:[Ljava/lang/Float;

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->next:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;-><init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;I)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->getAverage()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->insert(Ljava/lang/Float;)V

    return-void
.end method

.method private getAverage()F
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 62
    :goto_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->data:[Ljava/lang/Float;

    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 63
    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 64
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    int-to-double v2, v3

    div-double/2addr v0, v2

    :goto_1
    double-to-float v0, v0

    return v0
.end method

.method private insert(Ljava/lang/Float;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->data:[Ljava/lang/Float;

    iget v1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->next:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->next:I

    aput-object p1, v0, v1

    .line 53
    array-length p1, v0

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->next:I

    :cond_0
    return-void
.end method
