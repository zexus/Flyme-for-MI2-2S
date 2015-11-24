.class Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$1;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic agL:Landroid/app/FragmentManager;

.field final synthetic agM:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;Landroid/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$1;->agM:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;

    iput-object p2, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$1;->agL:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 665
    new-instance v0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;

    invoke-direct {v0}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;-><init>()V

    .line 666
    iget-object v1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$1;->agM:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;

    iput-object v1, v0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->agN:Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;

    .line 667
    iget-object v1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$1;->agL:Landroid/app/FragmentManager;

    const-class v2, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 668
    const/4 v0, 0x1

    return v0
.end method
