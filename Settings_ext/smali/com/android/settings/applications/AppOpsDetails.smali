.class public Lcom/android/settings/applications/AppOpsDetails;
.super Landroid/app/Fragment;
.source "AppOpsDetails.java"


# instance fields
.field private CD:Landroid/widget/TextView;

.field private CH:Lcom/android/settings/applications/AppOpsState;

.field private CP:Landroid/content/pm/PackageInfo;

.field private CQ:Landroid/widget/LinearLayout;

.field private final MODE_ALLOWED:I

.field private final MODE_ASK:I

.field private final MODE_IGNORED:I

.field private i:Landroid/content/pm/PackageManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/AppOpsDetails;->MODE_ALLOWED:I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/AppOpsDetails;->MODE_IGNORED:I

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/applications/AppOpsDetails;->MODE_ASK:I

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/AppOpsDetails;I)I
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppOpsDetails;->ar(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/settings/applications/AppOpsDetails;)Landroid/app/AppOpsManager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private aq(I)I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    return v0

    .line 70
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private ar(I)I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 81
    packed-switch p1, :pswitch_data_0

    .line 90
    :goto_0
    :pswitch_0
    return v0

    .line 83
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private b(Landroid/content/pm/PackageInfo;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f100018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v1, v5, v0, v5, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 98
    const v0, 0x7f100013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 99
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsDetails;->i:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    const v0, 0x7f100014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsDetails;->i:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v0, 0x7f1000a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->CD:Landroid/widget/TextView;

    .line 106
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->CD:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->CD:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090562

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->CD:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(ZZ)V
    .locals 3

    .prologue
    .line 228
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 229
    const-string v0, "chg"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    .line 231
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settings/gh;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 232
    return-void
.end method

.method private iB()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_1

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    :goto_0
    if-nez v1, :cond_0

    .line 119
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 121
    :goto_1
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 126
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->i:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2200

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->CP:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_2
    return-object v1

    :cond_1
    move-object v1, v2

    .line 117
    goto :goto_0

    .line 119
    :cond_2
    const-string v3, "intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v3, "AppOpsDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when retrieving package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    iput-object v2, p0, Lcom/android/settings/applications/AppOpsDetails;->CP:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private iC()Z
    .locals 13

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->CP:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->CP:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppOpsDetails;->b(Landroid/content/pm/PackageInfo;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 146
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->CQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 147
    const-string v1, ""

    .line 148
    sget-object v7, Lcom/android/settings/applications/AppOpsState;->Dd:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    array-length v8, v7

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v8, :cond_5

    aget-object v0, v7, v5

    .line 149
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsDetails;->CH:Lcom/android/settings/applications/AppOpsState;

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->CP:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsDetails;->CP:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/settings/applications/AppOpsState;->a(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .line 152
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->au(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v4

    .line 153
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000a

    iget-object v10, p0, Lcom/android/settings/applications/AppOpsDetails;->CQ:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v0, v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 155
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->CQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_6

    .line 159
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->i:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v3, v0, v11}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 160
    iget-object v3, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 161
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 162
    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->i:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v3, v0, v11}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v3

    .line 163
    iget v0, v3, Landroid/content/pm/PermissionGroupInfo;->icon:I

    if-eqz v0, :cond_1

    .line 164
    const v0, 0x7f10001a

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/android/settings/applications/AppOpsDetails;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v11}, Landroid/content/pm/PermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v1

    move-object v3, v0

    .line 171
    :goto_3
    const v0, 0x7f10001b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/AppOpsDetails;->CH:Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->b(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const v0, 0x7f10001c

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v2, v6, v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->a(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    const v0, 0x7f10001d

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 177
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 178
    const v1, 0x7f10001e

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 179
    const/4 v10, 0x4

    invoke-virtual {v1, v10}, Landroid/widget/Switch;->setVisibility(I)V

    .line 181
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v10

    .line 182
    iget-object v4, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->iF()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->iF()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v10, v11, v12}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v4

    .line 184
    invoke-direct {p0, v4}, Lcom/android/settings/applications/AppOpsDetails;->aq(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 185
    new-instance v4, Lcom/android/settings/applications/AppOpsDetails$1;

    invoke-direct {v4, p0, v10, v2}, Lcom/android/settings/applications/AppOpsDetails$1;-><init>(Lcom/android/settings/applications/AppOpsDetails;ILcom/android/settings/applications/AppOpsState$AppOpEntry;)V

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 204
    iget-object v4, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->iF()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v11

    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->iF()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v10, v11, v12}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 206
    new-instance v4, Lcom/android/settings/applications/AppOpsDetails$2;

    invoke-direct {v4, p0, v10, v2}, Lcom/android/settings/applications/AppOpsDetails$2;-><init>(Lcom/android/settings/applications/AppOpsDetails;ILcom/android/settings/applications/AppOpsState$AppOpEntry;)V

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 216
    invoke-static {v10}, Landroid/app/AppOpsManager;->isStrictOp(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    :goto_5
    move-object v1, v3

    .line 221
    goto/16 :goto_2

    .line 168
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v3, v0

    goto/16 :goto_3

    .line 204
    :cond_2
    const/4 v4, 0x0

    goto :goto_4

    .line 219
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_5

    .line 148
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    .line 224
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    move-object v3, v1

    goto/16 :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 239
    new-instance v0, Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->CH:Lcom/android/settings/applications/AppOpsState;

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->i:Landroid/content/pm/PackageManager;

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    .line 244
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsDetails;->iB()Ljava/lang/String;

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsDetails;->setHasOptionsMenu(Z)V

    .line 247
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 252
    const v0, 0x7f040009

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 253
    invoke-static {p2, v1, v1, v2}, Lcom/android/settings/hl;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 255
    iput-object v1, p0, Lcom/android/settings/applications/AppOpsDetails;->mRootView:Landroid/view/View;

    .line 256
    const v0, 0x7f100019

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->CQ:Landroid/widget/LinearLayout;

    .line 257
    return-object v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 262
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 263
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsDetails;->iC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/AppOpsDetails;->b(ZZ)V

    .line 266
    :cond_0
    return-void
.end method
