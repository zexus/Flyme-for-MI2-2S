.class final Lcom/android/settings_ext/applications/AppOpsState$OpsTemplate$1;
.super Ljava/lang/Object;
.source "AppOpsState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public av(I)[Lcom/android/settings_ext/applications/AppOpsState$OpsTemplate;
    .locals 1

    .prologue
    .line 94
    new-array v0, p1, [Lcom/android/settings_ext/applications/AppOpsState$OpsTemplate;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/applications/AppOpsState$OpsTemplate$1;->g(Landroid/os/Parcel;)Lcom/android/settings_ext/applications/AppOpsState$OpsTemplate;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/os/Parcel;)Lcom/android/settings_ext/applications/AppOpsState$OpsTemplate;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/android/settings_ext/applications/AppOpsState$OpsTemplate;

    invoke-direct {v0, p1}, Lcom/android/settings_ext/applications/AppOpsState$OpsTemplate;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/applications/AppOpsState$OpsTemplate$1;->av(I)[Lcom/android/settings_ext/applications/AppOpsState$OpsTemplate;

    move-result-object v0

    return-object v0
.end method
