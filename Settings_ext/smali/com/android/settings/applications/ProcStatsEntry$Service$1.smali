.class final Lcom/android/settings/applications/ProcStatsEntry$Service$1;
.super Ljava/lang/Object;
.source "ProcStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aI(I)[Lcom/android/settings/applications/ProcStatsEntry$Service;
    .locals 1

    .prologue
    .line 354
    new-array v0, p1, [Lcom/android/settings/applications/ProcStatsEntry$Service;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcStatsEntry$Service$1;->i(Landroid/os/Parcel;)Lcom/android/settings/applications/ProcStatsEntry$Service;

    move-result-object v0

    return-object v0
.end method

.method public i(Landroid/os/Parcel;)Lcom/android/settings/applications/ProcStatsEntry$Service;
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lcom/android/settings/applications/ProcStatsEntry$Service;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/ProcStatsEntry$Service;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcStatsEntry$Service$1;->aI(I)[Lcom/android/settings/applications/ProcStatsEntry$Service;

    move-result-object v0

    return-object v0
.end method
