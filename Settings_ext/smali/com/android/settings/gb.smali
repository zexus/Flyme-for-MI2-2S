.class final Lcom/android/settings_ext/gb;
.super Ljava/lang/Object;
.source "RingerVolumePreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public X(I)[Lcom/android/settings_ext/RingerVolumePreference$SavedState;
    .locals 1

    .prologue
    .line 393
    new-array v0, p1, [Lcom/android/settings_ext/RingerVolumePreference$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/gb;->d(Landroid/os/Parcel;)Lcom/android/settings_ext/RingerVolumePreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/os/Parcel;)Lcom/android/settings_ext/RingerVolumePreference$SavedState;
    .locals 1

    .prologue
    .line 389
    new-instance v0, Lcom/android/settings_ext/RingerVolumePreference$SavedState;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/gb;->X(I)[Lcom/android/settings_ext/RingerVolumePreference$SavedState;

    move-result-object v0

    return-object v0
.end method
