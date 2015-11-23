.class public Lcom/android/settings_ext/applications/ProcessStatsMemDetail;
.super Landroid/app/Fragment;
.source "ProcessStatsMemDetail.java"


# instance fields
.field IA:D

.field IB:D

.field IC:D

.field private ID:Landroid/view/ViewGroup;

.field private IE:Landroid/view/ViewGroup;

.field Il:Z

.field Iv:[J

.field Iw:[D

.field Ix:D

.field Iy:D

.field Iz:D

.field private mRootView:Landroid/view/View;

.field mTotalTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V
    .locals 7

    .prologue
    .line 126
    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_0

    .line 127
    iget-wide v0, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->IC:D

    div-double v0, p3, v0

    double-to-float v0, v0

    .line 128
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double/2addr v2, p3

    iget-wide v4, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->mTotalTime:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)V

    .line 132
    :cond_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 102
    const v1, 0x7f04000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 105
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 107
    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 108
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 111
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 112
    return-void
.end method

.method private jA()V
    .locals 8

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 116
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->Iv:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->Iv:[J

    aget-wide v2, v2, v0

    long-to-float v2, v2

    iget-wide v4, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->mTotalTime:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    .line 119
    iget-object v3, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->ID:Landroid/view/ViewGroup;

    aget-object v4, v1, v0

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->Iv:[J

    aget-wide v6, v6, v0

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)V

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    return-void
.end method

.method private jB()V
    .locals 6

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 136
    iget-object v0, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->IE:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090711

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->IA:D

    invoke-direct {p0, v0, v2, v4, v5}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 138
    iget-object v0, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->IE:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090714

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->Iz:D

    invoke-direct {p0, v0, v2, v4, v5}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->IE:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090712

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->IB:D

    invoke-direct {p0, v0, v2, v4, v5}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 142
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->IE:Landroid/view/ViewGroup;

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->Iw:[D

    aget-wide v4, v4, v0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->IE:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090713

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->Ix:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 147
    iget-object v0, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->IE:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090715

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->Iy:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->IE:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090716

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->IC:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    .line 151
    return-void
.end method

.method private jw()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f1001db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->ID:Landroid/view/ViewGroup;

    .line 93
    iget-object v0, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f1001dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->IE:Landroid/view/ViewGroup;

    .line 95
    invoke-direct {p0}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->jA()V

    .line 96
    invoke-direct {p0}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->jB()V

    .line 97
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    const-string v1, "mem_times"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->Iv:[J

    .line 64
    const-string v1, "mem_state_weights"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->Iw:[D

    .line 65
    const-string v1, "mem_cached_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->Ix:D

    .line 66
    const-string v1, "mem_free_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->Iy:D

    .line 67
    const-string v1, "mem_zram_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->Iz:D

    .line 68
    const-string v1, "mem_kernel_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->IA:D

    .line 69
    const-string v1, "mem_native_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->IB:D

    .line 70
    const-string v1, "mem_total_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->IC:D

    .line 71
    const-string v1, "use_uss"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->Il:Z

    .line 72
    const-string v1, "total_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->mTotalTime:J

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    const v0, 0x7f0400d2

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    invoke-static {p2, v0, v0, v1}, Lcom/android/settings_ext/hl;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 81
    iput-object v0, p0, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->mRootView:Landroid/view/View;

    .line 82
    invoke-direct {p0}, Lcom/android/settings_ext/applications/ProcessStatsMemDetail;->jw()V

    .line 83
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 89
    return-void
.end method
