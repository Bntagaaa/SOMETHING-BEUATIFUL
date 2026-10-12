package com.google.appinventor.components.runtime;

import android.app.DatePickerDialog;
import android.os.Handler;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.Dates;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import java.text.DateFormatSymbols;
import java.util.Calendar;
import java.util.GregorianCalendar;

@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "<p>A button that, when clicked on, launches a popup dialog to allow the user to select a date.</p>", iconName = "images/datePicker.png", version = 5)
@SimpleObject
/* loaded from: classes.dex */
public class DatePicker extends ButtonBase {
    private Handler androidUIHandler;
    private boolean customDate;
    private DatePickerDialog date;
    private DatePickerDialog.OnDateSetListener datePickerListener;
    private int day;
    private Form form;
    private Calendar instant;
    private int javaMonth;
    private String[] localizedMonths;
    private int month;
    private int year;

    public DatePicker(ComponentContainer componentContainer) {
        super(componentContainer);
        this.localizedMonths = new DateFormatSymbols().getMonths();
        this.customDate = false;
        this.datePickerListener = new DatePickerDialog.OnDateSetListener() { // from class: com.google.appinventor.components.runtime.DatePicker.1
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public void onDateSet(android.widget.DatePicker datePicker, int i, int i2, int i3) {
                if (datePicker.isShown()) {
                    DatePicker.this.year = i;
                    DatePicker.this.javaMonth = i2;
                    DatePicker datePicker2 = DatePicker.this;
                    datePicker2.month = datePicker2.javaMonth + 1;
                    DatePicker.this.day = i3;
                    DatePicker.this.date.updateDate(DatePicker.this.year, DatePicker.this.javaMonth, DatePicker.this.day);
                    DatePicker datePicker3 = DatePicker.this;
                    datePicker3.instant = Dates.DateInstant(datePicker3.year, DatePicker.this.month, DatePicker.this.day);
                    DatePicker.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.DatePicker.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            DatePicker.this.AfterDateSet();
                        }
                    });
                }
            }
        };
        this.form = componentContainer.$form();
        Calendar calendar = Calendar.getInstance();
        this.year = calendar.get(1);
        int i = calendar.get(2);
        this.javaMonth = i;
        this.month = i + 1;
        int i2 = calendar.get(5);
        this.day = i2;
        this.instant = Dates.DateInstant(this.year, this.month, i2);
        this.date = new DatePickerDialog(this.container.$context(), this.datePickerListener, this.year, this.javaMonth, this.day);
        this.androidUIHandler = new Handler();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "the Year that was last picked using the DatePicker")
    public int Year() {
        return this.year;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "the number of the Month that was last picked using the DatePicker. Note that months start in 1 = January, 12 = December.")
    public int Month() {
        return this.month;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Returns the name of the Month that was last picked using the DatePicker, in textual format.")
    public String MonthInText() {
        return this.localizedMonths[this.javaMonth];
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "the Day of the month that was last picked using the DatePicker.")
    public int Day() {
        return this.day;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "the instant of the date that was last picked using the DatePicker.")
    public Calendar Instant() {
        return this.instant;
    }

    @SimpleFunction(description = "Allows the user to set the date to be displayed when the date picker opens.\nValid values for the month field are 1-12 and 1-31 for the day field.\n")
    public void SetDateToDisplay(int i, int i2, int i3) {
        int i4 = i2 - 1;
        try {
            GregorianCalendar gregorianCalendar = new GregorianCalendar(i, i4, i3);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.getTime();
        } catch (IllegalArgumentException unused) {
            this.form.dispatchErrorOccurredEvent(this, "SetDateToDisplay", ErrorMessages.ERROR_ILLEGAL_DATE, new Object[0]);
        }
        this.date.updateDate(i, i4, i3);
        this.instant = Dates.DateInstant(i, i2, i3);
        this.customDate = true;
    }

    @SimpleFunction(description = "Allows the user to set the date from the instant to be displayed when the date picker opens.")
    public void SetDateToDisplayFromInstant(Calendar calendar) {
        int iYear = Dates.Year(calendar);
        int iMonth = Dates.Month(calendar);
        int iDay = Dates.Day(calendar);
        this.date.updateDate(iYear, iMonth, iDay);
        Dates.DateInstant(iYear, iMonth, iDay);
        this.customDate = true;
    }

    @SimpleFunction(description = "Launches the DatePicker dialog.")
    public void LaunchPicker() {
        click();
    }

    @Override // com.google.appinventor.components.runtime.ButtonBase
    public void click() {
        if (!this.customDate) {
            Calendar calendar = Calendar.getInstance();
            int i = calendar.get(1);
            int i2 = calendar.get(2);
            int i3 = calendar.get(5);
            this.date.updateDate(i, i2, i3);
            this.instant = Dates.DateInstant(i, i2 + 1, i3);
        } else {
            this.customDate = false;
        }
        this.date.show();
    }

    @SimpleEvent(description = "Event that runs after the user chooses a Date in the dialog")
    public void AfterDateSet() {
        EventDispatcher.dispatchEvent(this, "AfterDateSet", new Object[0]);
    }
}
