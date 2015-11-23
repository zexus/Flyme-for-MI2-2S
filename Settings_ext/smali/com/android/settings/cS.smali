.class final Lcom/android/settings/cS;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public J(I)[Lcom/android/settings/LockPatternView$SavedState;
    .locals 1

    .prologue
    .line 961
    new-array v0, p1, [Lcom/android/settings/LockPatternView$SavedState;

    return-object v0
.end method

.method public b(Landroid/os/Parcel;)Lcom/android/settings/LockPatternView$SavedState;
    .locals 2

    .prologue
    .line 957
    new-instance v0, Lcom/android/settings/LockPatternView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/LockPatternView$SavedState;-><init>(Landroid/os/Parcel;Lcom/android/settings/cQ;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 955
    invoke-virtual {p0, p1}, Lcom/android/settings/cS;->b(Landroid/os/Parcel;)Lcom/android/settings/LockPatternView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 955
    invoke-virtual {p0, p1}, Lcom/android/settings/cS;->J(I)[Lcom/android/settings/LockPatternView$SavedState;

    move-result-object v0

    return-object v0
.end method
