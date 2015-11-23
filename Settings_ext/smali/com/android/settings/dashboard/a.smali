.class final Lcom/android/settings/dashboard/a;
.super Ljava/lang/Object;
.source "DashboardCategory.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bh(I)[Lcom/android/settings/dashboard/DashboardCategory;
    .locals 1

    .prologue
    .line 142
    new-array v0, p1, [Lcom/android/settings/dashboard/DashboardCategory;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/a;->j(Landroid/os/Parcel;)Lcom/android/settings/dashboard/DashboardCategory;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/os/Parcel;)Lcom/android/settings/dashboard/DashboardCategory;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/DashboardCategory;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/a;->bh(I)[Lcom/android/settings/dashboard/DashboardCategory;

    move-result-object v0

    return-object v0
.end method
