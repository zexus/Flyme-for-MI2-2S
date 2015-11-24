.class public Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;
.super Landroid/preference/Preference;
.source "StorageVolumePreferenceCategory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 627
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;->setTitle(I)V

    .line 628
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 634
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/deviceinfo/StorageVolumePreferenceCategory$PreferenceHeader;->setTitle(Ljava/lang/CharSequence;)V

    .line 635
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method
