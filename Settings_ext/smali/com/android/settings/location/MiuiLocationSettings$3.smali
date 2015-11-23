.class Lcom/android/settings/location/MiuiLocationSettings$3;
.super Ljava/lang/Object;
.source "MiuiLocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic acW:Lcom/android/settings/location/MiuiLocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/MiuiLocationSettings;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/settings/location/MiuiLocationSettings$3;->acW:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 225
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings$3;->acW:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-static {v0}, Lcom/android/settings/location/MiuiLocationSettings;->b(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/location/MiuiLocationSettings$3;->acW:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-static {v2}, Lcom/android/settings/location/MiuiLocationSettings;->a(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings$3;->acW:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-static {v0}, Lcom/android/settings/location/MiuiLocationSettings;->c(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/location/LocationPolicyManager;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/location/MiuiLocationSettings$3;->acW:Lcom/android/settings/location/MiuiLocationSettings;

    invoke-static {v0}, Lcom/android/settings/location/MiuiLocationSettings;->a(Lcom/android/settings/location/MiuiLocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/location/LocationPolicyManager;->setRestrictBackground(Z)V

    .line 227
    return v1

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
