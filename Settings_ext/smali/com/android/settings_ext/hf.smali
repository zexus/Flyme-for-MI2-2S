.class Lcom/android/settings_ext/hf;
.super Landroid/widget/BaseAdapter;
.source "UsageStatsActivity.java"


# instance fields
.field private zn:I

.field private zo:Lcom/android/settings_ext/he;

.field private zp:Lcom/android/settings_ext/hg;

.field private zq:Lcom/android/settings_ext/hc;

.field private final zr:Landroid/util/ArrayMap;

.field private final zs:Ljava/util/ArrayList;

.field final synthetic zt:Lcom/android/settings_ext/UsageStatsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/UsageStatsActivity;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 110
    iput-object p1, p0, Lcom/android/settings_ext/hf;->zt:Lcom/android/settings_ext/UsageStatsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 103
    iput v6, p0, Lcom/android/settings_ext/hf;->zn:I

    .line 104
    new-instance v0, Lcom/android/settings_ext/he;

    invoke-direct {v0}, Lcom/android/settings_ext/he;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/hf;->zo:Lcom/android/settings_ext/he;

    .line 105
    new-instance v0, Lcom/android/settings_ext/hg;

    invoke-direct {v0}, Lcom/android/settings_ext/hg;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/hf;->zp:Lcom/android/settings_ext/hg;

    .line 107
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/hf;->zr:Landroid/util/ArrayMap;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/hf;->zs:Ljava/util/ArrayList;

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 112
    const/4 v0, 0x6

    const/4 v1, -0x5

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 114
    invoke-static {p1}, Lcom/android/settings_ext/UsageStatsActivity;->a(Lcom/android/settings_ext/UsageStatsActivity;)Landroid/app/usage/UsageStatsManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v3

    .line 117
    if-nez v3, :cond_0

    .line 149
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 122
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v2, v6

    .line 123
    :goto_1
    if-ge v2, v5, :cond_2

    .line 124
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .line 128
    :try_start_0
    invoke-static {p1}, Lcom/android/settings_ext/UsageStatsActivity;->b(Lcom/android/settings_ext/UsageStatsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 129
    invoke-static {p1}, Lcom/android/settings_ext/UsageStatsActivity;->b(Lcom/android/settings_ext/UsageStatsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    iget-object v6, p0, Lcom/android/settings_ext/hf;->zr:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    .line 134
    if-nez v1, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {v1, v0}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 140
    :catch_0
    move-exception v0

    goto :goto_2

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/hf;->zs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 147
    new-instance v0, Lcom/android/settings_ext/hc;

    iget-object v1, p0, Lcom/android/settings_ext/hf;->zr:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/android/settings_ext/hc;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/settings_ext/hf;->zq:Lcom/android/settings_ext/hc;

    .line 148
    invoke-direct {p0}, Lcom/android/settings_ext/hf;->hp()V

    goto :goto_0
.end method

.method private hp()V
    .locals 2

    .prologue
    .line 215
    iget v0, p0, Lcom/android/settings_ext/hf;->zn:I

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/settings_ext/hf;->zs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ext/hf;->zp:Lcom/android/settings_ext/hg;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 225
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/hf;->notifyDataSetChanged()V

    .line 226
    return-void

    .line 218
    :cond_1
    iget v0, p0, Lcom/android/settings_ext/hf;->zn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 220
    iget-object v0, p0, Lcom/android/settings_ext/hf;->zs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ext/hf;->zo:Lcom/android/settings_ext/he;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 221
    :cond_2
    iget v0, p0, Lcom/android/settings_ext/hf;->zn:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/settings_ext/hf;->zs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ext/hf;->zq:Lcom/android/settings_ext/hc;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method ad(I)V
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/settings_ext/hf;->zn:I

    if-ne v0, p1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    iput p1, p0, Lcom/android/settings_ext/hf;->zn:I

    .line 212
    invoke-direct {p0}, Lcom/android/settings_ext/hf;->hp()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings_ext/hf;->zs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ext/hf;->zs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 163
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v4, 0x2

    .line 175
    if-nez p2, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings_ext/hf;->zt:Lcom/android/settings_ext/UsageStatsActivity;

    invoke-static {v0}, Lcom/android/settings_ext/UsageStatsActivity;->c(Lcom/android/settings_ext/UsageStatsActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04011c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 180
    new-instance v1, Lcom/android/settings_ext/hd;

    invoke-direct {v1}, Lcom/android/settings_ext/hd;-><init>()V

    .line 181
    const v0, 0x7f1002c1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings_ext/hd;->zk:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f1002c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings_ext/hd;->zl:Landroid/widget/TextView;

    .line 183
    const v0, 0x7f1002c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings_ext/hd;->zm:Landroid/widget/TextView;

    .line 184
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v7, v1

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/hf;->zs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/usage/UsageStats;

    .line 193
    if-eqz v6, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/settings_ext/hf;->zr:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    iget-object v1, v7, Lcom/android/settings_ext/hd;->zk:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v8, v7, Lcom/android/settings_ext/hd;->zl:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, v7, Lcom/android/settings_ext/hd;->zm:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :goto_1
    return-object p2

    .line 188
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/hd;

    move-object v7, v0

    goto :goto_0

    .line 201
    :cond_1
    const-string v0, "UsageStatsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No usage stats info for package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
