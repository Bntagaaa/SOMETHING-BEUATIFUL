package com.google.appinventor.components.runtime;

import android.app.TimePickerDialog;
import android.os.Handler;
import android.text.format.DateFormat;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.Dates;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import java.util.Calendar;

@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "<p>A button that, when clicked on, launches  a popup dialog to allow the user to select a time.</p>", iconName = "images/timePicker.png", version = 5)
@SimpleObject
/* loaded from: classes.dex */
public class TimePicker extends ButtonBase {
    private Handler androidUIHandler;
    private boolean customTime;
    private Form form;
    private int hour;
    private Calendar instant;
    private int minute;
    private TimePickerDialog time;
    private TimePickerDialog.OnTimeSetListener timePickerListener;

    public TimePicker(ComponentContainer componentContainer) {
        super(componentContainer);
        this.hour = 0;
        this.minute = 0;
        this.customTime = false;
        this.timePickerListener = new TimePickerDialog.OnTimeSetListener() { // from class: com.google.appinventor.components.runtime.TimePicker.1
            @Override // android.app.TimePickerDialog.OnTimeSetListener
            public void onTimeSet(android.widget.TimePicker timePicker, int i, int i2) {
                if (timePicker.isShown()) {
                    TimePicker.this.hour = i;
                    TimePicker.this.minute = i2;
                    TimePicker timePicker2 = TimePicker.this;
                    timePicker2.instant = Dates.TimeInstant(timePicker2.hour, TimePicker.this.minute);
                    TimePicker.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.TimePicker.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TimePicker.this.AfterTimeSet();
                        }
                    });
                }
            }
        };
        this.form = componentContainer.$form();
        Calendar calendar = Calendar.getInstance();
        this.hour = calendar.get(11);
        this.minute = calendar.get(12);
        this.time = new TimePickerDialog(this.container.$context(), this.timePickerListener, this.hour, this.minute, DateFormat.is24HourFormat(this.container.$context()));
        this.instant = Dates.TimeInstant(this.hour, this.minute);
        this.androidUIHandler = new Handler();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The hour of the last time set using the time picker. The hour is in a 24 hour format. If the last time set was 11:53 pm, this property will return 23.")
    public int Hour() {
        return this.hour;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The minute of the last time set using the time picker")
    public int Minute() {
        return this.minute;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The instant of the last time set using the time picker")
    public Calendar Instant() {
        return this.instant;
    }

    @SimpleFunction(description = "Set the time to be shown in the Time Picker popup. Current time is shown by default.")
    public void SetTimeToDisplay(int i, int i2) {
        if (i < 0 || i > 23) {
            this.form.dispatchErrorOccurredEvent(this, "SetTimeToDisplay", ErrorMessages.ERROR_ILLEGAL_HOUR, new Object[0]);
            return;
        }
        if (i2 < 0 || i2 > 59) {
            this.form.dispatchErrorOccurredEvent(this, "SetTimeToDisplay", ErrorMessages.ERROR_ILLEGAL_MINUTE, new Object[0]);
            return;
        }
        this.time.updateTime(i, i2);
        this.instant = Dates.TimeInstant(i, i2);
        this.customTime = true;
    }

    @SimpleFunction(description = "Set the time from the instant to be shown in the Time Picker dialog. Current time is shown by default.")
    public void SetTimeToDisplayFromInstant(Calendar calendar) {
        int iHour = Dates.Hour(calendar);
        int iMinute = Dates.Minute(calendar);
        this.time.updateTime(iHour, iMinute);
        Dates.TimeInstant(iHour, iMinute);
        this.customTime = true;
    }

    @SimpleFunction(description = "Launches the TimePicker dialog.")
    public void LaunchPicker() {
        click();
    }

    @Override // com.google.appinventor.components.runtime.ButtonBase
    public void click() {
        if (!this.customTime) {
            Calendar calendar = Calendar.getInstance();
            this.time.updateTime(calendar.get(11), calendar.get(12));
            this.instant = Dates.TimeInstant(this.hour, this.minute);
        } else {
            this.customTime = false;
        }
        this.time.show();
    }

    @SimpleEvent(description = "This event is run when a user has set the time in the popup dialog.")
    public void AfterTimeSet() {
        EventDispatcher.dispatchEvent(this, "AfterTimeSet", new Object[0]);
    }
}
