.class Lcom/android/settings_ext/RingerVolumePreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "RingerVolumePreference.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field wp:[Lmiui/preference/VolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 386
    new-instance v0, Lcom/android/settings_ext/gb;

    invoke-direct {v0}, Lcom/android/settings_ext/gb;-><init>()V

    sput-object v0, Lcom/android/settings_ext/RingerVolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 354
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 355
    invoke-static {}, Lcom/android/settings_ext/RingerVolumePreference;->gA()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lmiui/preference/VolumePreference$VolumeStore;

    iput-object v0, p0, Lcom/android/settings_ext/RingerVolumePreference$SavedState;->wp:[Lmiui/preference/VolumePreference$VolumeStore;

    .line 356
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/settings_ext/RingerVolumePreference;->gA()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference$SavedState;->wp:[Lmiui/preference/VolumePreference$VolumeStore;

    new-instance v2, Lmiui/preference/VolumePreference$VolumeStore;

    invoke-direct {v2}, Lmiui/preference/VolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 358
    iget-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference$SavedState;->wp:[Lmiui/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    .line 359
    iget-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference$SavedState;->wp:[Lmiui/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lmiui/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 384
    return-void
.end method


# virtual methods
.method W(I)[Lmiui/preference/VolumePreference$VolumeStore;
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/settings_ext/RingerVolumePreference$SavedState;->wp:[Lmiui/preference/VolumePreference$VolumeStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/RingerVolumePreference$SavedState;->wp:[Lmiui/preference/VolumePreference$VolumeStore;

    array-length v0, v0

    if-eq v0, p1, :cond_1

    .line 374
    :cond_0
    new-array v0, p1, [Lmiui/preference/VolumePreference$VolumeStore;

    iput-object v0, p0, Lcom/android/settings_ext/RingerVolumePreference$SavedState;->wp:[Lmiui/preference/VolumePreference$VolumeStore;

    .line 375
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 376
    iget-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference$SavedState;->wp:[Lmiui/preference/VolumePreference$VolumeStore;

    new-instance v2, Lmiui/preference/VolumePreference$VolumeStore;

    invoke-direct {v2}, Lmiui/preference/VolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/RingerVolumePreference$SavedState;->wp:[Lmiui/preference/VolumePreference$VolumeStore;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 365
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 366
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/settings_ext/RingerVolumePreference;->gA()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference$SavedState;->wp:[Lmiui/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lmiui/preference/VolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget-object v1, p0, Lcom/android/settings_ext/RingerVolumePreference$SavedState;->wp:[Lmiui/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lmiui/preference/VolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_0
    return-void
.end method
