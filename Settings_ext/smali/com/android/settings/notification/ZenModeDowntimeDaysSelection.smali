.class public Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;
.super Landroid/widget/ScrollView;
.source "ZenModeDowntimeDaysSelection.java"


# static fields
.field public static final agm:[I

.field private static final agn:Ljava/text/SimpleDateFormat;


# instance fields
.field private final ago:Landroid/util/SparseBooleanArray;

.field private final agp:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->agm:[I

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->agn:Ljava/text/SimpleDateFormat;

    return-void

    .line 35
    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->ago:Landroid/util/SparseBooleanArray;

    .line 46
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->agp:Landroid/widget/LinearLayout;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0046

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 48
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->agp:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->agp:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->addView(Landroid/view/View;)V

    .line 50
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v2

    .line 51
    if-eqz v2, :cond_0

    move v0, v1

    .line 52
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->ago:Landroid/util/SparseBooleanArray;

    aget v4, v2, v0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->agp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    move v2, v1

    .line 59
    :goto_1
    sget-object v0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->agm:[I

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 60
    sget-object v0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->agm:[I

    aget v5, v0, v2

    .line 61
    const v0, 0x7f040148

    invoke-virtual {v4, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 63
    const/4 v6, 0x7

    invoke-virtual {v3, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 64
    sget-object v6, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->agn:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v6, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->ago:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    new-instance v6, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$1;

    invoke-direct {v6, p0, v5}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection$1;-><init>(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;I)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->agp:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 75
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->ago:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->getMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMode()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "days:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    .line 80
    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->ago:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 81
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->ago:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 82
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->ago:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 80
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    if-eqz v2, :cond_1

    move v2, v1

    .line 88
    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 86
    :cond_1
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 90
    :cond_2
    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method protected aT(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method
