.class public Lcom/miui/player/content/MusicMeta;
.super Ljava/lang/Object;
.source "MusicMeta.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final aCo:Ljava/lang/String;

.field public final aCp:Ljava/lang/String;

.field public final aCq:Ljava/lang/String;

.field public final aCr:I

.field public final aCs:Ljava/lang/String;

.field public final aCt:I

.field public final mData:Ljava/lang/String;

.field public final mDuration:J

.field private mString:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/miui/player/content/a;

    invoke-direct {v0}, Lcom/miui/player/content/a;-><init>()V

    sput-object v0, Lcom/miui/player/content/MusicMeta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/content/MusicMeta;->aCo:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/content/MusicMeta;->mTitle:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/content/MusicMeta;->mData:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/content/MusicMeta;->aCp:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/content/MusicMeta;->aCq:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/player/content/MusicMeta;->aCr:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/content/MusicMeta;->aCs:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/content/MusicMeta;->mDuration:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/player/content/MusicMeta;->aCt:I

    .line 110
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    if-ne p0, p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    instance-of v2, p1, Lcom/miui/player/content/MusicMeta;

    if-nez v2, :cond_2

    move v0, v1

    .line 57
    goto :goto_0

    .line 60
    :cond_2
    check-cast p1, Lcom/miui/player/content/MusicMeta;

    .line 62
    iget v2, p0, Lcom/miui/player/content/MusicMeta;->aCr:I

    iget v3, p1, Lcom/miui/player/content/MusicMeta;->aCr:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/miui/player/content/MusicMeta;->aCo:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/player/content/MusicMeta;->aCo:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/content/MusicMeta;->mTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/player/content/MusicMeta;->mTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/content/MusicMeta;->mData:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/player/content/MusicMeta;->mData:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/content/MusicMeta;->aCp:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/player/content/MusicMeta;->aCp:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/content/MusicMeta;->aCq:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/player/content/MusicMeta;->aCq:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/content/MusicMeta;->aCs:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/player/content/MusicMeta;->aCs:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/miui/player/content/MusicMeta;->mDuration:J

    iget-wide v4, p1, Lcom/miui/player/content/MusicMeta;->mDuration:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/miui/player/content/MusicMeta;->aCt:I

    iget v3, p1, Lcom/miui/player/content/MusicMeta;->aCt:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->aCo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->aCo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->mData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->aCp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->aCq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget v0, p0, Lcom/miui/player/content/MusicMeta;->aCr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/miui/player/content/MusicMeta;->aCs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-wide v0, p0, Lcom/miui/player/content/MusicMeta;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget v0, p0, Lcom/miui/player/content/MusicMeta;->aCt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return-void
.end method
