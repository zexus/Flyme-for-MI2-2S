.class final Lcom/android/settings/dashboard/e;
.super Ljava/lang/Object;
.source "DashboardTile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bi(I)[Lcom/android/settings/dashboard/DashboardTile;
    .locals 1

    .prologue
    .line 174
    new-array v0, p1, [Lcom/android/settings/dashboard/DashboardTile;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/e;->k(Landroid/os/Parcel;)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/os/Parcel;)Lcom/android/settings/dashboard/DashboardTile;
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/android/settings/dashboard/DashboardTile;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/DashboardTile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/e;->bi(I)[Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v0

    return-object v0
.end method
