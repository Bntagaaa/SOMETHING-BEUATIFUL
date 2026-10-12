.class public Lcom/google/appinventor/components/runtime/DatePicker;
.super Lcom/google/appinventor/components/runtime/ButtonBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A button that, when clicked on, launches a popup dialog to allow the user to select a date.</p>"
    iconName = "images/datePicker.png"
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private androidUIHandler:Landroid/os/Handler;

.field private customDate:Z

.field private date:Landroid/app/DatePickerDialog;

.field private datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private day:I

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private instant:Ljava/util/Calendar;

.field private javaMonth:I

.field private localizedMonths:[Ljava/lang/String;

.field private month:I

.field private year:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 61
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ButtonBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 51
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->localizedMonths:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->customDate:Z

    .line 185
    new-instance v0, Lcom/google/appinventor/components/runtime/DatePicker$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/DatePicker$1;-><init>(Lcom/google/appinventor/components/runtime/DatePicker;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 62
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->year:I

    const/4 v1, 0x2

    .line 66
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->javaMonth:I

    add-int/2addr v1, v0

    .line 67
    iput v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->month:I

    const/4 v0, 0x5

    .line 68
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->day:I

    .line 69
    iget v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->year:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->month:I

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->instant:Ljava/util/Calendar;

    .line 70
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DatePicker;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/google/appinventor/components/runtime/DatePicker;->year:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/DatePicker;->javaMonth:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/DatePicker;->day:I

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->date:Landroid/app/DatePickerDialog;

    .line 73
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->androidUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/DatePicker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/appinventor/components/runtime/DatePicker;)Landroid/app/DatePickerDialog;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->date:Landroid/app/DatePickerDialog;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/appinventor/components/runtime/DatePicker;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->day:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/google/appinventor/components/runtime/DatePicker;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->javaMonth:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/google/appinventor/components/runtime/DatePicker;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->month:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/google/appinventor/components/runtime/DatePicker;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->year:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/google/appinventor/components/runtime/DatePicker;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->day:I

    return-void
.end method

.method public static bridge synthetic h(Lcom/google/appinventor/components/runtime/DatePicker;Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->instant:Ljava/util/Calendar;

    return-void
.end method

.method public static bridge synthetic i(Lcom/google/appinventor/components/runtime/DatePicker;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->javaMonth:I

    return-void
.end method

.method public static bridge synthetic j(Lcom/google/appinventor/components/runtime/DatePicker;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->month:I

    return-void
.end method

.method public static bridge synthetic k(Lcom/google/appinventor/components/runtime/DatePicker;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->year:I

    return-void
.end method


# virtual methods
.method public AfterDateSet()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event that runs after the user chooses a Date in the dialog"
    .end annotation

    const/4 v0, 0x0

    .line 215
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AfterDateSet"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Day()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the Day of the month that was last picked using the DatePicker."
    .end annotation

    .line 116
    iget v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->day:I

    return v0
.end method

.method public Instant()Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the instant of the date that was last picked using the DatePicker."
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->instant:Ljava/util/Calendar;

    return-object v0
.end method

.method public LaunchPicker()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Launches the DatePicker dialog."
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/DatePicker;->click()V

    return-void
.end method

.method public Month()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the number of the Month that was last picked using the DatePicker. Note that months start in 1 = January, 12 = December."
    .end annotation

    .line 95
    iget v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->month:I

    return v0
.end method

.method public MonthInText()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the name of the Month that was last picked using the DatePicker, in textual format."
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->localizedMonths:[Ljava/lang/String;

    iget v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->javaMonth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public SetDateToDisplay(III)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows the user to set the date to be displayed when the date picker opens.\nValid values for the month field are 1-12 and 1-31 for the day field.\n"
    .end annotation

    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    .line 134
    :try_start_0
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, p1, v0, p3}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 135
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 136
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DatePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x961

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "SetDateToDisplay"

    invoke-virtual {v2, p0, v4, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->date:Landroid/app/DatePickerDialog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/app/DatePickerDialog;->updateDate(III)V

    .line 141
    invoke-static {p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->instant:Ljava/util/Calendar;

    const/4 p1, 0x1

    .line 142
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->customDate:Z

    return-void
.end method

.method public SetDateToDisplayFromInstant(Ljava/util/Calendar;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows the user to set the date from the instant to be displayed when the date picker opens."
    .end annotation

    .line 147
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/Dates;->Year(Ljava/util/Calendar;)I

    move-result v0

    .line 148
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/Dates;->Month(Ljava/util/Calendar;)I

    move-result v1

    .line 149
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/Dates;->Day(Ljava/util/Calendar;)I

    move-result p1

    .line 150
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DatePicker;->date:Landroid/app/DatePickerDialog;

    invoke-virtual {v2, v0, v1, p1}, Landroid/app/DatePickerDialog;->updateDate(III)V

    .line 151
    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/DatePicker;->customDate:Z

    return-void
.end method

.method public Year()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the Year that was last picked using the DatePicker"
    .end annotation

    .line 84
    iget v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->year:I

    return v0
.end method

.method public click()V
    .locals 5

    .line 169
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->customDate:Z

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 172
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 173
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 174
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/DatePicker;->date:Landroid/app/DatePickerDialog;

    invoke-virtual {v4, v2, v3, v0}, Landroid/app/DatePickerDialog;->updateDate(III)V

    add-int/2addr v3, v1

    .line 175
    invoke-static {v2, v3, v0}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->instant:Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->customDate:Z

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DatePicker;->date:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
