.class Lcom/android/settings/eq;
.super Ljava/lang/Object;
.source "MiuiSecurityCommonSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic h:Landroid/preference/CheckBoxPreference;

.field final synthetic rf:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/settings/eq;->rf:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    iput-object p2, p0, Lcom/android/settings/eq;->h:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 807
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/android/settings/eq;->rf:Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSecurityCommonSettings$MiuiSecurityCommonSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_lock_before_unlock"

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 815
    :goto_0
    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/android/settings/eq;->h:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
