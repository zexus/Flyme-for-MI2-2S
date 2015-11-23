.class public Lcom/android/settings/applications/ProcessStatsDetail;
.super Lcom/android/settings/BaseFragment;
.source "ProcessStatsDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final Is:Ljava/util/Comparator;

.field static final It:Ljava/util/Comparator;


# instance fields
.field private FN:Landroid/widget/Button;

.field private final Gd:Landroid/content/BroadcastReceiver;

.field private Ik:Lcom/android/settings/applications/ProcStatsEntry;

.field private Il:Z

.field private Im:J

.field private In:Landroid/widget/TextView;

.field private Io:Landroid/view/ViewGroup;

.field private Ip:Landroid/widget/Button;

.field private Iq:Landroid/view/ViewGroup;

.field private Ir:Landroid/view/ViewGroup;

.field private hC:Landroid/app/admin/DevicePolicyManager;

.field private i:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mTotalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->Is:Ljava/util/Comparator;

    .line 223
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->It:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 283
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ProcessStatsDetail$3;-><init>(Lcom/android/settings/applications/ProcessStatsDetail;)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Gd:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/ProcessStatsDetail;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->FN:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 190
    const v1, 0x7f0400a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 193
    const v1, 0x7f1000c1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 194
    const v2, 0x7f100192

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 173
    const v1, 0x7f0400e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 176
    const v1, 0x7f100051

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 177
    const v2, 0x7f100046

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 178
    const v3, 0x7f1000b6

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->i:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 181
    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void

    .line 183
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private aJ(I)V
    .locals 0

    .prologue
    .line 164
    packed-switch p1, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 166
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->jz()V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private ji()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 291
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->Ii:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->FN:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->hC:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->Ii:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->FN:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 300
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->i:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->Ii:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 301
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->FN:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_3
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ProcStatsEntry;->Ii:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 308
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ProcStatsEntry;->Ii:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    const-string v0, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Gd:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private jw()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 117
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->Id:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Im:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 120
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v2, v0, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/hl;->a(JJ)Ljava/lang/String;

    move-result-object v2

    .line 123
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v3, 0x1020010

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v3, 0x1020016

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->In:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->In:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsEntry;->Ih:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v2, 0x102000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 133
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->If:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->If:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f100193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Io:Landroid/view/ViewGroup;

    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f1002be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->FN:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f1002bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ip:Landroid/widget/Button;

    .line 140
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->FN:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ip:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f100194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Iq:Landroid/view/ViewGroup;

    .line 144
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f1001da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ir:Landroid/view/ViewGroup;

    .line 146
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->jx()V

    .line 147
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->jy()V

    .line 149
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->FN:Landroid/widget/Button;

    const v1, 0x7f090521

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->FN:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->FN:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Io:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Io:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private jx()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    .line 200
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Iq:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090709

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Il:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->Ib:J

    :goto_0
    mul-long/2addr v0, v6

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Iq:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09070a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Il:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->Ic:J

    :goto_1
    mul-long/2addr v0, v6

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Iq:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09070b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v2, v2, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/hl;->a(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/applications/ProcessStatsDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 208
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->HZ:J

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->Ia:J

    goto :goto_1
.end method

.method private jy()V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 243
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 248
    sget-object v4, Lcom/android/settings/applications/ProcessStatsDetail;->Is:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 249
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gt v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry$Service;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 255
    :cond_1
    sget-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->It:Ljava/util/Comparator;

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_1
    move v4, v2

    .line 257
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 258
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 259
    if-eqz v3, :cond_2

    .line 260
    iget-object v5, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ir:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry$Service;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v5, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->a(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :cond_2
    move v5, v2

    .line 262
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_4

    .line 263
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry$Service;

    .line 264
    iget-object v6, v1, Lcom/android/settings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    .line 265
    const/16 v8, 0x2e

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 266
    if-ltz v8, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_3

    .line 267
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 269
    :cond_3
    iget-wide v8, v1, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    iget-wide v10, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/settings/hl;->a(JJ)Ljava/lang/String;

    move-result-object v1

    .line 270
    iget-object v8, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ir:Landroid/view/ViewGroup;

    invoke-direct {p0, v8, v6, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->a(Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 262
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    .line 257
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 274
    :cond_5
    return-void

    :cond_6
    move v3, v2

    goto :goto_1
.end method

.method private jz()V
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 279
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsEntry;->Ii:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->ji()V

    .line 281
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->aJ(I)V

    .line 161
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->i:Landroid/content/pm/PackageManager;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->hC:Landroid/app/admin/DevicePolicyManager;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 85
    const-string v0, "entry"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    .line 86
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Ik:Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ProcStatsEntry;->b(Landroid/content/pm/PackageManager;)V

    .line 87
    const-string v0, "use_uss"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Il:Z

    .line 88
    const-string v0, "max_weight"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->Im:J

    .line 89
    const-string v0, "total_time"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    .line 90
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    const v0, 0x7f0400d1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 98
    invoke-static {p2, v0, v0, v1}, Lcom/android/settings/hl;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 100
    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mRootView:Landroid/view/View;

    .line 101
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->jw()V

    .line 102
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onPause()V

    .line 114
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/settings/BaseFragment;->onResume()V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->ji()V

    .line 109
    return-void
.end method
