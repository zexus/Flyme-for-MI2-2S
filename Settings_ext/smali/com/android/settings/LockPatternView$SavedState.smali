.class Lcom/android/settings/LockPatternView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LockPatternView.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final nA:Z

.field private final nB:Z

.field private final nV:Ljava/lang/String;

.field private final nW:I

.field private final nX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 954
    new-instance v0, Lcom/android/settings/cS;

    invoke-direct {v0}, Lcom/android/settings/cS;-><init>()V

    sput-object v0, Lcom/android/settings/LockPatternView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 916
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 917
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockPatternView$SavedState;->nV:Ljava/lang/String;

    .line 918
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/LockPatternView$SavedState;->nW:I

    .line 919
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/LockPatternView$SavedState;->nA:Z

    .line 920
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/LockPatternView$SavedState;->nB:Z

    .line 921
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/LockPatternView$SavedState;->nX:Z

    .line 922
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings/cQ;)V
    .locals 0

    .prologue
    .line 891
    invoke-direct {p0, p1}, Lcom/android/settings/LockPatternView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V
    .locals 0

    .prologue
    .line 904
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 905
    iput-object p2, p0, Lcom/android/settings/LockPatternView$SavedState;->nV:Ljava/lang/String;

    .line 906
    iput p3, p0, Lcom/android/settings/LockPatternView$SavedState;->nW:I

    .line 907
    iput-boolean p4, p0, Lcom/android/settings/LockPatternView$SavedState;->nA:Z

    .line 908
    iput-boolean p5, p0, Lcom/android/settings/LockPatternView$SavedState;->nB:Z

    .line 909
    iput-boolean p6, p0, Lcom/android/settings/LockPatternView$SavedState;->nX:Z

    .line 910
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/settings/cQ;)V
    .locals 0

    .prologue
    .line 891
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V

    return-void
.end method


# virtual methods
.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 929
    iget v0, p0, Lcom/android/settings/LockPatternView$SavedState;->nW:I

    return v0
.end method

.method public getSerializedPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/settings/LockPatternView$SavedState;->nV:Ljava/lang/String;

    return-object v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/android/settings/LockPatternView$SavedState;->nB:Z

    return v0
.end method

.method public isInputEnabled()Z
    .locals 1

    .prologue
    .line 933
    iget-boolean v0, p0, Lcom/android/settings/LockPatternView$SavedState;->nA:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 941
    iget-boolean v0, p0, Lcom/android/settings/LockPatternView$SavedState;->nX:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 946
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 947
    iget-object v0, p0, Lcom/android/settings/LockPatternView$SavedState;->nV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 948
    iget v0, p0, Lcom/android/settings/LockPatternView$SavedState;->nW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 949
    iget-boolean v0, p0, Lcom/android/settings/LockPatternView$SavedState;->nA:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 950
    iget-boolean v0, p0, Lcom/android/settings/LockPatternView$SavedState;->nB:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 951
    iget-boolean v0, p0, Lcom/android/settings/LockPatternView$SavedState;->nX:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 952
    return-void
.end method
