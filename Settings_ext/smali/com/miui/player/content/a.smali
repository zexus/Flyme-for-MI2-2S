.class final Lcom/miui/player/content/a;
.super Ljava/lang/Object;
.source "MusicMeta.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/miui/player/content/a;->r(Landroid/os/Parcel;)Lcom/miui/player/content/MusicMeta;

    move-result-object v0

    return-object v0
.end method

.method public dK(I)[Lcom/miui/player/content/MusicMeta;
    .locals 1

    .prologue
    .line 121
    new-array v0, p1, [Lcom/miui/player/content/MusicMeta;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/miui/player/content/a;->dK(I)[Lcom/miui/player/content/MusicMeta;

    move-result-object v0

    return-object v0
.end method

.method public r(Landroid/os/Parcel;)Lcom/miui/player/content/MusicMeta;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/miui/player/content/MusicMeta;

    invoke-direct {v0, p1}, Lcom/miui/player/content/MusicMeta;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
