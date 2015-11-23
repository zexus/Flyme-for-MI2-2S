.class Lcom/android/settings/er;
.super Ljava/lang/Object;
.source "MiuiSecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic rk:Landroid/preference/CheckBoxPreference;

.field final synthetic rl:Lcom/android/settings/MiuiSecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecuritySettings;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings/er;->rl:Lcom/android/settings/MiuiSecuritySettings;

    iput-object p2, p0, Lcom/android/settings/er;->rk:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 168
    const-string v2, "persist.sys.smartcover_mode"

    iget-object v0, p0, Lcom/android/settings/er;->rk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lmiui/os/SystemProperties;->set(Ljava/lang/String;I)V

    .line 170
    return v1

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
