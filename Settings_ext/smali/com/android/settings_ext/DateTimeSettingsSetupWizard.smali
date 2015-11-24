.class public Lcom/android/settings_ext/DateTimeSettingsSetupWizard;
.super Landroid/app/Activity;
.source "DateTimeSettingsSetupWizard.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hp:Z

.field private hq:Landroid/widget/CompoundButton;

.field private hr:Landroid/widget/Button;

.field private hs:Landroid/widget/ListPopupWindow;

.field private ht:Landroid/widget/SimpleAdapter;

.field private hu:Ljava/util/TimeZone;

.field private hv:Lmiui/widget/TimePicker;

.field private hw:Lmiui/widget/DatePicker;

.field private hx:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 328
    new-instance v0, Lcom/android/settings_ext/bx;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bx;-><init>(Lcom/android/settings_ext/DateTimeSettingsSetupWizard;)V

    iput-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/DateTimeSettingsSetupWizard;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->bu()V

    return-void
.end method

.method private bt()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    .line 302
    :goto_0
    return v0

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private bu()V
    .locals 5

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hp:Z

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hr:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hw:Lmiui/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lmiui/widget/DatePicker;->updateDate(III)V

    .line 324
    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hv:Lmiui/widget/TimePicker;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 325
    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hv:Lmiui/widget/TimePicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private r(I)V
    .locals 3

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 285
    if-nez v0, :cond_0

    .line 286
    sget-object v0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find zone picker anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_0
    return-void

    .line 289
    :cond_0
    new-instance v1, Landroid/widget/ListPopupWindow;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hs:Landroid/widget/ListPopupWindow;

    .line 290
    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hs:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 291
    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hs:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 292
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hs:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->ht:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 293
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hs:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hs:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hs:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method


# virtual methods
.method public bs()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 121
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 122
    iput-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hu:Ljava/util/TimeZone;

    .line 123
    const v0, 0x7f10009d

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hr:Landroid/widget/Button;

    .line 124
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hr:Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hr:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 129
    const-string v1, "extra_initial_auto_datetime_value"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    const-string v1, "extra_initial_auto_datetime_value"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    move v1, v0

    .line 135
    :goto_0
    const v0, 0x7f10009f

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hq:Landroid/widget/CompoundButton;

    .line 136
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hq:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hq:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    const v0, 0x7f1000a4

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/TimePicker;

    iput-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hv:Lmiui/widget/TimePicker;

    .line 140
    iget-object v4, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hv:Lmiui/widget/TimePicker;

    if-nez v1, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lmiui/widget/TimePicker;->setEnabled(Z)V

    .line 141
    const v0, 0x7f1000a1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/DatePicker;

    iput-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hw:Lmiui/widget/DatePicker;

    .line 142
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hw:Lmiui/widget/DatePicker;

    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Lmiui/widget/DatePicker;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hw:Lmiui/widget/DatePicker;

    invoke-static {v0}, Lcom/android/settings_ext/DateTimeSettings;->a(Lmiui/widget/DatePicker;)V

    .line 147
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hx:Landroid/view/inputmethod/InputMethodManager;

    .line 149
    const v0, 0x7f100060

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f10005f

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 151
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_0
    return-void

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->bt()Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v3

    .line 140
    goto :goto_1

    :cond_3
    move v2, v3

    .line 142
    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 210
    .line 224
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hq:Landroid/widget/CompoundButton;

    if-ne p1, v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    iget-object v3, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hv:Lmiui/widget/TimePicker;

    if-nez p2, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lmiui/widget/TimePicker;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hw:Lmiui/widget/DatePicker;

    if-nez p2, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Lmiui/widget/DatePicker;->setEnabled(Z)V

    .line 231
    :cond_0
    if-eqz p2, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_1

    .line 234
    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hx:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 235
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 238
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 225
    goto :goto_0

    :cond_3
    move v0, v2

    .line 228
    goto :goto_1

    :cond_4
    move v1, v2

    .line 229
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 176
    :sswitch_0
    const v0, 0x7f10009d

    invoke-direct {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->r(I)V

    goto :goto_0

    .line 180
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hu:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hu:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v1, "Another TimeZone is selected by a user. Changing system TimeZone."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 186
    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hu:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hq:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hq:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hq:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hw:Lmiui/widget/DatePicker;

    invoke-virtual {v0}, Lmiui/widget/DatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hw:Lmiui/widget/DatePicker;

    invoke-virtual {v1}, Lmiui/widget/DatePicker;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hw:Lmiui/widget/DatePicker;

    invoke-virtual {v2}, Lmiui/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings_ext/DateTimeSettings;->a(Landroid/content/Context;III)V

    .line 195
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hv:Lmiui/widget/TimePicker;

    invoke-virtual {v0}, Lmiui/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hv:Lmiui/widget/TimePicker;

    invoke-virtual {v1}, Lmiui/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settings_ext/DateTimeSettings;->a(Landroid/content/Context;II)V

    .line 201
    :cond_1
    :sswitch_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->setResult(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->finish()V

    goto/16 :goto_0

    .line 190
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 174
    :sswitch_data_0
    .sparse-switch
        0x7f10005f -> :sswitch_2
        0x7f100060 -> :sswitch_1
        0x7f10009d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->requestWindowFeature(I)Z

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v2, 0x7f040048

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->setContentView(I)V

    .line 90
    const v2, 0x7f10009d

    invoke-virtual {p0, v2}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hp:Z

    .line 91
    iget-boolean v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hp:Z

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->bs()V

    .line 96
    :goto_1
    const v0, 0x7f040049

    invoke-static {p0, v1, v0}, Lcom/android/settings_ext/ZonePicker;->a(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->ht:Landroid/widget/SimpleAdapter;

    .line 104
    iget-boolean v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hp:Z

    if-nez v0, :cond_0

    .line 105
    const v0, 0x7f100099

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 106
    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 108
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 90
    goto :goto_0

    .line 94
    :cond_2
    const v0, 0x7f100060

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 242
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/ZonePicker;->l(Ljava/lang/Object;)Ljava/util/TimeZone;

    move-result-object v1

    .line 243
    iget-boolean v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hp:Z

    if-eqz v0, :cond_1

    .line 244
    iput-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hu:Ljava/util/TimeZone;

    .line 245
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 246
    iget-object v2, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hr:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hr:Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hw:Lmiui/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lmiui/widget/DatePicker;->updateDate(III)V

    .line 251
    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hv:Lmiui/widget/TimePicker;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 252
    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hv:Lmiui/widget/TimePicker;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiui/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->hs:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 263
    return-void

    .line 256
    :cond_1
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 257
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f10009b

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/DateTimeSettings;

    .line 260
    invoke-virtual {v0, p0}, Lcom/android/settings_ext/DateTimeSettings;->i(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 279
    const v0, 0x7f10009a

    invoke-direct {p0, v0}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->r(I)V

    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings_ext/DateTimeSettingsSetupWizard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 164
    return-void
.end method
