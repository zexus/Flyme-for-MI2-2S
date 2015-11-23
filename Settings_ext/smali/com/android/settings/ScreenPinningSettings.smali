.class public Lcom/android/settings/ScreenPinningSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenPinningSettings.java"

# interfaces
.implements Lcom/android/settings/search/k;
.implements Lcom/android/settings/widget/I;


# static fields
.field public static final gG:Lcom/android/settings/search/l;


# instance fields
.field private kr:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/android/settings/gc;

    invoke-direct {v0}, Lcom/android/settings/gc;-><init>()V

    sput-object v0, Lcom/android/settings/ScreenPinningSettings;->gG:Lcom/android/settings/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private H(Z)V
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private gB()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 76
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 69
    const v0, 0x7f0400ee

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/Switch;Z)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p2}, Lcom/android/settings/ScreenPinningSettings;->H(Z)V

    .line 92
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    .line 50
    invoke-virtual {v0}, Lcom/android/settings/gh;->gH()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->kr:Lcom/android/settings/widget/SwitchBar;

    .line 51
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->kr:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/I;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->kr:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 53
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->kr:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->gB()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 54
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 60
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->kr:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/I;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->kr:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 62
    return-void
.end method
