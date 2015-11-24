.class Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;
.super Landroid/preference/Preference;
.source "ZenModeSettings.java"


# instance fields
.field private agI:I

.field private agJ:I

.field private agK:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field private mMinute:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 659
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 660
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    .line 661
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->setPersistent(Z)V

    .line 662
    new-instance v0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$1;-><init>(Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;Landroid/app/FragmentManager;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 671
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;)I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->agJ:I

    return v0
.end method

.method static synthetic b(Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;)I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->mMinute:I

    return v0
.end method

.method private qY()V
    .locals 5

    .prologue
    .line 690
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 691
    const/16 v1, 0xb

    iget v2, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->agJ:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 692
    const/16 v1, 0xc

    iget v2, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->mMinute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 693
    iget-object v1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 694
    iget v1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->agI:I

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->agI:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 697
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 698
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$Callback;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->agK:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$Callback;

    .line 675
    return-void
.end method

.method public ch(I)V
    .locals 0

    .prologue
    .line 678
    iput p1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->agI:I

    .line 679
    invoke-direct {p0}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->qY()V

    .line 680
    return-void
.end method

.method public m(II)V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->agK:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->agK:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$Callback;->l(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    :goto_0
    return-void

    .line 684
    :cond_0
    iput p1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->agJ:I

    .line 685
    iput p2, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->mMinute:I

    .line 686
    invoke-direct {p0}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;->qY()V

    goto :goto_0
.end method
