.class Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;
.super Lcom/android/settings/notification/SettingPref;
.source "ZenModeSettings.java"


# instance fields
.field private agH:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;

.field private mValue:I


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0

    .prologue
    .line 574
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    .line 575
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->agH:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;

    .line 579
    return-void
.end method

.method public bg(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->bj(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mValue:I

    .line 585
    invoke-super {p0, p1}, Lcom/android/settings/notification/SettingPref;->bg(Landroid/content/Context;)V

    .line 586
    return-void
.end method

.method public bj(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 613
    iget v0, p0, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->afR:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->afS:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->b(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 600
    invoke-super {p0, p1}, Lcom/android/settings/notification/SettingPref;->c(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v0

    .line 601
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->bj(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mValue:I

    .line 603
    return-object v0
.end method

.method protected i(Landroid/content/Context;I)Z
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mValue:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 595
    :goto_0
    return v0

    .line 591
    :cond_0
    iput p2, p0, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mValue:I

    .line 592
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->agH:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->agH:Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;

    invoke-interface {v0, p2}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback$Callback;->cg(I)V

    .line 595
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/SettingPref;->i(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0
.end method

.method public j(Landroid/content/Context;I)Z
    .locals 3

    .prologue
    .line 608
    iput p2, p0, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mValue:I

    .line 609
    iget v0, p0, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->afR:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/android/settings/notification/ZenModeSettings$SettingPrefWithCallback;->a(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
