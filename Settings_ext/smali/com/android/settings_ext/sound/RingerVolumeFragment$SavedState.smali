.class Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;
.super Ljava/lang/Object;
.source "RingerVolumeFragment.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final serialVersionUID:J = -0x25be8c40f17ab62eL


# instance fields
.field private mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/android/settings_ext/sound/F;

    invoke-direct {v0}, Lcom/android/settings_ext/sound/F;-><init>()V

    sput-object v0, Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    sget-object v0, Lcom/android/settings_ext/sound/RingerVolumeFragment;->ajP:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/VolumePreference$VolumeStore;

    iput-object v0, p0, Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    .line 368
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings_ext/sound/RingerVolumeFragment;->ajP:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    new-instance v2, Landroid/preference/VolumePreference$VolumeStore;

    invoke-direct {v2}, Landroid/preference/VolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 370
    iget-object v1, p0, Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 371
    iget-object v1, p0, Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    .line 364
    return-void
.end method


# virtual methods
.method cn(I)[Landroid/preference/VolumePreference$VolumeStore;
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    array-length v0, v0

    if-eq v0, p1, :cond_1

    .line 385
    :cond_0
    new-array v0, p1, [Landroid/preference/VolumePreference$VolumeStore;

    iput-object v0, p0, Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    .line 386
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    new-instance v2, Landroid/preference/VolumePreference$VolumeStore;

    invoke-direct {v2}, Landroid/preference/VolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 377
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings_ext/sound/RingerVolumeFragment;->ajP:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget-object v1, p0, Lcom/android/settings_ext/sound/RingerVolumeFragment$SavedState;->mVolumeStore:[Landroid/preference/VolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_0
    return-void
.end method
