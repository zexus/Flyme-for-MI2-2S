.class Lcom/android/settings_ext/location/MiuiLocationSettings$2;
.super Ljava/lang/Object;
.source "MiuiLocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic acW:Lcom/android/settings_ext/location/MiuiLocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/location/MiuiLocationSettings;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings_ext/location/MiuiLocationSettings$2;->acW:Lcom/android/settings_ext/location/MiuiLocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/settings_ext/location/MiuiLocationSettings$2;->acW:Lcom/android/settings_ext/location/MiuiLocationSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/location/MiuiLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings_ext/location/LocationMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0904bd

    iget-object v5, p0, Lcom/android/settings_ext/location/MiuiLocationSettings$2;->acW:Lcom/android/settings_ext/location/MiuiLocationSettings;

    const/4 v6, 0x0

    move-object v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ext/eK;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 176
    const/4 v0, 0x1

    return v0
.end method
