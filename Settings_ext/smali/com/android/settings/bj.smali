.class final Lcom/android/settings_ext/bj;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/android/settings_ext/DataUsageSummary$AppItem;
    .locals 1

    .prologue
    .line 1586
    new-instance v0, Lcom/android/settings_ext/DataUsageSummary$AppItem;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/DataUsageSummary$AppItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1583
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/bj;->a(Landroid/os/Parcel;)Lcom/android/settings_ext/DataUsageSummary$AppItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1583
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/bj;->q(I)[Lcom/android/settings_ext/DataUsageSummary$AppItem;

    move-result-object v0

    return-object v0
.end method

.method public q(I)[Lcom/android/settings_ext/DataUsageSummary$AppItem;
    .locals 1

    .prologue
    .line 1591
    new-array v0, p1, [Lcom/android/settings_ext/DataUsageSummary$AppItem;

    return-object v0
.end method
