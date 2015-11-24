.class public Lcom/android/settings_ext/DataUsageSummary$AppItem;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public category:I

.field public gI:Z

.field public gJ:Landroid/util/SparseBooleanArray;

.field public gK:J

.field public final key:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1583
    new-instance v0, Lcom/android/settings_ext/bj;

    invoke-direct {v0}, Lcom/android/settings_ext/bj;-><init>()V

    sput-object v0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->gJ:Landroid/util/SparseBooleanArray;

    .line 1545
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->key:I

    .line 1546
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 1548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->gJ:Landroid/util/SparseBooleanArray;

    .line 1549
    iput p1, p0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->key:I

    .line 1550
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->gJ:Landroid/util/SparseBooleanArray;

    .line 1553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->key:I

    .line 1554
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->gJ:Landroid/util/SparseBooleanArray;

    .line 1555
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->gK:J

    .line 1556
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/DataUsageSummary$AppItem;)I
    .locals 4

    .prologue
    .line 1576
    iget v0, p0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->category:I

    iget v1, p1, Lcom/android/settings_ext/DataUsageSummary$AppItem;->category:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 1577
    if-nez v0, :cond_0

    .line 1578
    iget-wide v0, p1, Lcom/android/settings_ext/DataUsageSummary$AppItem;->gK:J

    iget-wide v2, p0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->gK:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 1580
    :cond_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1532
    check-cast p1, Lcom/android/settings_ext/DataUsageSummary$AppItem;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/DataUsageSummary$AppItem;->a(Lcom/android/settings_ext/DataUsageSummary$AppItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1571
    const/4 v0, 0x0

    return v0
.end method

.method public p(I)V
    .locals 2

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->gJ:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1560
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 1564
    iget v0, p0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1565
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->gJ:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 1566
    iget-wide v0, p0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->gK:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1567
    return-void
.end method
