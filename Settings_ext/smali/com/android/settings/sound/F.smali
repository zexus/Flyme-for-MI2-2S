.class final Lcom/android/settings_ext/sound/F;
.super Ljava/lang/Object;
.source "RingerVolumeFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public co(I)[Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;
    .locals 1

    .prologue
    .line 400
    new-array v0, p1, [Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/sound/F;->n(Landroid/os/Parcel;)Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public n(Landroid/os/Parcel;)Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;
    .locals 1

    .prologue
    .line 396
    new-instance v0, Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/sound/F;->co(I)[Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;

    move-result-object v0

    return-object v0
.end method
