.class final Lcom/android/settings/applications/ProcStatsEntry$1;
.super Ljava/lang/Object;
.source "ProcStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aH(I)[Lcom/android/settings/applications/ProcStatsEntry;
    .locals 1

    .prologue
    .line 308
    new-array v0, p1, [Lcom/android/settings/applications/ProcStatsEntry;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcStatsEntry$1;->h(Landroid/os/Parcel;)Lcom/android/settings/applications/ProcStatsEntry;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/os/Parcel;)Lcom/android/settings/applications/ProcStatsEntry;
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lcom/android/settings/applications/ProcStatsEntry;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcStatsEntry$1;->aH(I)[Lcom/android/settings/applications/ProcStatsEntry;

    move-result-object v0

    return-object v0
.end method
