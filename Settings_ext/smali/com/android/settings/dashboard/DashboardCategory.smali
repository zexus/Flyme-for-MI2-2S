.class public Lcom/android/settings/dashboard/DashboardCategory;
.super Ljava/lang/Object;
.source "DashboardCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public Ra:Ljava/util/List;

.field public id:J

.field public title:Ljava/lang/CharSequence;

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/android/settings/dashboard/a;

    invoke-direct {v0}, Lcom/android/settings/dashboard/a;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/DashboardCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->Ra:Ljava/util/List;

    .line 63
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->Ra:Ljava/util/List;

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardCategory;->readFromParcel(Landroid/os/Parcel;)V

    .line 134
    return-void
.end method


# virtual methods
.method public b(Lcom/android/settings/dashboard/DashboardTile;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->Ra:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public bf(I)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->Ra:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public bg(I)Lcom/android/settings/dashboard/DashboardTile;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->Ra:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardTile;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    if-eqz v0, :cond_0

    .line 96
    iget v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public nI()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->Ra:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    .line 122
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 127
    sget-object v0, Lcom/android/settings/dashboard/DashboardTile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardTile;

    .line 128
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardCategory;->Ra:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 108
    iget v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->Ra:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 112
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardCategory;->Ra:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardTile;

    .line 116
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/dashboard/DashboardTile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method
