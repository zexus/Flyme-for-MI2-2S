.class public Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;
.super Landroid/app/DialogFragment;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field public agN:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 700
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->agN:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->agN:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->a(Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->agN:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->b(Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 707
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 708
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->agN:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;

    invoke-static {v2}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->a(Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;)I

    move-result v3

    .line 709
    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->agN:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->b(Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;)I

    move-result v4

    .line 710
    :goto_2
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0

    .line 706
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 708
    :cond_1
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_1

    .line 709
    :cond_2
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    goto :goto_2
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->agN:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->agN:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->m(II)V

    .line 718
    :cond_0
    return-void
.end method
