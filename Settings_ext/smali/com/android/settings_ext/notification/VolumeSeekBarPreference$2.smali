.class Lcom/android/settings_ext/notification/VolumeSeekBarPreference$2;
.super Landroid/preference/SeekBarVolumizer;
.source "VolumeSeekBarPreference.java"


# instance fields
.field final synthetic agb:Lcom/android/settings_ext/notification/VolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/VolumeSeekBarPreference;Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference$2;->agb:Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarVolumizer;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 104
    iget-object v0, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference$2;->agb:Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->a(Lcom/android/settings_ext/notification/VolumeSeekBarPreference;)Lcom/android/settings_ext/notification/VolumeSeekBarPreference$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/notification/VolumeSeekBarPreference$2;->agb:Lcom/android/settings_ext/notification/VolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference;->b(Lcom/android/settings_ext/notification/VolumeSeekBarPreference;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/settings_ext/notification/VolumeSeekBarPreference$Callback;->k(II)V

    .line 105
    return-void
.end method